(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g28252_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_$stx23914_)
        (let* ((___stx2693126932_ _$stx23914_)
               (_g2391923958_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2693126932_))))
          (let ((___kont2693426935_
                 (lambda (_L24081_ _L24083_ _L24084_)
                   (let ((__tmp28175 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp28168
                          (let ((__tmp28169
                                 (let ((__tmp28170
                                        (let ((__tmp28174
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp28171
                                               (let ((__tmp28172
                                                      (let ((__tmp28173
                                                             (lambda (_g2410324106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2410424109_)
                       (let ()
                         (declare (not safe))
                         (cons _g2410324106_ _g2410424109_)))))
                (declare (not safe))
                (foldr1 __tmp28173 '() _L24081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L24083_ __tmp28172))))
                                          (declare (not safe))
                                          (cons __tmp28174 __tmp28171))))
                                   (declare (not safe))
                                   (cons __tmp28170 '()))))
                            (declare (not safe))
                            (cons _L24084_ __tmp28169))))
                     (declare (not safe))
                     (cons __tmp28175 __tmp28168))))
                (___kont2693826939_
                 (lambda (_L23995_ _L23997_)
                   (let ((__tmp28178 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp28176
                          (let ((__tmp28177
                                 (let ()
                                   (declare (not safe))
                                   (cons _L23995_ '()))))
                            (declare (not safe))
                            (cons _L23997_ __tmp28177))))
                     (declare (not safe))
                     (cons __tmp28178 __tmp28176)))))
            (let* ((___match2698626987_
                    (lambda (_e2394623965_
                             _hd2394523969_
                             _tl2394423972_
                             _e2394923975_
                             _hd2394823979_
                             _tl2394723982_
                             _e2395223985_
                             _hd2395123989_
                             _tl2395023992_)
                      (let ((_L23995_ _hd2395123989_)
                            (_L23997_ _hd2394823979_))
                        (if (gx#identifier? _L23997_)
                            (___kont2693826939_ _L23995_ _L23997_)
                            (let () (declare (not safe)) (_g2391923958_))))))
                   (___match2697826979_
                    (lambda (_e2394623965_
                             _hd2394523969_
                             _tl2394423972_
                             _e2394923975_
                             _hd2394823979_
                             _tl2394723982_)
                      (if (gx#stx-pair? _tl2394723982_)
                          (let ((_e2395223985_ (gx#syntax-e _tl2394723982_)))
                            (let ((_tl2395023992_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2395223985_)))
                                  (_hd2395123989_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2395223985_))))
                              (if (gx#stx-null? _tl2395023992_)
                                  (___match2698626987_
                                   _e2394623965_
                                   _hd2394523969_
                                   _tl2394423972_
                                   _e2394923975_
                                   _hd2394823979_
                                   _tl2394723982_
                                   _e2395223985_
                                   _hd2395123989_
                                   _tl2395023992_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2391923958_)))))
                          (let () (declare (not safe)) (_g2391923958_)))))
                   (___match2696626967_
                    (lambda (_e2392624021_
                             _hd2392524025_
                             _tl2392424028_
                             _e2392924031_
                             _hd2392824035_
                             _tl2392724038_
                             _e2393224041_
                             _hd2393124045_
                             _tl2393024048_
                             ___splice2693626937_
                             _target2393324051_
                             _tl2393524054_)
                      (letrec ((_loop2393624057_
                                (lambda (_hd2393424061_ _body2394024064_)
                                  (if (gx#stx-pair? _hd2393424061_)
                                      (let ((_e2393724067_
                                             (gx#syntax-e _hd2393424061_)))
                                        (let ((_lp-tl2393924074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2393724067_)))
                                              (_lp-hd2393824071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2393724067_))))
                                          (_loop2393624057_
                                           _lp-tl2393924074_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2393824071_
                                                   _body2394024064_)))))
                                      (let ((_body2394124077_
                                             (reverse _body2394024064_)))
                                        (let ((_L24081_ _body2394124077_)
                                              (_L24083_ _tl2393024048_)
                                              (_L24084_ _hd2393124045_))
                                          (if (gx#identifier? _L24084_)
                                              (___kont2693426935_
                                               _L24081_
                                               _L24083_
                                               _L24084_)
                                              (___match2697826979_
                                               _e2392624021_
                                               _hd2392524025_
                                               _tl2392424028_
                                               _e2392924031_
                                               _hd2392824035_
                                               _tl2392724038_))))))))
                        (_loop2393624057_ _target2393324051_ '())))))
              (if (gx#stx-pair? ___stx2693126932_)
                  (let ((_e2392624021_ (gx#syntax-e ___stx2693126932_)))
                    (let ((_tl2392424028_
                           (let () (declare (not safe)) (##cdr _e2392624021_)))
                          (_hd2392524025_
                           (let ()
                             (declare (not safe))
                             (##car _e2392624021_))))
                      (if (gx#stx-pair? _tl2392424028_)
                          (let ((_e2392924031_ (gx#syntax-e _tl2392424028_)))
                            (let ((_tl2392724038_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2392924031_)))
                                  (_hd2392824035_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2392924031_))))
                              (if (gx#stx-pair? _hd2392824035_)
                                  (let ((_e2393224041_
                                         (gx#syntax-e _hd2392824035_)))
                                    (let ((_tl2393024048_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2393224041_)))
                                          (_hd2393124045_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2393224041_))))
                                      (if (gx#stx-pair/null? _tl2392724038_)
                                          (let ((___splice2693626937_
                                                 (gx#syntax-split-splice
                                                  _tl2392724038_
                                                  '0)))
                                            (let ((_tl2393524054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2693626937_
                                                      '1)))
                                                  (_target2393324051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2693626937_
                                                      '0))))
                                              (if (gx#stx-null? _tl2393524054_)
                                                  (___match2696626967_
                                                   _e2392624021_
                                                   _hd2392524025_
                                                   _tl2392424028_
                                                   _e2392924031_
                                                   _hd2392824035_
                                                   _tl2392724038_
                                                   _e2393224041_
                                                   _hd2393124045_
                                                   _tl2393024048_
                                                   ___splice2693626937_
                                                   _target2393324051_
                                                   _tl2393524054_)
                                                  (if (gx#stx-pair?
                                                       _tl2392724038_)
                                                      (let ((_e2395223985_
                                                             (gx#syntax-e
                                                              _tl2392724038_)))
                                                        (let ((_tl2395023992_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2395223985_)))
                      (_hd2395123989_
                       (let () (declare (not safe)) (##car _e2395223985_))))
                  (if (gx#stx-null? _tl2395023992_)
                      (___match2698626987_
                       _e2392624021_
                       _hd2392524025_
                       _tl2392424028_
                       _e2392924031_
                       _hd2392824035_
                       _tl2392724038_
                       _e2395223985_
                       _hd2395123989_
                       _tl2395023992_)
                      (let () (declare (not safe)) (_g2391923958_)))))
              (let () (declare (not safe)) (_g2391923958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl2392724038_)
                                              (let ((_e2395223985_
                                                     (gx#syntax-e
                                                      _tl2392724038_)))
                                                (let ((_tl2395023992_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2395223985_)))
                                                      (_hd2395123989_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2395223985_))))
                                                  (if (gx#stx-null?
                                                       _tl2395023992_)
                                                      (___match2698626987_
                                                       _e2392624021_
                                                       _hd2392524025_
                                                       _tl2392424028_
                                                       _e2392924031_
                                                       _hd2392824035_
                                                       _tl2392724038_
                                                       _e2395223985_
                                                       _hd2395123989_
                                                       _tl2395023992_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2391923958_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2391923958_))))))
                                  (if (gx#stx-pair? _tl2392724038_)
                                      (let ((_e2395223985_
                                             (gx#syntax-e _tl2392724038_)))
                                        (let ((_tl2395023992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2395223985_)))
                                              (_hd2395123989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2395223985_))))
                                          (if (gx#stx-null? _tl2395023992_)
                                              (___match2698626987_
                                               _e2392624021_
                                               _hd2392524025_
                                               _tl2392424028_
                                               _e2392924031_
                                               _hd2392824035_
                                               _tl2392724038_
                                               _e2395223985_
                                               _hd2395123989_
                                               _tl2395023992_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2391923958_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2391923958_))))))
                          (let () (declare (not safe)) (_g2391923958_)))))
                  (let () (declare (not safe)) (_g2391923958_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_stx24117_)
        (let* ((_g2412024157_
                (lambda (_g2412124153_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2412124153_)))
               (_g2411924518_
                (lambda (_g2412124161_)
                  (if (gx#stx-pair? _g2412124161_)
                      (let ((_e2412724164_ (gx#syntax-e _g2412124161_)))
                        (let ((_hd2412624168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2412724164_)))
                              (_tl2412524171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2412724164_))))
                          (if (gx#stx-pair? _tl2412524171_)
                              (let ((_e2413024174_
                                     (gx#syntax-e _tl2412524171_)))
                                (let ((_hd2412924178_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2413024174_)))
                                      (_tl2412824181_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2413024174_))))
                                  (if (gx#stx-pair? _hd2412924178_)
                                      (let ((_e2413324184_
                                             (gx#syntax-e _hd2412924178_)))
                                        (let ((_hd2413224188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2413324184_)))
                                              (_tl2413124191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2413324184_))))
                                          (if (gx#stx-pair/null?
                                               _tl2413124191_)
                                              (let ((_g28179_
                                                     (gx#syntax-split-splice
                                                      _tl2413124191_
                                                      '0)))
                                                (begin
                                                  (let ((_g28180_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g28179_)
                                                               (##vector-length
                                                                _g28179_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g28180_ 2)))
                (error "Context expects 2 values" _g28180_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2413424194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g28179_
                                                            0)))
                                                        (_tl2413624197_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g28179_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl2413624197_)
                                                        (letrec ((_loop2413724200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2413524204_ _arg2414124207_)
                            (if (gx#stx-pair? _hd2413524204_)
                                (let ((_e2413824210_
                                       (gx#syntax-e _hd2413524204_)))
                                  (let ((_lp-hd2413924214_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2413824210_)))
                                        (_lp-tl2414024217_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2413824210_))))
                                    (_loop2413724200_
                                     _lp-tl2414024217_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd2413924214_
                                             _arg2414124207_)))))
                                (let ((_arg2414224220_
                                       (reverse _arg2414124207_)))
                                  (if (gx#stx-pair/null? _tl2412824181_)
                                      (let ((_g28181_
                                             (gx#syntax-split-splice
                                              _tl2412824181_
                                              '0)))
                                        (begin
                                          (let ((_g28182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g28181_)
                                                       (##vector-length
                                                        _g28181_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g28182_ 2)))
                                                (error "Context expects 2 values"
                                                       _g28182_)))
                                          (let ((_target2414324224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g28181_ 0)))
                                                (_tl2414524227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g28181_ 1))))
                                            (if (gx#stx-null? _tl2414524227_)
                                                (letrec ((_loop2414624230_
                                                          (lambda (_hd2414424234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2415024237_)
                    (if (gx#stx-pair? _hd2414424234_)
                        (let ((_e2414724240_ (gx#syntax-e _hd2414424234_)))
                          (let ((_lp-hd2414824244_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2414724240_)))
                                (_lp-tl2414924247_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2414724240_))))
                            (_loop2414624230_
                             _lp-tl2414924247_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd2414824244_ _body2415024237_)))))
                        (let ((_body2415124250_ (reverse _body2415024237_)))
                          ((lambda (_L24254_ _L24256_ _L24257_)
                             (if (and (gx#identifier? _L24257_)
                                      (gx#identifier-list?
                                       (let ((__tmp28228
                                              (lambda (_g2428124284_
                                                       _g2428224287_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2428124284_
                                                        _g2428224287_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp28228 '() _L24256_))))
                                 (let* ((_g2429024298_
                                         (lambda (_g2429124294_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2429124294_)))
                                        (_g2428924514_
                                         (lambda (_g2429124302_)
                                           ((lambda (_L24305_)
                                              (let ()
                                                (let* ((_g2431724334_
                                                        (lambda (_g2431824330_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g2431824330_)))
                                                       (_g2431624502_
                                                        (lambda (_g2431824338_)
                                                          (if (gx#stx-pair/null?
                                                               _g2431824338_)
                                                              (let ((_g28183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g2431824338_ '0)))
                        (begin
                          (let ((_g28184_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g28183_)
                                       (##vector-length _g28183_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g28184_ 2)))
                                (error "Context expects 2 values" _g28184_)))
                          (let ((_target2432024341_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g28183_ 0)))
                                (_tl2432224344_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g28183_ 1))))
                            (if (gx#stx-null? _tl2432224344_)
                                (letrec ((_loop2432324347_
                                          (lambda (_hd2432124351_
                                                   _xarg2432724354_)
                                            (if (gx#stx-pair? _hd2432124351_)
                                                (let ((_e2432424357_
                                                       (gx#syntax-e
                                                        _hd2432124351_)))
                                                  (let ((_lp-hd2432524361_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2432424357_)))
                                                        (_lp-tl2432624364_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2432424357_))))
                                                    (_loop2432324347_
                                                     _lp-tl2432624364_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _lp-hd2432524361_
                                                             _xarg2432724354_)))))
                                                (let ((_xarg2432824367_
                                                       (reverse _xarg2432724354_)))
                                                  ((lambda (_L24371_)
                                                     (let ()
                                                       (let* ((_g2438824396_
                                                               (lambda (_g2438924392_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2438924392_)))
                      (_g2438724466_
                       (lambda (_g2438924400_)
                         ((lambda (_L24403_)
                            (let ()
                              (let* ((_g2441624424_
                                      (lambda (_g2441724420_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2441724420_)))
                                     (_g2441524446_
                                      (lambda (_g2441724428_)
                                        ((lambda (_L24431_)
                                           (let ()
                                             (let ()
                                               (gx#stx-wrap-source
                                                (let ((__tmp28187
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp28185
                                                       (let ((__tmp28186
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L24403_ '()))))
                 (declare (not safe))
                 (cons _L24431_ __tmp28186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp28187 __tmp28185))
                                                (gx#stx-source _stx24117_)))))
                                         _g2441724428_))))
                                (_g2441524446_
                                 (gx#stx-wrap-source
                                  (let ((__tmp28194
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp28188
                                         (let ((__tmp28191
                                                (let ((__tmp28192
                                                       (let ((__tmp28193
                                                              (lambda (_g2445124454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2445224457_)
                        (let ()
                          (declare (not safe))
                          (cons _g2445124454_ _g2445224457_)))))
                 (declare (not safe))
                 (foldr1 __tmp28193 '() _L24256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L24305_ __tmp28192)))
                                               (__tmp28189
                                                (let ((__tmp28190
                                                       (lambda (_g2444924460_
                                                                _g2445024463_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2444924460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2445024463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp28190
                                                          '()
                                                          _L24254_))))
                                           (declare (not safe))
                                           (cons __tmp28191 __tmp28189))))
                                    (declare (not safe))
                                    (cons __tmp28194 __tmp28188))
                                  (gx#stx-source _stx24117_))))))
                          _g2438924400_))))
                 (_g2438724466_
                  (gx#stx-wrap-source
                   (let ((__tmp28226 (gx#datum->syntax '#f 'defrules))
                         (__tmp28195
                          (let ((__tmp28196
                                 (let ((__tmp28197
                                        (let ((__tmp28210
                                               (let ((__tmp28222
                                                      (let ((__tmp28225
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp28223
                                                             (let ((__tmp28224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2447524478_ _g2447624481_)
                              (let ()
                                (declare (not safe))
                                (cons _g2447524478_ _g2447624481_)))))
                       (declare (not safe))
                       (foldr1 __tmp28224 '() _L24371_))))
                (declare (not safe))
                (cons __tmp28225 __tmp28223)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp28211
                                                      (let ((__tmp28212
                                                             (let ((__tmp28215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp28221 (gx#datum->syntax '#f 'lambda))
                                  (__tmp28216
                                   (let ((__tmp28219
                                          (let ((__tmp28220
                                                 (lambda (_g2447324484_
                                                          _g2447424487_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2447324484_
                                                           _g2447424487_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp28220 '() _L24256_)))
                                         (__tmp28217
                                          (let ((__tmp28218
                                                 (lambda (_g2447124490_
                                                          _g2447224493_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2447124490_
                                                           _g2447224493_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp28218 '() _L24254_))))
                                     (declare (not safe))
                                     (cons __tmp28219 __tmp28217))))
                              (declare (not safe))
                              (cons __tmp28221 __tmp28216)))
                           (__tmp28213
                            (let ((__tmp28214
                                   (lambda (_g2446924496_ _g2447024499_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2446924496_ _g2447024499_)))))
                              (declare (not safe))
                              (foldr1 __tmp28214 '() _L24371_))))
                       (declare (not safe))
                       (cons __tmp28215 __tmp28213))))
                (declare (not safe))
                (cons __tmp28212 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp28222 __tmp28211)))
                                              (__tmp28198
                                               (let ((__tmp28199
                                                      (let ((__tmp28209
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp28200
                                                             (let ((__tmp28202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp28208
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp28203
                                   (let ((__tmp28204
                                          (let ((__tmp28207
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp28205
                                                 (let ((__tmp28206
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp28206 '()))))
                                            (declare (not safe))
                                            (cons __tmp28207 __tmp28205))))
                                     (declare (not safe))
                                     (cons __tmp28204 '()))))
                              (declare (not safe))
                              (cons __tmp28208 __tmp28203)))
                           (__tmp28201
                            (let () (declare (not safe)) (cons _L24305_ '()))))
                       (declare (not safe))
                       (cons __tmp28202 __tmp28201))))
                (declare (not safe))
                (cons __tmp28209 __tmp28200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp28199 '()))))
                                          (declare (not safe))
                                          (cons __tmp28210 __tmp28198))))
                                   (declare (not safe))
                                   (cons '() __tmp28197))))
                            (declare (not safe))
                            (cons _L24257_ __tmp28196))))
                     (declare (not safe))
                     (cons __tmp28226 __tmp28195))
                   (gx#stx-source _stx24117_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg2432824367_))))))
                                  (_loop2432324347_ _target2432024341_ '()))
                                (_g2431724334_ _g2431824338_)))))
                      (_g2431724334_ _g2431824338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2431624502_
                                                   (gx#gentemps
                                                    (let ((__tmp28227
                                                           (lambda (_g2450524508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2450624511_)
                     (let ()
                       (declare (not safe))
                       (cons _g2450524508_ _g2450624511_)))))
              (declare (not safe))
              (foldr1 __tmp28227 '() _L24256_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2429124302_))))
                                   (_g2428924514_
                                    (gx#stx-identifier
                                     _L24257_
                                     _L24257_
                                     '"__impl")))
                                 (_g2412024157_ _g2412124161_)))
                           _body2415124250_
                           _arg2414224220_
                           _hd2413224188_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2414624230_
                                                   _target2414324224_
                                                   '()))
                                                (_g2412024157_
                                                 _g2412124161_)))))
                                      (_g2412024157_ _g2412124161_)))))))
                  (_loop2413724200_ _target2413424194_ '()))
                (_g2412024157_ _g2412124161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2412024157_ _g2412124161_))))
                                      (_g2412024157_ _g2412124161_))))
                              (_g2412024157_ _g2412124161_))))
                      (_g2412024157_ _g2412124161_)))))
          (_g2411924518_ _stx24117_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_$stx24525_)
        (let* ((___stx2698926990_ _$stx24525_)
               (_g2453024566_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2698926990_))))
          (let ((___kont2699226993_
                 (lambda (_L24680_ _L24682_)
                   (let ((__tmp28246 (gx#datum->syntax '#f 'defrules))
                         (__tmp28229
                          (let ((__tmp28230
                                 (let ((__tmp28231
                                        (let ((__tmp28232
                                               (let ((__tmp28245
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp28233
                                                      (let ((__tmp28238
                                                             (let ((__tmp28244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp28239
                            (let ((__tmp28240
                                   (let ((__tmp28243
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp28241
                                          (let ((__tmp28242
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp28242 '()))))
                                     (declare (not safe))
                                     (cons __tmp28243 __tmp28241))))
                              (declare (not safe))
                              (cons __tmp28240 '()))))
                       (declare (not safe))
                       (cons __tmp28244 __tmp28239)))
                    (__tmp28234
                     (let ((__tmp28235
                            (let ((__tmp28237 (gx#datum->syntax '#f 'quote))
                                  (__tmp28236
                                   (let ()
                                     (declare (not safe))
                                     (cons _L24680_ '()))))
                              (declare (not safe))
                              (cons __tmp28237 __tmp28236))))
                       (declare (not safe))
                       (cons __tmp28235 '()))))
                (declare (not safe))
                (cons __tmp28238 __tmp28234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp28245
                                                       __tmp28233))))
                                          (declare (not safe))
                                          (cons __tmp28232 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp28231))))
                            (declare (not safe))
                            (cons _L24682_ __tmp28230))))
                     (declare (not safe))
                     (cons __tmp28246 __tmp28229))))
                (___kont2699426995_
                 (lambda (_L24603_ _L24605_ _L24606_)
                   (let ((__tmp28247
                          (let ((__tmp28248
                                 (let ((__tmp28249
                                        (let ((__tmp28251
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp28250
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L24603_ '()))))
                                          (declare (not safe))
                                          (cons __tmp28251 __tmp28250))))
                                   (declare (not safe))
                                   (cons __tmp28249 '()))))
                            (declare (not safe))
                            (cons _L24605_ __tmp28248))))
                     (declare (not safe))
                     (cons _L24606_ __tmp28247)))))
            (let* ((___match2705427055_
                    (lambda (_e2455424573_
                             _hd2455324577_
                             _tl2455224580_
                             _e2455724583_
                             _hd2455624587_
                             _tl2455524590_
                             _e2456024593_
                             _hd2455924597_
                             _tl2455824600_)
                      (let ((_L24603_ _hd2455924597_)
                            (_L24605_ _hd2455624587_)
                            (_L24606_ _hd2455324577_))
                        (if (and (gx#identifier? _L24605_)
                                 (gx#stx-datum? _L24603_))
                            (___kont2699426995_ _L24603_ _L24605_ _L24606_)
                            (let () (declare (not safe)) (_g2453024566_))))))
                   (___match2703427035_
                    (lambda (_e2453624630_
                             _hd2453524634_
                             _tl2453424637_
                             _e2453924640_
                             _hd2453824644_
                             _tl2453724647_
                             _e2454224650_
                             _hd2454124654_
                             _tl2454024657_
                             _e2454524660_
                             _hd2454424664_
                             _tl2454324667_
                             _e2454824670_
                             _hd2454724674_
                             _tl2454624677_)
                      (let ((_L24680_ _hd2454724674_)
                            (_L24682_ _hd2453824644_))
                        (if (gx#identifier? _L24682_)
                            (___kont2699226993_ _L24680_ _L24682_)
                            (___match2705427055_
                             _e2453624630_
                             _hd2453524634_
                             _tl2453424637_
                             _e2453924640_
                             _hd2453824644_
                             _tl2453724647_
                             _e2454224650_
                             _hd2454124654_
                             _tl2454024657_))))))
              (if (gx#stx-pair? ___stx2698926990_)
                  (let ((_e2453624630_ (gx#syntax-e ___stx2698926990_)))
                    (let ((_tl2453424637_
                           (let () (declare (not safe)) (##cdr _e2453624630_)))
                          (_hd2453524634_
                           (let ()
                             (declare (not safe))
                             (##car _e2453624630_))))
                      (if (gx#stx-pair? _tl2453424637_)
                          (let ((_e2453924640_ (gx#syntax-e _tl2453424637_)))
                            (let ((_tl2453724647_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2453924640_)))
                                  (_hd2453824644_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2453924640_))))
                              (if (gx#stx-pair? _tl2453724647_)
                                  (let ((_e2454224650_
                                         (gx#syntax-e _tl2453724647_)))
                                    (let ((_tl2454024657_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2454224650_)))
                                          (_hd2454124654_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2454224650_))))
                                      (if (gx#stx-pair? _hd2454124654_)
                                          (let ((_e2454524660_
                                                 (gx#syntax-e _hd2454124654_)))
                                            (let ((_tl2454324667_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2454524660_)))
                                                  (_hd2454424664_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2454524660_))))
                                              (if (gx#identifier?
                                                   _hd2454424664_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g28252_|
                                                       _hd2454424664_)
                                                      (if (gx#stx-pair?
                                                           _tl2454324667_)
                                                          (let ((_e2454824670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2454324667_)))
                    (let ((_tl2454624677_
                           (let () (declare (not safe)) (##cdr _e2454824670_)))
                          (_hd2454724674_
                           (let ()
                             (declare (not safe))
                             (##car _e2454824670_))))
                      (if (gx#stx-null? _tl2454624677_)
                          (if (gx#stx-null? _tl2454024657_)
                              (___match2703427035_
                               _e2453624630_
                               _hd2453524634_
                               _tl2453424637_
                               _e2453924640_
                               _hd2453824644_
                               _tl2453724647_
                               _e2454224650_
                               _hd2454124654_
                               _tl2454024657_
                               _e2454524660_
                               _hd2454424664_
                               _tl2454324667_
                               _e2454824670_
                               _hd2454724674_
                               _tl2454624677_)
                              (let () (declare (not safe)) (_g2453024566_)))
                          (if (gx#stx-null? _tl2454024657_)
                              (___match2705427055_
                               _e2453624630_
                               _hd2453524634_
                               _tl2453424637_
                               _e2453924640_
                               _hd2453824644_
                               _tl2453724647_
                               _e2454224650_
                               _hd2454124654_
                               _tl2454024657_)
                              (let () (declare (not safe)) (_g2453024566_))))))
                  (if (gx#stx-null? _tl2454024657_)
                      (___match2705427055_
                       _e2453624630_
                       _hd2453524634_
                       _tl2453424637_
                       _e2453924640_
                       _hd2453824644_
                       _tl2453724647_
                       _e2454224650_
                       _hd2454124654_
                       _tl2454024657_)
                      (let () (declare (not safe)) (_g2453024566_))))
              (if (gx#stx-null? _tl2454024657_)
                  (___match2705427055_
                   _e2453624630_
                   _hd2453524634_
                   _tl2453424637_
                   _e2453924640_
                   _hd2453824644_
                   _tl2453724647_
                   _e2454224650_
                   _hd2454124654_
                   _tl2454024657_)
                  (let () (declare (not safe)) (_g2453024566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl2454024657_)
                                                      (___match2705427055_
                                                       _e2453624630_
                                                       _hd2453524634_
                                                       _tl2453424637_
                                                       _e2453924640_
                                                       _hd2453824644_
                                                       _tl2453724647_
                                                       _e2454224650_
                                                       _hd2454124654_
                                                       _tl2454024657_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2453024566_))))))
                                          (if (gx#stx-null? _tl2454024657_)
                                              (___match2705427055_
                                               _e2453624630_
                                               _hd2453524634_
                                               _tl2453424637_
                                               _e2453924640_
                                               _hd2453824644_
                                               _tl2453724647_
                                               _e2454224650_
                                               _hd2454124654_
                                               _tl2454024657_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2453024566_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2453024566_)))))
                          (let () (declare (not safe)) (_g2453024566_)))))
                  (let () (declare (not safe)) (_g2453024566_))))))))))
