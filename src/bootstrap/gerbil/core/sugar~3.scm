(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g23358_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_$stx19973_)
        (let* ((___stx2299022991_ _$stx19973_)
               (_g1997820017_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2299022991_))))
          (let ((___kont2299322994_
                 (lambda (_L20140_ _L20142_ _L20143_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L20143_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L20142_
                                                 (let ((__tmp23343
                                                        (lambda (_g2016220165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2016320168_)
                  (cons _g2016220165_ _g2016320168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp23343
                                                    '()
                                                    _L20140_))))
                                     '())))))
                (___kont2299722998_
                 (lambda (_L20054_ _L20056_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L20056_ (cons _L20054_ '()))))))
            (let* ((___match2304523046_
                    (lambda (_e2000520024_
                             _hd2000420028_
                             _tl2000320031_
                             _e2000820034_
                             _hd2000720038_
                             _tl2000620041_
                             _e2001120044_
                             _hd2001020048_
                             _tl2000920051_)
                      (let ((_L20054_ _hd2001020048_)
                            (_L20056_ _hd2000720038_))
                        (if (gx#identifier? _L20056_)
                            (___kont2299722998_ _L20054_ _L20056_)
                            (let () (declare (not safe)) (_g1997820017_))))))
                   (___match2303723038_
                    (lambda (_e2000520024_
                             _hd2000420028_
                             _tl2000320031_
                             _e2000820034_
                             _hd2000720038_
                             _tl2000620041_)
                      (if (gx#stx-pair? _tl2000620041_)
                          (let ((_e2001120044_ (gx#syntax-e _tl2000620041_)))
                            (let ((_tl2000920051_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2001120044_)))
                                  (_hd2001020048_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2001120044_))))
                              (if (gx#stx-null? _tl2000920051_)
                                  (___match2304523046_
                                   _e2000520024_
                                   _hd2000420028_
                                   _tl2000320031_
                                   _e2000820034_
                                   _hd2000720038_
                                   _tl2000620041_
                                   _e2001120044_
                                   _hd2001020048_
                                   _tl2000920051_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1997820017_)))))
                          (let () (declare (not safe)) (_g1997820017_)))))
                   (___match2302523026_
                    (lambda (_e1998520080_
                             _hd1998420084_
                             _tl1998320087_
                             _e1998820090_
                             _hd1998720094_
                             _tl1998620097_
                             _e1999120100_
                             _hd1999020104_
                             _tl1998920107_
                             ___splice2299522996_
                             _target1999220110_
                             _tl1999420113_)
                      (letrec ((_loop1999520116_
                                (lambda (_hd1999320120_ _body1999920123_)
                                  (if (gx#stx-pair? _hd1999320120_)
                                      (let ((_e1999620126_
                                             (gx#syntax-e _hd1999320120_)))
                                        (let ((_lp-tl1999820133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1999620126_)))
                                              (_lp-hd1999720130_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1999620126_))))
                                          (_loop1999520116_
                                           _lp-tl1999820133_
                                           (cons _lp-hd1999720130_
                                                 _body1999920123_))))
                                      (let ((_body2000020136_
                                             (reverse _body1999920123_)))
                                        (let ((_L20140_ _body2000020136_)
                                              (_L20142_ _tl1998920107_)
                                              (_L20143_ _hd1999020104_))
                                          (if (gx#identifier? _L20143_)
                                              (___kont2299322994_
                                               _L20140_
                                               _L20142_
                                               _L20143_)
                                              (___match2303723038_
                                               _e1998520080_
                                               _hd1998420084_
                                               _tl1998320087_
                                               _e1998820090_
                                               _hd1998720094_
                                               _tl1998620097_))))))))
                        (_loop1999520116_ _target1999220110_ '())))))
              (if (gx#stx-pair? ___stx2299022991_)
                  (let ((_e1998520080_ (gx#syntax-e ___stx2299022991_)))
                    (let ((_tl1998320087_
                           (let () (declare (not safe)) (##cdr _e1998520080_)))
                          (_hd1998420084_
                           (let ()
                             (declare (not safe))
                             (##car _e1998520080_))))
                      (if (gx#stx-pair? _tl1998320087_)
                          (let ((_e1998820090_ (gx#syntax-e _tl1998320087_)))
                            (let ((_tl1998620097_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1998820090_)))
                                  (_hd1998720094_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1998820090_))))
                              (if (gx#stx-pair? _hd1998720094_)
                                  (let ((_e1999120100_
                                         (gx#syntax-e _hd1998720094_)))
                                    (let ((_tl1998920107_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1999120100_)))
                                          (_hd1999020104_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1999120100_))))
                                      (if (gx#stx-pair/null? _tl1998620097_)
                                          (let ((___splice2299522996_
                                                 (gx#syntax-split-splice
                                                  _tl1998620097_
                                                  '0)))
                                            (let ((_tl1999420113_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2299522996_
                                                      '1)))
                                                  (_target1999220110_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2299522996_
                                                      '0))))
                                              (if (gx#stx-null? _tl1999420113_)
                                                  (___match2302523026_
                                                   _e1998520080_
                                                   _hd1998420084_
                                                   _tl1998320087_
                                                   _e1998820090_
                                                   _hd1998720094_
                                                   _tl1998620097_
                                                   _e1999120100_
                                                   _hd1999020104_
                                                   _tl1998920107_
                                                   ___splice2299522996_
                                                   _target1999220110_
                                                   _tl1999420113_)
                                                  (if (gx#stx-pair?
                                                       _tl1998620097_)
                                                      (let ((_e2001120044_
                                                             (gx#syntax-e
                                                              _tl1998620097_)))
                                                        (let ((_tl2000920051_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2001120044_)))
                      (_hd2001020048_
                       (let () (declare (not safe)) (##car _e2001120044_))))
                  (if (gx#stx-null? _tl2000920051_)
                      (___match2304523046_
                       _e1998520080_
                       _hd1998420084_
                       _tl1998320087_
                       _e1998820090_
                       _hd1998720094_
                       _tl1998620097_
                       _e2001120044_
                       _hd2001020048_
                       _tl2000920051_)
                      (let () (declare (not safe)) (_g1997820017_)))))
              (let () (declare (not safe)) (_g1997820017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl1998620097_)
                                              (let ((_e2001120044_
                                                     (gx#syntax-e
                                                      _tl1998620097_)))
                                                (let ((_tl2000920051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2001120044_)))
                                                      (_hd2001020048_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2001120044_))))
                                                  (if (gx#stx-null?
                                                       _tl2000920051_)
                                                      (___match2304523046_
                                                       _e1998520080_
                                                       _hd1998420084_
                                                       _tl1998320087_
                                                       _e1998820090_
                                                       _hd1998720094_
                                                       _tl1998620097_
                                                       _e2001120044_
                                                       _hd2001020048_
                                                       _tl2000920051_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1997820017_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1997820017_))))))
                                  (if (gx#stx-pair? _tl1998620097_)
                                      (let ((_e2001120044_
                                             (gx#syntax-e _tl1998620097_)))
                                        (let ((_tl2000920051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2001120044_)))
                                              (_hd2001020048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2001120044_))))
                                          (if (gx#stx-null? _tl2000920051_)
                                              (___match2304523046_
                                               _e1998520080_
                                               _hd1998420084_
                                               _tl1998320087_
                                               _e1998820090_
                                               _hd1998720094_
                                               _tl1998620097_
                                               _e2001120044_
                                               _hd2001020048_
                                               _tl2000920051_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1997820017_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1997820017_))))))
                          (let () (declare (not safe)) (_g1997820017_)))))
                  (let () (declare (not safe)) (_g1997820017_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_stx20176_)
        (let* ((_g2017920216_
                (lambda (_g2018020212_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2018020212_)))
               (_g2017820577_
                (lambda (_g2018020220_)
                  (if (gx#stx-pair? _g2018020220_)
                      (let ((_e2018620223_ (gx#syntax-e _g2018020220_)))
                        (let ((_hd2018520227_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2018620223_)))
                              (_tl2018420230_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2018620223_))))
                          (if (gx#stx-pair? _tl2018420230_)
                              (let ((_e2018920233_
                                     (gx#syntax-e _tl2018420230_)))
                                (let ((_hd2018820237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2018920233_)))
                                      (_tl2018720240_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2018920233_))))
                                  (if (gx#stx-pair? _hd2018820237_)
                                      (let ((_e2019220243_
                                             (gx#syntax-e _hd2018820237_)))
                                        (let ((_hd2019120247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2019220243_)))
                                              (_tl2019020250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2019220243_))))
                                          (if (gx#stx-pair/null?
                                               _tl2019020250_)
                                              (let ((_g23344_
                                                     (gx#syntax-split-splice
                                                      _tl2019020250_
                                                      '0)))
                                                (begin
                                                  (let ((_g23345_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g23344_)
                                                               (##vector-length
                                                                _g23344_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g23345_ 2)))
                (error "Context expects 2 values" _g23345_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2019320253_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g23344_
                                                            0)))
                                                        (_tl2019520256_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g23344_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl2019520256_)
                                                        (letrec ((_loop2019620259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2019420263_ _arg2020020266_)
                            (if (gx#stx-pair? _hd2019420263_)
                                (let ((_e2019720269_
                                       (gx#syntax-e _hd2019420263_)))
                                  (let ((_lp-hd2019820273_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2019720269_)))
                                        (_lp-tl2019920276_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2019720269_))))
                                    (_loop2019620259_
                                     _lp-tl2019920276_
                                     (cons _lp-hd2019820273_
                                           _arg2020020266_))))
                                (let ((_arg2020120279_
                                       (reverse _arg2020020266_)))
                                  (if (gx#stx-pair/null? _tl2018720240_)
                                      (let ((_g23346_
                                             (gx#syntax-split-splice
                                              _tl2018720240_
                                              '0)))
                                        (begin
                                          (let ((_g23347_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23346_)
                                                       (##vector-length
                                                        _g23346_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23347_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23347_)))
                                          (let ((_target2020220283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23346_ 0)))
                                                (_tl2020420286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23346_ 1))))
                                            (if (gx#stx-null? _tl2020420286_)
                                                (letrec ((_loop2020520289_
                                                          (lambda (_hd2020320293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2020920296_)
                    (if (gx#stx-pair? _hd2020320293_)
                        (let ((_e2020620299_ (gx#syntax-e _hd2020320293_)))
                          (let ((_lp-hd2020720303_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2020620299_)))
                                (_lp-tl2020820306_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2020620299_))))
                            (_loop2020520289_
                             _lp-tl2020820306_
                             (cons _lp-hd2020720303_ _body2020920296_))))
                        (let ((_body2021020309_ (reverse _body2020920296_)))
                          ((lambda (_L20313_ _L20315_ _L20316_)
                             (if (and (gx#identifier? _L20316_)
                                      (gx#identifier-list?
                                       (let ((__tmp23348
                                              (lambda (_g2034020343_
                                                       _g2034120346_)
                                                (cons _g2034020343_
                                                      _g2034120346_))))
                                         (declare (not safe))
                                         (__foldr1 __tmp23348 '() _L20315_))))
                                 (let* ((_g2034920357_
                                         (lambda (_g2035020353_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2035020353_)))
                                        (_g2034820573_
                                         (lambda (_g2035020361_)
                                           ((lambda (_L20364_)
                                              (let ()
                                                (let* ((_g2037620393_
                                                        (lambda (_g2037720389_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g2037720389_)))
                                                       (_g2037520561_
                                                        (lambda (_g2037720397_)
                                                          (if (gx#stx-pair/null?
                                                               _g2037720397_)
                                                              (let ((_g23349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g2037720397_ '0)))
                        (begin
                          (let ((_g23350_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g23349_)
                                       (##vector-length _g23349_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g23350_ 2)))
                                (error "Context expects 2 values" _g23350_)))
                          (let ((_target2037920400_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g23349_ 0)))
                                (_tl2038120403_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g23349_ 1))))
                            (if (gx#stx-null? _tl2038120403_)
                                (letrec ((_loop2038220406_
                                          (lambda (_hd2038020410_
                                                   _xarg2038620413_)
                                            (if (gx#stx-pair? _hd2038020410_)
                                                (let ((_e2038320416_
                                                       (gx#syntax-e
                                                        _hd2038020410_)))
                                                  (let ((_lp-hd2038420420_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2038320416_)))
                                                        (_lp-tl2038520423_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2038320416_))))
                                                    (_loop2038220406_
                                                     _lp-tl2038520423_
                                                     (cons _lp-hd2038420420_
                                                           _xarg2038620413_))))
                                                (let ((_xarg2038720426_
                                                       (reverse _xarg2038620413_)))
                                                  ((lambda (_L20430_)
                                                     (let ()
                                                       (let* ((_g2044720455_
                                                               (lambda (_g2044820451_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2044820451_)))
                      (_g2044620525_
                       (lambda (_g2044820459_)
                         ((lambda (_L20462_)
                            (let ()
                              (let* ((_g2047520483_
                                      (lambda (_g2047620479_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2047620479_)))
                                     (_g2047420505_
                                      (lambda (_g2047620487_)
                                        ((lambda (_L20490_)
                                           (let ()
                                             (let ()
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons _L20490_
                                                            (cons _L20462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx20176_)))))
                                         _g2047620487_))))
                                (_g2047420505_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L20364_
                                                    (let ((__tmp23351
                                                           (lambda (_g2051020513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2051120516_)
                     (cons _g2051020513_ _g2051120516_))))
              (declare (not safe))
              (__foldr1 __tmp23351 '() _L20315_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp23352
                                                     (lambda (_g2050820519_
                                                              _g2050920522_)
                                                       (cons _g2050820519_
                                                             _g2050920522_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp23352
                                                 '()
                                                 _L20313_))))
                                  (gx#stx-source _stx20176_))))))
                          _g2044820459_))))
                 (_g2044620525_
                  (gx#stx-wrap-source
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _L20316_
                               (cons '()
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '_)
                                                       (let ((__tmp23353
                                                              (lambda (_g2053420537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2053520540_)
                        (cons _g2053420537_ _g2053520540_))))
                 (declare (not safe))
                 (__foldr1 __tmp23353 '() _L20430_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons (let ((__tmp23354
                                        (lambda (_g2053220543_ _g2053320546_)
                                          (cons _g2053220543_ _g2053320546_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp23354 '() _L20315_))
                                 (let ((__tmp23355
                                        (lambda (_g2053020549_ _g2053120552_)
                                          (cons _g2053020549_ _g2053120552_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp23355 '() _L20313_))))
                     (let ((__tmp23356
                            (lambda (_g2052820555_ _g2052920558_)
                              (cons _g2052820555_ _g2052920558_))))
                       (declare (not safe))
                       (__foldr1 __tmp23356 '() _L20430_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'ref)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'identifier?)
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons (gx#datum->syntax '#f 'ref) '()))
                                 '()))
                     (cons _L20364_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                   (gx#stx-source _stx20176_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg2038720426_))))))
                                  (_loop2038220406_ _target2037920400_ '()))
                                (_g2037620393_ _g2037720397_)))))
                      (_g2037620393_ _g2037720397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2037520561_
                                                   (gx#gentemps
                                                    (let ((__tmp23357
                                                           (lambda (_g2056420567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2056520570_)
                     (cons _g2056420567_ _g2056520570_))))
              (declare (not safe))
              (__foldr1 __tmp23357 '() _L20315_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2035020361_))))
                                   (_g2034820573_
                                    (gx#stx-identifier
                                     _L20316_
                                     _L20316_
                                     '"__impl")))
                                 (_g2017920216_ _g2018020220_)))
                           _body2021020309_
                           _arg2020120279_
                           _hd2019120247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2020520289_
                                                   _target2020220283_
                                                   '()))
                                                (_g2017920216_
                                                 _g2018020220_)))))
                                      (_g2017920216_ _g2018020220_)))))))
                  (_loop2019620259_ _target2019320253_ '()))
                (_g2017920216_ _g2018020220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2017920216_ _g2018020220_))))
                                      (_g2017920216_ _g2018020220_))))
                              (_g2017920216_ _g2018020220_))))
                      (_g2017920216_ _g2018020220_)))))
          (_g2017820577_ _stx20176_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_$stx20584_)
        (let* ((___stx2304823049_ _$stx20584_)
               (_g2058920625_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2304823049_))))
          (let ((___kont2305123052_
                 (lambda (_L20739_ _L20741_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _L20741_
                               (cons '()
                                     (cons (cons (gx#datum->syntax '#f 'x)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'identifier?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons (gx#datum->syntax '#f 'x) '()))
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L20739_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (___kont2305323054_
                 (lambda (_L20662_ _L20664_ _L20665_)
                   (cons _L20665_
                         (cons _L20664_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L20662_ '()))
                                     '()))))))
            (let* ((___match2311323114_
                    (lambda (_e2061320632_
                             _hd2061220636_
                             _tl2061120639_
                             _e2061620642_
                             _hd2061520646_
                             _tl2061420649_
                             _e2061920652_
                             _hd2061820656_
                             _tl2061720659_)
                      (let ((_L20662_ _hd2061820656_)
                            (_L20664_ _hd2061520646_)
                            (_L20665_ _hd2061220636_))
                        (if (and (gx#identifier? _L20664_)
                                 (gx#stx-datum? _L20662_))
                            (___kont2305323054_ _L20662_ _L20664_ _L20665_)
                            (let () (declare (not safe)) (_g2058920625_))))))
                   (___match2309323094_
                    (lambda (_e2059520689_
                             _hd2059420693_
                             _tl2059320696_
                             _e2059820699_
                             _hd2059720703_
                             _tl2059620706_
                             _e2060120709_
                             _hd2060020713_
                             _tl2059920716_
                             _e2060420719_
                             _hd2060320723_
                             _tl2060220726_
                             _e2060720729_
                             _hd2060620733_
                             _tl2060520736_)
                      (let ((_L20739_ _hd2060620733_)
                            (_L20741_ _hd2059720703_))
                        (if (gx#identifier? _L20741_)
                            (___kont2305123052_ _L20739_ _L20741_)
                            (___match2311323114_
                             _e2059520689_
                             _hd2059420693_
                             _tl2059320696_
                             _e2059820699_
                             _hd2059720703_
                             _tl2059620706_
                             _e2060120709_
                             _hd2060020713_
                             _tl2059920716_))))))
              (if (gx#stx-pair? ___stx2304823049_)
                  (let ((_e2059520689_ (gx#syntax-e ___stx2304823049_)))
                    (let ((_tl2059320696_
                           (let () (declare (not safe)) (##cdr _e2059520689_)))
                          (_hd2059420693_
                           (let ()
                             (declare (not safe))
                             (##car _e2059520689_))))
                      (if (gx#stx-pair? _tl2059320696_)
                          (let ((_e2059820699_ (gx#syntax-e _tl2059320696_)))
                            (let ((_tl2059620706_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2059820699_)))
                                  (_hd2059720703_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2059820699_))))
                              (if (gx#stx-pair? _tl2059620706_)
                                  (let ((_e2060120709_
                                         (gx#syntax-e _tl2059620706_)))
                                    (let ((_tl2059920716_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2060120709_)))
                                          (_hd2060020713_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2060120709_))))
                                      (if (gx#stx-pair? _hd2060020713_)
                                          (let ((_e2060420719_
                                                 (gx#syntax-e _hd2060020713_)))
                                            (let ((_tl2060220726_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2060420719_)))
                                                  (_hd2060320723_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2060420719_))))
                                              (if (gx#identifier?
                                                   _hd2060320723_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g23358_|
                                                       _hd2060320723_)
                                                      (if (gx#stx-pair?
                                                           _tl2060220726_)
                                                          (let ((_e2060720729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2060220726_)))
                    (let ((_tl2060520736_
                           (let () (declare (not safe)) (##cdr _e2060720729_)))
                          (_hd2060620733_
                           (let ()
                             (declare (not safe))
                             (##car _e2060720729_))))
                      (if (gx#stx-null? _tl2060520736_)
                          (if (gx#stx-null? _tl2059920716_)
                              (___match2309323094_
                               _e2059520689_
                               _hd2059420693_
                               _tl2059320696_
                               _e2059820699_
                               _hd2059720703_
                               _tl2059620706_
                               _e2060120709_
                               _hd2060020713_
                               _tl2059920716_
                               _e2060420719_
                               _hd2060320723_
                               _tl2060220726_
                               _e2060720729_
                               _hd2060620733_
                               _tl2060520736_)
                              (let () (declare (not safe)) (_g2058920625_)))
                          (if (gx#stx-null? _tl2059920716_)
                              (___match2311323114_
                               _e2059520689_
                               _hd2059420693_
                               _tl2059320696_
                               _e2059820699_
                               _hd2059720703_
                               _tl2059620706_
                               _e2060120709_
                               _hd2060020713_
                               _tl2059920716_)
                              (let () (declare (not safe)) (_g2058920625_))))))
                  (if (gx#stx-null? _tl2059920716_)
                      (___match2311323114_
                       _e2059520689_
                       _hd2059420693_
                       _tl2059320696_
                       _e2059820699_
                       _hd2059720703_
                       _tl2059620706_
                       _e2060120709_
                       _hd2060020713_
                       _tl2059920716_)
                      (let () (declare (not safe)) (_g2058920625_))))
              (if (gx#stx-null? _tl2059920716_)
                  (___match2311323114_
                   _e2059520689_
                   _hd2059420693_
                   _tl2059320696_
                   _e2059820699_
                   _hd2059720703_
                   _tl2059620706_
                   _e2060120709_
                   _hd2060020713_
                   _tl2059920716_)
                  (let () (declare (not safe)) (_g2058920625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl2059920716_)
                                                      (___match2311323114_
                                                       _e2059520689_
                                                       _hd2059420693_
                                                       _tl2059320696_
                                                       _e2059820699_
                                                       _hd2059720703_
                                                       _tl2059620706_
                                                       _e2060120709_
                                                       _hd2060020713_
                                                       _tl2059920716_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2058920625_))))))
                                          (if (gx#stx-null? _tl2059920716_)
                                              (___match2311323114_
                                               _e2059520689_
                                               _hd2059420693_
                                               _tl2059320696_
                                               _e2059820699_
                                               _hd2059720703_
                                               _tl2059620706_
                                               _e2060120709_
                                               _hd2060020713_
                                               _tl2059920716_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2058920625_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2058920625_)))))
                          (let () (declare (not safe)) (_g2058920625_)))))
                  (let () (declare (not safe)) (_g2058920625_))))))))))
