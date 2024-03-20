(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g35503_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_stx32349_)
        (letrec ((_body-opt?32352_
                  (lambda (_key32355_)
                    (memq (gx#stx-e _key32355_)
                          '(id:
                            struct:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:
                            metaclass:)))))
          (gx#stx-plist? _stx32349_ _body-opt?32352_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_stx30133_ _id30135_ _super-ref30136_ _slots30137_ _body30138_)
        (letrec* ((_wrap30140_
                   (lambda (_e-stx32346_)
                     (gx#stx-wrap-source
                      _e-stx32346_
                      (gx#stx-source _stx30133_))))
                  (_make-id30142_
                   (if (uninterned-symbol? (gx#stx-e _id30135_))
                       (lambda _g35157_ (gx#genident _id30135_))
                       (lambda _args32343_
                         (apply gx#stx-identifier _id30135_ _args32343_))))
                  (_get-mixin-slots30143_
                   (lambda (_super32317_ _slots32319_)
                     (letrec* ((_tab32321_
                                (let ()
                                  (declare (not safe))
                                  (make-hash-table-eq)))
                               (_dedup32323_
                                (lambda (_mixins32328_)
                                  (let _lp32331_ ((_rest32334_ _mixins32328_)
                                                  (_r32336_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest32334_))
                                        (let ((_slot32338_ (car _rest32334_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (hash-get
                                                 _tab32321_
                                                 _slot32338_))
                                              (let ((__tmp35160
                                                     (cdr _rest32334_)))
                                                (declare (not safe))
                                                (_lp32331_
                                                 __tmp35160
                                                 _r32336_))
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (hash-put!
                                                   _tab32321_
                                                   _slot32338_
                                                   '#t))
                                                (let ((__tmp35159
                                                       (cdr _rest32334_))
                                                      (__tmp35158
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot32338_
                                                               _r32336_))))
                                                  (declare (not safe))
                                                  (_lp32331_
                                                   __tmp35159
                                                   __tmp35158)))))
                                        (reverse _r32336_))))))
                       (gx#stx-for-each
                        (lambda (_slot32325_)
                          (let ((__tmp35161 (gx#stx-e _slot32325_)))
                            (declare (not safe))
                            (hash-put! _tab32321_ __tmp35161 '#t)))
                        _slots32319_)
                       (if (let () (declare (not safe)) (not _super32317_))
                           '()
                           (if (gx#identifier? _super32317_)
                               (let ((__tmp35163
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r30144_
                                         _super32317_))))
                                 (declare (not safe))
                                 (_dedup32323_ __tmp35163))
                               (let ((__tmp35162
                                      (concatenate
                                       (map _get-mixin-slots-r30144_
                                            _super32317_))))
                                 (declare (not safe))
                                 (_dedup32323_ __tmp35162)))))))
                  (_get-mixin-slots-r30144_
                   (lambda (_type-id32311_)
                     (let ((_info32314_
                            (gx#syntax-local-value _type-id32311_)))
                       (append (let ((__obj34576 _info32314_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj34576
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj34576
                                        '4
                                        gerbil/core/mop~MOP-2#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/mop~MOP-2#class-type-info::t
                                      __obj34576
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r30144_
                                     (let ((__obj34577 _info32314_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj34577
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj34577
                                              '3
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj34577
                                            'super))))))))))
          (gx#check-duplicate-identifiers _slots30137_ _stx30133_)
          (let* ((_name30146_ (symbol->string (gx#stx-e _id30135_)))
                 (_super30149_ (map gx#syntax-local-value _super-ref30136_))
                 (_struct?30152_ (gx#stx-getq 'struct: _body30138_))
                 (_g3015530163_
                  (lambda (_g3015630159_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g3015630159_)))
                 (_g3015432307_
                  (lambda (_g3015630167_)
                    ((lambda (_L30170_)
                       (let ()
                         (let* ((_g3018630194_
                                 (lambda (_g3018730190_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g3018730190_)))
                                (_g3018532303_
                                 (lambda (_g3018730198_)
                                   ((lambda (_L30201_)
                                      (let ()
                                        (let* ((_g3021430222_
                                                (lambda (_g3021530218_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3021530218_)))
                                               (_g3021332299_
                                                (lambda (_g3021530226_)
                                                  ((lambda (_L30229_)
                                                     (let ()
                                                       (let* ((_g3024230250_
                                                               (lambda (_g3024330246_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g3024330246_)))
                      (_g3024132295_
                       (lambda (_g3024330254_)
                         ((lambda (_L30257_)
                            (let ()
                              (let* ((_g3027030278_
                                      (lambda (_g3027130274_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g3027130274_)))
                                     (_g3026932291_
                                      (lambda (_g3027130282_)
                                        ((lambda (_L30285_)
                                           (let ()
                                             (let* ((_g3029830315_
                                                     (lambda (_g3029930311_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g3029930311_)))
                                                    (_g3029732287_
                                                     (lambda (_g3029930319_)
                                                       (if (gx#stx-pair/null?
                                                            _g3029930319_)
                                                           (let ((_g35164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g3029930319_ '0)))
                     (begin
                       (let ((_g35165_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g35164_)
                                    (##vector-length _g35164_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g35165_ 2)))
                             (error "Context expects 2 values" _g35165_)))
                       (let ((_target3030130322_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g35164_ 0)))
                             (_tl3030330325_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g35164_ 1))))
                         (if (gx#stx-null? _tl3030330325_)
                             (letrec ((_loop3030430328_
                                       (lambda (_hd3030230332_
                                                _slot3030830335_)
                                         (if (gx#stx-pair? _hd3030230332_)
                                             (let ((_e3030530338_
                                                    (gx#syntax-e
                                                     _hd3030230332_)))
                                               (let ((_lp-hd3030630342_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3030530338_)))
                                                     (_lp-tl3030730345_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3030530338_))))
                                                 (let ((__tmp35442
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd3030630342_
                                                                _slot3030830335_))))
                                                   (declare (not safe))
                                                   (_loop3030430328_
                                                    _lp-tl3030730345_
                                                    __tmp35442))))
                                             (let ((_slot3030930348_
                                                    (reverse _slot3030830335_)))
                                               ((lambda (_L30352_)
                                                  (let ()
                                                    (let* ((_g3036930386_
                                                            (lambda (_g3037030382_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g3037030382_)))
                                                           (_g3036832278_
                                                            (lambda (_g3037030390_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3037030390_)
                          (let ((_g35166_
                                 (gx#syntax-split-splice _g3037030390_ '0)))
                            (begin
                              (let ((_g35167_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g35166_)
                                           (##vector-length _g35166_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g35167_ 2)))
                                    (error "Context expects 2 values"
                                           _g35167_)))
                              (let ((_target3037230393_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g35166_ 0)))
                                    (_tl3037430396_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g35166_ 1))))
                                (if (gx#stx-null? _tl3037430396_)
                                    (letrec ((_loop3037530399_
                                              (lambda (_hd3037330403_
                                                       _getf3037930406_)
                                                (if (gx#stx-pair?
                                                     _hd3037330403_)
                                                    (let ((_e3037630409_
                                                           (gx#syntax-e
                                                            _hd3037330403_)))
                                                      (let ((_lp-hd3037730413_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e3037630409_)))
                    (_lp-tl3037830416_
                     (let () (declare (not safe)) (##cdr _e3037630409_))))
                (let ((__tmp35440
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd3037730413_ _getf3037930406_))))
                  (declare (not safe))
                  (_loop3037530399_ _lp-tl3037830416_ __tmp35440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_getf3038030419_
                                                           (reverse _getf3037930406_)))
                                                      ((lambda (_L30423_)
                                                         (let ()
                                                           (let* ((_g3044030457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g3044130453_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3044130453_)))
                          (_g3043932269_
                           (lambda (_g3044130461_)
                             (if (gx#stx-pair/null? _g3044130461_)
                                 (let ((_g35168_
                                        (gx#syntax-split-splice
                                         _g3044130461_
                                         '0)))
                                   (begin
                                     (let ((_g35169_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g35168_)
                                                  (##vector-length _g35168_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g35169_ 2)))
                                           (error "Context expects 2 values"
                                                  _g35169_)))
                                     (let ((_target3044330464_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g35168_ 0)))
                                           (_tl3044530467_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g35168_ 1))))
                                       (if (gx#stx-null? _tl3044530467_)
                                           (letrec ((_loop3044630470_
                                                     (lambda (_hd3044430474_
                                                              _setf3045030477_)
                                                       (if (gx#stx-pair?
                                                            _hd3044430474_)
                                                           (let ((_e3044730480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd3044430474_)))
                     (let ((_lp-hd3044830484_
                            (let ()
                              (declare (not safe))
                              (##car _e3044730480_)))
                           (_lp-tl3044930487_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3044730480_))))
                       (let ((__tmp35438
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd3044830484_ _setf3045030477_))))
                         (declare (not safe))
                         (_loop3044630470_ _lp-tl3044930487_ __tmp35438))))
                   (let ((_setf3045130490_ (reverse _setf3045030477_)))
                     ((lambda (_L30494_)
                        (let ()
                          (let* ((_mixin-slots30511_
                                  (let ()
                                    (declare (not safe))
                                    (_get-mixin-slots30143_
                                     _super-ref30136_
                                     _slots30137_)))
                                 (_g3051430531_
                                  (lambda (_g3051530527_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g3051530527_)))
                                 (_g3051332265_
                                  (lambda (_g3051530535_)
                                    (if (gx#stx-pair/null? _g3051530535_)
                                        (let ((_g35170_
                                               (gx#syntax-split-splice
                                                _g3051530535_
                                                '0)))
                                          (begin
                                            (let ((_g35171_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g35170_)
                                                         (##vector-length
                                                          _g35170_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g35171_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g35171_)))
                                            (let ((_target3051730538_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g35170_
                                                      0)))
                                                  (_tl3051930541_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g35170_
                                                      1))))
                                              (if (gx#stx-null? _tl3051930541_)
                                                  (letrec ((_loop3052030544_
                                                            (lambda (_hd3051830548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _mixin-slot3052430551_)
                      (if (gx#stx-pair? _hd3051830548_)
                          (let ((_e3052130554_ (gx#syntax-e _hd3051830548_)))
                            (let ((_lp-hd3052230558_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3052130554_)))
                                  (_lp-tl3052330561_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3052130554_))))
                              (let ((__tmp35437
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd3052230558_
                                             _mixin-slot3052430551_))))
                                (declare (not safe))
                                (_loop3052030544_
                                 _lp-tl3052330561_
                                 __tmp35437))))
                          (let ((_mixin-slot3052530564_
                                 (reverse _mixin-slot3052430551_)))
                            ((lambda (_L30568_)
                               (let ()
                                 (let* ((_g3058630603_
                                         (lambda (_g3058730599_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3058730599_)))
                                        (_g3058532256_
                                         (lambda (_g3058730607_)
                                           (if (gx#stx-pair/null?
                                                _g3058730607_)
                                               (let ((_g35172_
                                                      (gx#syntax-split-splice
                                                       _g3058730607_
                                                       '0)))
                                                 (begin
                                                   (let ((_g35173_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35172_)
                        (##vector-length _g35172_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g35173_ 2)))
                 (error "Context expects 2 values" _g35173_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3058930610_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g35172_
                                                             0)))
                                                         (_tl3059130613_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g35172_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3059130613_)
                                                         (letrec ((_loop3059230616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3059030620_ _mixin-getf3059630623_)
                             (if (gx#stx-pair? _hd3059030620_)
                                 (let ((_e3059330626_
                                        (gx#syntax-e _hd3059030620_)))
                                   (let ((_lp-hd3059430630_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3059330626_)))
                                         (_lp-tl3059530633_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3059330626_))))
                                     (let ((__tmp35435
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd3059430630_
                                                    _mixin-getf3059630623_))))
                                       (declare (not safe))
                                       (_loop3059230616_
                                        _lp-tl3059530633_
                                        __tmp35435))))
                                 (let ((_mixin-getf3059730636_
                                        (reverse _mixin-getf3059630623_)))
                                   ((lambda (_L30640_)
                                      (let ()
                                        (let* ((_g3065730674_
                                                (lambda (_g3065830670_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3065830670_)))
                                               (_g3065632247_
                                                (lambda (_g3065830678_)
                                                  (if (gx#stx-pair/null?
                                                       _g3065830678_)
                                                      (let ((_g35174_
                                                             (gx#syntax-split-splice
                                                              _g3065830678_
                                                              '0)))
                                                        (begin
                                                          (let ((_g35175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g35174_)
                               (##vector-length _g35174_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g35175_ 2)))
                        (error "Context expects 2 values" _g35175_)))
                  (let ((_target3066030681_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g35174_ 0)))
                        (_tl3066230684_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g35174_ 1))))
                    (if (gx#stx-null? _tl3066230684_)
                        (letrec ((_loop3066330687_
                                  (lambda (_hd3066130691_
                                           _mixin-setf3066730694_)
                                    (if (gx#stx-pair? _hd3066130691_)
                                        (let ((_e3066430697_
                                               (gx#syntax-e _hd3066130691_)))
                                          (let ((_lp-hd3066530701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3066430697_)))
                                                (_lp-tl3066630704_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3066430697_))))
                                            (let ((__tmp35433
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3066530701_
                                                           _mixin-setf3066730694_))))
                                              (declare (not safe))
                                              (_loop3066330687_
                                               _lp-tl3066630704_
                                               __tmp35433))))
                                        (let ((_mixin-setf3066830707_
                                               (reverse _mixin-setf3066730694_)))
                                          ((lambda (_L30711_)
                                             (let ()
                                               (let* ((_g3072830745_
                                                       (lambda (_g3072930741_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3072930741_)))
                                                      (_g3072732230_
                                                       (lambda (_g3072930749_)
                                                         (if (gx#stx-pair/null?
                                                              _g3072930749_)
                                                             (let ((_g35176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g3072930749_ '0)))
                       (begin
                         (let ((_g35177_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g35176_)
                                      (##vector-length _g35176_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g35177_ 2)))
                               (error "Context expects 2 values" _g35177_)))
                         (let ((_target3073130752_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g35176_ 0)))
                               (_tl3073330755_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g35176_ 1))))
                           (if (gx#stx-null? _tl3073330755_)
                               (letrec ((_loop3073430758_
                                         (lambda (_hd3073230762_
                                                  _ugetf3073830765_)
                                           (if (gx#stx-pair? _hd3073230762_)
                                               (let ((_e3073530768_
                                                      (gx#syntax-e
                                                       _hd3073230762_)))
                                                 (let ((_lp-hd3073630772_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3073530768_)))
                                                       (_lp-tl3073730775_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3073530768_))))
                                                   (let ((__tmp35430
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _lp-hd3073630772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ugetf3073830765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop3073430758_
                                                      _lp-tl3073730775_
                                                      __tmp35430))))
                                               (let ((_ugetf3073930778_
                                                      (reverse _ugetf3073830765_)))
                                                 ((lambda (_L30782_)
                                                    (let ()
                                                      (let* ((_g3079930816_
                                                              (lambda (_g3080030812_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g3080030812_)))
                     (_g3079832213_
                      (lambda (_g3080030820_)
                        (if (gx#stx-pair/null? _g3080030820_)
                            (let ((_g35178_
                                   (gx#syntax-split-splice _g3080030820_ '0)))
                              (begin
                                (let ((_g35179_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g35178_)
                                             (##vector-length _g35178_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g35179_ 2)))
                                      (error "Context expects 2 values"
                                             _g35179_)))
                                (let ((_target3080230823_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g35178_ 0)))
                                      (_tl3080430826_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g35178_ 1))))
                                  (if (gx#stx-null? _tl3080430826_)
                                      (letrec ((_loop3080530829_
                                                (lambda (_hd3080330833_
                                                         _usetf3080930836_)
                                                  (if (gx#stx-pair?
                                                       _hd3080330833_)
                                                      (let ((_e3080630839_
                                                             (gx#syntax-e
                                                              _hd3080330833_)))
                                                        (let ((_lp-hd3080730843_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e3080630839_)))
                      (_lp-tl3080830846_
                       (let () (declare (not safe)) (##cdr _e3080630839_))))
                  (let ((__tmp35427
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd3080730843_ _usetf3080930836_))))
                    (declare (not safe))
                    (_loop3080530829_ _lp-tl3080830846_ __tmp35427))))
              (let ((_usetf3081030849_ (reverse _usetf3080930836_)))
                ((lambda (_L30853_)
                   (let ()
                     (let* ((_g3087030887_
                             (lambda (_g3087130883_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3087130883_)))
                            (_g3086932196_
                             (lambda (_g3087130891_)
                               (if (gx#stx-pair/null? _g3087130891_)
                                   (let ((_g35180_
                                          (gx#syntax-split-splice
                                           _g3087130891_
                                           '0)))
                                     (begin
                                       (let ((_g35181_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g35180_)
                                                    (##vector-length _g35180_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g35181_ 2)))
                                             (error "Context expects 2 values"
                                                    _g35181_)))
                                       (let ((_target3087330894_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g35180_ 0)))
                                             (_tl3087530897_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g35180_ 1))))
                                         (if (gx#stx-null? _tl3087530897_)
                                             (letrec ((_loop3087630900_
                                                       (lambda (_hd3087430904_
                                                                _mixin-ugetf3088030907_)
                                                         (if (gx#stx-pair?
                                                              _hd3087430904_)
                                                             (let ((_e3087730910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd3087430904_)))
                       (let ((_lp-hd3087830914_
                              (let ()
                                (declare (not safe))
                                (##car _e3087730910_)))
                             (_lp-tl3087930917_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3087730910_))))
                         (let ((__tmp35424
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd3087830914_
                                        _mixin-ugetf3088030907_))))
                           (declare (not safe))
                           (_loop3087630900_ _lp-tl3087930917_ __tmp35424))))
                     (let ((_mixin-ugetf3088130920_
                            (reverse _mixin-ugetf3088030907_)))
                       ((lambda (_L30924_)
                          (let ()
                            (let* ((_g3094130958_
                                    (lambda (_g3094230954_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g3094230954_)))
                                   (_g3094032179_
                                    (lambda (_g3094230962_)
                                      (if (gx#stx-pair/null? _g3094230962_)
                                          (let ((_g35182_
                                                 (gx#syntax-split-splice
                                                  _g3094230962_
                                                  '0)))
                                            (begin
                                              (let ((_g35183_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g35182_)
                                                           (##vector-length
                                                            _g35182_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g35183_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g35183_)))
                                              (let ((_target3094430965_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g35182_
                                                        0)))
                                                    (_tl3094630968_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g35182_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl3094630968_)
                                                    (letrec ((_loop3094730971_
                                                              (lambda (_hd3094530975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _mixin-usetf3095130978_)
                        (if (gx#stx-pair? _hd3094530975_)
                            (let ((_e3094830981_ (gx#syntax-e _hd3094530975_)))
                              (let ((_lp-hd3094930985_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3094830981_)))
                                    (_lp-tl3095030988_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3094830981_))))
                                (let ((__tmp35421
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd3094930985_
                                               _mixin-usetf3095130978_))))
                                  (declare (not safe))
                                  (_loop3094730971_
                                   _lp-tl3095030988_
                                   __tmp35421))))
                            (let ((_mixin-usetf3095230991_
                                   (reverse _mixin-usetf3095130978_)))
                              ((lambda (_L30995_)
                                 (let ()
                                   (let* ((_type-slots31026_
                                           (if (gx#stx-null? _slots30137_)
                                               '()
                                               (let ((__tmp35184
                                                      (let ((__tmp35185
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L30494_
                                                                _L30423_
                                                                _L30352_)
                                                               (let ((__tmp35186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3101131016_
                                       _g3101231019_
                                       _g3101331021_
                                       _g3101431023_)
                                (let ((__tmp35187
                                       (let ((__tmp35188
                                              (let ((__tmp35189
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g3101131016_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g3101231019_
                                                      __tmp35189))))
                                         (declare (not safe))
                                         (cons _g3101331021_ __tmp35188))))
                                  (declare (not safe))
                                  (cons __tmp35187 _g3101431023_)))))
                         (declare (not safe))
                         (foldr* __tmp35186 '() _L30494_ _L30423_ _L30352_)))))
                (declare (not safe))
                (cons __tmp35185 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp35184))))
                                          (_type-mixin-slots31043_
                                           (if (gx#stx-null?
                                                _mixin-slots30511_)
                                               '()
                                               (let ((__tmp35190
                                                      (let ((__tmp35191
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L30711_
                                                                _L30640_
                                                                _L30568_)
                                                               (let ((__tmp35192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3102831033_
                                       _g3102931036_
                                       _g3103031038_
                                       _g3103131040_)
                                (let ((__tmp35193
                                       (let ((__tmp35194
                                              (let ((__tmp35195
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g3102831033_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g3102931036_
                                                      __tmp35195))))
                                         (declare (not safe))
                                         (cons _g3103031038_ __tmp35194))))
                                  (declare (not safe))
                                  (cons __tmp35193 _g3103131040_)))))
                         (declare (not safe))
                         (foldr* __tmp35192 '() _L30711_ _L30640_ _L30568_)))))
                (declare (not safe))
                (cons __tmp35191 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp35190))))
                                          (_type-name31050_
                                           (let ((__tmp35196
                                                  (let ((__tmp35197
                                                         (let ((_$e31046_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body30138_)))
                   (if _$e31046_ _$e31046_ _id30135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp35197 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp35196)))
                                          (_type-id31057_
                                           (let ((__tmp35198
                                                  (let ((__tmp35199
                                                         (let ((_$e31053_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'id:
                         _body30138_)))
                   (if _$e31053_
                       _$e31053_
                       (let ()
                         (declare (not safe))
                         (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                          _L30170_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp35199 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp35198)))
                                          (_type-constructor31072_
                                           (let ((_$e31068_
                                                  (let ((_e3105931061_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body30138_)))
                                                    (if _e3105931061_
                                                        (let* ((_e31065_
                                                                _e3105931061_)
                                                               (__tmp35200
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e31065_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp35200))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e31068_ _$e31068_ '())))
                                          (_properties31106_
                                           (let* ((_properties31075_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body30138_))
                                                       (let ((__tmp35201
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp35201 '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties31088_
                                                   (let ((_$e31078_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _body30138_))))
                                                     (if _$e31078_
                                                         ((lambda (_print31082_)
                                                            (let* ((_print31085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _print31082_ '#t))
                                _slots30137_
                                _print31082_))
                           (__tmp35202
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print31085_))))
                      (declare (not safe))
                      (cons __tmp35202 _properties31075_)))
                  _$e31078_)
                 _properties31075_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties31101_
                                                   (let ((_$e31091_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _body30138_))))
                                                     (if _$e31091_
                                                         ((lambda (_equal31095_)
                                                            (let* ((_equal31098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _equal31095_ '#t))
                                _slots30137_
                                _equal31095_))
                           (__tmp35203
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal31098_))))
                      (declare (not safe))
                      (cons __tmp35203 _properties31088_)))
                  _$e31091_)
                 _properties31088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _properties31101_))
                                          (_type-properties31147_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _properties31106_))
                                               '()
                                               (let* ((_g3110931117_
                                                       (lambda (_g3111031113_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3111031113_)))
                                                      (_g3110831143_
                                                       (lambda (_g3111031121_)
                                                         ((lambda (_L31124_)
                                                            (let ()
                                                              (let ((__tmp35204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp35205
                                    (let ((__tmp35207
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp35206
                                           (let ()
                                             (declare (not safe))
                                             (cons _L31124_ '()))))
                                      (declare (not safe))
                                      (cons __tmp35207 __tmp35206))))
                               (declare (not safe))
                               (cons __tmp35205 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp35204))))
                  _g3111031121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g3110831143_
                                                  _properties31106_))))
                                          (_metaclass31157_
                                           (let ((_$e31150_
                                                  (gx#stx-getq
                                                   'metaclass:
                                                   _body30138_)))
                                             (if _$e31150_
                                                 ((lambda (_metaclass31154_)
                                                    (if (gx#identifier?
                                                         _metaclass31154_)
                                                        _metaclass31154_
                                                        '#f))
                                                  _$e31150_)
                                                 '#f)))
                                          (_type-metaclass31160_
                                           (if _metaclass31157_
                                               (let ((__tmp35208
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metaclass31157_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons 'metaclass: __tmp35208))
                                               '()))
                                          (_final?31163_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body30138_)))
                                          (_type-struct31166_
                                           (let ((__tmp35209
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?30152_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp35209)))
                                          (_type-final31169_
                                           (let ((__tmp35210
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?31163_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp35210)))
                                          (_g3117231189_
                                           (lambda (_g3117331185_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3117331185_)))
                                          (_g3117132175_
                                           (lambda (_g3117331193_)
                                             (if (gx#stx-pair/null?
                                                  _g3117331193_)
                                                 (let ((_g35211_
                                                        (gx#syntax-split-splice
                                                         _g3117331193_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35212_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g35211_)
                          (##vector-length _g35211_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g35212_ 2)))
                   (error "Context expects 2 values" _g35212_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3117531196_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g35211_
                                                               0)))
                                                           (_tl3117731199_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g35211_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl3117731199_)
                                                           (letrec ((_loop3117831202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3117631206_ _type-body3118231209_)
                               (if (gx#stx-pair? _hd3117631206_)
                                   (let ((_e3117931212_
                                          (gx#syntax-e _hd3117631206_)))
                                     (let ((_lp-hd3118031216_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3117931212_)))
                                           (_lp-tl3118131219_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3117931212_))))
                                       (let ((__tmp35412
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd3118031216_
                                                      _type-body3118231209_))))
                                         (declare (not safe))
                                         (_loop3117831202_
                                          _lp-tl3118131219_
                                          __tmp35412))))
                                   (let ((_type-body3118331222_
                                          (reverse _type-body3118231209_)))
                                     ((lambda (_L31226_)
                                        (let ()
                                          (let* ((_g3124731255_
                                                  (lambda (_g3124831251_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3124831251_)))
                                                 (_g3124632163_
                                                  (lambda (_g3124831259_)
                                                    ((lambda (_L31262_)
                                                       (let ()
                                                         (let* ((_g3127531283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3127631279_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3127631279_)))
                        (_g3127432092_
                         (lambda (_g3127631287_)
                           ((lambda (_L31290_)
                              (let ()
                                (let* ((_g3130331311_
                                        (lambda (_g3130431307_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3130431307_)))
                                       (_g3130232057_
                                        (lambda (_g3130431315_)
                                          ((lambda (_L31318_)
                                             (let ()
                                               (let* ((_g3133131339_
                                                       (lambda (_g3133231335_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3133231335_)))
                                                      (_g3133031971_
                                                       (lambda (_g3133231343_)
                                                         ((lambda (_L31346_)
                                                            (let ()
                                                              (let* ((_g3135931367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3136031363_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3136031363_)))
                             (_g3135831959_
                              (lambda (_g3136031371_)
                                ((lambda (_L31374_)
                                   (let ()
                                     (let* ((_g3138731395_
                                             (lambda (_g3138831391_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3138831391_)))
                                            (_g3138631955_
                                             (lambda (_g3138831399_)
                                               ((lambda (_L31402_)
                                                  (let ()
                                                    (let* ((_g3141531423_
                                                            (lambda (_g3141631419_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g3141631419_)))
                                                           (_g3141431951_
                                                            (lambda (_g3141631427_)
                                                              ((lambda (_L31430_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g3144331451_
                                   (lambda (_g3144431447_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3144431447_)))
                                  (_g3144231916_
                                   (lambda (_g3144431455_)
                                     ((lambda (_L31458_)
                                        (let ()
                                          (let* ((_g3147131479_
                                                  (lambda (_g3147231475_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3147231475_)))
                                                 (_g3147031845_
                                                  (lambda (_g3147231483_)
                                                    ((lambda (_L31486_)
                                                       (let ()
                                                         (let* ((_g3149931507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3150031503_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3150031503_)))
                        (_g3149831841_
                         (lambda (_g3150031511_)
                           ((lambda (_L31514_)
                              (let ()
                                (let* ((_g3152731535_
                                        (lambda (_g3152831531_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3152831531_)))
                                       (_g3152631837_
                                        (lambda (_g3152831539_)
                                          ((lambda (_L31542_)
                                             (let ()
                                               (let* ((_g3155531563_
                                                       (lambda (_g3155631559_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3155631559_)))
                                                      (_g3155431833_
                                                       (lambda (_g3155631567_)
                                                         ((lambda (_L31570_)
                                                            (let ()
                                                              (let* ((_g3158331591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3158431587_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3158431587_)))
                             (_g3158231807_
                              (lambda (_g3158431595_)
                                ((lambda (_L31598_)
                                   (let ()
                                     (let* ((_g3161131619_
                                             (lambda (_g3161231615_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3161231615_)))
                                            (_g3161031781_
                                             (lambda (_g3161231623_)
                                               ((lambda (_L31626_)
                                                  (let ()
                                                    (let* ((_g3163931647_
                                                            (lambda (_g3164031643_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g3164031643_)))
                                                           (_g3163831755_
                                                            (lambda (_g3164031651_)
                                                              ((lambda (_L31654_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g3166731675_
                                   (lambda (_g3166831671_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3166831671_)))
                                  (_g3166631729_
                                   (lambda (_g3166831679_)
                                     ((lambda (_L31682_)
                                        (let ()
                                          (let* ((_g3169531703_
                                                  (lambda (_g3169631699_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3169631699_)))
                                                 (_g3169431725_
                                                  (lambda (_g3169631707_)
                                                    ((lambda (_L31710_)
                                                       (let ()
                                                         (let ()
                                                           (let ((__tmp35213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp35216 (gx#datum->syntax '#f 'begin))
                                (__tmp35214
                                 (let ((__tmp35215
                                        (let ()
                                          (declare (not safe))
                                          (cons _L31710_ '()))))
                                   (declare (not safe))
                                   (cons _L31262_ __tmp35215))))
                            (declare (not safe))
                            (cons __tmp35216 __tmp35214))))
                     (declare (not safe))
                     (_wrap30140_ __tmp35213)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3169631707_)))
                                                 (__tmp35217
                                                  (let ((__tmp35218
                                                         (let ((__tmp35253
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defsyntax))
                       (__tmp35219
                        (let ((__tmp35220
                               (let ((__tmp35221
                                      (let ((__tmp35252
                                             (gx#datum->syntax
                                              '#f
                                              'make-class-type-info))
                                            (__tmp35222
                                             (let ((__tmp35223
                                                    (let ((__tmp35224
                                                           (let ((__tmp35225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp35226
                                 (let ((__tmp35227
                                        (let ((__tmp35228
                                               (let ((__tmp35229
                                                      (let ((__tmp35230
                                                             (let ((__tmp35231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp35232
                                   (let ((__tmp35233
                                          (let ((__tmp35234
                                                 (let ((__tmp35235
                                                        (let ((__tmp35236
                                                               (let ((__tmp35237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp35238
                                     (let ((__tmp35239
                                            (let ((__tmp35240
                                                   (let ((__tmp35241
                                                          (let ((__tmp35242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp35243
                                (let ((__tmp35244
                                       (let ((__tmp35245
                                              (let ((__tmp35246
                                                     (let ((__tmp35247
                                                            (let ((__tmp35248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp35249
                                  (let ((__tmp35250
                                         (let ((__tmp35251
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L31682_ '()))))
                                           (declare (not safe))
                                           (cons 'unchecked-mutators:
                                                 __tmp35251))))
                                    (declare (not safe))
                                    (cons _L31654_ __tmp35250))))
                             (declare (not safe))
                             (cons 'unchecked-accessors: __tmp35249))))
                      (declare (not safe))
                      (cons _L31626_ __tmp35248))))
               (declare (not safe))
               (cons 'mutators: __tmp35247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L31598_ __tmp35246))))
                                         (declare (not safe))
                                         (cons 'accessors: __tmp35245))))
                                  (declare (not safe))
                                  (cons _L31570_ __tmp35244))))
                           (declare (not safe))
                           (cons 'predicate: __tmp35243))))
                    (declare (not safe))
                    (cons _L31542_ __tmp35242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'constructor:
                                                           __tmp35241))))
                                              (declare (not safe))
                                              (cons _L31514_ __tmp35240))))
                                       (declare (not safe))
                                       (cons 'type-descriptor: __tmp35239))))
                                (declare (not safe))
                                (cons _L31486_ __tmp35238))))
                         (declare (not safe))
                         (cons 'constructor-method: __tmp35237))))
                  (declare (not safe))
                  (cons _L31458_ __tmp35236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'metaclass:
                                                         __tmp35235))))
                                            (declare (not safe))
                                            (cons _L31430_ __tmp35234))))
                                     (declare (not safe))
                                     (cons 'final?: __tmp35233))))
                              (declare (not safe))
                              (cons _L31402_ __tmp35232))))
                       (declare (not safe))
                       (cons 'struct?: __tmp35231))))
                (declare (not safe))
                (cons _L31346_ __tmp35230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'super: __tmp35229))))
                                          (declare (not safe))
                                          (cons _L31374_ __tmp35228))))
                                   (declare (not safe))
                                   (cons 'slots: __tmp35227))))
                            (declare (not safe))
                            (cons _L31318_ __tmp35226))))
                     (declare (not safe))
                     (cons 'name: __tmp35225))))
              (declare (not safe))
              (cons _L31290_ __tmp35224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'id: __tmp35223))))
                                        (declare (not safe))
                                        (cons __tmp35252 __tmp35222))))
                                 (declare (not safe))
                                 (cons __tmp35221 '()))))
                          (declare (not safe))
                          (cons _L30170_ __tmp35220))))
                   (declare (not safe))
                   (cons __tmp35253 __tmp35219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap30140_ __tmp35218))))
                                            (declare (not safe))
                                            (_g3169431725_ __tmp35217))))
                                      _g3166831679_)))
                                  (__tmp35254
                                   (let ((__tmp35281
                                          (gx#datum->syntax '#f '@list))
                                         (__tmp35255
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L30853_
                                             _L30352_)
                                            (let ((__tmp35269
                                                   (lambda (_g3173231739_
                                                            _g3173331742_
                                                            _g3173431744_)
                                                     (let ((__tmp35270
                                                            (let ((__tmp35280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '@list))
                          (__tmp35271
                           (let ((__tmp35277
                                  (let ((__tmp35279
                                         (gx#datum->syntax '#f 'quote))
                                        (__tmp35278
                                         (let ()
                                           (declare (not safe))
                                           (cons _g3173331742_ '()))))
                                    (declare (not safe))
                                    (cons __tmp35279 __tmp35278)))
                                 (__tmp35272
                                  (let ((__tmp35273
                                         (let ((__tmp35274
                                                (let ((__tmp35276
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax))
                                                      (__tmp35275
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g3173231739_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp35276
                                                        __tmp35275))))
                                           (declare (not safe))
                                           (cons __tmp35274 '()))))
                                    (declare (not safe))
                                    (cons ':: __tmp35273))))
                             (declare (not safe))
                             (cons __tmp35277 __tmp35272))))
                      (declare (not safe))
                      (cons __tmp35280 __tmp35271))))
               (declare (not safe))
               (cons __tmp35270 _g3173431744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp35256
                                                   (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L30995_
                                                      _L30568_)
                                                     (let ((__tmp35257
                                                            (lambda (_g3173531747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3173631750_
                             _g3173731752_)
                      (let ((__tmp35258
                             (let ((__tmp35268 (gx#datum->syntax '#f '@list))
                                   (__tmp35259
                                    (let ((__tmp35265
                                           (let ((__tmp35267
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote))
                                                 (__tmp35266
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3173631750_ '()))))
                                             (declare (not safe))
                                             (cons __tmp35267 __tmp35266)))
                                          (__tmp35260
                                           (let ((__tmp35261
                                                  (let ((__tmp35262
                                                         (let ((__tmp35264
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax))
                       (__tmp35263
                        (let ()
                          (declare (not safe))
                          (cons _g3173531747_ '()))))
                   (declare (not safe))
                   (cons __tmp35264 __tmp35263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp35262 '()))))
                                             (declare (not safe))
                                             (cons ':: __tmp35261))))
                                      (declare (not safe))
                                      (cons __tmp35265 __tmp35260))))
                               (declare (not safe))
                               (cons __tmp35268 __tmp35259))))
                        (declare (not safe))
                        (cons __tmp35258 _g3173731752_)))))
               (declare (not safe))
               (foldr2 __tmp35257 '() _L30995_ _L30568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldr2 __tmp35269
                                                      __tmp35256
                                                      _L30853_
                                                      _L30352_)))))
                                     (declare (not safe))
                                     (cons __tmp35281 __tmp35255))))
                             (declare (not safe))
                             (_g3166631729_ __tmp35254))))
                       _g3164031651_)))
                   (__tmp35282
                    (let ((__tmp35309 (gx#datum->syntax '#f '@list))
                          (__tmp35283
                           (begin
                             (gx#syntax-check-splice-targets _L30782_ _L30352_)
                             (let ((__tmp35297
                                    (lambda (_g3175831765_
                                             _g3175931768_
                                             _g3176031770_)
                                      (let ((__tmp35298
                                             (let ((__tmp35308
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp35299
                                                    (let ((__tmp35305
                                                           (let ((__tmp35307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp35306
                          (let ()
                            (declare (not safe))
                            (cons _g3175931768_ '()))))
                     (declare (not safe))
                     (cons __tmp35307 __tmp35306)))
                  (__tmp35300
                   (let ((__tmp35301
                          (let ((__tmp35302
                                 (let ((__tmp35304
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp35303
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3175831765_ '()))))
                                   (declare (not safe))
                                   (cons __tmp35304 __tmp35303))))
                            (declare (not safe))
                            (cons __tmp35302 '()))))
                     (declare (not safe))
                     (cons ':: __tmp35301))))
              (declare (not safe))
              (cons __tmp35305 __tmp35300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp35308 __tmp35299))))
                                        (declare (not safe))
                                        (cons __tmp35298 _g3176031770_))))
                                   (__tmp35284
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L30924_
                                       _L30568_)
                                      (let ((__tmp35285
                                             (lambda (_g3176131773_
                                                      _g3176231776_
                                                      _g3176331778_)
                                               (let ((__tmp35286
                                                      (let ((__tmp35296
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp35287
                                                             (let ((__tmp35293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp35295 (gx#datum->syntax '#f 'quote))
                                  (__tmp35294
                                   (let ()
                                     (declare (not safe))
                                     (cons _g3176231776_ '()))))
                              (declare (not safe))
                              (cons __tmp35295 __tmp35294)))
                           (__tmp35288
                            (let ((__tmp35289
                                   (let ((__tmp35290
                                          (let ((__tmp35292
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp35291
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g3176131773_ '()))))
                                            (declare (not safe))
                                            (cons __tmp35292 __tmp35291))))
                                     (declare (not safe))
                                     (cons __tmp35290 '()))))
                              (declare (not safe))
                              (cons ':: __tmp35289))))
                       (declare (not safe))
                       (cons __tmp35293 __tmp35288))))
                (declare (not safe))
                (cons __tmp35296 __tmp35287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp35286
                                                       _g3176331778_)))))
                                        (declare (not safe))
                                        (foldr2 __tmp35285
                                                '()
                                                _L30924_
                                                _L30568_)))))
                               (declare (not safe))
                               (foldr2 __tmp35297
                                       __tmp35284
                                       _L30782_
                                       _L30352_)))))
                      (declare (not safe))
                      (cons __tmp35309 __tmp35283))))
              (declare (not safe))
              (_g3163831755_ __tmp35282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3161231623_)))
                                            (__tmp35310
                                             (let ((__tmp35337
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp35311
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L30494_
                                                       _L30352_)
                                                      (let ((__tmp35325
                                                             (lambda (_g3178431791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3178531794_
                              _g3178631796_)
                       (let ((__tmp35326
                              (let ((__tmp35336 (gx#datum->syntax '#f '@list))
                                    (__tmp35327
                                     (let ((__tmp35333
                                            (let ((__tmp35335
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp35334
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g3178531794_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp35335 __tmp35334)))
                                           (__tmp35328
                                            (let ((__tmp35329
                                                   (let ((__tmp35330
                                                          (let ((__tmp35332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp35331
                         (let ()
                           (declare (not safe))
                           (cons _g3178431791_ '()))))
                    (declare (not safe))
                    (cons __tmp35332 __tmp35331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp35330 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp35329))))
                                       (declare (not safe))
                                       (cons __tmp35333 __tmp35328))))
                                (declare (not safe))
                                (cons __tmp35336 __tmp35327))))
                         (declare (not safe))
                         (cons __tmp35326 _g3178631796_))))
                    (__tmp35312
                     (begin
                       (gx#syntax-check-splice-targets _L30711_ _L30568_)
                       (let ((__tmp35313
                              (lambda (_g3178731799_
                                       _g3178831802_
                                       _g3178931804_)
                                (let ((__tmp35314
                                       (let ((__tmp35324
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp35315
                                              (let ((__tmp35321
                                                     (let ((__tmp35323
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp35322
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g3178831802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp35323 __tmp35322)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp35316
                                                     (let ((__tmp35317
                                                            (let ((__tmp35318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp35320
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp35319
                                  (let ()
                                    (declare (not safe))
                                    (cons _g3178731799_ '()))))
                             (declare (not safe))
                             (cons __tmp35320 __tmp35319))))
                      (declare (not safe))
                      (cons __tmp35318 '()))))
               (declare (not safe))
               (cons ':: __tmp35317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp35321 __tmp35316))))
                                         (declare (not safe))
                                         (cons __tmp35324 __tmp35315))))
                                  (declare (not safe))
                                  (cons __tmp35314 _g3178931804_)))))
                         (declare (not safe))
                         (foldr2 __tmp35313 '() _L30711_ _L30568_)))))
                (declare (not safe))
                (foldr2 __tmp35325 __tmp35312 _L30494_ _L30352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp35337 __tmp35311))))
                                       (declare (not safe))
                                       (_g3161031781_ __tmp35310))))
                                 _g3158431595_)))
                             (__tmp35338
                              (let ((__tmp35365 (gx#datum->syntax '#f '@list))
                                    (__tmp35339
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L30423_
                                        _L30352_)
                                       (let ((__tmp35353
                                              (lambda (_g3181031817_
                                                       _g3181131820_
                                                       _g3181231822_)
                                                (let ((__tmp35354
                                                       (let ((__tmp35364
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp35355
                                                              (let ((__tmp35361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp35363 (gx#datum->syntax '#f 'quote))
                                   (__tmp35362
                                    (let ()
                                      (declare (not safe))
                                      (cons _g3181131820_ '()))))
                               (declare (not safe))
                               (cons __tmp35363 __tmp35362)))
                            (__tmp35356
                             (let ((__tmp35357
                                    (let ((__tmp35358
                                           (let ((__tmp35360
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp35359
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g3181031817_ '()))))
                                             (declare (not safe))
                                             (cons __tmp35360 __tmp35359))))
                                      (declare (not safe))
                                      (cons __tmp35358 '()))))
                               (declare (not safe))
                               (cons ':: __tmp35357))))
                        (declare (not safe))
                        (cons __tmp35361 __tmp35356))))
                 (declare (not safe))
                 (cons __tmp35364 __tmp35355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp35354
                                                        _g3181231822_))))
                                             (__tmp35340
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L30640_
                                                 _L30568_)
                                                (let ((__tmp35341
                                                       (lambda (_g3181331825_
                                                                _g3181431828_
                                                                _g3181531830_)
                                                         (let ((__tmp35342
                                                                (let ((__tmp35352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp35343
                               (let ((__tmp35349
                                      (let ((__tmp35351
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp35350
                                             (let ()
                                               (declare (not safe))
                                               (cons _g3181431828_ '()))))
                                        (declare (not safe))
                                        (cons __tmp35351 __tmp35350)))
                                     (__tmp35344
                                      (let ((__tmp35345
                                             (let ((__tmp35346
                                                    (let ((__tmp35348
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp35347
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g3181331825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp35348 __tmp35347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp35346 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp35345))))
                                 (declare (not safe))
                                 (cons __tmp35349 __tmp35344))))
                          (declare (not safe))
                          (cons __tmp35352 __tmp35343))))
                   (declare (not safe))
                   (cons __tmp35342 _g3181531830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr2 __tmp35341
                                                          '()
                                                          _L30640_
                                                          _L30568_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp35353
                                                 __tmp35340
                                                 _L30423_
                                                 _L30352_)))))
                                (declare (not safe))
                                (cons __tmp35365 __tmp35339))))
                        (declare (not safe))
                        (_g3158231807_ __tmp35338))))
                  _g3155631567_)))
              (__tmp35366
               (let ((__tmp35368 (gx#datum->syntax '#f 'quote-syntax))
                     (__tmp35367
                      (let () (declare (not safe)) (cons _L30257_ '()))))
                 (declare (not safe))
                 (cons __tmp35368 __tmp35367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g3155431833_ __tmp35366))))
                                           _g3152831539_)))
                                       (__tmp35369
                                        (let ((__tmp35371
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp35370
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L30229_ '()))))
                                          (declare (not safe))
                                          (cons __tmp35371 __tmp35370))))
                                  (declare (not safe))
                                  (_g3152631837_ __tmp35369))))
                            _g3150031511_)))
                        (__tmp35372
                         (let ((__tmp35374
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp35373
                                (let ()
                                  (declare (not safe))
                                  (cons _L30201_ '()))))
                           (declare (not safe))
                           (cons __tmp35374 __tmp35373))))
                   (declare (not safe))
                   (_g3149831841_ __tmp35372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3147231483_)))
                                                 (__tmp35375
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (null? _type-constructor31072_))
                                                      '#f
                                                      (let* ((_g3184931864_
                                                              (lambda (_g3185031860_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g3185031860_)))
                     (_g3184831912_
                      (lambda (_g3185031868_)
                        (if (gx#stx-pair? _g3185031868_)
                            (let ((_e3185431871_ (gx#syntax-e _g3185031868_)))
                              (let ((_hd3185331875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3185431871_)))
                                    (_tl3185231878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3185431871_))))
                                (if (gx#stx-datum? _hd3185331875_)
                                    (let ((_e3185531881_
                                           (gx#stx-e _hd3185331875_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3185531881_
                                                    'constructor:))
                                          (if (gx#stx-pair? _tl3185231878_)
                                              (let ((_e3185831885_
                                                     (gx#syntax-e
                                                      _tl3185231878_)))
                                                (let ((_hd3185731889_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3185831885_)))
                                                      (_tl3185631892_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3185831885_))))
                                                  (if (gx#stx-null?
                                                       _tl3185631892_)
                                                      ((lambda (_L31895_)
                                                         (let ()
                                                           (let ((__tmp35377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp35376
                          (let () (declare (not safe)) (cons _L31895_ '()))))
                     (declare (not safe))
                     (cons __tmp35377 __tmp35376))))
               _hd3185731889_)
              (let () (declare (not safe)) (_g3184931864_ _g3185031868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3184931864_ _g3185031868_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3184931864_ _g3185031868_))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3184931864_ _g3185031868_)))))
                            (let ()
                              (declare (not safe))
                              (_g3184931864_ _g3185031868_))))))
                (declare (not safe))
                (_g3184831912_ _type-constructor31072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g3147031845_ __tmp35375))))
                                      _g3144431455_)))
                                  (__tmp35378
                                   (if _metaclass31157_
                                       (let* ((_g3192031928_
                                               (lambda (_g3192131924_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g3192131924_)))
                                              (_g3191931947_
                                               (lambda (_g3192131932_)
                                                 ((lambda (_L31935_)
                                                    (let ()
                                                      (let ((__tmp35380
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax))
                                                            (__tmp35379
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L31935_ '()))))
                (declare (not safe))
                (cons __tmp35380 __tmp35379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g3192131932_))))
                                         (declare (not safe))
                                         (_g3191931947_ _metaclass31157_))
                                       '#f)))
                             (declare (not safe))
                             (_g3144231916_ __tmp35378))))
                       _g3141631427_))))
              (declare (not safe))
              (_g3141431951_ _final?31163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3138831399_))))
                                       (declare (not safe))
                                       (_g3138631955_ _struct?30152_))))
                                 _g3136031371_)))
                             (__tmp35381
                              (let ((__tmp35385 (gx#datum->syntax '#f 'quote))
                                    (__tmp35382
                                     (let ((__tmp35383
                                            (let ((__tmp35384
                                                   (lambda (_g3196231965_
                                                            _g3196331968_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g3196231965_
                                                             _g3196331968_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp35384
                                                      '()
                                                      _L30352_))))
                                       (declare (not safe))
                                       (cons __tmp35383 '()))))
                                (declare (not safe))
                                (cons __tmp35385 __tmp35382))))
                        (declare (not safe))
                        (_g3135831959_ __tmp35381))))
                  _g3133231343_)))
              (__tmp35386
               (let* ((_g3197531992_
                       (lambda (_g3197631988_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g3197631988_)))
                      (_g3197432053_
                       (lambda (_g3197631996_)
                         (if (gx#stx-pair/null? _g3197631996_)
                             (let ((_g35387_
                                    (gx#syntax-split-splice _g3197631996_ '0)))
                               (begin
                                 (let ((_g35388_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g35387_)
                                              (##vector-length _g35387_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g35388_ 2)))
                                       (error "Context expects 2 values"
                                              _g35388_)))
                                 (let ((_target3197831999_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g35387_ 0)))
                                       (_tl3198032002_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g35387_ 1))))
                                   (if (gx#stx-null? _tl3198032002_)
                                       (letrec ((_loop3198132005_
                                                 (lambda (_hd3197932009_
                                                          _super-id3198532012_)
                                                   (if (gx#stx-pair?
                                                        _hd3197932009_)
                                                       (let ((_e3198232015_
                                                              (gx#syntax-e
                                                               _hd3197932009_)))
                                                         (let ((_lp-hd3198332019_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3198232015_)))
                       (_lp-tl3198432022_
                        (let () (declare (not safe)) (##cdr _e3198232015_))))
                   (let ((__tmp35395
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd3198332019_ _super-id3198532012_))))
                     (declare (not safe))
                     (_loop3198132005_ _lp-tl3198432022_ __tmp35395))))
               (let ((_super-id3198632025_ (reverse _super-id3198532012_)))
                 ((lambda (_L32029_)
                    (let ()
                      (let ((__tmp35394 (gx#datum->syntax '#f '@list))
                            (__tmp35389
                             (let ((__tmp35390
                                    (lambda (_g3204432047_ _g3204532050_)
                                      (let ((__tmp35391
                                             (let ((__tmp35393
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp35392
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3204432047_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp35393 __tmp35392))))
                                        (declare (not safe))
                                        (cons __tmp35391 _g3204532050_)))))
                               (declare (not safe))
                               (foldr1 __tmp35390 '() _L32029_))))
                        (declare (not safe))
                        (cons __tmp35394 __tmp35389))))
                  _super-id3198632025_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop3198132005_
                                            _target3197831999_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g3197531992_ _g3197631996_))))))
                             (let ()
                               (declare (not safe))
                               (_g3197531992_ _g3197631996_))))))
                 (declare (not safe))
                 (_g3197432053_ _super-ref30136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g3133031971_ __tmp35386))))
                                           _g3130431315_)))
                                       (__tmp35396
                                        (let* ((_g3206132069_
                                                (lambda (_g3206232065_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3206232065_)))
                                               (_g3206032088_
                                                (lambda (_g3206232073_)
                                                  ((lambda (_L32076_)
                                                     (let ()
                                                       (let ((__tmp35398
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp35397
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L32076_ '()))))
                 (declare (not safe))
                 (cons __tmp35398 __tmp35397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3206232073_)))
                                               (__tmp35399
                                                (cadr _type-name31050_)))
                                          (declare (not safe))
                                          (_g3206032088_ __tmp35399))))
                                  (declare (not safe))
                                  (_g3130232057_ __tmp35396))))
                            _g3127631287_)))
                        (__tmp35400
                         (let* ((_g3209632111_
                                 (lambda (_g3209732107_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g3209732107_)))
                                (_g3209532159_
                                 (lambda (_g3209732115_)
                                   (if (gx#stx-pair? _g3209732115_)
                                       (let ((_e3210132118_
                                              (gx#syntax-e _g3209732115_)))
                                         (let ((_hd3210032122_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3210132118_)))
                                               (_tl3209932125_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3210132118_))))
                                           (if (gx#stx-datum? _hd3210032122_)
                                               (let ((_e3210232128_
                                                      (gx#stx-e
                                                       _hd3210032122_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e3210232128_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl3209932125_)
                                                         (let ((_e3210532132_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3209932125_)))
                   (let ((_hd3210432136_
                          (let () (declare (not safe)) (##car _e3210532132_)))
                         (_tl3210332139_
                          (let () (declare (not safe)) (##cdr _e3210532132_))))
                     (if (gx#stx-null? _tl3210332139_)
                         ((lambda (_L32142_)
                            (let ()
                              (let ((__tmp35402 (gx#datum->syntax '#f 'quote))
                                    (__tmp35401
                                     (let ()
                                       (declare (not safe))
                                       (cons _L32142_ '()))))
                                (declare (not safe))
                                (cons __tmp35402 __tmp35401))))
                          _hd3210432136_)
                         (let ()
                           (declare (not safe))
                           (_g3209632111_ _g3209732115_)))))
                 (let () (declare (not safe)) (_g3209632111_ _g3209732115_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3209632111_
                                                        _g3209732115_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3209632111_
                                                  _g3209732115_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g3209632111_ _g3209732115_))))))
                           (declare (not safe))
                           (_g3209532159_ _type-id31057_))))
                   (declare (not safe))
                   (_g3127432092_ __tmp35400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3124831259_)))
                                                 (__tmp35403
                                                  (let ((__tmp35404
                                                         (let ((__tmp35411
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp35405
                        (let ((__tmp35406
                               (let ((__tmp35407
                                      (let ((__tmp35408
                                             (let ((__tmp35409
                                                    (let ((__tmp35410
                                                           (lambda (_g3216632169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3216732172_)
                     (let ()
                       (declare (not safe))
                       (cons _g3216632169_ _g3216732172_)))))
              (declare (not safe))
              (foldr1 __tmp35410 '() _L31226_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L30257_ __tmp35409))))
                                        (declare (not safe))
                                        (cons _L30229_ __tmp35408))))
                                 (declare (not safe))
                                 (cons _L30285_ __tmp35407))))
                          (declare (not safe))
                          (cons _L30201_ __tmp35406))))
                   (declare (not safe))
                   (cons __tmp35411 __tmp35405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap30140_ __tmp35404))))
                                            (declare (not safe))
                                            (_g3124632163_ __tmp35403))))
                                      _type-body3118331222_))))))
                     (let ()
                       (declare (not safe))
                       (_loop3117831202_ _target3117531196_ '())))
                   (let ()
                     (declare (not safe))
                     (_g3117231189_ _g3117331193_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3117231189_
                                                    _g3117331193_)))))
                                          (__tmp35413
                                           (let ((__tmp35414
                                                  (let ((__tmp35415
                                                         (let ((__tmp35416
                                                                (let ((__tmp35417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp35418
                                      (let ((__tmp35419
                                             (let ((__tmp35420
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr1 cons
                                                              _type-mixin-slots31043_
                                                              _type-slots31026_))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp35420
                                                       _type-properties31147_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp35419
                                                _type-metaclass31160_))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp35418 _type-final31169_))))
                          (declare (not safe))
                          (foldr1 cons __tmp35417 _type-struct31166_))))
                   (declare (not safe))
                   (foldr1 cons __tmp35416 _type-constructor31072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            __tmp35415
                                                            _type-name31050_))))
                                             (declare (not safe))
                                             (foldr1 cons
                                                     __tmp35414
                                                     _type-id31057_))))
                                     (declare (not safe))
                                     (_g3117132175_ __tmp35413))))
                               _mixin-usetf3095230991_))))))
              (let ()
                (declare (not safe))
                (_loop3094730971_ _target3094430965_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3094130958_
                                                       _g3094230962_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3094130958_ _g3094230962_)))))
                                   (__tmp35422
                                    (gx#stx-map
                                     (lambda (_g3218232184_)
                                       (_make-id30142_ '"&" _g3218232184_))
                                     (let ((__tmp35423
                                            (lambda (_g3218732190_
                                                     _g3218832193_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3218732190_
                                                      _g3218832193_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp35423 '() _L30711_)))))
                              (declare (not safe))
                              (_g3094032179_ __tmp35422))))
                        _mixin-ugetf3088130920_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_loop3087630900_
                                                  _target3087330894_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_g3087030887_
                                                _g3087130891_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3087030887_ _g3087130891_)))))
                            (__tmp35425
                             (gx#stx-map
                              (lambda (_g3219932201_)
                                (_make-id30142_ '"&" _g3219932201_))
                              (let ((__tmp35426
                                     (lambda (_g3220432207_ _g3220532210_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g3220432207_ _g3220532210_)))))
                                (declare (not safe))
                                (foldr1 __tmp35426 '() _L30640_)))))
                       (declare (not safe))
                       (_g3086932196_ __tmp35425))))
                 _usetf3081030849_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop3080530829_
                                           _target3080230823_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g3079930816_ _g3080030820_))))))
                            (let ()
                              (declare (not safe))
                              (_g3079930816_ _g3080030820_)))))
                     (__tmp35428
                      (gx#stx-map
                       (lambda (_g3221632218_)
                         (_make-id30142_ '"&" _g3221632218_))
                       (let ((__tmp35429
                              (lambda (_g3222132224_ _g3222232227_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3222132224_ _g3222232227_)))))
                         (declare (not safe))
                         (foldr1 __tmp35429 '() _L30494_)))))
                (declare (not safe))
                (_g3079832213_ __tmp35428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _ugetf3073930778_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop3073430758_ _target3073130752_ '())))
                               (let ()
                                 (declare (not safe))
                                 (_g3072830745_ _g3072930749_))))))
                     (let ()
                       (declare (not safe))
                       (_g3072830745_ _g3072930749_)))))
              (__tmp35431
               (gx#stx-map
                (lambda (_g3223332235_) (_make-id30142_ '"&" _g3223332235_))
                (let ((__tmp35432
                       (lambda (_g3223832241_ _g3223932244_)
                         (let ()
                           (declare (not safe))
                           (cons _g3223832241_ _g3223932244_)))))
                  (declare (not safe))
                  (foldr1 __tmp35432 '() _L30423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g3072732230_ __tmp35431))))
                                           _mixin-setf3066830707_))))))
                          (let ()
                            (declare (not safe))
                            (_loop3066330687_ _target3066030681_ '())))
                        (let ()
                          (declare (not safe))
                          (_g3065730674_ _g3065830678_))))))
              (let () (declare (not safe)) (_g3065730674_ _g3065830678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp35434
                                                (gx#stx-map
                                                 (lambda (_g3225032252_)
                                                   (_make-id30142_
                                                    _name30146_
                                                    '"-"
                                                    _g3225032252_
                                                    '"-set!"))
                                                 _mixin-slots30511_)))
                                          (declare (not safe))
                                          (_g3065632247_ __tmp35434))))
                                    _mixin-getf3059730636_))))))
                   (let ()
                     (declare (not safe))
                     (_loop3059230616_ _target3058930610_ '())))
                 (let ()
                   (declare (not safe))
                   (_g3058630603_ _g3058730607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3058630603_
                                                  _g3058730607_)))))
                                        (__tmp35436
                                         (gx#stx-map
                                          (lambda (_g3225932261_)
                                            (_make-id30142_
                                             _name30146_
                                             '"-"
                                             _g3225932261_))
                                          _mixin-slots30511_)))
                                   (declare (not safe))
                                   (_g3058532256_ __tmp35436))))
                             _mixin-slot3052530564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop3052030544_
                                                       _target3051730538_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3051430531_
                                                     _g3051530535_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3051430531_ _g3051530535_))))))
                            (declare (not safe))
                            (_g3051332265_ _mixin-slots30511_))))
                      _setf3045130490_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop3044630470_
                                                _target3044330464_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g3044030457_ _g3044130461_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g3044030457_ _g3044130461_)))))
                          (__tmp35439
                           (gx#stx-map
                            (lambda (_g3227232274_)
                              (_make-id30142_
                               _name30146_
                               '"-"
                               _g3227232274_
                               '"-set!"))
                            _slots30137_)))
                     (declare (not safe))
                     (_g3043932269_ __tmp35439))))
               _getf3038030419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop3037530399_
                                         _target3037230393_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g3036930386_ _g3037030390_))))))
                          (let ()
                            (declare (not safe))
                            (_g3036930386_ _g3037030390_)))))
                   (__tmp35441
                    (gx#stx-map
                     (lambda (_g3228132283_)
                       (_make-id30142_ _name30146_ '"-" _g3228132283_))
                     _slots30137_)))
              (declare (not safe))
              (_g3036832278_ __tmp35441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _slot3030930348_))))))
                               (let ()
                                 (declare (not safe))
                                 (_loop3030430328_ _target3030130322_ '())))
                             (let ()
                               (declare (not safe))
                               (_g3029830315_ _g3029930319_))))))
                   (let ()
                     (declare (not safe))
                     (_g3029830315_ _g3029930319_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g3029732287_ _slots30137_))))
                                         _g3027130282_)))
                                     (__tmp35443
                                      (map gerbil/core/mop~MOP-2#!class-type-descriptor
                                           _super30149_)))
                                (declare (not safe))
                                (_g3026932291_ __tmp35443))))
                          _g3024330254_)))
                      (__tmp35444 (_make-id30142_ _name30146_ '"?")))
                 (declare (not safe))
                 (_g3024132295_ __tmp35444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3021530226_)))
                                               (__tmp35445
                                                (_make-id30142_
                                                 '"make-"
                                                 _name30146_)))
                                          (declare (not safe))
                                          (_g3021332299_ __tmp35445))))
                                    _g3018730198_)))
                                (__tmp35446
                                 (_make-id30142_ _name30146_ '"::t")))
                           (declare (not safe))
                           (_g3018532303_ __tmp35446))))
                     _g3015630167_))))
            (declare (not safe))
            (_g3015432307_ _id30135_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_$stx32371_)
        (let* ((_g3237532394_
                (lambda (_g3237632390_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3237632390_)))
               (_g3237432451_
                (lambda (_g3237632398_)
                  (if (gx#stx-pair? _g3237632398_)
                      (let ((_e3238232401_ (gx#syntax-e _g3237632398_)))
                        (let ((_hd3238132405_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3238232401_)))
                              (_tl3238032408_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3238232401_))))
                          (if (gx#stx-pair? _tl3238032408_)
                              (let ((_e3238532411_
                                     (gx#syntax-e _tl3238032408_)))
                                (let ((_hd3238432415_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3238532411_)))
                                      (_tl3238332418_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3238532411_))))
                                  (if (gx#stx-pair? _tl3238332418_)
                                      (let ((_e3238832421_
                                             (gx#syntax-e _tl3238332418_)))
                                        (let ((_hd3238732425_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3238832421_)))
                                              (_tl3238632428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3238832421_))))
                                          ((lambda (_L32431_ _L32433_ _L32434_)
                                             (let ((__tmp35451
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp35447
                                                    (let ((__tmp35448
                                                           (let ((__tmp35449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp35450
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L32431_))))
                            (declare (not safe))
                            (cons 'struct: __tmp35450))))
                     (declare (not safe))
                     (cons _L32433_ __tmp35449))))
              (declare (not safe))
              (cons _L32434_ __tmp35448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp35451 __tmp35447)))
                                           _tl3238632428_
                                           _hd3238732425_
                                           _hd3238432415_)))
                                      (_g3237532394_ _g3237632398_))))
                              (_g3237532394_ _g3237632398_))))
                      (_g3237532394_ _g3237632398_)))))
          (_g3237432451_ _$stx32371_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_stx32455_)
        (letrec ((_generate32458_
                  (lambda (_hd32542_ _slots32544_ _body32545_)
                    (let* ((___stx3430134302_ _hd32542_)
                           (_g3254832560_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3430134302_))))
                      (let ((___kont3430434305_
                             (lambda (_L32588_ _L32590_)
                               (let ((__tmp35452 (gx#syntax->list _L32588_)))
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                  _stx32455_
                                  _L32590_
                                  __tmp35452
                                  _slots32544_
                                  _body32545_))))
                            (___kont3430634307_
                             (lambda ()
                               (if (gx#identifier? _hd32542_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                      _stx32455_
                                      _hd32542_
                                      '()
                                      _slots32544_
                                      _body32545_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx32455_
                                    _hd32542_)))))
                        (let ((___match3431434315_
                               (lambda (_e3255432578_
                                        _hd3255332582_
                                        _tl3255232585_)
                                 (let ((_L32588_ _tl3255232585_)
                                       (_L32590_ _hd3255332582_))
                                   (if (and (gx#stx-list? _L32588_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _L32588_))
                                       (___kont3430434305_ _L32588_ _L32590_)
                                       (___kont3430634307_))))))
                          (if (gx#stx-pair? ___stx3430134302_)
                              (let ((_e3255432578_
                                     (gx#syntax-e ___stx3430134302_)))
                                (let ((_tl3255232585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3255432578_)))
                                      (_hd3255332582_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3255432578_))))
                                  (___match3431434315_
                                   _e3255432578_
                                   _hd3255332582_
                                   _tl3255232585_)))
                              (___kont3430634307_))))))))
          (let* ((_g3246132480_
                  (lambda (_g3246232476_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g3246232476_)))
                 (_g3246032538_
                  (lambda (_g3246232484_)
                    (if (gx#stx-pair? _g3246232484_)
                        (let ((_e3246832487_ (gx#syntax-e _g3246232484_)))
                          (let ((_hd3246732491_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3246832487_)))
                                (_tl3246632494_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3246832487_))))
                            (if (gx#stx-pair? _tl3246632494_)
                                (let ((_e3247132497_
                                       (gx#syntax-e _tl3246632494_)))
                                  (let ((_hd3247032501_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3247132497_)))
                                        (_tl3246932504_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3247132497_))))
                                    (if (gx#stx-pair? _tl3246932504_)
                                        (let ((_e3247432507_
                                               (gx#syntax-e _tl3246932504_)))
                                          (let ((_hd3247332511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3247432507_)))
                                                (_tl3247232514_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3247432507_))))
                                            ((lambda (_L32517_
                                                      _L32519_
                                                      _L32520_)
                                               (if (and (gx#identifier-list?
                                                         _L32519_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                           _L32517_)))
                                                   (_generate32458_
                                                    _L32520_
                                                    _L32519_
                                                    _L32517_)
                                                   (_g3246132480_
                                                    _g3246232484_)))
                                             _tl3247232514_
                                             _hd3247332511_
                                             _hd3247032501_)))
                                        (_g3246132480_ _g3246232484_))))
                                (_g3246132480_ _g3246232484_))))
                        (_g3246132480_ _g3246232484_)))))
            (_g3246032538_ _stx32455_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_stx32607_)
        (letrec ((_wrap32610_
                  (lambda (_e-stx32947_)
                    (gx#stx-wrap-source
                     _e-stx32947_
                     (gx#stx-source _stx32607_))))
                 (_method-opt?32612_
                  (lambda (_x32944_) (memq (gx#stx-e _x32944_) '(rebind:)))))
          (let* ((_g3261432643_
                  (lambda (_g3261532639_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g3261532639_)))
                 (_g3261332940_
                  (lambda (_g3261532647_)
                    (if (gx#stx-pair? _g3261532647_)
                        (let ((_e3262232650_ (gx#syntax-e _g3261532647_)))
                          (let ((_hd3262132654_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3262232650_)))
                                (_tl3262032657_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3262232650_))))
                            (if (gx#stx-pair? _tl3262032657_)
                                (let ((_e3262532660_
                                       (gx#syntax-e _tl3262032657_)))
                                  (let ((_hd3262432664_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3262532660_)))
                                        (_tl3262332667_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3262532660_))))
                                    (if (gx#stx-pair? _hd3262432664_)
                                        (let ((_e3262832670_
                                               (gx#syntax-e _hd3262432664_)))
                                          (let ((_hd3262732674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3262832670_)))
                                                (_tl3262632677_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3262832670_))))
                                            (if (gx#identifier? _hd3262732674_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g35503_|
                                                     _hd3262732674_)
                                                    (if (gx#stx-pair?
                                                         _tl3262632677_)
                                                        (let ((_e3263132680_
                                                               (gx#syntax-e
                                                                _tl3262632677_)))
                                                          (let ((_hd3263032684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e3263132680_)))
                        (_tl3262932687_
                         (let () (declare (not safe)) (##cdr _e3263132680_))))
                    (if (gx#stx-pair? _tl3262932687_)
                        (let ((_e3263432690_ (gx#syntax-e _tl3262932687_)))
                          (let ((_hd3263332694_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3263432690_)))
                                (_tl3263232697_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3263432690_))))
                            (if (gx#stx-null? _tl3263232697_)
                                (if (gx#stx-pair? _tl3262332667_)
                                    (let ((_e3263732700_
                                           (gx#syntax-e _tl3262332667_)))
                                      (let ((_hd3263632704_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3263732700_)))
                                            (_tl3263532707_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3263732700_))))
                                        ((lambda (_L32710_
                                                  _L32712_
                                                  _L32713_
                                                  _L32714_)
                                           (if (and (gx#identifier? _L32714_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _L32713_))
                                                    (gx#stx-plist?
                                                     _L32710_
                                                     _method-opt?32612_))
                                               (let* ((_klass32739_
                                                       (gx#syntax-local-value
                                                        _L32713_))
                                                      (_rebind?32742_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _L32710_)))
                                                      (_g3274532753_
                                                       (lambda (_g3274632749_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3274632749_)))
                                                      (_g3274432936_
                                                       (lambda (_g3274632757_)
                                                         ((lambda (_L32760_)
                                                            (let ()
                                                              (let* ((_g3277432782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3277532778_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3277532778_)))
                             (_g3277332932_
                              (lambda (_g3277532786_)
                                ((lambda (_L32789_)
                                   (let ()
                                     (let* ((_g3280232810_
                                             (lambda (_g3280332806_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3280332806_)))
                                            (_g3280132928_
                                             (lambda (_g3280332814_)
                                               ((lambda (_L32817_)
                                                  (let ()
                                                    (let* ((_g3283032838_
                                                            (lambda (_g3283132834_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g3283132834_)))
                                                           (_g3282932924_
                                                            (lambda (_g3283132842_)
                                                              ((lambda (_L32845_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g3285832866_
                                   (lambda (_g3285932862_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3285932862_)))
                                  (_g3285732920_
                                   (lambda (_g3285932870_)
                                     ((lambda (_L32873_)
                                        (let ()
                                          (let* ((_g3288632894_
                                                  (lambda (_g3288732890_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3288732890_)))
                                                 (_g3288532916_
                                                  (lambda (_g3288732898_)
                                                    ((lambda (_L32901_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap32610_
                                                            (let ((__tmp35457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp35455
                           (let ((__tmp35456
                                  (let ()
                                    (declare (not safe))
                                    (cons _L32901_ '()))))
                             (declare (not safe))
                             (cons _L32845_ __tmp35456))))
                      (declare (not safe))
                      (cons __tmp35457 __tmp35455))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3288732898_))))
                                            (_g3288532916_
                                             (_wrap32610_
                                              (let ((__tmp35465
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp35458
                                                     (let ((__tmp35459
                                                            (let ((__tmp35462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp35464 (gx#datum->syntax '#f 'quote))
                                 (__tmp35463
                                  (let ()
                                    (declare (not safe))
                                    (cons _L32714_ '()))))
                             (declare (not safe))
                             (cons __tmp35464 __tmp35463)))
                          (__tmp35460
                           (let ((__tmp35461
                                  (let ()
                                    (declare (not safe))
                                    (cons _L32873_ '()))))
                             (declare (not safe))
                             (cons _L32789_ __tmp35461))))
                      (declare (not safe))
                      (cons __tmp35462 __tmp35460))))
               (declare (not safe))
               (cons _L32760_ __tmp35459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp35465
                                                      __tmp35458)))))))
                                      _g3285932870_))))
                             (_g3285732920_ _rebind?32742_))))
                       _g3283132842_))))
              (_g3282932924_
               (_wrap32610_
                (let ((__tmp35502 (gx#datum->syntax '#f 'def))
                      (__tmp35466
                       (let ((__tmp35467
                              (let ((__tmp35468
                                     (let ((__tmp35501
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp35469
                                            (let ((__tmp35471
                                                   (let ((__tmp35472
                                                          (let ((__tmp35473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp35474
                                (let ((__tmp35500
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp35475
                                       (let ((__tmp35476
                                              (let ((__tmp35477
                                                     (let ((__tmp35492
                                                            (let ((__tmp35499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp35493
                           (let ((__tmp35498 (gx#datum->syntax '#f 'obj))
                                 (__tmp35494
                                  (let ((__tmp35497
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp35495
                                         (let ((__tmp35496
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp35496 '()))))
                                    (declare (not safe))
                                    (cons __tmp35497 __tmp35495))))
                             (declare (not safe))
                             (cons __tmp35498 __tmp35494))))
                      (declare (not safe))
                      (cons __tmp35499 __tmp35493)))
                   (__tmp35478
                    (let ((__tmp35479
                           (let ((__tmp35491
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp35480
                                  (let ((__tmp35481
                                         (let ((__tmp35490
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp35482
                                                (let ((__tmp35487
                                                       (let ((__tmp35489
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp35488
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L32714_ '()))))
                 (declare (not safe))
                 (cons __tmp35489 __tmp35488)))
              (__tmp35483
               (let ((__tmp35486 (gx#datum->syntax '#f 'arg))
                     (__tmp35484
                      (let ((__tmp35485 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp35485 '()))))
                 (declare (not safe))
                 (cons __tmp35486 __tmp35484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp35487
                                                        __tmp35483))))
                                           (declare (not safe))
                                           (cons __tmp35490 __tmp35482))))
                                    (declare (not safe))
                                    (cons _L32760_ __tmp35481))))
                             (declare (not safe))
                             (cons __tmp35491 __tmp35480))))
                      (declare (not safe))
                      (cons __tmp35479 '()))))
               (declare (not safe))
               (cons __tmp35492 __tmp35478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp35477 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp35476))))
                                  (declare (not safe))
                                  (cons __tmp35500 __tmp35475))))
                           (declare (not safe))
                           (cons __tmp35474 '()))))
                    (declare (not safe))
                    (cons _L32817_ __tmp35473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp35472 '())))
                                                  (__tmp35470
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L32712_ '()))))
                                              (declare (not safe))
                                              (cons __tmp35471 __tmp35470))))
                                       (declare (not safe))
                                       (cons __tmp35501 __tmp35469))))
                                (declare (not safe))
                                (cons __tmp35468 '()))))
                         (declare (not safe))
                         (cons _L32789_ __tmp35467))))
                  (declare (not safe))
                  (cons __tmp35502 __tmp35466)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3280332814_))))
                                       (_g3280132928_
                                        (gx#stx-identifier
                                         _L32713_
                                         '@next-method)))))
                                 _g3277532786_))))
                        (_g3277332932_
                         (gx#stx-identifier
                          _L32713_
                          _L32713_
                          '"::"
                          _L32714_)))))
                  _g3274632757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3274432936_
                                                  (let ((__obj34578
                                                         _klass32739_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj34578
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj34578
                                                           '10
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj34578
                                                         'type-descriptor)))))
                                               (if (let ((__tmp35454
                                                          (gx#identifier?
                                                           _L32714_)))
                                                     (declare (not safe))
                                                     (not __tmp35454))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx32607_
                                                    _L32714_)
                                                   (if (let ((__tmp35453
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                         _L32713_))))
                 (declare (not safe))
                 (not __tmp35453))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx32607_
                _L32713_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx32607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl3263532707_
                                         _hd3263632704_
                                         _hd3263332694_
                                         _hd3263032684_)))
                                    (_g3261432643_ _g3261532647_))
                                (_g3261432643_ _g3261532647_))))
                        (_g3261432643_ _g3261532647_))))
                (_g3261432643_ _g3261532647_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3261432643_
                                                     _g3261532647_))
                                                (_g3261432643_
                                                 _g3261532647_))))
                                        (_g3261432643_ _g3261532647_))))
                                (_g3261432643_ _g3261532647_))))
                        (_g3261432643_ _g3261532647_)))))
            (_g3261332940_ _stx32607_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_stx32950_)
        (letrec ((_dotted-identifier?32953_
                  (lambda (_id33586_)
                    (if (gx#identifier? _id33586_)
                        (let ((_id-str33589_
                               (symbol->string (gx#stx-e _id33586_))))
                          (if (let ()
                                (declare (not safe))
                                (string-index__0 _id-str33589_ '#\.))
                              (let ((_split33592_
                                     (let ()
                                       (declare (not safe))
                                       (string-split _id-str33589_ '#\.))))
                                (fx= (length _split33592_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted32955_
                  (lambda (_id33575_)
                    (let* ((_id-str33578_
                            (symbol->string (gx#stx-e _id33575_)))
                           (_split33581_
                            (let ()
                              (declare (not safe))
                              (string-split _id-str33578_ '#\.))))
                      (let ((__tmp35506
                             (gx#stx-identifier _id33575_ (car _split33581_)))
                            (__tmp35504
                             (let ((__tmp35505
                                    (gx#stx-identifier
                                     _id33575_
                                     (cadr _split33581_))))
                               (declare (not safe))
                               (cons __tmp35505 '()))))
                        (declare (not safe))
                        (cons __tmp35506 __tmp35504))))))
          (let* ((___stx3431734318_ _stx32950_)
                 (_g3296033047_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3431734318_))))
            (let ((___kont3432034321_
                   (lambda (_L33468_ _L33470_ _L33471_)
                     (let* ((_g3349933514_
                             (lambda (_g3350033510_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3350033510_)))
                            (_g3349833567_
                             (lambda (_g3350033518_)
                               (if (gx#stx-pair? _g3350033518_)
                                   (let ((_e3350533521_
                                          (gx#syntax-e _g3350033518_)))
                                     (let ((_hd3350433525_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3350533521_)))
                                           (_tl3350333528_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3350533521_))))
                                       (if (gx#stx-pair? _tl3350333528_)
                                           (let ((_e3350833531_
                                                  (gx#syntax-e
                                                   _tl3350333528_)))
                                             (let ((_hd3350733535_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3350833531_)))
                                                   (_tl3350633538_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3350833531_))))
                                               (if (gx#stx-null?
                                                    _tl3350633538_)
                                                   ((lambda (_L33541_ _L33543_)
                                                      (let ()
                                                        (let ((__tmp35519
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp35507
                                                               (let ((__tmp35518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp35508
                              (let ((__tmp35509
                                     (let ((__tmp35515
                                            (let ((__tmp35517
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp35516
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L33541_ '()))))
                                              (declare (not safe))
                                              (cons __tmp35517 __tmp35516)))
                                           (__tmp35510
                                            (let ((__tmp35511
                                                   (let ((__tmp35514
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp35512
                                                          (let ((__tmp35513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3355833561_ _g3355933564_)
                           (let ()
                             (declare (not safe))
                             (cons _g3355833561_ _g3355933564_)))))
                    (declare (not safe))
                    (foldr1 __tmp35513 '() _L33470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp35514
                                                           __tmp35512))))
                                              (declare (not safe))
                                              (cons __tmp35511 '()))))
                                       (declare (not safe))
                                       (cons __tmp35515 __tmp35510))))
                                (declare (not safe))
                                (cons _L33543_ __tmp35509))))
                         (declare (not safe))
                         (cons __tmp35518 __tmp35508))))
                  (declare (not safe))
                  (cons __tmp35519 __tmp35507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3350733535_
                                                    _hd3350433525_)
                                                   (_g3349933514_
                                                    _g3350033518_))))
                                           (_g3349933514_ _g3350033518_))))
                                   (_g3349933514_ _g3350033518_)))))
                       (_g3349833567_ (_split-dotted32955_ _L33471_)))))
                  (___kont3432434325_
                   (lambda (_L33310_ _L33312_)
                     (let* ((_g3332933344_
                             (lambda (_g3333033340_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3333033340_)))
                            (_g3332833397_
                             (lambda (_g3333033348_)
                               (if (gx#stx-pair? _g3333033348_)
                                   (let ((_e3333533351_
                                          (gx#syntax-e _g3333033348_)))
                                     (let ((_hd3333433355_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3333533351_)))
                                           (_tl3333333358_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3333533351_))))
                                       (if (gx#stx-pair? _tl3333333358_)
                                           (let ((_e3333833361_
                                                  (gx#syntax-e
                                                   _tl3333333358_)))
                                             (let ((_hd3333733365_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3333833361_)))
                                                   (_tl3333633368_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3333833361_))))
                                               (if (gx#stx-null?
                                                    _tl3333633368_)
                                                   ((lambda (_L33371_ _L33373_)
                                                      (let ()
                                                        (let ((__tmp35527
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp35520
                                                               (let ((__tmp35521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp35524
                                     (let ((__tmp35526
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp35525
                                            (let ()
                                              (declare (not safe))
                                              (cons _L33371_ '()))))
                                       (declare (not safe))
                                       (cons __tmp35526 __tmp35525)))
                                    (__tmp35522
                                     (let ((__tmp35523
                                            (lambda (_g3338833391_
                                                     _g3338933394_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3338833391_
                                                      _g3338933394_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp35523 '() _L33310_))))
                                (declare (not safe))
                                (cons __tmp35524 __tmp35522))))
                         (declare (not safe))
                         (cons _L33373_ __tmp35521))))
                  (declare (not safe))
                  (cons __tmp35527 __tmp35520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3333733365_
                                                    _hd3333433355_)
                                                   (_g3332933344_
                                                    _g3333033348_))))
                                           (_g3332933344_ _g3333033348_))))
                                   (_g3332933344_ _g3333033348_)))))
                       (_g3332833397_ (_split-dotted32955_ _L33312_)))))
                  (___kont3432834329_
                   (lambda (_L33214_ _L33216_ _L33217_)
                     (let ((__tmp35540 (gx#datum->syntax '#f 'apply))
                           (__tmp35528
                            (let ((__tmp35539
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp35529
                                   (let ((__tmp35530
                                          (let ((__tmp35536
                                                 (let ((__tmp35538
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp35537
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L33217_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp35538
                                                         __tmp35537)))
                                                (__tmp35531
                                                 (let ((__tmp35532
                                                        (let ((__tmp35535
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp35533
                                                               (let ((__tmp35534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3324433247_ _g3324533250_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3324433247_ _g3324533250_)))))
                         (declare (not safe))
                         (foldr1 __tmp35534 '() _L33214_))))
                  (declare (not safe))
                  (cons __tmp35535 __tmp35533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp35532 '()))))
                                            (declare (not safe))
                                            (cons __tmp35536 __tmp35531))))
                                     (declare (not safe))
                                     (cons _L33216_ __tmp35530))))
                              (declare (not safe))
                              (cons __tmp35539 __tmp35529))))
                       (declare (not safe))
                       (cons __tmp35540 __tmp35528))))
                  (___kont3433234333_
                   (lambda (_L33114_ _L33116_ _L33117_)
                     (let ((__tmp35548 (gx#datum->syntax '#f 'call-method))
                           (__tmp35541
                            (let ((__tmp35542
                                   (let ((__tmp35545
                                          (let ((__tmp35547
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp35546
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L33117_ '()))))
                                            (declare (not safe))
                                            (cons __tmp35547 __tmp35546)))
                                         (__tmp35543
                                          (let ((__tmp35544
                                                 (lambda (_g3313833141_
                                                          _g3313933144_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g3313833141_
                                                           _g3313933144_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp35544 '() _L33114_))))
                                     (declare (not safe))
                                     (cons __tmp35545 __tmp35543))))
                              (declare (not safe))
                              (cons _L33116_ __tmp35542))))
                       (declare (not safe))
                       (cons __tmp35548 __tmp35541)))))
              (let* ((___match3443634437_
                      (lambda (_e3302633054_
                               _hd3302533058_
                               _tl3302433061_
                               _e3302933064_
                               _hd3302833068_
                               _tl3302733071_
                               _e3303233074_
                               _hd3303133078_
                               _tl3303033081_
                               ___splice3433434335_
                               _target3303333084_
                               _tl3303533087_)
                        (letrec ((_loop3303633090_
                                  (lambda (_hd3303433094_ _arg3304033097_)
                                    (if (gx#stx-pair? _hd3303433094_)
                                        (let ((_e3303733100_
                                               (gx#syntax-e _hd3303433094_)))
                                          (let ((_lp-tl3303933107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3303733100_)))
                                                (_lp-hd3303833104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3303733100_))))
                                            (_loop3303633090_
                                             _lp-tl3303933107_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3303833104_
                                                     _arg3304033097_)))))
                                        (let ((_arg3304133110_
                                               (reverse _arg3304033097_)))
                                          (let ((_L33114_ _arg3304133110_)
                                                (_L33116_ _hd3303133078_)
                                                (_L33117_ _hd3302833068_))
                                            (if (gx#identifier? _L33117_)
                                                (___kont3433234333_
                                                 _L33114_
                                                 _L33116_
                                                 _L33117_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3296033047_)))))))))
                          (_loop3303633090_ _target3303333084_ '()))))
                     (___match3441034411_
                      (lambda (_e3300533154_
                               _hd3300433158_
                               _tl3300333161_
                               _e3300833164_
                               _hd3300733168_
                               _tl3300633171_
                               _e3301133174_
                               _hd3301033178_
                               _tl3300933181_
                               ___splice3433034331_
                               _target3301233184_
                               _tl3301433187_)
                        (letrec ((_loop3301533190_
                                  (lambda (_hd3301333194_ _arg3301933197_)
                                    (if (gx#stx-pair? _hd3301333194_)
                                        (let ((_e3301633200_
                                               (gx#syntax-e _hd3301333194_)))
                                          (let ((_lp-tl3301833207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3301633200_)))
                                                (_lp-hd3301733204_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3301633200_))))
                                            (_loop3301533190_
                                             _lp-tl3301833207_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3301733204_
                                                     _arg3301933197_)))))
                                        (let ((_arg3302033210_
                                               (reverse _arg3301933197_)))
                                          (let ((_L33214_ _arg3302033210_)
                                                (_L33216_ _hd3301033178_)
                                                (_L33217_ _hd3300733168_))
                                            (if (and (gx#identifier? _L33217_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp35549
                                                             (lambda (_g3323633239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3323733242_)
                       (let ()
                         (declare (not safe))
                         (cons _g3323633239_ _g3323733242_)))))
                (declare (not safe))
                (foldr1 __tmp35549 '() _L33214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3432834329_
                                                 _L33214_
                                                 _L33216_
                                                 _L33217_)
                                                (___match3443634437_
                                                 _e3300533154_
                                                 _hd3300433158_
                                                 _tl3300333161_
                                                 _e3300833164_
                                                 _hd3300733168_
                                                 _tl3300633171_
                                                 _e3301133174_
                                                 _hd3301033178_
                                                 _tl3300933181_
                                                 ___splice3433034331_
                                                 _target3301233184_
                                                 _tl3301433187_))))))))
                          (_loop3301533190_ _target3301233184_ '()))))
                     (___match3439634397_
                      (lambda (_e3300533154_
                               _hd3300433158_
                               _tl3300333161_
                               _e3300833164_
                               _hd3300733168_
                               _tl3300633171_)
                        (if (gx#stx-pair? _tl3300633171_)
                            (let ((_e3301133174_ (gx#syntax-e _tl3300633171_)))
                              (let ((_tl3300933181_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3301133174_)))
                                    (_hd3301033178_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3301133174_))))
                                (if (gx#stx-pair/null? _tl3300933181_)
                                    (let ((___splice3433034331_
                                           (gx#syntax-split-splice
                                            _tl3300933181_
                                            '0)))
                                      (let ((_tl3301433187_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3433034331_
                                                '1)))
                                            (_target3301233184_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3433034331_
                                                '0))))
                                        (if (gx#stx-null? _tl3301433187_)
                                            (___match3441034411_
                                             _e3300533154_
                                             _hd3300433158_
                                             _tl3300333161_
                                             _e3300833164_
                                             _hd3300733168_
                                             _tl3300633171_
                                             _e3301133174_
                                             _hd3301033178_
                                             _tl3300933181_
                                             ___splice3433034331_
                                             _target3301233184_
                                             _tl3301433187_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3296033047_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3296033047_)))))
                            (let () (declare (not safe)) (_g3296033047_)))))
                     (___match3438434385_
                      (lambda (_e3298733260_
                               _hd3298633264_
                               _tl3298533267_
                               _e3299033270_
                               _hd3298933274_
                               _tl3298833277_
                               ___splice3432634327_
                               _target3299133280_
                               _tl3299333283_)
                        (letrec ((_loop3299433286_
                                  (lambda (_hd3299233290_ _arg3299833293_)
                                    (if (gx#stx-pair? _hd3299233290_)
                                        (let ((_e3299533296_
                                               (gx#syntax-e _hd3299233290_)))
                                          (let ((_lp-tl3299733303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3299533296_)))
                                                (_lp-hd3299633300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3299533296_))))
                                            (_loop3299433286_
                                             _lp-tl3299733303_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3299633300_
                                                     _arg3299833293_)))))
                                        (let ((_arg3299933306_
                                               (reverse _arg3299833293_)))
                                          (let ((_L33310_ _arg3299933306_)
                                                (_L33312_ _hd3298933274_))
                                            (if (_dotted-identifier?32953_
                                                 _L33312_)
                                                (___kont3432434325_
                                                 _L33310_
                                                 _L33312_)
                                                (___match3439634397_
                                                 _e3298733260_
                                                 _hd3298633264_
                                                 _tl3298533267_
                                                 _e3299033270_
                                                 _hd3298933274_
                                                 _tl3298833277_))))))))
                          (_loop3299433286_ _target3299133280_ '()))))
                     (___match3438234383_
                      (lambda (_e3298733260_
                               _hd3298633264_
                               _tl3298533267_
                               _e3299033270_
                               _hd3298933274_
                               _tl3298833277_
                               ___splice3432634327_
                               _target3299133280_
                               _tl3299333283_)
                        (if (gx#stx-null? _tl3299333283_)
                            (___match3438434385_
                             _e3298733260_
                             _hd3298633264_
                             _tl3298533267_
                             _e3299033270_
                             _hd3298933274_
                             _tl3298833277_
                             ___splice3432634327_
                             _target3299133280_
                             _tl3299333283_)
                            (if (gx#stx-pair? _tl3298833277_)
                                (let ((_e3301133174_
                                       (gx#syntax-e _tl3298833277_)))
                                  (let ((_tl3300933181_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3301133174_)))
                                        (_hd3301033178_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3301133174_))))
                                    (if (gx#stx-pair/null? _tl3300933181_)
                                        (let ((___splice3433034331_
                                               (gx#syntax-split-splice
                                                _tl3300933181_
                                                '0)))
                                          (let ((_tl3301433187_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3433034331_
                                                    '1)))
                                                (_target3301233184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3433034331_
                                                    '0))))
                                            (if (gx#stx-null? _tl3301433187_)
                                                (___match3441034411_
                                                 _e3298733260_
                                                 _hd3298633264_
                                                 _tl3298533267_
                                                 _e3299033270_
                                                 _hd3298933274_
                                                 _tl3298833277_
                                                 _e3301133174_
                                                 _hd3301033178_
                                                 _tl3300933181_
                                                 ___splice3433034331_
                                                 _target3301233184_
                                                 _tl3301433187_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3296033047_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3296033047_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g3296033047_))))))
                     (___match3436434365_
                      (lambda (_e3296733408_
                               _hd3296633412_
                               _tl3296533415_
                               _e3297033418_
                               _hd3296933422_
                               _tl3296833425_
                               ___splice3432234323_
                               _target3297133428_
                               _tl3297333431_
                               _e3298233434_
                               _hd3298133438_
                               _tl3298033441_)
                        (letrec ((_loop3297433444_
                                  (lambda (_hd3297233448_ _arg3297833451_)
                                    (if (gx#stx-pair? _hd3297233448_)
                                        (let ((_e3297533454_
                                               (gx#syntax-e _hd3297233448_)))
                                          (let ((_lp-tl3297733461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3297533454_)))
                                                (_lp-hd3297633458_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3297533454_))))
                                            (_loop3297433444_
                                             _lp-tl3297733461_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3297633458_
                                                     _arg3297833451_)))))
                                        (let ((_arg3297933464_
                                               (reverse _arg3297833451_)))
                                          (let ((_L33468_ _hd3298133438_)
                                                (_L33470_ _arg3297933464_)
                                                (_L33471_ _hd3296933422_))
                                            (if (and (_dotted-identifier?32953_
                                                      _L33471_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp35550
                                                             (lambda (_g3349033493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3349133496_)
                       (let ()
                         (declare (not safe))
                         (cons _g3349033493_ _g3349133496_)))))
                (declare (not safe))
                (foldr1 __tmp35550 '() _L33470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3432034321_
                                                 _L33468_
                                                 _L33470_
                                                 _L33471_)
                                                (let ((___splice3432634327_
                                                       (gx#syntax-split-splice
                                                        _tl3296833425_
                                                        '0)))
                                                  (let ((_tl3299333283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3432634327_
                                                            '1)))
                                                        (_target3299133280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3432634327_
                                                            '0))))
                                                    (___match3438234383_
                                                     _e3296733408_
                                                     _hd3296633412_
                                                     _tl3296533415_
                                                     _e3297033418_
                                                     _hd3296933422_
                                                     _tl3296833425_
                                                     ___splice3432634327_
                                                     _target3299133280_
                                                     _tl3299333283_))))))))))
                          (_loop3297433444_ _target3297133428_ '())))))
                (if (gx#stx-pair? ___stx3431734318_)
                    (let ((_e3296733408_ (gx#syntax-e ___stx3431734318_)))
                      (let ((_tl3296533415_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3296733408_)))
                            (_hd3296633412_
                             (let ()
                               (declare (not safe))
                               (##car _e3296733408_))))
                        (if (gx#stx-pair? _tl3296533415_)
                            (let ((_e3297033418_ (gx#syntax-e _tl3296533415_)))
                              (let ((_tl3296833425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3297033418_)))
                                    (_hd3296933422_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3297033418_))))
                                (if (gx#stx-pair/null? _tl3296833425_)
                                    (if (fx>= (gx#stx-length _tl3296833425_)
                                              '1)
                                        (let ((___splice3432234323_
                                               (gx#syntax-split-splice
                                                _tl3296833425_
                                                '1)))
                                          (let ((_tl3297333431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3432234323_
                                                    '1)))
                                                (_target3297133428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3432234323_
                                                    '0))))
                                            (if (gx#stx-pair? _tl3297333431_)
                                                (let ((_e3298233434_
                                                       (gx#syntax-e
                                                        _tl3297333431_)))
                                                  (let ((_tl3298033441_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3298233434_)))
                                                        (_hd3298133438_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3298233434_))))
                                                    (if (gx#stx-null?
                                                         _tl3298033441_)
                                                        (___match3436434365_
                                                         _e3296733408_
                                                         _hd3296633412_
                                                         _tl3296533415_
                                                         _e3297033418_
                                                         _hd3296933422_
                                                         _tl3296833425_
                                                         ___splice3432234323_
                                                         _target3297133428_
                                                         _tl3297333431_
                                                         _e3298233434_
                                                         _hd3298133438_
                                                         _tl3298033441_)
                                                        (let ((___splice3432634327_
                                                               (gx#syntax-split-splice
                                                                _tl3296833425_
                                                                '0)))
                                                          (let ((_tl3299333283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3432634327_ '1)))
                        (_target3299133280_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3432634327_ '0))))
                    (if (gx#stx-null? _tl3299333283_)
                        (___match3438434385_
                         _e3296733408_
                         _hd3296633412_
                         _tl3296533415_
                         _e3297033418_
                         _hd3296933422_
                         _tl3296833425_
                         ___splice3432634327_
                         _target3299133280_
                         _tl3299333283_)
                        (if (gx#stx-pair? _tl3296833425_)
                            (let ((_e3301133174_ (gx#syntax-e _tl3296833425_)))
                              (let ((_tl3300933181_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3301133174_)))
                                    (_hd3301033178_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3301133174_))))
                                (if (gx#stx-pair/null? _tl3300933181_)
                                    (let ((___splice3433034331_
                                           (gx#syntax-split-splice
                                            _tl3300933181_
                                            '0)))
                                      (let ((_tl3301433187_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3433034331_
                                                '1)))
                                            (_target3301233184_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3433034331_
                                                '0))))
                                        (if (gx#stx-null? _tl3301433187_)
                                            (___match3441034411_
                                             _e3296733408_
                                             _hd3296633412_
                                             _tl3296533415_
                                             _e3297033418_
                                             _hd3296933422_
                                             _tl3296833425_
                                             _e3301133174_
                                             _hd3301033178_
                                             _tl3300933181_
                                             ___splice3433034331_
                                             _target3301233184_
                                             _tl3301433187_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3296033047_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3296033047_)))))
                            (let ()
                              (declare (not safe))
                              (_g3296033047_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice3432634327_
                                                       (gx#syntax-split-splice
                                                        _tl3296833425_
                                                        '0)))
                                                  (let ((_tl3299333283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3432634327_
                                                            '1)))
                                                        (_target3299133280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3432634327_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3299333283_)
                                                        (___match3438434385_
                                                         _e3296733408_
                                                         _hd3296633412_
                                                         _tl3296533415_
                                                         _e3297033418_
                                                         _hd3296933422_
                                                         _tl3296833425_
                                                         ___splice3432634327_
                                                         _target3299133280_
                                                         _tl3299333283_)
                                                        (if (gx#stx-pair?
                                                             _tl3296833425_)
                                                            (let ((_e3301133174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3296833425_)))
                      (let ((_tl3300933181_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3301133174_)))
                            (_hd3301033178_
                             (let ()
                               (declare (not safe))
                               (##car _e3301133174_))))
                        (if (gx#stx-pair/null? _tl3300933181_)
                            (let ((___splice3433034331_
                                   (gx#syntax-split-splice _tl3300933181_ '0)))
                              (let ((_tl3301433187_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice3433034331_ '1)))
                                    (_target3301233184_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice3433034331_
                                        '0))))
                                (if (gx#stx-null? _tl3301433187_)
                                    (___match3441034411_
                                     _e3296733408_
                                     _hd3296633412_
                                     _tl3296533415_
                                     _e3297033418_
                                     _hd3296933422_
                                     _tl3296833425_
                                     _e3301133174_
                                     _hd3301033178_
                                     _tl3300933181_
                                     ___splice3433034331_
                                     _target3301233184_
                                     _tl3301433187_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3296033047_)))))
                            (let () (declare (not safe)) (_g3296033047_)))))
                    (let () (declare (not safe)) (_g3296033047_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice3432634327_
                                               (gx#syntax-split-splice
                                                _tl3296833425_
                                                '0)))
                                          (let ((_tl3299333283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3432634327_
                                                    '1)))
                                                (_target3299133280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3432634327_
                                                    '0))))
                                            (if (gx#stx-null? _tl3299333283_)
                                                (___match3438434385_
                                                 _e3296733408_
                                                 _hd3296633412_
                                                 _tl3296533415_
                                                 _e3297033418_
                                                 _hd3296933422_
                                                 _tl3296833425_
                                                 ___splice3432634327_
                                                 _target3299133280_
                                                 _tl3299333283_)
                                                (if (gx#stx-pair?
                                                     _tl3296833425_)
                                                    (let ((_e3301133174_
                                                           (gx#syntax-e
                                                            _tl3296833425_)))
                                                      (let ((_tl3300933181_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3301133174_)))
                    (_hd3301033178_
                     (let () (declare (not safe)) (##car _e3301133174_))))
                (if (gx#stx-pair/null? _tl3300933181_)
                    (let ((___splice3433034331_
                           (gx#syntax-split-splice _tl3300933181_ '0)))
                      (let ((_tl3301433187_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3433034331_ '1)))
                            (_target3301233184_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3433034331_ '0))))
                        (if (gx#stx-null? _tl3301433187_)
                            (___match3441034411_
                             _e3296733408_
                             _hd3296633412_
                             _tl3296533415_
                             _e3297033418_
                             _hd3296933422_
                             _tl3296833425_
                             _e3301133174_
                             _hd3301033178_
                             _tl3300933181_
                             ___splice3433034331_
                             _target3301233184_
                             _tl3301433187_)
                            (let () (declare (not safe)) (_g3296033047_)))))
                    (let () (declare (not safe)) (_g3296033047_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3296033047_)))))))
                                    (if (gx#stx-pair? _tl3296833425_)
                                        (let ((_e3301133174_
                                               (gx#syntax-e _tl3296833425_)))
                                          (let ((_tl3300933181_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3301133174_)))
                                                (_hd3301033178_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3301133174_))))
                                            (if (gx#stx-pair/null?
                                                 _tl3300933181_)
                                                (let ((___splice3433034331_
                                                       (gx#syntax-split-splice
                                                        _tl3300933181_
                                                        '0)))
                                                  (let ((_tl3301433187_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3433034331_
                                                            '1)))
                                                        (_target3301233184_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3433034331_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3301433187_)
                                                        (___match3441034411_
                                                         _e3296733408_
                                                         _hd3296633412_
                                                         _tl3296533415_
                                                         _e3297033418_
                                                         _hd3296933422_
                                                         _tl3296833425_
                                                         _e3301133174_
                                                         _hd3301033178_
                                                         _tl3300933181_
                                                         ___splice3433034331_
                                                         _target3301233184_
                                                         _tl3301433187_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3296033047_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3296033047_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3296033047_))))))
                            (let () (declare (not safe)) (_g3296033047_)))))
                    (let () (declare (not safe)) (_g3296033047_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_$stx33599_)
        (let* ((___stx3443934440_ _$stx33599_)
               (_g3360433644_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3443934440_))))
          (let ((___kont3444234443_
                 (lambda (_L33782_ _L33784_)
                   (let ((__tmp35556 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp35551
                          (let ((__tmp35552
                                 (let ((__tmp35553
                                        (let ((__tmp35555
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp35554
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L33782_ '()))))
                                          (declare (not safe))
                                          (cons __tmp35555 __tmp35554))))
                                   (declare (not safe))
                                   (cons __tmp35553 '()))))
                            (declare (not safe))
                            (cons _L33784_ __tmp35552))))
                     (declare (not safe))
                     (cons __tmp35556 __tmp35551))))
                (___kont3444434445_
                 (lambda (_L33711_ _L33713_ _L33714_ _L33715_)
                   (let ((__tmp35557
                          (let ((__tmp35560
                                 (let ((__tmp35561
                                        (let ((__tmp35562
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L33713_ '()))))
                                          (declare (not safe))
                                          (cons _L33714_ __tmp35562))))
                                   (declare (not safe))
                                   (cons _L33715_ __tmp35561)))
                                (__tmp35558
                                 (let ((__tmp35559
                                        (lambda (_g3373633739_ _g3373733742_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3373633739_
                                                  _g3373733742_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp35559 '() _L33711_))))
                            (declare (not safe))
                            (cons __tmp35560 __tmp35558))))
                     (declare (not safe))
                     (cons _L33715_ __tmp35557)))))
            (let* ((___match3449434495_
                    (lambda (_e3362333651_
                             _hd3362233655_
                             _tl3362133658_
                             _e3362633661_
                             _hd3362533665_
                             _tl3362433668_
                             _e3362933671_
                             _hd3362833675_
                             _tl3362733678_
                             ___splice3444634447_
                             _target3363033681_
                             _tl3363233684_)
                      (letrec ((_loop3363333687_
                                (lambda (_hd3363133691_ _rest3363733694_)
                                  (if (gx#stx-pair? _hd3363133691_)
                                      (let ((_e3363433697_
                                             (gx#syntax-e _hd3363133691_)))
                                        (let ((_lp-tl3363633704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3363433697_)))
                                              (_lp-hd3363533701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3363433697_))))
                                          (_loop3363333687_
                                           _lp-tl3363633704_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3363533701_
                                                   _rest3363733694_)))))
                                      (let ((_rest3363833707_
                                             (reverse _rest3363733694_)))
                                        (___kont3444434445_
                                         _rest3363833707_
                                         _hd3362833675_
                                         _hd3362533665_
                                         _hd3362233655_))))))
                        (_loop3363333687_ _target3363033681_ '()))))
                   (___match3446834469_
                    (lambda (_e3361033752_
                             _hd3360933756_
                             _tl3360833759_
                             _e3361333762_
                             _hd3361233766_
                             _tl3361133769_
                             _e3361633772_
                             _hd3361533776_
                             _tl3361433779_)
                      (let ((_L33782_ _hd3361533776_)
                            (_L33784_ _hd3361233766_))
                        (if (gx#identifier? _L33782_)
                            (___kont3444234443_ _L33782_ _L33784_)
                            (if (gx#stx-pair/null? _tl3361433779_)
                                (let ((___splice3444634447_
                                       (gx#syntax-split-splice
                                        _tl3361433779_
                                        '0)))
                                  (let ((_tl3363233684_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3444634447_
                                            '1)))
                                        (_target3363033681_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3444634447_
                                            '0))))
                                    (if (gx#stx-null? _tl3363233684_)
                                        (___match3449434495_
                                         _e3361033752_
                                         _hd3360933756_
                                         _tl3360833759_
                                         _e3361333762_
                                         _hd3361233766_
                                         _tl3361133769_
                                         _e3361633772_
                                         _hd3361533776_
                                         _tl3361433779_
                                         ___splice3444634447_
                                         _target3363033681_
                                         _tl3363233684_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3360433644_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g3360433644_))))))))
              (if (gx#stx-pair? ___stx3443934440_)
                  (let ((_e3361033752_ (gx#syntax-e ___stx3443934440_)))
                    (let ((_tl3360833759_
                           (let () (declare (not safe)) (##cdr _e3361033752_)))
                          (_hd3360933756_
                           (let ()
                             (declare (not safe))
                             (##car _e3361033752_))))
                      (if (gx#stx-pair? _tl3360833759_)
                          (let ((_e3361333762_ (gx#syntax-e _tl3360833759_)))
                            (let ((_tl3361133769_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3361333762_)))
                                  (_hd3361233766_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3361333762_))))
                              (if (gx#stx-pair? _tl3361133769_)
                                  (let ((_e3361633772_
                                         (gx#syntax-e _tl3361133769_)))
                                    (let ((_tl3361433779_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3361633772_)))
                                          (_hd3361533776_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3361633772_))))
                                      (if (gx#stx-null? _tl3361433779_)
                                          (___match3446834469_
                                           _e3361033752_
                                           _hd3360933756_
                                           _tl3360833759_
                                           _e3361333762_
                                           _hd3361233766_
                                           _tl3361133769_
                                           _e3361633772_
                                           _hd3361533776_
                                           _tl3361433779_)
                                          (if (gx#stx-pair/null?
                                               _tl3361433779_)
                                              (let ((___splice3444634447_
                                                     (gx#syntax-split-splice
                                                      _tl3361433779_
                                                      '0)))
                                                (let ((_tl3363233684_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3444634447_
                                                          '1)))
                                                      (_target3363033681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3444634447_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3363233684_)
                                                      (___match3449434495_
                                                       _e3361033752_
                                                       _hd3360933756_
                                                       _tl3360833759_
                                                       _e3361333762_
                                                       _hd3361233766_
                                                       _tl3361133769_
                                                       _e3361633772_
                                                       _hd3361533776_
                                                       _tl3361433779_
                                                       ___splice3444634447_
                                                       _target3363033681_
                                                       _tl3363233684_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3360433644_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3360433644_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3360433644_)))))
                          (let () (declare (not safe)) (_g3360433644_)))))
                  (let () (declare (not safe)) (_g3360433644_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_$stx33804_)
        (let* ((___stx3449734498_ _$stx33804_)
               (_g3380933861_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3449734498_))))
          (let ((___kont3450034501_
                 (lambda (_L34037_ _L34039_ _L34040_)
                   (let ((__tmp35569 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp35563
                          (let ((__tmp35564
                                 (let ((__tmp35566
                                        (let ((__tmp35568
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp35567
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L34039_ '()))))
                                          (declare (not safe))
                                          (cons __tmp35568 __tmp35567)))
                                       (__tmp35565
                                        (let ()
                                          (declare (not safe))
                                          (cons _L34037_ '()))))
                                   (declare (not safe))
                                   (cons __tmp35566 __tmp35565))))
                            (declare (not safe))
                            (cons _L34040_ __tmp35564))))
                     (declare (not safe))
                     (cons __tmp35569 __tmp35563))))
                (___kont3450234503_
                 (lambda (_L33948_
                          _L33950_
                          _L33951_
                          _L33952_
                          _L33953_
                          _L33954_)
                   (let ((__tmp35570
                          (let ((__tmp35573
                                 (let ((__tmp35578 (gx#datum->syntax '#f '@))
                                       (__tmp35574
                                        (let ((__tmp35575
                                               (let ((__tmp35576
                                                      (let ((__tmp35577
                                                             (lambda (_g3398133984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3398233987_)
                       (let ()
                         (declare (not safe))
                         (cons _g3398133984_ _g3398233987_)))))
                (declare (not safe))
                (foldr1 __tmp35577 '() _L33951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L33952_ __tmp35576))))
                                          (declare (not safe))
                                          (cons _L33953_ __tmp35575))))
                                   (declare (not safe))
                                   (cons __tmp35578 __tmp35574)))
                                (__tmp35571
                                 (let ((__tmp35572
                                        (let ()
                                          (declare (not safe))
                                          (cons _L33948_ '()))))
                                   (declare (not safe))
                                   (cons _L33950_ __tmp35572))))
                            (declare (not safe))
                            (cons __tmp35573 __tmp35571))))
                     (declare (not safe))
                     (cons _L33954_ __tmp35570)))))
            (let* ((___match3457234573_
                    (lambda (_e3383433868_
                             _hd3383333872_
                             _tl3383233875_
                             _e3383733878_
                             _hd3383633882_
                             _tl3383533885_
                             _e3384033888_
                             _hd3383933892_
                             _tl3383833895_
                             ___splice3450434505_
                             _target3384133898_
                             _tl3384333901_
                             _e3385233904_
                             _hd3385133908_
                             _tl3385033911_
                             _e3385533914_
                             _hd3385433918_
                             _tl3385333921_)
                      (letrec ((_loop3384433924_
                                (lambda (_hd3384233928_ _path3384833931_)
                                  (if (gx#stx-pair? _hd3384233928_)
                                      (let ((_e3384533934_
                                             (gx#syntax-e _hd3384233928_)))
                                        (let ((_lp-tl3384733941_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3384533934_)))
                                              (_lp-hd3384633938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3384533934_))))
                                          (_loop3384433924_
                                           _lp-tl3384733941_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3384633938_
                                                   _path3384833931_)))))
                                      (let ((_path3384933944_
                                             (reverse _path3384833931_)))
                                        (___kont3450234503_
                                         _hd3385433918_
                                         _hd3385133908_
                                         _path3384933944_
                                         _hd3383933892_
                                         _hd3383633882_
                                         _hd3383333872_))))))
                        (_loop3384433924_ _target3384133898_ '()))))
                   (___match3453234533_
                    (lambda (_e3381633997_
                             _hd3381534001_
                             _tl3381434004_
                             _e3381934007_
                             _hd3381834011_
                             _tl3381734014_
                             _e3382234017_
                             _hd3382134021_
                             _tl3382034024_
                             _e3382534027_
                             _hd3382434031_
                             _tl3382334034_)
                      (let ((_L34037_ _hd3382434031_)
                            (_L34039_ _hd3382134021_)
                            (_L34040_ _hd3381834011_))
                        (if (gx#identifier? _L34039_)
                            (___kont3450034501_ _L34037_ _L34039_ _L34040_)
                            (if (gx#stx-pair/null? _tl3382034024_)
                                (if (fx>= (gx#stx-length _tl3382034024_) '2)
                                    (let ((___splice3450434505_
                                           (gx#syntax-split-splice
                                            _tl3382034024_
                                            '2)))
                                      (let ((_tl3384333901_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3450434505_
                                                '1)))
                                            (_target3384133898_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3450434505_
                                                '0))))
                                        (if (gx#stx-pair? _tl3384333901_)
                                            (let ((_e3385233904_
                                                   (gx#syntax-e
                                                    _tl3384333901_)))
                                              (let ((_tl3385033911_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3385233904_)))
                                                    (_hd3385133908_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3385233904_))))
                                                (if (gx#stx-pair?
                                                     _tl3385033911_)
                                                    (let ((_e3385533914_
                                                           (gx#syntax-e
                                                            _tl3385033911_)))
                                                      (let ((_tl3385333921_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3385533914_)))
                    (_hd3385433918_
                     (let () (declare (not safe)) (##car _e3385533914_))))
                (if (gx#stx-null? _tl3385333921_)
                    (___match3457234573_
                     _e3381633997_
                     _hd3381534001_
                     _tl3381434004_
                     _e3381934007_
                     _hd3381834011_
                     _tl3381734014_
                     _e3382234017_
                     _hd3382134021_
                     _tl3382034024_
                     ___splice3450434505_
                     _target3384133898_
                     _tl3384333901_
                     _e3385233904_
                     _hd3385133908_
                     _tl3385033911_
                     _e3385533914_
                     _hd3385433918_
                     _tl3385333921_)
                    (let () (declare (not safe)) (_g3380933861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3380933861_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3380933861_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3380933861_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3380933861_))))))))
              (if (gx#stx-pair? ___stx3449734498_)
                  (let ((_e3381633997_ (gx#syntax-e ___stx3449734498_)))
                    (let ((_tl3381434004_
                           (let () (declare (not safe)) (##cdr _e3381633997_)))
                          (_hd3381534001_
                           (let ()
                             (declare (not safe))
                             (##car _e3381633997_))))
                      (if (gx#stx-pair? _tl3381434004_)
                          (let ((_e3381934007_ (gx#syntax-e _tl3381434004_)))
                            (let ((_tl3381734014_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3381934007_)))
                                  (_hd3381834011_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3381934007_))))
                              (if (gx#stx-pair? _tl3381734014_)
                                  (let ((_e3382234017_
                                         (gx#syntax-e _tl3381734014_)))
                                    (let ((_tl3382034024_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3382234017_)))
                                          (_hd3382134021_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3382234017_))))
                                      (if (gx#stx-pair? _tl3382034024_)
                                          (let ((_e3382534027_
                                                 (gx#syntax-e _tl3382034024_)))
                                            (let ((_tl3382334034_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3382534027_)))
                                                  (_hd3382434031_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3382534027_))))
                                              (if (gx#stx-null? _tl3382334034_)
                                                  (___match3453234533_
                                                   _e3381633997_
                                                   _hd3381534001_
                                                   _tl3381434004_
                                                   _e3381934007_
                                                   _hd3381834011_
                                                   _tl3381734014_
                                                   _e3382234017_
                                                   _hd3382134021_
                                                   _tl3382034024_
                                                   _e3382534027_
                                                   _hd3382434031_
                                                   _tl3382334034_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3382034024_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3382034024_)
                        '2)
                  (let ((___splice3450434505_
                         (gx#syntax-split-splice _tl3382034024_ '2)))
                    (let ((_tl3384333901_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3450434505_ '1)))
                          (_target3384133898_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3450434505_ '0))))
                      (if (gx#stx-pair? _tl3384333901_)
                          (let ((_e3385233904_ (gx#syntax-e _tl3384333901_)))
                            (let ((_tl3385033911_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3385233904_)))
                                  (_hd3385133908_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3385233904_))))
                              (if (gx#stx-pair? _tl3385033911_)
                                  (let ((_e3385533914_
                                         (gx#syntax-e _tl3385033911_)))
                                    (let ((_tl3385333921_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3385533914_)))
                                          (_hd3385433918_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3385533914_))))
                                      (if (gx#stx-null? _tl3385333921_)
                                          (___match3457234573_
                                           _e3381633997_
                                           _hd3381534001_
                                           _tl3381434004_
                                           _e3381934007_
                                           _hd3381834011_
                                           _tl3381734014_
                                           _e3382234017_
                                           _hd3382134021_
                                           _tl3382034024_
                                           ___splice3450434505_
                                           _target3384133898_
                                           _tl3384333901_
                                           _e3385233904_
                                           _hd3385133908_
                                           _tl3385033911_
                                           _e3385533914_
                                           _hd3385433918_
                                           _tl3385333921_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3380933861_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3380933861_)))))
                          (let () (declare (not safe)) (_g3380933861_)))))
                  (let () (declare (not safe)) (_g3380933861_)))
              (let () (declare (not safe)) (_g3380933861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl3382034024_)
                                              (if (fx>= (gx#stx-length
                                                         _tl3382034024_)
                                                        '2)
                                                  (let ((___splice3450434505_
                                                         (gx#syntax-split-splice
                                                          _tl3382034024_
                                                          '2)))
                                                    (let ((_tl3384333901_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3450434505_
                                                              '1)))
                                                          (_target3384133898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3450434505_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl3384333901_)
                                                          (let ((_e3385233904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3384333901_)))
                    (let ((_tl3385033911_
                           (let () (declare (not safe)) (##cdr _e3385233904_)))
                          (_hd3385133908_
                           (let ()
                             (declare (not safe))
                             (##car _e3385233904_))))
                      (if (gx#stx-pair? _tl3385033911_)
                          (let ((_e3385533914_ (gx#syntax-e _tl3385033911_)))
                            (let ((_tl3385333921_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3385533914_)))
                                  (_hd3385433918_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3385533914_))))
                              (if (gx#stx-null? _tl3385333921_)
                                  (___match3457234573_
                                   _e3381633997_
                                   _hd3381534001_
                                   _tl3381434004_
                                   _e3381934007_
                                   _hd3381834011_
                                   _tl3381734014_
                                   _e3382234017_
                                   _hd3382134021_
                                   _tl3382034024_
                                   ___splice3450434505_
                                   _target3384133898_
                                   _tl3384333901_
                                   _e3385233904_
                                   _hd3385133908_
                                   _tl3385033911_
                                   _e3385533914_
                                   _hd3385433918_
                                   _tl3385333921_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3380933861_)))))
                          (let () (declare (not safe)) (_g3380933861_)))))
                  (let () (declare (not safe)) (_g3380933861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3380933861_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3380933861_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3380933861_)))))
                          (let () (declare (not safe)) (_g3380933861_)))))
                  (let () (declare (not safe)) (_g3380933861_))))))))))
