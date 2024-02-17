(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx222005_)
      (let* ((_g222009222038_
              (lambda (_g222010222034_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g222010222034_))))
             (_g222008222139_
              (lambda (_g222010222042_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g222010222042_))
                    (let ((_e222013222045_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g222010222042_))))
                      (let ((_hd222014222049_
                             (let ()
                               (declare (not safe))
                               (##car _e222013222045_)))
                            (_tl222015222052_
                             (let ()
                               (declare (not safe))
                               (##cdr _e222013222045_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl222015222052_))
                            (let ((_g237015_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl222015222052_
                                      '0))))
                              (begin
                                (let ((_g237016_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g237015_)
                                             (##vector-length _g237015_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g237016_ 2)))
                                      (error "Context expects 2 values"
                                             _g237016_)))
                                (let ((_target222016222055_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237015_ 0)))
                                      (_tl222018222058_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237015_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222018222058_))
                                      (letrec ((_loop222019222061_
                                                (lambda (_hd222017222065_
                                                         _type-e222023222068_
                                                         _id222024222070_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd222017222065_))
                                                      (let ((_e222020222073_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd222017222065_))))
                (let ((_lp-hd222021222077_
                       (let () (declare (not safe)) (##car _e222020222073_)))
                      (_lp-tl222022222080_
                       (let () (declare (not safe)) (##cdr _e222020222073_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd222021222077_))
                      (let ((_e222027222083_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd222021222077_))))
                        (let ((_hd222028222087_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222027222083_)))
                              (_tl222029222090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222027222083_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222029222090_))
                              (let ((_e222030222093_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl222029222090_))))
                                (let ((_hd222031222097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222030222093_)))
                                      (_tl222032222100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222030222093_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222032222100_))
                                      (_loop222019222061_
                                       _lp-tl222022222080_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222031222097_
                                               _type-e222023222068_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222028222087_
                                               _id222024222070_)))
                                      (_g222009222038_ _g222010222042_))))
                              (_g222009222038_ _g222010222042_))))
                      (_g222009222038_ _g222010222042_))))
              (let ((_type-e222025222103_ (reverse _type-e222023222068_))
                    (_id222026222106_ (reverse _id222024222070_)))
                ((lambda (_L222109_ _L222111_)
                   (let ((__tmp237028
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp237017
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L222109_
                               _L222111_))
                            (let ((__tmp237018
                                   (lambda (_g222127222131_
                                            _g222128222134_
                                            _g222129222136_)
                                     (let ((__tmp237019
                                            (let ((__tmp237027
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp237020
                                                   (let ((__tmp237026
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp237021
                                                          (let ((__tmp237023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237025
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp237024
                                (let ()
                                  (declare (not safe))
                                  (cons _g222128222134_ '()))))
                           (declare (not safe))
                           (cons __tmp237025 __tmp237024)))
                        (__tmp237022
                         (let ()
                           (declare (not safe))
                           (cons _g222127222131_ '()))))
                    (declare (not safe))
                    (cons __tmp237023 __tmp237022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237026
                                                           __tmp237021))))
                                              (declare (not safe))
                                              (cons __tmp237027 __tmp237020))))
                                       (declare (not safe))
                                       (cons __tmp237019 _g222129222136_)))))
                              (declare (not safe))
                              (foldr2 __tmp237018 '() _L222109_ _L222111_)))))
                     (declare (not safe))
                     (cons __tmp237028 __tmp237017)))
                 _type-e222025222103_
                 _id222026222106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop222019222061_
                                         _target222016222055_
                                         '()
                                         '()))
                                      (_g222009222038_ _g222010222042_)))))
                            (_g222009222038_ _g222010222042_))))
                    (_g222009222038_ _g222010222042_)))))
        (_g222008222139_ _$stx222005_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx222144_)
      (let* ((_g222148222177_
              (lambda (_g222149222173_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g222149222173_))))
             (_g222147222277_
              (lambda (_g222149222181_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g222149222181_))
                    (let ((_e222152222184_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g222149222181_))))
                      (let ((_hd222153222188_
                             (let ()
                               (declare (not safe))
                               (##car _e222152222184_)))
                            (_tl222154222191_
                             (let ()
                               (declare (not safe))
                               (##cdr _e222152222184_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl222154222191_))
                            (let ((_g237029_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl222154222191_
                                      '0))))
                              (begin
                                (let ((_g237030_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g237029_)
                                             (##vector-length _g237029_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g237030_ 2)))
                                      (error "Context expects 2 values"
                                             _g237030_)))
                                (let ((_target222155222194_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237029_ 0)))
                                      (_tl222157222197_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237029_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222157222197_))
                                      (letrec ((_loop222158222200_
                                                (lambda (_hd222156222204_
                                                         _type-e222162222207_
                                                         _id222163222209_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd222156222204_))
                                                      (let ((_e222159222212_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd222156222204_))))
                (let ((_lp-hd222160222216_
                       (let () (declare (not safe)) (##car _e222159222212_)))
                      (_lp-tl222161222219_
                       (let () (declare (not safe)) (##cdr _e222159222212_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd222160222216_))
                      (let ((_e222166222222_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd222160222216_))))
                        (let ((_hd222167222226_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222166222222_)))
                              (_tl222168222229_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222166222222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222168222229_))
                              (let ((_e222169222232_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl222168222229_))))
                                (let ((_hd222170222236_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222169222232_)))
                                      (_tl222171222239_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222169222232_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222171222239_))
                                      (_loop222158222200_
                                       _lp-tl222161222219_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222170222236_
                                               _type-e222162222207_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222167222226_
                                               _id222163222209_)))
                                      (_g222148222177_ _g222149222181_))))
                              (_g222148222177_ _g222149222181_))))
                      (_g222148222177_ _g222149222181_))))
              (let ((_type-e222164222242_ (reverse _type-e222162222207_))
                    (_id222165222245_ (reverse _id222163222209_)))
                ((lambda (_L222248_ _L222250_)
                   (let ((__tmp237042
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp237031
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L222248_
                               _L222250_))
                            (let ((__tmp237032
                                   (lambda (_g222265222269_
                                            _g222266222272_
                                            _g222267222274_)
                                     (let ((__tmp237033
                                            (let ((__tmp237041
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp237034
                                                   (let ((__tmp237040
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp237035
                                                          (let ((__tmp237037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237039
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp237038
                                (let ()
                                  (declare (not safe))
                                  (cons _g222266222272_ '()))))
                           (declare (not safe))
                           (cons __tmp237039 __tmp237038)))
                        (__tmp237036
                         (let ()
                           (declare (not safe))
                           (cons _g222265222269_ '()))))
                    (declare (not safe))
                    (cons __tmp237037 __tmp237036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237040
                                                           __tmp237035))))
                                              (declare (not safe))
                                              (cons __tmp237041 __tmp237034))))
                                       (declare (not safe))
                                       (cons __tmp237033 _g222267222274_)))))
                              (declare (not safe))
                              (foldr2 __tmp237032 '() _L222248_ _L222250_)))))
                     (declare (not safe))
                     (cons __tmp237042 __tmp237031)))
                 _type-e222164222242_
                 _id222165222245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop222158222200_
                                         _target222155222194_
                                         '()
                                         '()))
                                      (_g222148222177_ _g222149222181_)))))
                            (_g222148222177_ _g222149222181_))))
                    (_g222148222177_ _g222149222181_)))))
        (_g222147222277_ _$stx222144_)))))
