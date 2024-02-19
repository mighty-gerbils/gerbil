(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202120_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202122_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202124_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202129_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202132_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202137_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202140_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202145_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202148_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202153_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202156_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx197491_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx197491_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx197494_)
        (let* ((_g197497197521_
                (lambda (_g197498197517_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g197498197517_))))
               (_g197496197824_
                (lambda (_g197498197525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g197498197525_))
                      (let ((_e197503197528_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g197498197525_))))
                        (let ((_hd197502197532_
                               (let ()
                                 (declare (not safe))
                                 (##car _e197503197528_)))
                              (_tl197501197535_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e197503197528_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl197501197535_))
                              (let ((_e197506197538_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl197501197535_))))
                                (let ((_hd197505197542_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e197506197538_)))
                                      (_tl197504197545_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e197506197538_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl197504197545_))
                                      (let ((_g202091_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl197504197545_
                                                '0))))
                                        (begin
                                          (let ((_g202092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202091_)
                                                       (##vector-length
                                                        _g202091_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202092_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202092_)))
                                          (let ((_target197507197548_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202091_ 0)))
                                                (_tl197509197551_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202091_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl197509197551_))
                                                (letrec ((_loop197510197554_
                                                          (lambda (_hd197508197558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause197514197561_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd197508197558_))
                        (let ((_e197511197564_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd197508197558_))))
                          (let ((_lp-hd197512197568_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e197511197564_)))
                                (_lp-tl197513197571_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e197511197564_))))
                            (_loop197510197554_
                             _lp-tl197513197571_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd197512197568_
                                     _clause197514197561_)))))
                        (let ((_clause197515197574_
                               (reverse _clause197514197561_)))
                          ((lambda (_L197578_ _L197580_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L197580_))
                                 (let* ((_g197599197616_
                                         (lambda (_g197600197612_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g197600197612_))))
                                        (_g197598197677_
                                         (lambda (_g197600197620_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g197600197620_))
                                               (let ((_g202093_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g197600197620_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202094_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202093_)
                        (##vector-length _g202093_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202094_ 2)))
                 (error "Context expects 2 values" _g202094_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target197602197623_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202093_
                                                             0)))
                                                         (_tl197604197626_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202093_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl197604197626_))
                                                         (letrec ((_loop197605197629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd197603197633_ _clause197609197636_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd197603197633_))
                                 (let ((_e197606197639_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd197603197633_))))
                                   (let ((_lp-hd197607197643_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e197606197639_)))
                                         (_lp-tl197608197646_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e197606197639_))))
                                     (_loop197605197629_
                                      _lp-tl197608197646_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd197607197643_
                                              _clause197609197636_)))))
                                 (let ((_clause197610197649_
                                        (reverse _clause197609197636_)))
                                   ((lambda (_L197653_)
                                      (let ()
                                        (let ((__tmp202106
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp202095
                                               (let ((__tmp202104
                                                      (let ((__tmp202105
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp202105 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp202096
                                                      (let ((__tmp202097
                                                             (let ((__tmp202103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp202098
                            (let ((__tmp202102
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp202099
                                   (let ((__tmp202100
                                          (let ((__tmp202101
                                                 (lambda (_g197668197671_
                                                          _g197669197674_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g197668197671_
                                                           _g197669197674_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp202101
                                                    '()
                                                    _L197653_))))
                                     (declare (not safe))
                                     (cons _L197580_ __tmp202100))))
                              (declare (not safe))
                              (cons __tmp202102 __tmp202099))))
                       (declare (not safe))
                       (cons __tmp202103 __tmp202098))))
                (declare (not safe))
                (cons __tmp202097 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp202104
                                                       __tmp202096))))
                                          (declare (not safe))
                                          (cons __tmp202106 __tmp202095))))
                                    _clause197610197649_))))))
                   (_loop197605197629_ _target197602197623_ '()))
                 (_g197599197616_ _g197600197620_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g197599197616_
                                                _g197600197620_)))))
                                   (_g197598197677_
                                    (let ((__tmp202109
                                           (lambda (_clause197681_)
                                             (let* ((___stx202036202037_
                                                     _clause197681_)
                                                    (_g197685197712_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx202036202037_)))))
                                               (let ((___kont202039202040_
                                                      (lambda (_L197797_
                                                               _L197799_)
                                                        (let ((__tmp202110
                                                               (let ((__tmp202111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp202113
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp202112
                                     (let ()
                                       (declare (not safe))
                                       (cons _L197797_ '()))))
                                (declare (not safe))
                                (cons __tmp202113 __tmp202112))))
                         (declare (not safe))
                         (cons __tmp202111 '()))))
                  (declare (not safe))
                  (cons _L197799_ __tmp202110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont202041202042_
                                                      (lambda (_L197749_
                                                               _L197751_
                                                               _L197752_)
                                                        (let ((__tmp202114
                                                               (let ((__tmp202115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp202116
                                     (let ((__tmp202118
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp202117
                                            (let ()
                                              (declare (not safe))
                                              (cons _L197749_ '()))))
                                       (declare (not safe))
                                       (cons __tmp202118 __tmp202117))))
                                (declare (not safe))
                                (cons __tmp202116 '()))))
                         (declare (not safe))
                         (cons _L197751_ __tmp202115))))
                  (declare (not safe))
                  (cons _L197752_ __tmp202114)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx202036202037_))
                                                     (let ((_e197691197777_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx202036202037_))))
                                                       (let ((_tl197689197784_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e197691197777_)))
                     (_hd197690197781_
                      (let () (declare (not safe)) (##car _e197691197777_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl197689197784_))
                     (let ((_e197694197787_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl197689197784_))))
                       (let ((_tl197692197794_
                              (let ()
                                (declare (not safe))
                                (##cdr _e197694197787_)))
                             (_hd197693197791_
                              (let ()
                                (declare (not safe))
                                (##car _e197694197787_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl197692197794_))
                             (___kont202039202040_
                              _hd197693197791_
                              _hd197690197781_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl197692197794_))
                                 (let ((_e197706197739_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl197692197794_))))
                                   (let ((_tl197704197746_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e197706197739_)))
                                         (_hd197705197743_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e197706197739_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl197704197746_))
                                         (___kont202041202042_
                                          _hd197705197743_
                                          _hd197693197791_
                                          _hd197690197781_)
                                         (let ()
                                           (declare (not safe))
                                           (_g197685197712_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g197685197712_))))))
                     (let () (declare (not safe)) (_g197685197712_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g197685197712_)))))))
                                          (__tmp202107
                                           (let ((__tmp202108
                                                  (lambda (_g197815197818_
                                                           _g197816197821_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g197815197818_
                                                            _g197816197821_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp202108
                                                     '()
                                                     _L197578_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp202109 __tmp202107))))
                                 (_g197497197521_ _g197498197525_)))
                           _clause197515197574_
                           _hd197505197542_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop197510197554_
                                                   _target197507197548_
                                                   '()))
                                                (_g197497197521_
                                                 _g197498197525_)))))
                                      (_g197497197521_ _g197498197525_))))
                              (_g197497197521_ _g197498197525_))))
                      (_g197497197521_ _g197498197525_)))))
          (_g197496197824_ _stx197494_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj202079
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202119 |gxc[1]#_g202120_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           __tmp202119
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202121 |gxc[1]#_g202122_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           __tmp202121
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202123 |gxc[1]#_g202124_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           __tmp202123
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202125
               (let ((__tmp202130
                      (let ((__tmp202131 |gxc[1]#_g202132_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202131)))
                     (__tmp202126
                      (let ((__tmp202127
                             (let ((__tmp202128 |gxc[1]#_g202129_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202128))))
                        (declare (not safe))
                        (cons __tmp202127 '()))))
                 (declare (not safe))
                 (cons __tmp202130 __tmp202126))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           __tmp202125
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202133
               (let ((__tmp202138
                      (let ((__tmp202139 |gxc[1]#_g202140_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202139)))
                     (__tmp202134
                      (let ((__tmp202135
                             (let ((__tmp202136 |gxc[1]#_g202137_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202136))))
                        (declare (not safe))
                        (cons __tmp202135 '()))))
                 (declare (not safe))
                 (cons __tmp202138 __tmp202134))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           __tmp202133
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202141
               (let ((__tmp202146
                      (let ((__tmp202147 |gxc[1]#_g202148_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202147)))
                     (__tmp202142
                      (let ((__tmp202143
                             (let ((__tmp202144 |gxc[1]#_g202145_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202144))))
                        (declare (not safe))
                        (cons __tmp202143 '()))))
                 (declare (not safe))
                 (cons __tmp202146 __tmp202142))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           __tmp202141
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202149
               (let ((__tmp202154
                      (let ((__tmp202155 |gxc[1]#_g202156_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202155)))
                     (__tmp202150
                      (let ((__tmp202151
                             (let ((__tmp202152 |gxc[1]#_g202153_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202152))))
                        (declare (not safe))
                        (cons __tmp202151 '()))))
                 (declare (not safe))
                 (cons __tmp202154 __tmp202150))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202079
           __tmp202149
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj202079))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx197830_)
        (let* ((_g197834197848_
                (lambda (_g197835197844_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g197835197844_))))
               (_g197833197889_
                (lambda (_g197835197852_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g197835197852_))
                      (let ((_e197839197855_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g197835197852_))))
                        (let ((_hd197838197859_
                               (let ()
                                 (declare (not safe))
                                 (##car _e197839197855_)))
                              (_tl197837197862_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e197839197855_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl197837197862_))
                              (let ((_e197842197865_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl197837197862_))))
                                (let ((_hd197841197869_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e197842197865_)))
                                      (_tl197840197872_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e197842197865_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl197840197872_))
                                      ((lambda (_L197875_)
                                         (let ((__tmp202164
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp202157
                                                (let ((__tmp202163
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp202158
                                                       (let ((__tmp202159
                                                              (let ((__tmp202162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp202160
                             (let ((__tmp202161
                                    (let ()
                                      (declare (not safe))
                                      (cons _L197875_ '()))))
                               (declare (not safe))
                               (cons '() __tmp202161))))
                        (declare (not safe))
                        (cons __tmp202162 __tmp202160))))
                 (declare (not safe))
                 (cons __tmp202159 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp202163
                                                        __tmp202158))))
                                           (declare (not safe))
                                           (cons __tmp202164 __tmp202157)))
                                       _hd197841197869_)
                                      (_g197834197848_ _g197835197852_))))
                              (_g197834197848_ _g197835197852_))))
                      (_g197834197848_ _g197835197852_)))))
          (_g197833197889_ _$stx197830_))))))
