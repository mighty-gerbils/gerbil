(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx304375_)
      (let* ((_g304379304397_
              (lambda (_g304380304393_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g304380304393_))))
             (_g304378304452_
              (lambda (_g304380304401_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g304380304401_))
                    (let ((_e304385304404_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g304380304401_))))
                      (let ((_hd304384304408_
                             (let ()
                               (declare (not safe))
                               (##car _e304385304404_)))
                            (_tl304383304411_
                             (let ()
                               (declare (not safe))
                               (##cdr _e304385304404_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl304383304411_))
                            (let ((_e304388304414_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl304383304411_))))
                              (let ((_hd304387304418_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e304388304414_)))
                                    (_tl304386304421_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e304388304414_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl304386304421_))
                                    (let ((_e304391304424_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl304386304421_))))
                                      (let ((_hd304390304428_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e304391304424_)))
                                            (_tl304389304431_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e304391304424_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl304389304431_))
                                            ((lambda (_L304434_ _L304436_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L304436_))
                                                   (let ((__tmp312484
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp312479
                                                          (let ((__tmp312481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp312483
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp312482
                                (let ()
                                  (declare (not safe))
                                  (cons _L304436_ '()))))
                           (declare (not safe))
                           (cons __tmp312483 __tmp312482)))
                        (__tmp312480
                         (let () (declare (not safe)) (cons _L304434_ '()))))
                    (declare (not safe))
                    (cons __tmp312481 __tmp312480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp312484
                                                           __tmp312479))
                                                   (_g304379304397_
                                                    _g304380304401_)))
                                             _hd304390304428_
                                             _hd304387304418_)
                                            (_g304379304397_
                                             _g304380304401_))))
                                    (_g304379304397_ _g304380304401_))))
                            (_g304379304397_ _g304380304401_))))
                    (_g304379304397_ _g304380304401_)))))
        (_g304378304452_ _$stx304375_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx304456_)
      (let* ((_g304460304489_
              (lambda (_g304461304485_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g304461304485_))))
             (_g304459304589_
              (lambda (_g304461304493_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g304461304493_))
                    (let ((_e304466304496_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g304461304493_))))
                      (let ((_hd304465304500_
                             (let ()
                               (declare (not safe))
                               (##car _e304466304496_)))
                            (_tl304464304503_
                             (let ()
                               (declare (not safe))
                               (##cdr _e304466304496_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl304464304503_))
                            (let ((_g312485_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl304464304503_
                                      '0))))
                              (begin
                                (let ((_g312486_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g312485_)
                                             (##vector-length _g312485_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g312486_ 2)))
                                      (error "Context expects 2 values"
                                             _g312486_)))
                                (let ((_target304467304506_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312485_ 0)))
                                      (_tl304469304509_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312485_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl304469304509_))
                                      (letrec ((_loop304470304512_
                                                (lambda (_hd304468304516_
                                                         _type304474304519_
                                                         _symbol304475304521_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd304468304516_))
                                                      (let ((_e304471304524_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd304468304516_))))
                (let ((_lp-hd304472304528_
                       (let () (declare (not safe)) (##car _e304471304524_)))
                      (_lp-tl304473304531_
                       (let () (declare (not safe)) (##cdr _e304471304524_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd304472304528_))
                      (let ((_e304480304534_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd304472304528_))))
                        (let ((_hd304479304538_
                               (let ()
                                 (declare (not safe))
                                 (##car _e304480304534_)))
                              (_tl304478304541_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e304480304534_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl304478304541_))
                              (let ((_e304483304544_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl304478304541_))))
                                (let ((_hd304482304548_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e304483304544_)))
                                      (_tl304481304551_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e304483304544_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl304481304551_))
                                      (_loop304470304512_
                                       _lp-tl304473304531_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd304482304548_
                                               _type304474304519_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd304479304538_
                                               _symbol304475304521_)))
                                      (_g304460304489_ _g304461304493_))))
                              (_g304460304489_ _g304461304493_))))
                      (_g304460304489_ _g304461304493_))))
              (let ((_type304476304554_ (reverse _type304474304519_))
                    (_symbol304477304557_ (reverse _symbol304475304521_)))
                ((lambda (_L304560_ _L304562_)
                   (let ((__tmp312493
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp312487
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L304560_
                               _L304562_))
                            (let ((__tmp312488
                                   (lambda (_g304577304581_
                                            _g304578304584_
                                            _g304579304586_)
                                     (let ((__tmp312489
                                            (let ((__tmp312492
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp312490
                                                   (let ((__tmp312491
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g304577304581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g304578304584_
                                                           __tmp312491))))
                                              (declare (not safe))
                                              (cons __tmp312492 __tmp312490))))
                                       (declare (not safe))
                                       (cons __tmp312489 _g304579304586_)))))
                              (declare (not safe))
                              (foldr2 __tmp312488 '() _L304560_ _L304562_)))))
                     (declare (not safe))
                     (cons __tmp312493 __tmp312487)))
                 _type304476304554_
                 _symbol304477304557_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop304470304512_
                                         _target304467304506_
                                         '()
                                         '()))
                                      (_g304460304489_ _g304461304493_)))))
                            (_g304460304489_ _g304461304493_))))
                    (_g304460304489_ _g304461304493_)))))
        (_g304459304589_ _$stx304456_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx304594_)
      (let* ((___stx312044312045_ _$stx304594_)
             (_g304599304641_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx312044312045_)))))
        (let ((___kont312047312048_
               (lambda (_L304769_ _L304771_ _L304772_ _L304773_)
                 (let ((__tmp312507
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp312494
                        (let ((__tmp312504
                               (let ((__tmp312506
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp312505
                                      (let ()
                                        (declare (not safe))
                                        (cons _L304773_ '()))))
                                 (declare (not safe))
                                 (cons __tmp312506 __tmp312505)))
                              (__tmp312495
                               (let ((__tmp312501
                                      (let ((__tmp312503
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp312502
                                             (let ()
                                               (declare (not safe))
                                               (cons _L304772_ '()))))
                                        (declare (not safe))
                                        (cons __tmp312503 __tmp312502)))
                                     (__tmp312496
                                      (let ((__tmp312498
                                             (let ((__tmp312500
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp312499
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L304771_ '()))))
                                               (declare (not safe))
                                               (cons __tmp312500 __tmp312499)))
                                            (__tmp312497
                                             (let ()
                                               (declare (not safe))
                                               (cons _L304769_ '()))))
                                        (declare (not safe))
                                        (cons __tmp312498 __tmp312497))))
                                 (declare (not safe))
                                 (cons __tmp312501 __tmp312496))))
                          (declare (not safe))
                          (cons __tmp312504 __tmp312495))))
                   (declare (not safe))
                   (cons __tmp312507 __tmp312494))))
              (___kont312049312050_
               (lambda (_L304688_ _L304690_ _L304691_ _L304692_)
                 (let ((__tmp312508
                        (let ((__tmp312509
                               (let ((__tmp312510
                                      (let ((__tmp312511
                                             (let ((__tmp312512
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp312512 '()))))
                                        (declare (not safe))
                                        (cons _L304688_ __tmp312511))))
                                 (declare (not safe))
                                 (cons _L304690_ __tmp312510))))
                          (declare (not safe))
                          (cons _L304691_ __tmp312509))))
                   (declare (not safe))
                   (cons _L304692_ __tmp312508)))))
          (let ((___match312083312084_
                 (lambda (_e304607304719_
                          _hd304606304723_
                          _tl304605304726_
                          _e304610304729_
                          _hd304609304733_
                          _tl304608304736_
                          _e304613304739_
                          _hd304612304743_
                          _tl304611304746_
                          _e304616304749_
                          _hd304615304753_
                          _tl304614304756_
                          _e304619304759_
                          _hd304618304763_
                          _tl304617304766_)
                   (let ((_L304769_ _hd304618304763_)
                         (_L304771_ _hd304615304753_)
                         (_L304772_ _hd304612304743_)
                         (_L304773_ _hd304609304733_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L304773_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L304772_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L304771_)))
                         (___kont312047312048_
                          _L304769_
                          _L304771_
                          _L304772_
                          _L304773_)
                         (let () (declare (not safe)) (_g304599304641_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx312044312045_))
                (let ((_e304607304719_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx312044312045_))))
                  (let ((_tl304605304726_
                         (let () (declare (not safe)) (##cdr _e304607304719_)))
                        (_hd304606304723_
                         (let ()
                           (declare (not safe))
                           (##car _e304607304719_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl304605304726_))
                        (let ((_e304610304729_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl304605304726_))))
                          (let ((_tl304608304736_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e304610304729_)))
                                (_hd304609304733_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e304610304729_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl304608304736_))
                                (let ((_e304613304739_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl304608304736_))))
                                  (let ((_tl304611304746_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e304613304739_)))
                                        (_hd304612304743_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e304613304739_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl304611304746_))
                                        (let ((_e304616304749_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl304611304746_))))
                                          (let ((_tl304614304756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e304616304749_)))
                                                (_hd304615304753_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e304616304749_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl304614304756_))
                                                (let ((_e304619304759_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl304614304756_))))
                                                  (let ((_tl304617304766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e304619304759_)))
                                                        (_hd304618304763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e304619304759_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl304617304766_))
                                                        (___match312083312084_
                                                         _e304607304719_
                                                         _hd304606304723_
                                                         _tl304605304726_
                                                         _e304610304729_
                                                         _hd304609304733_
                                                         _tl304608304736_
                                                         _e304613304739_
                                                         _hd304612304743_
                                                         _tl304611304746_
                                                         _e304616304749_
                                                         _hd304615304753_
                                                         _tl304614304756_
                                                         _e304619304759_
                                                         _hd304618304763_
                                                         _tl304617304766_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g304599304641_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl304614304756_))
                                                    (___kont312049312050_
                                                     _hd304615304753_
                                                     _hd304612304743_
                                                     _hd304609304733_
                                                     _hd304606304723_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g304599304641_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g304599304641_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g304599304641_)))))
                        (let () (declare (not safe)) (_g304599304641_)))))
                (let () (declare (not safe)) (_g304599304641_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx304798_)
      (let* ((_g304802304837_
              (lambda (_g304803304833_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g304803304833_))))
             (_g304801304956_
              (lambda (_g304803304841_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g304803304841_))
                    (let ((_e304809304844_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g304803304841_))))
                      (let ((_hd304808304848_
                             (let ()
                               (declare (not safe))
                               (##car _e304809304844_)))
                            (_tl304807304851_
                             (let ()
                               (declare (not safe))
                               (##cdr _e304809304844_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl304807304851_))
                            (let ((_g312513_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl304807304851_
                                      '0))))
                              (begin
                                (let ((_g312514_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g312513_)
                                             (##vector-length _g312513_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g312514_ 2)))
                                      (error "Context expects 2 values"
                                             _g312514_)))
                                (let ((_target304810304854_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312513_ 0)))
                                      (_tl304812304857_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312513_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl304812304857_))
                                      (letrec ((_loop304813304860_
                                                (lambda (_hd304811304864_
                                                         _symbol304817304867_
                                                         _method304818304869_
                                                         _type-t304819304871_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd304811304864_))
                                                      (let ((_e304814304874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd304811304864_))))
                (let ((_lp-hd304815304878_
                       (let () (declare (not safe)) (##car _e304814304874_)))
                      (_lp-tl304816304881_
                       (let () (declare (not safe)) (##cdr _e304814304874_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd304815304878_))
                      (let ((_e304825304884_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd304815304878_))))
                        (let ((_hd304824304888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e304825304884_)))
                              (_tl304823304891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e304825304884_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl304823304891_))
                              (let ((_e304828304894_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl304823304891_))))
                                (let ((_hd304827304898_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e304828304894_)))
                                      (_tl304826304901_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e304828304894_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl304826304901_))
                                      (let ((_e304831304904_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl304826304901_))))
                                        (let ((_hd304830304908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e304831304904_)))
                                              (_tl304829304911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e304831304904_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl304829304911_))
                                              (_loop304813304860_
                                               _lp-tl304816304881_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd304830304908_
                                                       _symbol304817304867_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd304827304898_
                                                       _method304818304869_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd304824304888_
                                                       _type-t304819304871_)))
                                              (_g304802304837_
                                               _g304803304841_))))
                                      (_g304802304837_ _g304803304841_))))
                              (_g304802304837_ _g304803304841_))))
                      (_g304802304837_ _g304803304841_))))
              (let ((_symbol304820304914_ (reverse _symbol304817304867_))
                    (_method304821304917_ (reverse _method304818304869_))
                    (_type-t304822304919_ (reverse _type-t304819304871_)))
                ((lambda (_L304922_ _L304924_ _L304925_)
                   (let ((__tmp312522
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp312515
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L304922_
                               _L304924_
                               _L304925_))
                            (let ((__tmp312516
                                   (lambda (_g304941304946_
                                            _g304942304949_
                                            _g304943304951_
                                            _g304944304953_)
                                     (let ((__tmp312517
                                            (let ((__tmp312521
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp312518
                                                   (let ((__tmp312519
                                                          (let ((__tmp312520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g304941304946_ '()))))
                    (declare (not safe))
                    (cons _g304942304949_ __tmp312520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g304943304951_
                                                           __tmp312519))))
                                              (declare (not safe))
                                              (cons __tmp312521 __tmp312518))))
                                       (declare (not safe))
                                       (cons __tmp312517 _g304944304953_)))))
                              (declare (not safe))
                              (foldr* __tmp312516
                                      '()
                                      _L304922_
                                      _L304924_
                                      _L304925_)))))
                     (declare (not safe))
                     (cons __tmp312522 __tmp312515)))
                 _symbol304820304914_
                 _method304821304917_
                 _type-t304822304919_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop304813304860_
                                         _target304810304854_
                                         '()
                                         '()
                                         '()))
                                      (_g304802304837_ _g304803304841_)))))
                            (_g304802304837_ _g304803304841_))))
                    (_g304802304837_ _g304803304841_)))))
        (_g304801304956_ _$stx304798_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx304961_)
      (let* ((_g304965304998_
              (lambda (_g304966304994_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g304966304994_))))
             (_g304964305112_
              (lambda (_g304966305002_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g304966305002_))
                    (let ((_e304972305005_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g304966305002_))))
                      (let ((_hd304971305009_
                             (let ()
                               (declare (not safe))
                               (##car _e304972305005_)))
                            (_tl304970305012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e304972305005_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl304970305012_))
                            (let ((_e304975305015_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl304970305012_))))
                              (let ((_hd304974305019_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e304975305015_)))
                                    (_tl304973305022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e304975305015_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl304973305022_))
                                    (let ((_g312523_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl304973305022_
                                              '0))))
                                      (begin
                                        (let ((_g312524_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g312523_)
                                                     (##vector-length
                                                      _g312523_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g312524_ 2)))
                                              (error "Context expects 2 values"
                                                     _g312524_)))
                                        (let ((_target304976305025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g312523_ 0)))
                                              (_tl304978305028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g312523_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl304978305028_))
                                              (letrec ((_loop304979305031_
                                                        (lambda (_hd304977305035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol304983305038_
                         _method304984305040_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd304977305035_))
                      (let ((_e304980305043_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd304977305035_))))
                        (let ((_lp-hd304981305047_
                               (let ()
                                 (declare (not safe))
                                 (##car _e304980305043_)))
                              (_lp-tl304982305050_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e304980305043_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd304981305047_))
                              (let ((_e304989305053_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd304981305047_))))
                                (let ((_hd304988305057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e304989305053_)))
                                      (_tl304987305060_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e304989305053_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl304987305060_))
                                      (let ((_e304992305063_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl304987305060_))))
                                        (let ((_hd304991305067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e304992305063_)))
                                              (_tl304990305070_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e304992305063_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl304990305070_))
                                              (_loop304979305031_
                                               _lp-tl304982305050_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd304991305067_
                                                       _symbol304983305038_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd304988305057_
                                                       _method304984305040_)))
                                              (_g304965304998_
                                               _g304966305002_))))
                                      (_g304965304998_ _g304966305002_))))
                              (_g304965304998_ _g304966305002_))))
                      (let ((_symbol304985305073_
                             (reverse _symbol304983305038_))
                            (_method304986305076_
                             (reverse _method304984305040_)))
                        ((lambda (_L305079_ _L305081_ _L305082_)
                           (let ((__tmp312532
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp312525
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L305079_
                                       _L305081_))
                                    (let ((__tmp312526
                                           (lambda (_g305100305104_
                                                    _g305101305107_
                                                    _g305102305109_)
                                             (let ((__tmp312527
                                                    (let ((__tmp312531
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp312528
                                                           (let ((__tmp312529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp312530
                                 (let ()
                                   (declare (not safe))
                                   (cons _g305100305104_ '()))))
                            (declare (not safe))
                            (cons _g305101305107_ __tmp312530))))
                     (declare (not safe))
                     (cons _L305082_ __tmp312529))))
              (declare (not safe))
              (cons __tmp312531 __tmp312528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp312527
                                                     _g305102305109_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp312526
                                              '()
                                              _L305079_
                                              _L305081_)))))
                             (declare (not safe))
                             (cons __tmp312532 __tmp312525)))
                         _symbol304985305073_
                         _method304986305076_
                         _hd304974305019_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop304979305031_
                                                 _target304976305025_
                                                 '()
                                                 '()))
                                              (_g304965304998_
                                               _g304966305002_)))))
                                    (_g304965304998_ _g304966305002_))))
                            (_g304965304998_ _g304966305002_))))
                    (_g304965304998_ _g304966305002_)))))
        (_g304964305112_ _$stx304961_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx305117_)
      (let* ((_g305121305135_
              (lambda (_g305122305131_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305122305131_))))
             (_g305120305176_
              (lambda (_g305122305139_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305122305139_))
                    (let ((_e305126305142_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305122305139_))))
                      (let ((_hd305125305146_
                             (let ()
                               (declare (not safe))
                               (##car _e305126305142_)))
                            (_tl305124305149_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305126305142_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305124305149_))
                            (let ((_e305129305152_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305124305149_))))
                              (let ((_hd305128305156_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305129305152_)))
                                    (_tl305127305159_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305129305152_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl305127305159_))
                                    ((lambda (_L305162_)
                                       (let ((__tmp312537
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp312533
                                              (let ((__tmp312534
                                                     (let ((__tmp312536
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp312535
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L305162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp312536 __tmp312535))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp312534 '()))))
                                         (declare (not safe))
                                         (cons __tmp312537 __tmp312533)))
                                     _hd305128305156_)
                                    (_g305121305135_ _g305122305139_))))
                            (_g305121305135_ _g305122305139_))))
                    (_g305121305135_ _g305122305139_)))))
        (_g305120305176_ _$stx305117_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx305180_)
      (let* ((_g305184305234_
              (lambda (_g305185305230_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305185305230_))))
             (_g305183305401_
              (lambda (_g305185305238_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305185305238_))
                    (let ((_e305198305241_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305185305238_))))
                      (let ((_hd305197305245_
                             (let ()
                               (declare (not safe))
                               (##car _e305198305241_)))
                            (_tl305196305248_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305198305241_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305196305248_))
                            (let ((_e305201305251_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305196305248_))))
                              (let ((_hd305200305255_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305201305251_)))
                                    (_tl305199305258_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305201305251_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl305199305258_))
                                    (let ((_e305204305261_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl305199305258_))))
                                      (let ((_hd305203305265_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e305204305261_)))
                                            (_tl305202305268_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e305204305261_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl305202305268_))
                                            (let ((_e305207305271_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl305202305268_))))
                                              (let ((_hd305206305275_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e305207305271_)))
                                                    (_tl305205305278_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e305207305271_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl305205305278_))
                                                    (let ((_e305210305281_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl305205305278_))))
                                                      (let ((_hd305209305285_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e305210305281_)))
                    (_tl305208305288_
                     (let () (declare (not safe)) (##cdr _e305210305281_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl305208305288_))
                    (let ((_e305213305291_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl305208305288_))))
                      (let ((_hd305212305295_
                             (let ()
                               (declare (not safe))
                               (##car _e305213305291_)))
                            (_tl305211305298_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305213305291_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305211305298_))
                            (let ((_e305216305301_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305211305298_))))
                              (let ((_hd305215305305_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305216305301_)))
                                    (_tl305214305308_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305216305301_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl305214305308_))
                                    (let ((_e305219305311_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl305214305308_))))
                                      (let ((_hd305218305315_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e305219305311_)))
                                            (_tl305217305318_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e305219305311_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl305217305318_))
                                            (let ((_e305222305321_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl305217305318_))))
                                              (let ((_hd305221305325_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e305222305321_)))
                                                    (_tl305220305328_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e305222305321_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl305220305328_))
                                                    (let ((_e305225305331_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl305220305328_))))
                                                      (let ((_hd305224305335_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e305225305331_)))
                    (_tl305223305338_
                     (let () (declare (not safe)) (##cdr _e305225305331_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl305223305338_))
                    (let ((_e305228305341_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl305223305338_))))
                      (let ((_hd305227305345_
                             (let ()
                               (declare (not safe))
                               (##car _e305228305341_)))
                            (_tl305226305348_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305228305341_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl305226305348_))
                            ((lambda (_L305351_
                                      _L305353_
                                      _L305354_
                                      _L305355_
                                      _L305356_
                                      _L305357_
                                      _L305358_
                                      _L305359_
                                      _L305360_
                                      _L305361_)
                               (let ((__tmp312572
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp312538
                                      (let ((__tmp312569
                                             (let ((__tmp312571
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp312570
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L305361_ '()))))
                                               (declare (not safe))
                                               (cons __tmp312571 __tmp312570)))
                                            (__tmp312539
                                             (let ((__tmp312566
                                                    (let ((__tmp312568
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp312567
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L305360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp312568 __tmp312567)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp312540
                                                    (let ((__tmp312563
                                                           (let ((__tmp312565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp312564
                          (let () (declare (not safe)) (cons _L305359_ '()))))
                     (declare (not safe))
                     (cons __tmp312565 __tmp312564)))
                  (__tmp312541
                   (let ((__tmp312560
                          (let ((__tmp312562
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp312561
                                 (let ()
                                   (declare (not safe))
                                   (cons _L305358_ '()))))
                            (declare (not safe))
                            (cons __tmp312562 __tmp312561)))
                         (__tmp312542
                          (let ((__tmp312557
                                 (let ((__tmp312559
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp312558
                                        (let ()
                                          (declare (not safe))
                                          (cons _L305357_ '()))))
                                   (declare (not safe))
                                   (cons __tmp312559 __tmp312558)))
                                (__tmp312543
                                 (let ((__tmp312554
                                        (let ((__tmp312556
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp312555
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L305356_ '()))))
                                          (declare (not safe))
                                          (cons __tmp312556 __tmp312555)))
                                       (__tmp312544
                                        (let ((__tmp312545
                                               (let ((__tmp312546
                                                      (let ((__tmp312551
                                                             (let ((__tmp312553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp312552
                            (let ()
                              (declare (not safe))
                              (cons _L305353_ '()))))
                       (declare (not safe))
                       (cons __tmp312553 __tmp312552)))
                    (__tmp312547
                     (let ((__tmp312548
                            (let ((__tmp312550
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp312549
                                   (let ()
                                     (declare (not safe))
                                     (cons _L305351_ '()))))
                              (declare (not safe))
                              (cons __tmp312550 __tmp312549))))
                       (declare (not safe))
                       (cons __tmp312548 '()))))
                (declare (not safe))
                (cons __tmp312551 __tmp312547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L305354_
                                                       __tmp312546))))
                                          (declare (not safe))
                                          (cons _L305355_ __tmp312545))))
                                   (declare (not safe))
                                   (cons __tmp312554 __tmp312544))))
                            (declare (not safe))
                            (cons __tmp312557 __tmp312543))))
                     (declare (not safe))
                     (cons __tmp312560 __tmp312542))))
              (declare (not safe))
              (cons __tmp312563 __tmp312541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp312566
                                                     __tmp312540))))
                                        (declare (not safe))
                                        (cons __tmp312569 __tmp312539))))
                                 (declare (not safe))
                                 (cons __tmp312572 __tmp312538)))
                             _hd305227305345_
                             _hd305224305335_
                             _hd305221305325_
                             _hd305218305315_
                             _hd305215305305_
                             _hd305212305295_
                             _hd305209305285_
                             _hd305206305275_
                             _hd305203305265_
                             _hd305200305255_)
                            (_g305184305234_ _g305185305238_))))
                    (_g305184305234_ _g305185305238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g305184305234_
                                                     _g305185305238_))))
                                            (_g305184305234_
                                             _g305185305238_))))
                                    (_g305184305234_ _g305185305238_))))
                            (_g305184305234_ _g305185305238_))))
                    (_g305184305234_ _g305185305238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g305184305234_
                                                     _g305185305238_))))
                                            (_g305184305234_
                                             _g305185305238_))))
                                    (_g305184305234_ _g305185305238_))))
                            (_g305184305234_ _g305185305238_))))
                    (_g305184305234_ _g305185305238_)))))
        (_g305183305401_ _$stx305180_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx305405_)
      (let* ((_g305409305423_
              (lambda (_g305410305419_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305410305419_))))
             (_g305408305464_
              (lambda (_g305410305427_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305410305427_))
                    (let ((_e305414305430_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305410305427_))))
                      (let ((_hd305413305434_
                             (let ()
                               (declare (not safe))
                               (##car _e305414305430_)))
                            (_tl305412305437_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305414305430_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305412305437_))
                            (let ((_e305417305440_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305412305437_))))
                              (let ((_hd305416305444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305417305440_)))
                                    (_tl305415305447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305417305440_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl305415305447_))
                                    ((lambda (_L305450_)
                                       (let ((__tmp312577
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp312573
                                              (let ((__tmp312574
                                                     (let ((__tmp312576
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp312575
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L305450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp312576 __tmp312575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp312574 '()))))
                                         (declare (not safe))
                                         (cons __tmp312577 __tmp312573)))
                                     _hd305416305444_)
                                    (_g305409305423_ _g305410305427_))))
                            (_g305409305423_ _g305410305427_))))
                    (_g305409305423_ _g305410305427_)))))
        (_g305408305464_ _$stx305405_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx305468_)
      (let* ((_g305472305486_
              (lambda (_g305473305482_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305473305482_))))
             (_g305471305527_
              (lambda (_g305473305490_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305473305490_))
                    (let ((_e305477305493_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305473305490_))))
                      (let ((_hd305476305497_
                             (let ()
                               (declare (not safe))
                               (##car _e305477305493_)))
                            (_tl305475305500_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305477305493_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305475305500_))
                            (let ((_e305480305503_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305475305500_))))
                              (let ((_hd305479305507_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305480305503_)))
                                    (_tl305478305510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305480305503_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl305478305510_))
                                    ((lambda (_L305513_)
                                       (let ((__tmp312582
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp312578
                                              (let ((__tmp312579
                                                     (let ((__tmp312581
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp312580
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L305513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp312581 __tmp312580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp312579 '()))))
                                         (declare (not safe))
                                         (cons __tmp312582 __tmp312578)))
                                     _hd305479305507_)
                                    (_g305472305486_ _g305473305490_))))
                            (_g305472305486_ _g305473305490_))))
                    (_g305472305486_ _g305473305490_)))))
        (_g305471305527_ _$stx305468_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx305531_)
      (let* ((_g305535305557_
              (lambda (_g305536305553_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305536305553_))))
             (_g305534305626_
              (lambda (_g305536305561_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305536305561_))
                    (let ((_e305542305564_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305536305561_))))
                      (let ((_hd305541305568_
                             (let ()
                               (declare (not safe))
                               (##car _e305542305564_)))
                            (_tl305540305571_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305542305564_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305540305571_))
                            (let ((_e305545305574_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305540305571_))))
                              (let ((_hd305544305578_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305545305574_)))
                                    (_tl305543305581_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305545305574_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl305543305581_))
                                    (let ((_e305548305584_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl305543305581_))))
                                      (let ((_hd305547305588_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e305548305584_)))
                                            (_tl305546305591_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e305548305584_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl305546305591_))
                                            (let ((_e305551305594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl305546305591_))))
                                              (let ((_hd305550305598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e305551305594_)))
                                                    (_tl305549305601_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e305551305594_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl305549305601_))
                                                    ((lambda (_L305604_
                                                              _L305606_
                                                              _L305607_)
                                                       (let ((__tmp312592
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp312583
                      (let ((__tmp312589
                             (let ((__tmp312591
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp312590
                                    (let ()
                                      (declare (not safe))
                                      (cons _L305607_ '()))))
                               (declare (not safe))
                               (cons __tmp312591 __tmp312590)))
                            (__tmp312584
                             (let ((__tmp312586
                                    (let ((__tmp312588
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp312587
                                           (let ()
                                             (declare (not safe))
                                             (cons _L305606_ '()))))
                                      (declare (not safe))
                                      (cons __tmp312588 __tmp312587)))
                                   (__tmp312585
                                    (let ()
                                      (declare (not safe))
                                      (cons _L305604_ '()))))
                               (declare (not safe))
                               (cons __tmp312586 __tmp312585))))
                        (declare (not safe))
                        (cons __tmp312589 __tmp312584))))
                 (declare (not safe))
                 (cons __tmp312592 __tmp312583)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd305550305598_
                                                     _hd305547305588_
                                                     _hd305544305578_)
                                                    (_g305535305557_
                                                     _g305536305561_))))
                                            (_g305535305557_
                                             _g305536305561_))))
                                    (_g305535305557_ _g305536305561_))))
                            (_g305535305557_ _g305536305561_))))
                    (_g305535305557_ _g305536305561_)))))
        (_g305534305626_ _$stx305531_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx305630_)
      (let* ((_g305634305656_
              (lambda (_g305635305652_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305635305652_))))
             (_g305633305725_
              (lambda (_g305635305660_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305635305660_))
                    (let ((_e305641305663_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305635305660_))))
                      (let ((_hd305640305667_
                             (let ()
                               (declare (not safe))
                               (##car _e305641305663_)))
                            (_tl305639305670_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305641305663_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305639305670_))
                            (let ((_e305644305673_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305639305670_))))
                              (let ((_hd305643305677_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305644305673_)))
                                    (_tl305642305680_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305644305673_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl305642305680_))
                                    (let ((_e305647305683_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl305642305680_))))
                                      (let ((_hd305646305687_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e305647305683_)))
                                            (_tl305645305690_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e305647305683_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl305645305690_))
                                            (let ((_e305650305693_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl305645305690_))))
                                              (let ((_hd305649305697_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e305650305693_)))
                                                    (_tl305648305700_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e305650305693_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl305648305700_))
                                                    ((lambda (_L305703_
                                                              _L305705_
                                                              _L305706_)
                                                       (let ((__tmp312602
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp312593
                      (let ((__tmp312599
                             (let ((__tmp312601
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp312600
                                    (let ()
                                      (declare (not safe))
                                      (cons _L305706_ '()))))
                               (declare (not safe))
                               (cons __tmp312601 __tmp312600)))
                            (__tmp312594
                             (let ((__tmp312596
                                    (let ((__tmp312598
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp312597
                                           (let ()
                                             (declare (not safe))
                                             (cons _L305705_ '()))))
                                      (declare (not safe))
                                      (cons __tmp312598 __tmp312597)))
                                   (__tmp312595
                                    (let ()
                                      (declare (not safe))
                                      (cons _L305703_ '()))))
                               (declare (not safe))
                               (cons __tmp312596 __tmp312595))))
                        (declare (not safe))
                        (cons __tmp312599 __tmp312594))))
                 (declare (not safe))
                 (cons __tmp312602 __tmp312593)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd305649305697_
                                                     _hd305646305687_
                                                     _hd305643305677_)
                                                    (_g305634305656_
                                                     _g305635305660_))))
                                            (_g305634305656_
                                             _g305635305660_))))
                                    (_g305634305656_ _g305635305660_))))
                            (_g305634305656_ _g305635305660_))))
                    (_g305634305656_ _g305635305660_)))))
        (_g305633305725_ _$stx305630_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx305729_)
      (let* ((___stx312112312113_ _$stx305729_)
             (_g305737305805_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx312112312113_)))))
        (let ((___kont312115312116_
               (lambda (_L306083_ _L306085_)
                 (let ((__tmp312618
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp312603
                        (let ((__tmp312614
                               (let ((__tmp312617
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp312615
                                      (let ((__tmp312616
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp312616 '()))))
                                 (declare (not safe))
                                 (cons __tmp312617 __tmp312615)))
                              (__tmp312604
                               (let ((__tmp312611
                                      (let ((__tmp312613
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp312612
                                             (let ()
                                               (declare (not safe))
                                               (cons _L306085_ '()))))
                                        (declare (not safe))
                                        (cons __tmp312613 __tmp312612)))
                                     (__tmp312605
                                      (let ((__tmp312606
                                             (let ((__tmp312607
                                                    (let ((__tmp312608
                                                           (let ((__tmp312610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp312609
                          (let () (declare (not safe)) (cons _L306083_ '()))))
                     (declare (not safe))
                     (cons __tmp312610 __tmp312609))))
              (declare (not safe))
              (cons __tmp312608 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L306083_ __tmp312607))))
                                        (declare (not safe))
                                        (cons '#f __tmp312606))))
                                 (declare (not safe))
                                 (cons __tmp312611 __tmp312605))))
                          (declare (not safe))
                          (cons __tmp312614 __tmp312604))))
                   (declare (not safe))
                   (cons __tmp312618 __tmp312603))))
              (___kont312117312118_
               (lambda (_L306014_ _L306016_)
                 (let ((__tmp312619
                        (let ((__tmp312620
                               (let ((__tmp312621
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L306014_ __tmp312621))))
                          (declare (not safe))
                          (cons 'primitive: __tmp312620))))
                   (declare (not safe))
                   (cons _L306016_ __tmp312619))))
              (___kont312119312120_
               (lambda (_L305953_ _L305955_)
                 (let ((__tmp312635
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp312622
                        (let ((__tmp312631
                               (let ((__tmp312634
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp312632
                                      (let ((__tmp312633
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp312633 '()))))
                                 (declare (not safe))
                                 (cons __tmp312634 __tmp312632)))
                              (__tmp312623
                               (let ((__tmp312628
                                      (let ((__tmp312630
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp312629
                                             (let ()
                                               (declare (not safe))
                                               (cons _L305955_ '()))))
                                        (declare (not safe))
                                        (cons __tmp312630 __tmp312629)))
                                     (__tmp312624
                                      (let ((__tmp312625
                                             (let ((__tmp312627
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp312626
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L305953_ '()))))
                                               (declare (not safe))
                                               (cons __tmp312627
                                                     __tmp312626))))
                                        (declare (not safe))
                                        (cons __tmp312625 '()))))
                                 (declare (not safe))
                                 (cons __tmp312628 __tmp312624))))
                          (declare (not safe))
                          (cons __tmp312631 __tmp312623))))
                   (declare (not safe))
                   (cons __tmp312635 __tmp312622))))
              (___kont312121312122_
               (lambda (_L305885_ _L305887_)
                 (let ((__tmp312649
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp312636
                        (let ((__tmp312645
                               (let ((__tmp312648
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp312646
                                      (let ((__tmp312647
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp312647 '()))))
                                 (declare (not safe))
                                 (cons __tmp312648 __tmp312646)))
                              (__tmp312637
                               (let ((__tmp312642
                                      (let ((__tmp312644
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp312643
                                             (let ()
                                               (declare (not safe))
                                               (cons _L305887_ '()))))
                                        (declare (not safe))
                                        (cons __tmp312644 __tmp312643)))
                                     (__tmp312638
                                      (let ((__tmp312639
                                             (let ((__tmp312641
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp312640
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L305885_ '()))))
                                               (declare (not safe))
                                               (cons __tmp312641
                                                     __tmp312640))))
                                        (declare (not safe))
                                        (cons __tmp312639 '()))))
                                 (declare (not safe))
                                 (cons __tmp312642 __tmp312638))))
                          (declare (not safe))
                          (cons __tmp312645 __tmp312637))))
                   (declare (not safe))
                   (cons __tmp312649 __tmp312636))))
              (___kont312123312124_
               (lambda (_L305832_ _L305834_)
                 (let ((__tmp312650
                        (let ((__tmp312651
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L305832_ __tmp312651))))
                   (declare (not safe))
                   (cons _L305834_ __tmp312650)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx312112312113_))
              (let ((_e305743306039_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx312112312113_))))
                (let ((_tl305741306046_
                       (let () (declare (not safe)) (##cdr _e305743306039_)))
                      (_hd305742306043_
                       (let () (declare (not safe)) (##car _e305743306039_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl305741306046_))
                      (let ((_e305746306049_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl305741306046_))))
                        (let ((_tl305744306056_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e305746306049_)))
                              (_hd305745306053_
                               (let ()
                                 (declare (not safe))
                                 (##car _e305746306049_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl305744306056_))
                              (let ((_e305749306059_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl305744306056_))))
                                (let ((_tl305747306066_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e305749306059_)))
                                      (_hd305748306063_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e305749306059_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd305748306063_))
                                      (let ((_e305750306069_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd305748306063_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e305750306069_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl305747306066_))
                                                (let ((_e305753306073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl305747306066_))))
                                                  (let ((_tl305751306080_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e305753306073_)))
                                                        (_hd305752306077_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e305753306073_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl305751306080_))
                                                        (___kont312115312116_
                                                         _hd305752306077_
                                                         _hd305745306053_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd305745306053_))
                                                            (let ((_e305762306000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd305745306053_))))
                      (declare (not safe))
                      (_g305737305805_))
                    (let () (declare (not safe)) (_g305737305805_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd305745306053_))
                                                    (let ((_e305762306000_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd305745306053_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e305762306000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl305747306066_))
                      (___kont312117312118_ _hd305748306063_ _hd305742306043_)
                      (let () (declare (not safe)) (_g305737305805_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl305747306066_))
                      (___kont312121312122_ _hd305748306063_ _hd305745306053_)
                      (let () (declare (not safe)) (_g305737305805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl305747306066_))
                                                        (___kont312121312122_
                                                         _hd305748306063_
                                                         _hd305745306053_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g305737305805_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd305745306053_))
                                                (let ((_e305762306000_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd305745306053_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e305762306000_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl305747306066_))
                                                          (___kont312117312118_
                                                           _hd305748306063_
                                                           _hd305742306043_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl305747306066_))
                      (let ((_e305780305943_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl305747306066_))))
                        (let ((_tl305778305950_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e305780305943_)))
                              (_hd305779305947_
                               (let ()
                                 (declare (not safe))
                                 (##car _e305780305943_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl305778305950_))
                              (___kont312119312120_
                               _hd305779305947_
                               _hd305748306063_)
                              (let ()
                                (declare (not safe))
                                (_g305737305805_)))))
                      (let () (declare (not safe)) (_g305737305805_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl305747306066_))
                  (___kont312121312122_ _hd305748306063_ _hd305745306053_)
                  (let () (declare (not safe)) (_g305737305805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl305747306066_))
                                                    (___kont312121312122_
                                                     _hd305748306063_
                                                     _hd305745306053_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g305737305805_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd305745306053_))
                                          (let ((_e305762306000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd305745306053_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e305762306000_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl305747306066_))
                                                    (___kont312117312118_
                                                     _hd305748306063_
                                                     _hd305742306043_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl305747306066_))
                                                        (let ((_e305780305943_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl305747306066_))))
                  (let ((_tl305778305950_
                         (let () (declare (not safe)) (##cdr _e305780305943_)))
                        (_hd305779305947_
                         (let ()
                           (declare (not safe))
                           (##car _e305780305943_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl305778305950_))
                        (___kont312119312120_
                         _hd305779305947_
                         _hd305748306063_)
                        (let () (declare (not safe)) (_g305737305805_)))))
                (let () (declare (not safe)) (_g305737305805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl305747306066_))
                                                    (___kont312121312122_
                                                     _hd305748306063_
                                                     _hd305745306053_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g305737305805_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl305747306066_))
                                              (___kont312121312122_
                                               _hd305748306063_
                                               _hd305745306053_)
                                              (let ()
                                                (declare (not safe))
                                                (_g305737305805_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd305745306053_))
                                  (let ((_e305762306000_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd305745306053_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl305744306056_))
                                        (___kont312123312124_
                                         _hd305745306053_
                                         _hd305742306043_)
                                        (let ()
                                          (declare (not safe))
                                          (_g305737305805_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl305744306056_))
                                      (___kont312123312124_
                                       _hd305745306053_
                                       _hd305742306043_)
                                      (let ()
                                        (declare (not safe))
                                        (_g305737305805_)))))))
                      (let () (declare (not safe)) (_g305737305805_)))))
              (let () (declare (not safe)) (_g305737305805_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx306107_)
      (let* ((___stx312252312253_ _$stx306107_)
             (_g306112306167_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx312252312253_)))))
        (let ((___kont312255312256_
               (lambda (_L306352_ _L306354_)
                 (let ((__tmp312667
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp312652
                        (let ((__tmp312663
                               (let ((__tmp312666
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp312664
                                      (let ((__tmp312665
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp312665 '()))))
                                 (declare (not safe))
                                 (cons __tmp312666 __tmp312664)))
                              (__tmp312653
                               (let ((__tmp312654
                                      (let ((__tmp312662
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp312655
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L306352_
                                                  _L306354_))
                                               (let ((__tmp312656
                                                      (lambda (_g306371306375_
                                                               _g306372306378_
                                                               _g306373306380_)
                                                        (let ((__tmp312657
                                                               (let ((__tmp312661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp312658
                              (let ((__tmp312659
                                     (let ((__tmp312660
                                            (let ()
                                              (declare (not safe))
                                              (cons _g306371306375_ '()))))
                                       (declare (not safe))
                                       (cons _g306372306378_ __tmp312660))))
                                (declare (not safe))
                                (cons 'primitive: __tmp312659))))
                         (declare (not safe))
                         (cons __tmp312661 __tmp312658))))
                  (declare (not safe))
                  (cons __tmp312657 _g306373306380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp312656
                                                         '()
                                                         _L306352_
                                                         _L306354_)))))
                                        (declare (not safe))
                                        (cons __tmp312662 __tmp312655))))
                                 (declare (not safe))
                                 (cons __tmp312654 '()))))
                          (declare (not safe))
                          (cons __tmp312663 __tmp312653))))
                   (declare (not safe))
                   (cons __tmp312667 __tmp312652))))
              (___kont312259312260_
               (lambda (_L306238_ _L306240_)
                 (let ((__tmp312682
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp312668
                        (let ((__tmp312678
                               (let ((__tmp312681
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp312679
                                      (let ((__tmp312680
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp312680 '()))))
                                 (declare (not safe))
                                 (cons __tmp312681 __tmp312679)))
                              (__tmp312669
                               (let ((__tmp312670
                                      (let ((__tmp312677
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp312671
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L306238_
                                                  _L306240_))
                                               (let ((__tmp312672
                                                      (lambda (_g306255306259_
                                                               _g306256306262_
                                                               _g306257306264_)
                                                        (let ((__tmp312673
                                                               (let ((__tmp312676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp312674
                              (let ((__tmp312675
                                     (let ()
                                       (declare (not safe))
                                       (cons _g306255306259_ '()))))
                                (declare (not safe))
                                (cons _g306256306262_ __tmp312675))))
                         (declare (not safe))
                         (cons __tmp312676 __tmp312674))))
                  (declare (not safe))
                  (cons __tmp312673 _g306257306264_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp312672
                                                         '()
                                                         _L306238_
                                                         _L306240_)))))
                                        (declare (not safe))
                                        (cons __tmp312677 __tmp312671))))
                                 (declare (not safe))
                                 (cons __tmp312670 '()))))
                          (declare (not safe))
                          (cons __tmp312678 __tmp312669))))
                   (declare (not safe))
                   (cons __tmp312682 __tmp312668)))))
          (let* ((___match312303312304_
                  (lambda (_e306144306174_
                           _hd306143306178_
                           _tl306142306181_
                           ___splice312261312262_
                           _target306145306184_
                           _tl306147306187_)
                    (letrec ((_loop306148306190_
                              (lambda (_hd306146306194_
                                       _dispatch306152306197_
                                       _arity306153306199_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd306146306194_))
                                    (let ((_e306149306202_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd306146306194_))))
                                      (let ((_lp-tl306151306209_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306149306202_)))
                                            (_lp-hd306150306206_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306149306202_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd306150306206_))
                                            (let ((_e306158306212_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd306150306206_))))
                                              (let ((_tl306156306219_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e306158306212_)))
                                                    (_hd306157306216_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e306158306212_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl306156306219_))
                                                    (let ((_e306161306222_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl306156306219_))))
                                                      (let ((_tl306159306229_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e306161306222_)))
                    (_hd306160306226_
                     (let () (declare (not safe)) (##car _e306161306222_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl306159306229_))
                    (_loop306148306190_
                     _lp-tl306151306209_
                     (let ()
                       (declare (not safe))
                       (cons _hd306160306226_ _dispatch306152306197_))
                     (let ()
                       (declare (not safe))
                       (cons _hd306157306216_ _arity306153306199_)))
                    (let () (declare (not safe)) (_g306112306167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g306112306167_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g306112306167_)))))
                                    (let ((_arity306155306235_
                                           (reverse _arity306153306199_))
                                          (_dispatch306154306232_
                                           (reverse _dispatch306152306197_)))
                                      (___kont312259312260_
                                       _dispatch306154306232_
                                       _arity306155306235_))))))
                      (_loop306148306190_ _target306145306184_ '() '()))))
                 (___match312295312296_
                  (lambda (_e306144306174_ _hd306143306178_ _tl306142306181_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl306142306181_))
                        (let ((___splice312261312262_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl306142306181_
                                  '0))))
                          (let ((_tl306147306187_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice312261312262_ '1)))
                                (_target306145306184_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice312261312262_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl306147306187_))
                                (___match312303312304_
                                 _e306144306174_
                                 _hd306143306178_
                                 _tl306142306181_
                                 ___splice312261312262_
                                 _target306145306184_
                                 _tl306147306187_)
                                (let ()
                                  (declare (not safe))
                                  (_g306112306167_)))))
                        (let () (declare (not safe)) (_g306112306167_)))))
                 (___match312289312290_
                  (lambda (_e306118306274_
                           _hd306117306278_
                           _tl306116306281_
                           _e306121306284_
                           _hd306120306288_
                           _tl306119306291_
                           _e306122306294_
                           ___splice312257312258_
                           _target306123306298_
                           _tl306125306301_)
                    (letrec ((_loop306126306304_
                              (lambda (_hd306124306308_
                                       _dispatch306130306311_
                                       _arity306131306313_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd306124306308_))
                                    (let ((_e306127306316_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd306124306308_))))
                                      (let ((_lp-tl306129306323_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306127306316_)))
                                            (_lp-hd306128306320_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306127306316_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd306128306320_))
                                            (let ((_e306136306326_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd306128306320_))))
                                              (let ((_tl306134306333_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e306136306326_)))
                                                    (_hd306135306330_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e306136306326_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl306134306333_))
                                                    (let ((_e306139306336_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl306134306333_))))
                                                      (let ((_tl306137306343_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e306139306336_)))
                    (_hd306138306340_
                     (let () (declare (not safe)) (##car _e306139306336_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl306137306343_))
                    (_loop306126306304_
                     _lp-tl306129306323_
                     (let ()
                       (declare (not safe))
                       (cons _hd306138306340_ _dispatch306130306311_))
                     (let ()
                       (declare (not safe))
                       (cons _hd306135306330_ _arity306131306313_)))
                    (___match312295312296_
                     _e306118306274_
                     _hd306117306278_
                     _tl306116306281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match312295312296_
                                                     _e306118306274_
                                                     _hd306117306278_
                                                     _tl306116306281_))))
                                            (___match312295312296_
                                             _e306118306274_
                                             _hd306117306278_
                                             _tl306116306281_))))
                                    (let ((_arity306133306349_
                                           (reverse _arity306131306313_))
                                          (_dispatch306132306346_
                                           (reverse _dispatch306130306311_)))
                                      (___kont312255312256_
                                       _dispatch306132306346_
                                       _arity306133306349_))))))
                      (_loop306126306304_ _target306123306298_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx312252312253_))
                (let ((_e306118306274_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx312252312253_))))
                  (let ((_tl306116306281_
                         (let () (declare (not safe)) (##cdr _e306118306274_)))
                        (_hd306117306278_
                         (let ()
                           (declare (not safe))
                           (##car _e306118306274_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl306116306281_))
                        (let ((_e306121306284_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl306116306281_))))
                          (let ((_tl306119306291_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e306121306284_)))
                                (_hd306120306288_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e306121306284_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd306120306288_))
                                (let ((_e306122306294_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd306120306288_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e306122306294_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl306119306291_))
                                          (let ((___splice312257312258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl306119306291_
                                                    '0))))
                                            (let ((_tl306125306301_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice312257312258_
                                                      '1)))
                                                  (_target306123306298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice312257312258_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl306125306301_))
                                                  (___match312289312290_
                                                   _e306118306274_
                                                   _hd306117306278_
                                                   _tl306116306281_
                                                   _e306121306284_
                                                   _hd306120306288_
                                                   _tl306119306291_
                                                   _e306122306294_
                                                   ___splice312257312258_
                                                   _target306123306298_
                                                   _tl306125306301_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl306116306281_))
                                                      (let ((___splice312261312262_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl306116306281_ '0))))
                (let ((_tl306147306187_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312261312262_ '1)))
                      (_target306145306184_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312261312262_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl306147306187_))
                      (___match312303312304_
                       _e306118306274_
                       _hd306117306278_
                       _tl306116306281_
                       ___splice312261312262_
                       _target306145306184_
                       _tl306147306187_)
                      (let () (declare (not safe)) (_g306112306167_)))))
              (let () (declare (not safe)) (_g306112306167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl306116306281_))
                                              (let ((___splice312261312262_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl306116306281_
                                                        '0))))
                                                (let ((_tl306147306187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice312261312262_
                                                          '1)))
                                                      (_target306145306184_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice312261312262_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl306147306187_))
                                                      (___match312303312304_
                                                       _e306118306274_
                                                       _hd306117306278_
                                                       _tl306116306281_
                                                       ___splice312261312262_
                                                       _target306145306184_
                                                       _tl306147306187_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g306112306167_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g306112306167_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl306116306281_))
                                          (let ((___splice312261312262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl306116306281_
                                                    '0))))
                                            (let ((_tl306147306187_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice312261312262_
                                                      '1)))
                                                  (_target306145306184_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice312261312262_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl306147306187_))
                                                  (___match312303312304_
                                                   _e306118306274_
                                                   _hd306117306278_
                                                   _tl306116306281_
                                                   ___splice312261312262_
                                                   _target306145306184_
                                                   _tl306147306187_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g306112306167_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g306112306167_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl306116306281_))
                                    (let ((___splice312261312262_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl306116306281_
                                              '0))))
                                      (let ((_tl306147306187_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312261312262_
                                                '1)))
                                            (_target306145306184_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312261312262_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl306147306187_))
                                            (___match312303312304_
                                             _e306118306274_
                                             _hd306117306278_
                                             _tl306116306281_
                                             ___splice312261312262_
                                             _target306145306184_
                                             _tl306147306187_)
                                            (let ()
                                              (declare (not safe))
                                              (_g306112306167_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g306112306167_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl306116306281_))
                            (let ((___splice312261312262_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl306116306281_
                                      '0))))
                              (let ((_tl306147306187_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice312261312262_
                                        '1)))
                                    (_target306145306184_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice312261312262_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl306147306187_))
                                    (___match312303312304_
                                     _e306118306274_
                                     _hd306117306278_
                                     _tl306116306281_
                                     ___splice312261312262_
                                     _target306145306184_
                                     _tl306147306187_)
                                    (let ()
                                      (declare (not safe))
                                      (_g306112306167_)))))
                            (let () (declare (not safe)) (_g306112306167_))))))
                (let () (declare (not safe)) (_g306112306167_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx306389_)
      (let* ((_g306393306411_
              (lambda (_g306394306407_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g306394306407_))))
             (_g306392306466_
              (lambda (_g306394306415_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g306394306415_))
                    (let ((_e306399306418_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g306394306415_))))
                      (let ((_hd306398306422_
                             (let ()
                               (declare (not safe))
                               (##car _e306399306418_)))
                            (_tl306397306425_
                             (let ()
                               (declare (not safe))
                               (##cdr _e306399306418_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl306397306425_))
                            (let ((_e306402306428_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl306397306425_))))
                              (let ((_hd306401306432_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e306402306428_)))
                                    (_tl306400306435_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e306402306428_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl306400306435_))
                                    (let ((_e306405306438_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl306400306435_))))
                                      (let ((_hd306404306442_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306405306438_)))
                                            (_tl306403306445_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306405306438_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl306403306445_))
                                            ((lambda (_L306448_ _L306450_)
                                               (let ((__tmp312696
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp312683
                                                      (let ((__tmp312692
                                                             (let ((__tmp312695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp312693
                            (let ((__tmp312694
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp312694 '()))))
                       (declare (not safe))
                       (cons __tmp312695 __tmp312693)))
                    (__tmp312684
                     (let ((__tmp312689
                            (let ((__tmp312691
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp312690
                                   (let ()
                                     (declare (not safe))
                                     (cons _L306450_ '()))))
                              (declare (not safe))
                              (cons __tmp312691 __tmp312690)))
                           (__tmp312685
                            (let ((__tmp312686
                                   (let ((__tmp312688
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp312687
                                          (let ()
                                            (declare (not safe))
                                            (cons _L306448_ '()))))
                                     (declare (not safe))
                                     (cons __tmp312688 __tmp312687))))
                              (declare (not safe))
                              (cons __tmp312686 '()))))
                       (declare (not safe))
                       (cons __tmp312689 __tmp312685))))
                (declare (not safe))
                (cons __tmp312692 __tmp312684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp312696
                                                       __tmp312683)))
                                             _hd306404306442_
                                             _hd306401306432_)
                                            (_g306393306411_
                                             _g306394306415_))))
                                    (_g306393306411_ _g306394306415_))))
                            (_g306393306411_ _g306394306415_))))
                    (_g306393306411_ _g306394306415_)))))
        (_g306392306466_ _$stx306389_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx306470_)
      (let* ((_g306474306492_
              (lambda (_g306475306488_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g306475306488_))))
             (_g306473306547_
              (lambda (_g306475306496_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g306475306496_))
                    (let ((_e306480306499_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g306475306496_))))
                      (let ((_hd306479306503_
                             (let ()
                               (declare (not safe))
                               (##car _e306480306499_)))
                            (_tl306478306506_
                             (let ()
                               (declare (not safe))
                               (##cdr _e306480306499_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl306478306506_))
                            (let ((_e306483306509_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl306478306506_))))
                              (let ((_hd306482306513_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e306483306509_)))
                                    (_tl306481306516_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e306483306509_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl306481306516_))
                                    (let ((_e306486306519_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl306481306516_))))
                                      (let ((_hd306485306523_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306486306519_)))
                                            (_tl306484306526_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306486306519_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl306484306526_))
                                            ((lambda (_L306529_ _L306531_)
                                               (let ((__tmp312710
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp312697
                                                      (let ((__tmp312706
                                                             (let ((__tmp312709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp312707
                            (let ((__tmp312708
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp312708 '()))))
                       (declare (not safe))
                       (cons __tmp312709 __tmp312707)))
                    (__tmp312698
                     (let ((__tmp312703
                            (let ((__tmp312705
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp312704
                                   (let ()
                                     (declare (not safe))
                                     (cons _L306531_ '()))))
                              (declare (not safe))
                              (cons __tmp312705 __tmp312704)))
                           (__tmp312699
                            (let ((__tmp312700
                                   (let ((__tmp312702
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp312701
                                          (let ()
                                            (declare (not safe))
                                            (cons _L306529_ '()))))
                                     (declare (not safe))
                                     (cons __tmp312702 __tmp312701))))
                              (declare (not safe))
                              (cons __tmp312700 '()))))
                       (declare (not safe))
                       (cons __tmp312703 __tmp312699))))
                (declare (not safe))
                (cons __tmp312706 __tmp312698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp312710
                                                       __tmp312697)))
                                             _hd306485306523_
                                             _hd306482306513_)
                                            (_g306474306492_
                                             _g306475306496_))))
                                    (_g306474306492_ _g306475306496_))))
                            (_g306474306492_ _g306475306496_))))
                    (_g306474306492_ _g306475306496_)))))
        (_g306473306547_ _$stx306470_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx306551_)
      (let* ((___stx312306312307_ _$stx306551_)
             (_g306558306629_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx312306312307_)))))
        (let ((___kont312309312310_
               (lambda (_L306920_ _L306922_)
                 (let ((__tmp312716
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp312711
                        (let ((__tmp312712
                               (let ((__tmp312713
                                      (let ((__tmp312715
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp312714
                                             (let ()
                                               (declare (not safe))
                                               (cons _L306920_ '()))))
                                        (declare (not safe))
                                        (cons __tmp312715 __tmp312714))))
                                 (declare (not safe))
                                 (cons __tmp312713 '()))))
                          (declare (not safe))
                          (cons _L306922_ __tmp312712))))
                   (declare (not safe))
                   (cons __tmp312716 __tmp312711))))
              (___kont312311312312_
               (lambda (_L306839_ _L306841_)
                 (let ((__tmp312725
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp312717
                        (let ((__tmp312718
                               (let ((__tmp312719
                                      (let ((__tmp312724
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp312720
                                             (let ((__tmp312721
                                                    (lambda (_g306860306863_
                                                             _g306861306866_)
                                                      (let ((__tmp312722
                                                             (let ((__tmp312723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g306860306863_ __tmp312723))))
                (declare (not safe))
                (cons __tmp312722 _g306861306866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp312721
                                                       '()
                                                       _L306839_))))
                                        (declare (not safe))
                                        (cons __tmp312724 __tmp312720))))
                                 (declare (not safe))
                                 (cons __tmp312719 '()))))
                          (declare (not safe))
                          (cons _L306841_ __tmp312718))))
                   (declare (not safe))
                   (cons __tmp312725 __tmp312717))))
              (___kont312315312316_
               (lambda (_L306751_ _L306753_)
                 (let ((__tmp312732
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp312726
                        (let ((__tmp312727
                               (let ((__tmp312728
                                      (let ((__tmp312731
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp312729
                                             (let ((__tmp312730
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L306751_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp312730))))
                                        (declare (not safe))
                                        (cons __tmp312731 __tmp312729))))
                                 (declare (not safe))
                                 (cons __tmp312728 '()))))
                          (declare (not safe))
                          (cons _L306753_ __tmp312727))))
                   (declare (not safe))
                   (cons __tmp312732 __tmp312726))))
              (___kont312317312318_
               (lambda (_L306686_ _L306688_)
                 (let ((__tmp312742
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp312733
                        (let ((__tmp312734
                               (let ((__tmp312735
                                      (let ((__tmp312741
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp312736
                                             (let ((__tmp312737
                                                    (let ((__tmp312738
                                                           (lambda (_g306705306708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g306706306711_)
                     (let ((__tmp312739
                            (let ((__tmp312740
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g306705306708_ __tmp312740))))
                       (declare (not safe))
                       (cons __tmp312739 _g306706306711_)))))
              (declare (not safe))
              (foldr1 __tmp312738 '() _L306686_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp312737))))
                                        (declare (not safe))
                                        (cons __tmp312741 __tmp312736))))
                                 (declare (not safe))
                                 (cons __tmp312735 '()))))
                          (declare (not safe))
                          (cons _L306688_ __tmp312734))))
                   (declare (not safe))
                   (cons __tmp312742 __tmp312733)))))
          (let* ((___match312425312426_
                  (lambda (_e306611306636_
                           _hd306610306640_
                           _tl306609306643_
                           _e306614306646_
                           _hd306613306650_
                           _tl306612306653_
                           ___splice312319312320_
                           _target306615306656_
                           _tl306617306659_)
                    (letrec ((_loop306618306662_
                              (lambda (_hd306616306666_ _arity306622306669_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd306616306666_))
                                    (let ((_e306619306672_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd306616306666_))))
                                      (let ((_lp-tl306621306679_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306619306672_)))
                                            (_lp-hd306620306676_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306619306672_))))
                                        (_loop306618306662_
                                         _lp-tl306621306679_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd306620306676_
                                                 _arity306622306669_)))))
                                    (let ((_arity306623306682_
                                           (reverse _arity306622306669_)))
                                      (___kont312317312318_
                                       _arity306623306682_
                                       _hd306613306650_))))))
                      (_loop306618306662_ _target306615306656_ '()))))
                 (___match312385312386_
                  (lambda (_e306579306775_
                           _hd306578306779_
                           _tl306577306782_
                           _e306582306785_
                           _hd306581306789_
                           _tl306580306792_
                           _e306585306795_
                           _hd306584306799_
                           _tl306583306802_
                           _e306586306805_
                           ___splice312313312314_
                           _target306587306809_
                           _tl306589306812_)
                    (letrec ((_loop306590306815_
                              (lambda (_hd306588306819_ _arity306594306822_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd306588306819_))
                                    (let ((_e306591306825_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd306588306819_))))
                                      (let ((_lp-tl306593306832_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306591306825_)))
                                            (_lp-hd306592306829_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306591306825_))))
                                        (_loop306590306815_
                                         _lp-tl306593306832_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd306592306829_
                                                 _arity306594306822_)))))
                                    (let ((_arity306595306835_
                                           (reverse _arity306594306822_)))
                                      (___kont312311312312_
                                       _arity306595306835_
                                       _hd306581306789_))))))
                      (_loop306590306815_ _target306587306809_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx312306312307_))
                (let ((_e306564306876_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx312306312307_))))
                  (let ((_tl306562306883_
                         (let () (declare (not safe)) (##cdr _e306564306876_)))
                        (_hd306563306880_
                         (let ()
                           (declare (not safe))
                           (##car _e306564306876_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl306562306883_))
                        (let ((_e306567306886_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl306562306883_))))
                          (let ((_tl306565306893_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e306567306886_)))
                                (_hd306566306890_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e306567306886_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl306565306893_))
                                (let ((_e306570306896_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl306565306893_))))
                                  (let ((_tl306568306903_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e306570306896_)))
                                        (_hd306569306900_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e306570306896_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd306569306900_))
                                        (let ((_e306571306906_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd306569306900_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e306571306906_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl306568306903_))
                                                  (let ((_e306574306910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl306568306903_))))
                                                    (let ((_tl306572306917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e306574306910_)))
                                                          (_hd306573306914_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e306574306910_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl306572306917_))
                                                          (___kont312309312310_
                                                           _hd306573306914_
                                                           _hd306566306890_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl306568306903_))
                      (let ((___splice312313312314_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl306568306903_ '0))))
                        (let ((_tl306589306812_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice312313312314_ '1)))
                              (_target306587306809_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice312313312314_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl306589306812_))
                              (___match312385312386_
                               _e306564306876_
                               _hd306563306880_
                               _tl306562306883_
                               _e306567306886_
                               _hd306566306890_
                               _tl306565306893_
                               _e306570306896_
                               _hd306569306900_
                               _tl306568306903_
                               _e306571306906_
                               ___splice312313312314_
                               _target306587306809_
                               _tl306589306812_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl306565306893_))
                                  (let ((___splice312319312320_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl306565306893_
                                            '0))))
                                    (let ((_tl306617306659_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice312319312320_
                                              '1)))
                                          (_target306615306656_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice312319312320_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl306617306659_))
                                          (___match312425312426_
                                           _e306564306876_
                                           _hd306563306880_
                                           _tl306562306883_
                                           _e306567306886_
                                           _hd306566306890_
                                           _tl306565306893_
                                           ___splice312319312320_
                                           _target306615306656_
                                           _tl306617306659_)
                                          (let ()
                                            (declare (not safe))
                                            (_g306558306629_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g306558306629_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl306565306893_))
                          (let ((___splice312319312320_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl306565306893_
                                    '0))))
                            (let ((_tl306617306659_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice312319312320_ '1)))
                                  (_target306615306656_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice312319312320_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl306617306659_))
                                  (___match312425312426_
                                   _e306564306876_
                                   _hd306563306880_
                                   _tl306562306883_
                                   _e306567306886_
                                   _hd306566306890_
                                   _tl306565306893_
                                   ___splice312319312320_
                                   _target306615306656_
                                   _tl306617306659_)
                                  (let ()
                                    (declare (not safe))
                                    (_g306558306629_)))))
                          (let () (declare (not safe)) (_g306558306629_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl306568306903_))
                                                      (let ((___splice312313312314_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl306568306903_ '0))))
                (let ((_tl306589306812_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312313312314_ '1)))
                      (_target306587306809_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312313312314_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl306589306812_))
                      (___match312385312386_
                       _e306564306876_
                       _hd306563306880_
                       _tl306562306883_
                       _e306567306886_
                       _hd306566306890_
                       _tl306565306893_
                       _e306570306896_
                       _hd306569306900_
                       _tl306568306903_
                       _e306571306906_
                       ___splice312313312314_
                       _target306587306809_
                       _tl306589306812_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl306568306903_))
                          (___kont312315312316_
                           _hd306569306900_
                           _hd306566306890_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl306565306893_))
                              (let ((___splice312319312320_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl306565306893_
                                        '0))))
                                (let ((_tl306617306659_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice312319312320_
                                          '1)))
                                      (_target306615306656_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice312319312320_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl306617306659_))
                                      (___match312425312426_
                                       _e306564306876_
                                       _hd306563306880_
                                       _tl306562306883_
                                       _e306567306886_
                                       _hd306566306890_
                                       _tl306565306893_
                                       ___splice312319312320_
                                       _target306615306656_
                                       _tl306617306659_)
                                      (let ()
                                        (declare (not safe))
                                        (_g306558306629_)))))
                              (let ()
                                (declare (not safe))
                                (_g306558306629_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl306568306903_))
                  (___kont312315312316_ _hd306569306900_ _hd306566306890_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl306565306893_))
                      (let ((___splice312319312320_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl306565306893_ '0))))
                        (let ((_tl306617306659_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice312319312320_ '1)))
                              (_target306615306656_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice312319312320_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl306617306659_))
                              (___match312425312426_
                               _e306564306876_
                               _hd306563306880_
                               _tl306562306883_
                               _e306567306886_
                               _hd306566306890_
                               _tl306565306893_
                               ___splice312319312320_
                               _target306615306656_
                               _tl306617306659_)
                              (let ()
                                (declare (not safe))
                                (_g306558306629_)))))
                      (let () (declare (not safe)) (_g306558306629_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl306568306903_))
                                                  (___kont312315312316_
                                                   _hd306569306900_
                                                   _hd306566306890_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl306565306893_))
                                                      (let ((___splice312319312320_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl306565306893_ '0))))
                (let ((_tl306617306659_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312319312320_ '1)))
                      (_target306615306656_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312319312320_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl306617306659_))
                      (___match312425312426_
                       _e306564306876_
                       _hd306563306880_
                       _tl306562306883_
                       _e306567306886_
                       _hd306566306890_
                       _tl306565306893_
                       ___splice312319312320_
                       _target306615306656_
                       _tl306617306659_)
                      (let () (declare (not safe)) (_g306558306629_)))))
              (let () (declare (not safe)) (_g306558306629_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl306568306903_))
                                            (___kont312315312316_
                                             _hd306569306900_
                                             _hd306566306890_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl306565306893_))
                                                (let ((___splice312319312320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl306565306893_
                                                          '0))))
                                                  (let ((_tl306617306659_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice312319312320_
                                                            '1)))
                                                        (_target306615306656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice312319312320_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl306617306659_))
                                                        (___match312425312426_
                                                         _e306564306876_
                                                         _hd306563306880_
                                                         _tl306562306883_
                                                         _e306567306886_
                                                         _hd306566306890_
                                                         _tl306565306893_
                                                         ___splice312319312320_
                                                         _target306615306656_
                                                         _tl306617306659_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g306558306629_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g306558306629_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl306565306893_))
                                    (let ((___splice312319312320_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl306565306893_
                                              '0))))
                                      (let ((_tl306617306659_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312319312320_
                                                '1)))
                                            (_target306615306656_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312319312320_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl306617306659_))
                                            (___match312425312426_
                                             _e306564306876_
                                             _hd306563306880_
                                             _tl306562306883_
                                             _e306567306886_
                                             _hd306566306890_
                                             _tl306565306893_
                                             ___splice312319312320_
                                             _target306615306656_
                                             _tl306617306659_)
                                            (let ()
                                              (declare (not safe))
                                              (_g306558306629_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g306558306629_))))))
                        (let () (declare (not safe)) (_g306558306629_)))))
                (let () (declare (not safe)) (_g306558306629_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx306946_)
      (let* ((___stx312428312429_ _$stx306946_)
             (_g306951306986_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx312428312429_)))))
        (let ((___kont312431312432_
               (lambda (_L307108_ _L307110_)
                 (let ((__tmp312748
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp312743
                        (let ((__tmp312744
                               (let ((__tmp312745
                                      (let ((__tmp312747
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp312746
                                             (let ()
                                               (declare (not safe))
                                               (cons _L307108_ '()))))
                                        (declare (not safe))
                                        (cons __tmp312747 __tmp312746))))
                                 (declare (not safe))
                                 (cons __tmp312745 '()))))
                          (declare (not safe))
                          (cons _L307110_ __tmp312744))))
                   (declare (not safe))
                   (cons __tmp312748 __tmp312743))))
              (___kont312433312434_
               (lambda (_L307043_ _L307045_)
                 (let ((__tmp312757
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp312749
                        (let ((__tmp312750
                               (let ((__tmp312751
                                      (let ((__tmp312756
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp312752
                                             (let ((__tmp312753
                                                    (lambda (_g307062307065_
                                                             _g307063307068_)
                                                      (let ((__tmp312754
                                                             (let ((__tmp312755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g307062307065_ __tmp312755))))
                (declare (not safe))
                (cons __tmp312754 _g307063307068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp312753
                                                       '()
                                                       _L307043_))))
                                        (declare (not safe))
                                        (cons __tmp312756 __tmp312752))))
                                 (declare (not safe))
                                 (cons __tmp312751 '()))))
                          (declare (not safe))
                          (cons _L307045_ __tmp312750))))
                   (declare (not safe))
                   (cons __tmp312757 __tmp312749)))))
          (let ((___match312477312478_
                 (lambda (_e306968306993_
                          _hd306967306997_
                          _tl306966307000_
                          _e306971307003_
                          _hd306970307007_
                          _tl306969307010_
                          ___splice312435312436_
                          _target306972307013_
                          _tl306974307016_)
                   (letrec ((_loop306975307019_
                             (lambda (_hd306973307023_ _arity306979307026_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd306973307023_))
                                   (let ((_e306976307029_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd306973307023_))))
                                     (let ((_lp-tl306978307036_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e306976307029_)))
                                           (_lp-hd306977307033_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e306976307029_))))
                                       (_loop306975307019_
                                        _lp-tl306978307036_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd306977307033_
                                                _arity306979307026_)))))
                                   (let ((_arity306980307039_
                                          (reverse _arity306979307026_)))
                                     (___kont312433312434_
                                      _arity306980307039_
                                      _hd306970307007_))))))
                     (_loop306975307019_ _target306972307013_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx312428312429_))
                (let ((_e306957307078_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx312428312429_))))
                  (let ((_tl306955307085_
                         (let () (declare (not safe)) (##cdr _e306957307078_)))
                        (_hd306956307082_
                         (let ()
                           (declare (not safe))
                           (##car _e306957307078_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl306955307085_))
                        (let ((_e306960307088_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl306955307085_))))
                          (let ((_tl306958307095_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e306960307088_)))
                                (_hd306959307092_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e306960307088_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl306958307095_))
                                (let ((_e306963307098_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl306958307095_))))
                                  (let ((_tl306961307105_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e306963307098_)))
                                        (_hd306962307102_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e306963307098_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl306961307105_))
                                        (___kont312431312432_
                                         _hd306962307102_
                                         _hd306959307092_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl306958307095_))
                                            (let ((___splice312435312436_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl306958307095_
                                                      '0))))
                                              (let ((_tl306974307016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice312435312436_
                                                        '1)))
                                                    (_target306972307013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice312435312436_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl306974307016_))
                                                    (___match312477312478_
                                                     _e306957307078_
                                                     _hd306956307082_
                                                     _tl306955307085_
                                                     _e306960307088_
                                                     _hd306959307092_
                                                     _tl306958307095_
                                                     ___splice312435312436_
                                                     _target306972307013_
                                                     _tl306974307016_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g306951306986_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g306951306986_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl306958307095_))
                                    (let ((___splice312435312436_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl306958307095_
                                              '0))))
                                      (let ((_tl306974307016_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312435312436_
                                                '1)))
                                            (_target306972307013_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312435312436_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl306974307016_))
                                            (___match312477312478_
                                             _e306957307078_
                                             _hd306956307082_
                                             _tl306955307085_
                                             _e306960307088_
                                             _hd306959307092_
                                             _tl306958307095_
                                             ___splice312435312436_
                                             _target306972307013_
                                             _tl306974307016_)
                                            (let ()
                                              (declare (not safe))
                                              (_g306951306986_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g306951306986_))))))
                        (let () (declare (not safe)) (_g306951306986_)))))
                (let () (declare (not safe)) (_g306951306986_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx307130_)
      (let* ((_g307134307169_
              (lambda (_g307135307165_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g307135307165_))))
             (_g307133307297_
              (lambda (_g307135307173_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g307135307173_))
                    (let ((_e307140307176_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g307135307173_))))
                      (let ((_hd307139307180_
                             (let ()
                               (declare (not safe))
                               (##car _e307140307176_)))
                            (_tl307138307183_
                             (let ()
                               (declare (not safe))
                               (##cdr _e307140307176_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl307138307183_))
                            (let ((_g312758_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl307138307183_
                                      '0))))
                              (begin
                                (let ((_g312759_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g312758_)
                                             (##vector-length _g312758_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g312759_ 2)))
                                      (error "Context expects 2 values"
                                             _g312759_)))
                                (let ((_target307141307186_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312758_ 0)))
                                      (_tl307143307189_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312758_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl307143307189_))
                                      (letrec ((_loop307144307192_
                                                (lambda (_hd307142307196_
                                                         _arity307148307199_
                                                         _prim307149307201_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd307142307196_))
                                                      (let ((_e307145307204_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd307142307196_))))
                (let ((_lp-hd307146307208_
                       (let () (declare (not safe)) (##car _e307145307204_)))
                      (_lp-tl307147307211_
                       (let () (declare (not safe)) (##cdr _e307145307204_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd307146307208_))
                      (let ((_e307154307214_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd307146307208_))))
                        (let ((_hd307153307218_
                               (let ()
                                 (declare (not safe))
                                 (##car _e307154307214_)))
                              (_tl307152307221_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e307154307214_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl307152307221_))
                              (let ((_g312768_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl307152307221_
                                        '0))))
                                (begin
                                  (let ((_g312769_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g312768_)
                                               (##vector-length _g312768_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g312769_ 2)))
                                        (error "Context expects 2 values"
                                               _g312769_)))
                                  (let ((_target307155307224_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g312768_ 0)))
                                        (_tl307157307227_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g312768_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl307157307227_))
                                        (letrec ((_loop307158307230_
                                                  (lambda (_hd307156307234_
                                                           _arity307162307237_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd307156307234_))
                                                        (let ((_e307159307240_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd307156307234_))))
                  (let ((_lp-hd307160307244_
                         (let () (declare (not safe)) (##car _e307159307240_)))
                        (_lp-tl307161307247_
                         (let ()
                           (declare (not safe))
                           (##cdr _e307159307240_))))
                    (_loop307158307230_
                     _lp-tl307161307247_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd307160307244_ _arity307162307237_)))))
                (let ((_arity307163307250_ (reverse _arity307162307237_)))
                  (_loop307144307192_
                   _lp-tl307147307211_
                   (let ()
                     (declare (not safe))
                     (cons _arity307163307250_ _arity307148307199_))
                   (let ()
                     (declare (not safe))
                     (cons _hd307153307218_ _prim307149307201_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop307158307230_
                                           _target307155307224_
                                           '()))
                                        (_g307134307169_ _g307135307173_)))))
                              (_g307134307169_ _g307135307173_))))
                      (_g307134307169_ _g307135307173_))))
              (let ((_arity307150307254_ (reverse _arity307148307199_))
                    (_prim307151307257_ (reverse _prim307149307201_)))
                ((lambda (_L307260_ _L307262_)
                   (let ((__tmp312767
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp312760
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L307260_
                               _L307262_))
                            (let ((__tmp312761
                                   (lambda (_g307277307283_
                                            _g307278307286_
                                            _g307279307288_)
                                     (let ((__tmp312762
                                            (let ((__tmp312766
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp312763
                                                   (let ((__tmp312764
                                                          (let ((__tmp312765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g307280307291_ _g307281307294_)
                           (let ()
                             (declare (not safe))
                             (cons _g307280307291_ _g307281307294_)))))
                    (declare (not safe))
                    (foldr1 __tmp312765 '() _g307277307283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g307278307286_
                                                           __tmp312764))))
                                              (declare (not safe))
                                              (cons __tmp312766 __tmp312763))))
                                       (declare (not safe))
                                       (cons __tmp312762 _g307279307288_)))))
                              (declare (not safe))
                              (foldr2 __tmp312761 '() _L307260_ _L307262_)))))
                     (declare (not safe))
                     (cons __tmp312767 __tmp312760)))
                 _arity307150307254_
                 _prim307151307257_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop307144307192_
                                         _target307141307186_
                                         '()
                                         '()))
                                      (_g307134307169_ _g307135307173_)))))
                            (_g307134307169_ _g307135307173_))))
                    (_g307134307169_ _g307135307173_)))))
        (_g307133307297_ _$stx307130_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx307303_)
      (let* ((_g307307307342_
              (lambda (_g307308307338_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g307308307338_))))
             (_g307306307470_
              (lambda (_g307308307346_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g307308307346_))
                    (let ((_e307313307349_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g307308307346_))))
                      (let ((_hd307312307353_
                             (let ()
                               (declare (not safe))
                               (##car _e307313307349_)))
                            (_tl307311307356_
                             (let ()
                               (declare (not safe))
                               (##cdr _e307313307349_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl307311307356_))
                            (let ((_g312770_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl307311307356_
                                      '0))))
                              (begin
                                (let ((_g312771_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g312770_)
                                             (##vector-length _g312770_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g312771_ 2)))
                                      (error "Context expects 2 values"
                                             _g312771_)))
                                (let ((_target307314307359_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312770_ 0)))
                                      (_tl307316307362_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312770_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl307316307362_))
                                      (letrec ((_loop307317307365_
                                                (lambda (_hd307315307369_
                                                         _arity307321307372_
                                                         _prim307322307374_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd307315307369_))
                                                      (let ((_e307318307377_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd307315307369_))))
                (let ((_lp-hd307319307381_
                       (let () (declare (not safe)) (##car _e307318307377_)))
                      (_lp-tl307320307384_
                       (let () (declare (not safe)) (##cdr _e307318307377_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd307319307381_))
                      (let ((_e307327307387_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd307319307381_))))
                        (let ((_hd307326307391_
                               (let ()
                                 (declare (not safe))
                                 (##car _e307327307387_)))
                              (_tl307325307394_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e307327307387_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl307325307394_))
                              (let ((_g312780_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl307325307394_
                                        '0))))
                                (begin
                                  (let ((_g312781_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g312780_)
                                               (##vector-length _g312780_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g312781_ 2)))
                                        (error "Context expects 2 values"
                                               _g312781_)))
                                  (let ((_target307328307397_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g312780_ 0)))
                                        (_tl307330307400_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g312780_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl307330307400_))
                                        (letrec ((_loop307331307403_
                                                  (lambda (_hd307329307407_
                                                           _arity307335307410_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd307329307407_))
                                                        (let ((_e307332307413_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd307329307407_))))
                  (let ((_lp-hd307333307417_
                         (let () (declare (not safe)) (##car _e307332307413_)))
                        (_lp-tl307334307420_
                         (let ()
                           (declare (not safe))
                           (##cdr _e307332307413_))))
                    (_loop307331307403_
                     _lp-tl307334307420_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd307333307417_ _arity307335307410_)))))
                (let ((_arity307336307423_ (reverse _arity307335307410_)))
                  (_loop307317307365_
                   _lp-tl307320307384_
                   (let ()
                     (declare (not safe))
                     (cons _arity307336307423_ _arity307321307372_))
                   (let ()
                     (declare (not safe))
                     (cons _hd307326307391_ _prim307322307374_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop307331307403_
                                           _target307328307397_
                                           '()))
                                        (_g307307307342_ _g307308307346_)))))
                              (_g307307307342_ _g307308307346_))))
                      (_g307307307342_ _g307308307346_))))
              (let ((_arity307323307427_ (reverse _arity307321307372_))
                    (_prim307324307430_ (reverse _prim307322307374_)))
                ((lambda (_L307433_ _L307435_)
                   (let ((__tmp312779
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp312772
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L307433_
                               _L307435_))
                            (let ((__tmp312773
                                   (lambda (_g307450307456_
                                            _g307451307459_
                                            _g307452307461_)
                                     (let ((__tmp312774
                                            (let ((__tmp312778
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp312775
                                                   (let ((__tmp312776
                                                          (let ((__tmp312777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g307453307464_ _g307454307467_)
                           (let ()
                             (declare (not safe))
                             (cons _g307453307464_ _g307454307467_)))))
                    (declare (not safe))
                    (foldr1 __tmp312777 '() _g307450307456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g307451307459_
                                                           __tmp312776))))
                                              (declare (not safe))
                                              (cons __tmp312778 __tmp312775))))
                                       (declare (not safe))
                                       (cons __tmp312774 _g307452307461_)))))
                              (declare (not safe))
                              (foldr2 __tmp312773 '() _L307433_ _L307435_)))))
                     (declare (not safe))
                     (cons __tmp312779 __tmp312772)))
                 _arity307323307427_
                 _prim307324307430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop307317307365_
                                         _target307314307359_
                                         '()
                                         '()))
                                      (_g307307307342_ _g307308307346_)))))
                            (_g307307307342_ _g307308307346_))))
                    (_g307307307342_ _g307308307346_)))))
        (_g307306307470_ _$stx307303_)))))
