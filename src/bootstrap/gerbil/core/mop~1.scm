(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_type-t29993_)
      (let ((_$e29996_ (gx#module-context-ns (gx#current-expander-context))))
        (if _$e29996_
            ((lambda (_ns30000_)
               (gx#stx-identifier
                _type-t29993_
                _ns30000_
                '"#"
                _type-t29993_
                '"::t"))
             _$e29996_)
            (let ((_mid30003_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _type-t29993_
               _mid30003_
               '"#"
               _type-t29993_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_type-t29990_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core/mop~MOP-1[1]#module-type-id| _type-t29990_))
          (let ((__tmp34661 (gensym (gx#stx-e _type-t29990_))))
            (declare (not safe))
            (make-symbol__1 '"__" __tmp34661 '"::t")))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_stx28570_ _struct?28572_)
      (letrec ((_wrap28574_
                (lambda (_e-stx29987_)
                  (gx#stx-wrap-source
                   _e-stx29987_
                   (gx#stx-source _stx28570_))))
               (_slot-name28576_
                (lambda (_slot-spec29904_)
                  (let* ((_g2990729926_
                          (lambda (_g2990829922_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2990829922_)))
                         (_g2990629983_
                          (lambda (_g2990829930_)
                            (if (gx#stx-pair? _g2990829930_)
                                (let ((_e2991429933_
                                       (gx#syntax-e _g2990829930_)))
                                  (let ((_hd2991329937_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2991429933_)))
                                        (_tl2991229940_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2991429933_))))
                                    (if (gx#stx-pair? _tl2991229940_)
                                        (let ((_e2991729943_
                                               (gx#syntax-e _tl2991229940_)))
                                          (let ((_hd2991629947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2991729943_)))
                                                (_tl2991529950_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2991729943_))))
                                            (if (gx#stx-pair? _tl2991529950_)
                                                (let ((_e2992029953_
                                                       (gx#syntax-e
                                                        _tl2991529950_)))
                                                  (let ((_hd2991929957_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2992029953_)))
                                                        (_tl2991829960_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2992029953_))))
                                                    (if (gx#stx-null?
                                                         _tl2991829960_)
                                                        ((lambda (_L29963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L29965_
                          _L29966_)
                   _L29966_)
                 _hd2991929957_
                 _hd2991629947_
                 _hd2991329937_)
                (let () (declare (not safe)) (_g2990729926_ _g2990829930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2990729926_
                                                   _g2990829930_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2990729926_ _g2990829930_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2990729926_ _g2990829930_))))))
                    (declare (not safe))
                    (_g2990629983_ _slot-spec29904_))))
               (_class-opt?28577_
                (lambda (_key29901_)
                  (memq (gx#stx-e _key29901_)
                        '(struct:
                          slots:
                          id:
                          name:
                          properties:
                          constructor:
                          final:
                          mixin:
                          metaclass:)))))
        (let* ((_g2857928606_
                (lambda (_g2858028602_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2858028602_)))
               (_g2857829897_
                (lambda (_g2858028610_)
                  (if (gx#stx-pair? _g2858028610_)
                      (let ((_e2858828613_ (gx#syntax-e _g2858028610_)))
                        (let ((_hd2858728617_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2858828613_)))
                              (_tl2858628620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2858828613_))))
                          (if (gx#stx-pair? _tl2858628620_)
                              (let ((_e2859128623_
                                     (gx#syntax-e _tl2858628620_)))
                                (let ((_hd2859028627_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2859128623_)))
                                      (_tl2858928630_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2859128623_))))
                                  (if (gx#stx-pair? _tl2858928630_)
                                      (let ((_e2859428633_
                                             (gx#syntax-e _tl2858928630_)))
                                        (let ((_hd2859328637_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2859428633_)))
                                              (_tl2859228640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2859428633_))))
                                          (if (gx#stx-pair? _tl2859228640_)
                                              (let ((_e2859728643_
                                                     (gx#syntax-e
                                                      _tl2859228640_)))
                                                (let ((_hd2859628647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2859728643_)))
                                                      (_tl2859528650_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2859728643_))))
                                                  (if (gx#stx-pair?
                                                       _tl2859528650_)
                                                      (let ((_e2860028653_
                                                             (gx#syntax-e
                                                              _tl2859528650_)))
                                                        (let ((_hd2859928657_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2860028653_)))
                      (_tl2859828660_
                       (let () (declare (not safe)) (##cdr _e2860028653_))))
                  ((lambda (_L28663_ _L28665_ _L28666_ _L28667_ _L28668_)
                     (if (and (gx#identifier? _L28668_)
                              (gx#identifier-list? _L28667_)
                              (or (gx#identifier? _L28666_)
                                  (gx#stx-false? _L28666_))
                              (gx#identifier? _L28665_)
                              (gx#stx-plist? _L28663_ _class-opt?28577_))
                         (let* ((_struct?28706_
                                 (let ((_$e28698_ _struct?28572_))
                                   (if _$e28698_
                                       _$e28698_
                                       (let ((_$e28702_
                                              (gx#stx-getq 'struct: _L28663_)))
                                         (if _$e28702_
                                             (gx#stx-e _$e28702_)
                                             '#f)))))
                                (_slots28713_
                                 (let ((_$e28709_
                                        (gx#stx-getq 'slots: _L28663_)))
                                   (if _$e28709_ _$e28709_ '())))
                                (_mixin-slots28720_
                                 (let ((_$e28716_
                                        (gx#stx-getq 'mixin: _L28663_)))
                                   (if _$e28716_ _$e28716_ '())))
                                (_accessible-slots28723_
                                 (append (gx#syntax->list _slots28713_)
                                         (gx#syntax->list _mixin-slots28720_)))
                                (_metaclass28726_
                                 (gx#stx-getq 'metaclass: _L28663_))
                                (_g2872928746_
                                 (lambda (_g2873028742_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2873028742_)))
                                (_g2872829893_
                                 (lambda (_g2873028750_)
                                   (if (gx#stx-pair/null? _g2873028750_)
                                       (let ((_g34662_
                                              (gx#syntax-split-splice
                                               _g2873028750_
                                               '0)))
                                         (begin
                                           (let ((_g34663_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g34662_)
                                                        (##vector-length
                                                         _g34662_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g34663_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g34663_)))
                                           (let ((_target2873228753_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g34662_ 0)))
                                                 (_tl2873428756_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g34662_
                                                     1))))
                                             (if (gx#stx-null? _tl2873428756_)
                                                 (letrec ((_loop2873528759_
                                                           (lambda (_hd2873328763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _slot2873928766_)
                     (if (gx#stx-pair? _hd2873328763_)
                         (let ((_e2873628769_ (gx#syntax-e _hd2873328763_)))
                           (let ((_lp-hd2873728773_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2873628769_)))
                                 (_lp-tl2873828776_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2873628769_))))
                             (let ((__tmp34894
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd2873728773_
                                            _slot2873928766_))))
                               (declare (not safe))
                               (_loop2873528759_
                                _lp-tl2873828776_
                                __tmp34894))))
                         (let ((_slot2874028779_ (reverse _slot2873928766_)))
                           ((lambda (_L28783_)
                              (let ()
                                (let* ((_g2880428812_
                                        (lambda (_g2880528808_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2880528808_)))
                                       (_g2880329885_
                                        (lambda (_g2880528816_)
                                          ((lambda (_L28819_)
                                             (let ()
                                               (let* ((_g2883228840_
                                                       (lambda (_g2883328836_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2883328836_)))
                                                      (_g2883129877_
                                                       (lambda (_g2883328844_)
                                                         ((lambda (_L28847_)
                                                            (let ()
                                                              (let* ((_g2886028868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2886128864_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2886128864_)))
                             (_g2885929873_
                              (lambda (_g2886128872_)
                                ((lambda (_L28875_)
                                   (let ()
                                     (let* ((_g2888828896_
                                             (lambda (_g2888928892_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2888928892_)))
                                            (_g2888729869_
                                             (lambda (_g2888928900_)
                                               ((lambda (_L28903_)
                                                  (let ()
                                                    (let* ((_g2891628924_
                                                            (lambda (_g2891728920_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2891728920_)))
                                                           (_g2891529865_
                                                            (lambda (_g2891728928_)
                                                              ((lambda (_L28931_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2894428952_
                                   (lambda (_g2894528948_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2894528948_)))
                                  (_g2894329861_
                                   (lambda (_g2894528956_)
                                     ((lambda (_L28959_)
                                        (let ()
                                          (let* ((_g2897228980_
                                                  (lambda (_g2897328976_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2897328976_)))
                                                 (_g2897129857_
                                                  (lambda (_g2897328984_)
                                                    ((lambda (_L28987_)
                                                       (let ()
                                                         (let* ((_g2900029008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2900129004_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2900129004_)))
                        (_g2899929853_
                         (lambda (_g2900129012_)
                           ((lambda (_L29015_)
                              (let ()
                                (let* ((_g2902829036_
                                        (lambda (_g2902929032_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2902929032_)))
                                       (_g2902729845_
                                        (lambda (_g2902929040_)
                                          ((lambda (_L29043_)
                                             (let ()
                                               (let* ((_g2905629064_
                                                       (lambda (_g2905729060_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2905729060_)))
                                                      (_g2905529841_
                                                       (lambda (_g2905729068_)
                                                         ((lambda (_L29071_)
                                                            (let ()
                                                              (let* ((_g2908429092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2908529088_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2908529088_)))
                             (_g2908329837_
                              (lambda (_g2908529096_)
                                ((lambda (_L29099_)
                                   (let ()
                                     (let* ((_g2911229120_
                                             (lambda (_g2911329116_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2911329116_)))
                                            (_g2911129802_
                                             (lambda (_g2911329124_)
                                               ((lambda (_L29127_)
                                                  (let ()
                                                    (let* ((_g2914029148_
                                                            (lambda (_g2914129144_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2914129144_)))
                                                           (_g2913929798_
                                                            (lambda (_g2914129152_)
                                                              ((lambda (_L29155_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2916829176_
                                   (lambda (_g2916929172_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2916929172_)))
                                  (_g2916729786_
                                   (lambda (_g2916929180_)
                                     ((lambda (_L29183_)
                                        (let ()
                                          (let* ((_g2919629204_
                                                  (lambda (_g2919729200_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2919729200_)))
                                                 (_g2919529774_
                                                  (lambda (_g2919729208_)
                                                    ((lambda (_L29211_)
                                                       (let ()
                                                         (let* ((_g2922429232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2922529228_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2922529228_)))
                        (_g2922329770_
                         (lambda (_g2922529236_)
                           ((lambda (_L29239_)
                              (let ()
                                (let* ((_g2925229260_
                                        (lambda (_g2925329256_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2925329256_)))
                                       (_g2925129766_
                                        (lambda (_g2925329264_)
                                          ((lambda (_L29267_)
                                             (let ()
                                               (let* ((_g2928029306_
                                                       (lambda (_g2928129302_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2928129302_)))
                                                      (_g2927929678_
                                                       (lambda (_g2928129310_)
                                                         (if (gx#stx-pair/null?
                                                              _g2928129310_)
                                                             (let ((_g34664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g2928129310_ '0)))
                       (begin
                         (let ((_g34665_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g34664_)
                                      (##vector-length _g34664_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g34665_ 2)))
                               (error "Context expects 2 values" _g34665_)))
                         (let ((_target2928429313_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g34664_ 0)))
                               (_tl2928629316_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g34664_ 1))))
                           (if (gx#stx-null? _tl2928629316_)
                               (letrec ((_loop2928729319_
                                         (lambda (_hd2928529323_
                                                  _def-setf2929129326_
                                                  _def-getf2929229328_)
                                           (if (gx#stx-pair? _hd2928529323_)
                                               (let ((_e2928829331_
                                                      (gx#syntax-e
                                                       _hd2928529323_)))
                                                 (let ((_lp-hd2928929335_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2928829331_)))
                                                       (_lp-tl2929029338_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2928829331_))))
                                                   (if (gx#stx-pair?
                                                        _lp-hd2928929335_)
                                                       (let ((_e2929729341_
                                                              (gx#syntax-e
                                                               _lp-hd2928929335_)))
                                                         (let ((_hd2929629345_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2929729341_)))
                       (_tl2929529348_
                        (let () (declare (not safe)) (##cdr _e2929729341_))))
                   (if (gx#stx-pair? _tl2929529348_)
                       (let ((_e2930029351_ (gx#syntax-e _tl2929529348_)))
                         (let ((_hd2929929355_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2930029351_)))
                               (_tl2929829358_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2930029351_))))
                           (if (gx#stx-null? _tl2929829358_)
                               (let ((__tmp34729
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2929929355_
                                              _def-setf2929129326_)))
                                     (__tmp34728
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd2929629345_
                                              _def-getf2929229328_))))
                                 (declare (not safe))
                                 (_loop2928729319_
                                  _lp-tl2929029338_
                                  __tmp34729
                                  __tmp34728))
                               (let ()
                                 (declare (not safe))
                                 (_g2928029306_ _g2928129310_)))))
                       (let ()
                         (declare (not safe))
                         (_g2928029306_ _g2928129310_)))))
               (let () (declare (not safe)) (_g2928029306_ _g2928129310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_def-setf2929329361_
                                                      (reverse _def-setf2929129326_))
                                                     (_def-getf2929429364_
                                                      (reverse _def-getf2929229328_)))
                                                 ((lambda (_L29367_ _L29369_)
                                                    (let ()
                                                      (let* ((_g2938629412_
                                                              (lambda (_g2938729408_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g2938729408_)))
                     (_g2938529526_
                      (lambda (_g2938729416_)
                        (if (gx#stx-pair/null? _g2938729416_)
                            (let ((_g34666_
                                   (gx#syntax-split-splice _g2938729416_ '0)))
                              (begin
                                (let ((_g34667_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g34666_)
                                             (##vector-length _g34666_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g34667_ 2)))
                                      (error "Context expects 2 values"
                                             _g34667_)))
                                (let ((_target2939029419_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34666_ 0)))
                                      (_tl2939229422_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34666_ 1))))
                                  (if (gx#stx-null? _tl2939229422_)
                                      (letrec ((_loop2939329425_
                                                (lambda (_hd2939129429_
                                                         _def-usetf2939729432_
                                                         _def-ugetf2939829434_)
                                                  (if (gx#stx-pair?
                                                       _hd2939129429_)
                                                      (let ((_e2939429437_
                                                             (gx#syntax-e
                                                              _hd2939129429_)))
                                                        (let ((_lp-hd2939529441_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2939429437_)))
                      (_lp-tl2939629444_
                       (let () (declare (not safe)) (##cdr _e2939429437_))))
                  (if (gx#stx-pair? _lp-hd2939529441_)
                      (let ((_e2940329447_ (gx#syntax-e _lp-hd2939529441_)))
                        (let ((_hd2940229451_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2940329447_)))
                              (_tl2940129454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2940329447_))))
                          (if (gx#stx-pair? _tl2940129454_)
                              (let ((_e2940629457_
                                     (gx#syntax-e _tl2940129454_)))
                                (let ((_hd2940529461_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2940629457_)))
                                      (_tl2940429464_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2940629457_))))
                                  (if (gx#stx-null? _tl2940429464_)
                                      (let ((__tmp34682
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2940529461_
                                                     _def-usetf2939729432_)))
                                            (__tmp34681
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd2940229451_
                                                     _def-ugetf2939829434_))))
                                        (declare (not safe))
                                        (_loop2939329425_
                                         _lp-tl2939629444_
                                         __tmp34682
                                         __tmp34681))
                                      (let ()
                                        (declare (not safe))
                                        (_g2938629412_ _g2938729416_)))))
                              (let ()
                                (declare (not safe))
                                (_g2938629412_ _g2938729416_)))))
                      (let ()
                        (declare (not safe))
                        (_g2938629412_ _g2938729416_)))))
              (let ((_def-usetf2939929467_ (reverse _def-usetf2939729432_))
                    (_def-ugetf2940029470_ (reverse _def-ugetf2939829434_)))
                ((lambda (_L29473_ _L29475_)
                   (let ()
                     (let ()
                       (let ((__tmp34668
                              (let ((__tmp34680 (gx#datum->syntax '#f 'begin))
                                    (__tmp34669
                                     (let ((__tmp34670
                                            (let ((__tmp34671
                                                   (let ((__tmp34672
                                                          (let ((__tmp34679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2949329502_ _g2949429505_)
                           (let ()
                             (declare (not safe))
                             (cons _g2949329502_ _g2949429505_))))
                        (__tmp34673
                         (let ((__tmp34678
                                (lambda (_g2949529508_ _g2949629511_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2949529508_ _g2949629511_))))
                               (__tmp34674
                                (let ((__tmp34677
                                       (lambda (_g2949729514_ _g2949829517_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2949729514_
                                                 _g2949829517_))))
                                      (__tmp34675
                                       (let ((__tmp34676
                                              (lambda (_g2949929520_
                                                       _g2950029523_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2949929520_
                                                        _g2950029523_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp34676 '() _L29473_))))
                                  (declare (not safe))
                                  (foldr1 __tmp34677 __tmp34675 _L29475_))))
                           (declare (not safe))
                           (foldr1 __tmp34678 __tmp34674 _L29367_))))
                    (declare (not safe))
                    (foldr1 __tmp34679 __tmp34673 _L29369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L29239_
                                                           __tmp34672))))
                                              (declare (not safe))
                                              (cons _L29267_ __tmp34671))))
                                       (declare (not safe))
                                       (cons _L29211_ __tmp34670))))
                                (declare (not safe))
                                (cons __tmp34680 __tmp34669))))
                         (declare (not safe))
                         (_wrap28574_ __tmp34668)))))
                 _def-usetf2939929467_
                 _def-ugetf2940029470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop2939329425_
                                           _target2939029419_
                                           '()
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g2938629412_ _g2938729416_))))))
                            (let ()
                              (declare (not safe))
                              (_g2938629412_ _g2938729416_)))))
                     (__tmp34683
                      (gx#stx-map
                       (lambda (_ref29530_)
                         (let* ((_g2953329552_
                                 (lambda (_g2953429548_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2953429548_)))
                                (_g2953229674_
                                 (lambda (_g2953429556_)
                                   (if (gx#stx-pair? _g2953429556_)
                                       (let ((_e2954029559_
                                              (gx#syntax-e _g2953429556_)))
                                         (let ((_hd2953929563_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2954029559_)))
                                               (_tl2953829566_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2954029559_))))
                                           (if (gx#stx-pair? _tl2953829566_)
                                               (let ((_e2954329569_
                                                      (gx#syntax-e
                                                       _tl2953829566_)))
                                                 (let ((_hd2954229573_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2954329569_)))
                                                       (_tl2954129576_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2954329569_))))
                                                   (if (gx#stx-pair?
                                                        _tl2954129576_)
                                                       (let ((_e2954629579_
                                                              (gx#syntax-e
                                                               _tl2954129576_)))
                                                         (let ((_hd2954529583_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2954629579_)))
                       (_tl2954429586_
                        (let () (declare (not safe)) (##cdr _e2954629579_))))
                   (if (gx#stx-null? _tl2954429586_)
                       ((lambda (_L29589_ _L29591_ _L29592_)
                          (let* ((_g2961029625_
                                  (lambda (_g2961129621_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2961129621_)))
                                 (_g2960929670_
                                  (lambda (_g2961129629_)
                                    (if (gx#stx-pair? _g2961129629_)
                                        (let ((_e2961629632_
                                               (gx#syntax-e _g2961129629_)))
                                          (let ((_hd2961529636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2961629632_)))
                                                (_tl2961429639_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2961629632_))))
                                            (if (gx#stx-pair? _tl2961429639_)
                                                (let ((_e2961929642_
                                                       (gx#syntax-e
                                                        _tl2961429639_)))
                                                  (let ((_hd2961829646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2961929642_)))
                                                        (_tl2961729649_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2961929642_))))
                                                    (if (gx#stx-null?
                                                         _tl2961729649_)
                                                        ((lambda (_L29652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L29654_)
                   (let ()
                     (let ((__tmp34706
                            (let ((__tmp34707
                                   (let ((__tmp34726
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp34708
                                          (let ((__tmp34709
                                                 (let ((__tmp34710
                                                        (let ((__tmp34725
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp34711
                                                               (let ((__tmp34720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp34724
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp34721
                                     (let ((__tmp34722
                                            (let ((__tmp34723
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L29592_ __tmp34723))))
                                       (declare (not safe))
                                       (cons _L28903_ __tmp34722))))
                                (declare (not safe))
                                (cons __tmp34724 __tmp34721)))
                             (__tmp34712
                              (let ((__tmp34713
                                     (let ((__tmp34719
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp34714
                                            (let ((__tmp34715
                                                   (let ((__tmp34716
                                                          (let ((__tmp34718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp34717
                         (let () (declare (not safe)) (cons _L29592_ '()))))
                    (declare (not safe))
                    (cons __tmp34718 __tmp34717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp34716 '()))))
                                              (declare (not safe))
                                              (cons _L28668_ __tmp34715))))
                                       (declare (not safe))
                                       (cons __tmp34719 __tmp34714))))
                                (declare (not safe))
                                (cons __tmp34713 '()))))
                         (declare (not safe))
                         (cons __tmp34720 __tmp34712))))
                  (declare (not safe))
                  (cons __tmp34725 __tmp34711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp34710 '()))))
                                            (declare (not safe))
                                            (cons _L29654_ __tmp34709))))
                                     (declare (not safe))
                                     (cons __tmp34726 __tmp34708))))
                              (declare (not safe))
                              (_wrap28574_ __tmp34707)))
                           (__tmp34684
                            (let ((__tmp34685
                                   (let ((__tmp34686
                                          (let ((__tmp34705
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp34687
                                                 (let ((__tmp34688
                                                        (let ((__tmp34689
                                                               (let ((__tmp34704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp34690
                              (let ((__tmp34699
                                     (let ((__tmp34703
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp34700
                                            (let ((__tmp34701
                                                   (let ((__tmp34702
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L29592_
                                                           __tmp34702))))
                                              (declare (not safe))
                                              (cons _L28903_ __tmp34701))))
                                       (declare (not safe))
                                       (cons __tmp34703 __tmp34700)))
                                    (__tmp34691
                                     (let ((__tmp34692
                                            (let ((__tmp34698
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp34693
                                                   (let ((__tmp34694
                                                          (let ((__tmp34695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp34697 (gx#datum->syntax '#f 'quote))
                               (__tmp34696
                                (let ()
                                  (declare (not safe))
                                  (cons _L29592_ '()))))
                           (declare (not safe))
                           (cons __tmp34697 __tmp34696))))
                    (declare (not safe))
                    (cons __tmp34695 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L28668_
                                                           __tmp34694))))
                                              (declare (not safe))
                                              (cons __tmp34698 __tmp34693))))
                                       (declare (not safe))
                                       (cons __tmp34692 '()))))
                                (declare (not safe))
                                (cons __tmp34699 __tmp34691))))
                         (declare (not safe))
                         (cons __tmp34704 __tmp34690))))
                  (declare (not safe))
                  (cons __tmp34689 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L29652_
                                                         __tmp34688))))
                                            (declare (not safe))
                                            (cons __tmp34705 __tmp34687))))
                                     (declare (not safe))
                                     (_wrap28574_ __tmp34686))))
                              (declare (not safe))
                              (cons __tmp34685 '()))))
                       (declare (not safe))
                       (cons __tmp34706 __tmp34684))))
                 _hd2961829646_
                 _hd2961529636_)
                (let () (declare (not safe)) (_g2961029625_ _g2961129629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2961029625_
                                                   _g2961129629_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2961029625_ _g2961129629_)))))
                                 (__tmp34727
                                  (list (gx#stx-identifier
                                         _L29591_
                                         '"&"
                                         _L29591_)
                                        (gx#stx-identifier
                                         _L29589_
                                         '"&"
                                         _L29589_))))
                            (declare (not safe))
                            (_g2960929670_ __tmp34727)))
                        _hd2954529583_
                        _hd2954229573_
                        _hd2953929563_)
                       (let ()
                         (declare (not safe))
                         (_g2953329552_ _g2953429556_)))))
               (let () (declare (not safe)) (_g2953329552_ _g2953429556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2953329552_
                                                  _g2953429556_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2953329552_ _g2953429556_))))))
                           (declare (not safe))
                           (_g2953229674_ _ref29530_)))
                       _accessible-slots28723_)))
                (declare (not safe))
                (_g2938529526_ __tmp34683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _def-setf2929329361_
                                                  _def-getf2929429364_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop2928729319_
                                    _target2928429313_
                                    '()
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_g2928029306_ _g2928129310_))))))
                     (let ()
                       (declare (not safe))
                       (_g2928029306_ _g2928129310_)))))
              (__tmp34730
               (gx#stx-map
                (lambda (_ref29682_)
                  (let* ((_g2968529704_
                          (lambda (_g2968629700_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2968629700_)))
                         (_g2968429762_
                          (lambda (_g2968629708_)
                            (if (gx#stx-pair? _g2968629708_)
                                (let ((_e2969229711_
                                       (gx#syntax-e _g2968629708_)))
                                  (let ((_hd2969129715_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2969229711_)))
                                        (_tl2969029718_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2969229711_))))
                                    (if (gx#stx-pair? _tl2969029718_)
                                        (let ((_e2969529721_
                                               (gx#syntax-e _tl2969029718_)))
                                          (let ((_hd2969429725_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2969529721_)))
                                                (_tl2969329728_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2969529721_))))
                                            (if (gx#stx-pair? _tl2969329728_)
                                                (let ((_e2969829731_
                                                       (gx#syntax-e
                                                        _tl2969329728_)))
                                                  (let ((_hd2969729735_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2969829731_)))
                                                        (_tl2969629738_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2969829731_))))
                                                    (if (gx#stx-null?
                                                         _tl2969629738_)
                                                        ((lambda (_L29741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L29743_
                          _L29744_)
                   (let ((__tmp34753
                          (let ((__tmp34754
                                 (let ((__tmp34773 (gx#datum->syntax '#f 'def))
                                       (__tmp34755
                                        (let ((__tmp34756
                                               (let ((__tmp34757
                                                      (let ((__tmp34772
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp34758
                                                             (let ((__tmp34767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp34771
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp34768
                                   (let ((__tmp34769
                                          (let ((__tmp34770
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L29744_ __tmp34770))))
                                     (declare (not safe))
                                     (cons _L28903_ __tmp34769))))
                              (declare (not safe))
                              (cons __tmp34771 __tmp34768)))
                           (__tmp34759
                            (let ((__tmp34760
                                   (let ((__tmp34766
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp34761
                                          (let ((__tmp34762
                                                 (let ((__tmp34763
                                                        (let ((__tmp34765
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp34764
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L29744_ '()))))
                  (declare (not safe))
                  (cons __tmp34765 __tmp34764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp34763 '()))))
                                            (declare (not safe))
                                            (cons _L28668_ __tmp34762))))
                                     (declare (not safe))
                                     (cons __tmp34766 __tmp34761))))
                              (declare (not safe))
                              (cons __tmp34760 '()))))
                       (declare (not safe))
                       (cons __tmp34767 __tmp34759))))
                (declare (not safe))
                (cons __tmp34772 __tmp34758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp34757 '()))))
                                          (declare (not safe))
                                          (cons _L29743_ __tmp34756))))
                                   (declare (not safe))
                                   (cons __tmp34773 __tmp34755))))
                            (declare (not safe))
                            (_wrap28574_ __tmp34754)))
                         (__tmp34731
                          (let ((__tmp34732
                                 (let ((__tmp34733
                                        (let ((__tmp34752
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp34734
                                               (let ((__tmp34735
                                                      (let ((__tmp34736
                                                             (let ((__tmp34751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp34737
                            (let ((__tmp34746
                                   (let ((__tmp34750
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp34747
                                          (let ((__tmp34748
                                                 (let ((__tmp34749
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L29744_
                                                         __tmp34749))))
                                            (declare (not safe))
                                            (cons _L28903_ __tmp34748))))
                                     (declare (not safe))
                                     (cons __tmp34750 __tmp34747)))
                                  (__tmp34738
                                   (let ((__tmp34739
                                          (let ((__tmp34745
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp34740
                                                 (let ((__tmp34741
                                                        (let ((__tmp34742
                                                               (let ((__tmp34744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp34743
                              (let ()
                                (declare (not safe))
                                (cons _L29744_ '()))))
                         (declare (not safe))
                         (cons __tmp34744 __tmp34743))))
                  (declare (not safe))
                  (cons __tmp34742 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L28668_
                                                         __tmp34741))))
                                            (declare (not safe))
                                            (cons __tmp34745 __tmp34740))))
                                     (declare (not safe))
                                     (cons __tmp34739 '()))))
                              (declare (not safe))
                              (cons __tmp34746 __tmp34738))))
                       (declare (not safe))
                       (cons __tmp34751 __tmp34737))))
                (declare (not safe))
                (cons __tmp34736 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L29741_ __tmp34735))))
                                          (declare (not safe))
                                          (cons __tmp34752 __tmp34734))))
                                   (declare (not safe))
                                   (_wrap28574_ __tmp34733))))
                            (declare (not safe))
                            (cons __tmp34732 '()))))
                     (declare (not safe))
                     (cons __tmp34753 __tmp34731)))
                 _hd2969729735_
                 _hd2969429725_
                 _hd2969129715_)
                (let () (declare (not safe)) (_g2968529704_ _g2968629708_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2968529704_
                                                   _g2968629708_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2968529704_ _g2968629708_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2968529704_ _g2968629708_))))))
                    (declare (not safe))
                    (_g2968429762_ _ref29682_)))
                _accessible-slots28723_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2927929678_ __tmp34730))))
                                           _g2925329264_)))
                                       (__tmp34774
                                        (let ((__tmp34775
                                               (let ((__tmp34788
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp34776
                                                      (let ((__tmp34777
                                                             (let ((__tmp34778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp34787
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp34779
                                   (let ((__tmp34784
                                          (let ((__tmp34786
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp34785
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L28903_ '()))))
                                            (declare (not safe))
                                            (cons __tmp34786 __tmp34785)))
                                         (__tmp34780
                                          (let ((__tmp34781
                                                 (let ((__tmp34783
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp34782
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L28668_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp34783
                                                         __tmp34782))))
                                            (declare (not safe))
                                            (cons __tmp34781 '()))))
                                     (declare (not safe))
                                     (cons __tmp34784 __tmp34780))))
                              (declare (not safe))
                              (cons __tmp34787 __tmp34779))))
                       (declare (not safe))
                       (cons __tmp34778 '()))))
                (declare (not safe))
                (cons _L28665_ __tmp34777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp34788
                                                       __tmp34776))))
                                          (declare (not safe))
                                          (_wrap28574_ __tmp34775))))
                                  (declare (not safe))
                                  (_g2925129766_ __tmp34774))))
                            _g2922529236_)))
                        (__tmp34789
                         (if (gx#stx-false? _L28666_)
                             (let ((__tmp34813 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp34813 '()))
                             (let ((__tmp34790
                                    (let ((__tmp34812
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp34791
                                           (let ((__tmp34792
                                                  (let ((__tmp34793
                                                         (let ((__tmp34811
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp34794
                        (let ((__tmp34808
                               (let ((__tmp34810
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp34809
                                      (let ()
                                        (declare (not safe))
                                        (cons _L28903_ '()))))
                                 (declare (not safe))
                                 (cons __tmp34810 __tmp34809)))
                              (__tmp34795
                               (let ((__tmp34796
                                      (let ((__tmp34807
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp34797
                                             (let ((__tmp34806
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp34798
                                                    (let ((__tmp34799
                                                           (let ((__tmp34805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp34800
                          (let ((__tmp34804
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp34801
                                 (let ((__tmp34802
                                        (let ((__tmp34803
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp34803 '()))))
                                   (declare (not safe))
                                   (cons _L28668_ __tmp34802))))
                            (declare (not safe))
                            (cons __tmp34804 __tmp34801))))
                     (declare (not safe))
                     (cons __tmp34805 __tmp34800))))
              (declare (not safe))
              (cons __tmp34799 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp34806 __tmp34798))))
                                        (declare (not safe))
                                        (cons __tmp34807 __tmp34797))))
                                 (declare (not safe))
                                 (cons __tmp34796 '()))))
                          (declare (not safe))
                          (cons __tmp34808 __tmp34795))))
                   (declare (not safe))
                   (cons __tmp34811 __tmp34794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp34793 '()))))
                                             (declare (not safe))
                                             (cons _L28666_ __tmp34792))))
                                      (declare (not safe))
                                      (cons __tmp34812 __tmp34791))))
                               (declare (not safe))
                               (_wrap28574_ __tmp34790)))))
                   (declare (not safe))
                   (_g2922329770_ __tmp34789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2919729208_)))
                                                 (__tmp34814
                                                  (let ((__tmp34815
                                                         (let ((__tmp34833
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp34816
                        (let ((__tmp34817
                               (let ((__tmp34818
                                      (let ((__tmp34832
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp34819
                                             (let ((__tmp34821
                                                    (let ((__tmp34831
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp34822
                                                           (let ((__tmp34823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp34824
                                 (let ((__tmp34829
                                        (let ((__tmp34830
                                               (lambda (_g2977729780_
                                                        _g2977829783_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2977729780_
                                                         _g2977829783_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp34830 '() _L28783_)))
                                       (__tmp34825
                                        (let ((__tmp34826
                                               (let ((__tmp34827
                                                      (let ((__tmp34828
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L29015_ '()))))
                (declare (not safe))
                (cons _L28987_ __tmp34828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L28959_ __tmp34827))))
                                          (declare (not safe))
                                          (cons _L28875_ __tmp34826))))
                                   (declare (not safe))
                                   (cons __tmp34829 __tmp34825))))
                            (declare (not safe))
                            (cons _L28931_ __tmp34824))))
                     (declare (not safe))
                     (cons _L28819_ __tmp34823))))
              (declare (not safe))
              (cons __tmp34831 __tmp34822)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp34820
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L29183_ '()))))
                                               (declare (not safe))
                                               (cons __tmp34821 __tmp34820))))
                                        (declare (not safe))
                                        (cons __tmp34832 __tmp34819))))
                                 (declare (not safe))
                                 (cons __tmp34818 '()))))
                          (declare (not safe))
                          (cons _L28668_ __tmp34817))))
                   (declare (not safe))
                   (cons __tmp34833 __tmp34816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap28574_ __tmp34815))))
                                            (declare (not safe))
                                            (_g2919529774_ __tmp34814))))
                                      _g2916929180_)))
                                  (__tmp34834
                                   (let ((__tmp34855
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp34835
                                          (let ((__tmp34852
                                                 (let ((__tmp34854
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp34853
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L28819_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp34854
                                                         __tmp34853)))
                                                (__tmp34836
                                                 (let ((__tmp34849
                                                        (let ((__tmp34851
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp34850
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L28847_ '()))))
                  (declare (not safe))
                  (cons __tmp34851 __tmp34850)))
               (__tmp34837
                (let ((__tmp34838
                       (let ((__tmp34844
                              (let ((__tmp34848 (gx#datum->syntax '#f 'quote))
                                    (__tmp34845
                                     (let ((__tmp34846
                                            (let ((__tmp34847
                                                   (lambda (_g2978929792_
                                                            _g2979029795_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2978929792_
                                                             _g2979029795_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp34847
                                                      '()
                                                      _L28783_))))
                                       (declare (not safe))
                                       (cons __tmp34846 '()))))
                                (declare (not safe))
                                (cons __tmp34848 __tmp34845)))
                             (__tmp34839
                              (let ((__tmp34840
                                     (let ((__tmp34841
                                            (let ((__tmp34843
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp34842
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L28875_ '()))))
                                              (declare (not safe))
                                              (cons __tmp34843 __tmp34842))))
                                       (declare (not safe))
                                       (cons __tmp34841 '()))))
                                (declare (not safe))
                                (cons _L29127_ __tmp34840))))
                         (declare (not safe))
                         (cons __tmp34844 __tmp34839))))
                  (declare (not safe))
                  (cons _L29155_ __tmp34838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp34849
                                                         __tmp34837))))
                                            (declare (not safe))
                                            (cons __tmp34852 __tmp34836))))
                                     (declare (not safe))
                                     (cons __tmp34855 __tmp34835))))
                             (declare (not safe))
                             (_g2916729786_ __tmp34834))))
                       _g2914129152_)))
                   (__tmp34856
                    (let ((__tmp34857 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp34857 _L28667_))))
              (declare (not safe))
              (_g2913929798_ __tmp34856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2911329124_)))
                                            (__tmp34858
                                             (if (gx#stx-e _metaclass28726_)
                                                 (let* ((_g2980629814_
                                                         (lambda (_g2980729810_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g2980729810_)))
                                                        (_g2980529833_
                                                         (lambda (_g2980729818_)
                                                           ((lambda (_L29821_)
                                                              (let ()
                                                                (let ((__tmp34867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp34859
                               (let ((__tmp34862
                                      (let ((__tmp34866
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp34863
                                             (let ((__tmp34864
                                                    (let ((__tmp34865
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L29821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp34865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp34864))))
                                        (declare (not safe))
                                        (cons __tmp34866 __tmp34863)))
                                     (__tmp34860
                                      (let ((__tmp34861
                                             (let ()
                                               (declare (not safe))
                                               (cons _L29099_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp34861))))
                                 (declare (not safe))
                                 (cons __tmp34862 __tmp34860))))
                          (declare (not safe))
                          (cons __tmp34867 __tmp34859))))
                    _g2980729818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2980529833_
                                                    _metaclass28726_))
                                                 _L29099_)))
                                       (declare (not safe))
                                       (_g2911129802_ __tmp34858))))
                                 _g2908529096_)))
                             (__tmp34868
                              (if _struct?28706_
                                  (let ((__tmp34875
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp34869
                                         (let ((__tmp34872
                                                (let ((__tmp34874
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp34873
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp34874
                                                        __tmp34873)))
                                               (__tmp34870
                                                (let ((__tmp34871
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L29071_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp34871))))
                                           (declare (not safe))
                                           (cons __tmp34872 __tmp34870))))
                                    (declare (not safe))
                                    (cons __tmp34875 __tmp34869))
                                  _L29071_)))
                        (declare (not safe))
                        (_g2908329837_ __tmp34868))))
                  _g2905729068_)))
              (__tmp34876
               (if (gx#stx-e _L28987_)
                   (let ((__tmp34883 (gx#datum->syntax '#f '@list))
                         (__tmp34877
                          (let ((__tmp34880
                                 (let ((__tmp34882
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp34881
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp34882 __tmp34881)))
                                (__tmp34878
                                 (let ((__tmp34879
                                        (let ()
                                          (declare (not safe))
                                          (cons _L29043_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp34879))))
                            (declare (not safe))
                            (cons __tmp34880 __tmp34878))))
                     (declare (not safe))
                     (cons __tmp34883 __tmp34877))
                   _L29043_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2905529841_ __tmp34876))))
                                           _g2902929040_)))
                                       (__tmp34884
                                        (let ((_$e29849_
                                               (gx#stx-getq
                                                'properties:
                                                _L28663_)))
                                          (if _$e29849_
                                              _$e29849_
                                              (let ((__tmp34885
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp34885 '()))))))
                                  (declare (not safe))
                                  (_g2902729845_ __tmp34884))))
                            _g2900129012_)))
                        (__tmp34886
                         (if (gx#stx-e _metaclass28726_)
                             (gx#core-quote-syntax _metaclass28726_)
                             '#f)))
                   (declare (not safe))
                   (_g2899929853_ __tmp34886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2897328984_)))
                                                 (__tmp34887
                                                  (gx#stx-getq
                                                   'final:
                                                   _L28663_)))
                                            (declare (not safe))
                                            (_g2897129857_ __tmp34887))))
                                      _g2894528956_))))
                             (declare (not safe))
                             (_g2894329861_ _struct?28706_))))
                       _g2891728928_)))
                   (__tmp34888
                    (append (gx#stx-map gx#core-quote-syntax _L28667_)
                            (let ((__tmp34889
                                   (gx#core-quote-syntax 'object::t)))
                              (declare (not safe))
                              (cons __tmp34889 '())))))
              (declare (not safe))
              (_g2891529865_ __tmp34888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2888928900_)))
                                            (__tmp34890
                                             (gx#core-quote-syntax _L28668_)))
                                       (declare (not safe))
                                       (_g2888729869_ __tmp34890))))
                                 _g2886128872_)))
                             (__tmp34891 (gx#stx-getq 'constructor: _L28663_)))
                        (declare (not safe))
                        (_g2885929873_ __tmp34891))))
                  _g2883328844_)))
              (__tmp34892
               (let ((_$e29881_ (gx#stx-getq 'name: _L28663_)))
                 (if _$e29881_ _$e29881_ _L28668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2883129877_ __tmp34892))))
                                           _g2880528816_)))
                                       (__tmp34893
                                        (let ((_$e29889_
                                               (gx#stx-getq 'id: _L28663_)))
                                          (if _$e29889_
                                              _$e29889_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                                 _L28668_))))))
                                  (declare (not safe))
                                  (_g2880329885_ __tmp34893))))
                            _slot2874028779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_loop2873528759_
                                                      _target2873228753_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2872928746_
                                                    _g2873028750_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2872928746_ _g2873028750_)))))
                                (__tmp34895
                                 (gx#stx-map _slot-name28576_ _slots28713_)))
                           (declare (not safe))
                           (_g2872829893_ __tmp34895))
                         (let ()
                           (declare (not safe))
                           (_g2857928606_ _g2858028610_))))
                   _tl2859828660_
                   _hd2859928657_
                   _hd2859628647_
                   _hd2859328637_
                   _hd2859028627_)))
              (let () (declare (not safe)) (_g2857928606_ _g2858028610_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2857928606_
                                                 _g2858028610_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2857928606_ _g2858028610_)))))
                              (let ()
                                (declare (not safe))
                                (_g2857928606_ _g2858028610_)))))
                      (let ()
                        (declare (not safe))
                        (_g2857928606_ _g2858028610_))))))
          (declare (not safe))
          (_g2857829897_ _stx28570_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_stx30009_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop~MOP-1[1]#generate-typedef| _stx30009_ '#t))))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_stx30012_)
      (let ()
        (declare (not safe))
        (|gerbil/core/mop~MOP-1[1]#generate-typedef| _stx30012_ '#f)))))
