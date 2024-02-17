(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202957_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202959_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202961_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202966_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202969_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202974_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202977_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202982_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202985_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202990_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202993_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx197747_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx197747_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx197750_)
        (let* ((_g197753197777_
                (lambda (_g197754197773_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g197754197773_))))
               (_g197752198080_
                (lambda (_g197754197781_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g197754197781_))
                      (let ((_e197759197784_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g197754197781_))))
                        (let ((_hd197758197788_
                               (let ()
                                 (declare (not safe))
                                 (##car _e197759197784_)))
                              (_tl197757197791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e197759197784_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl197757197791_))
                              (let ((_e197762197794_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl197757197791_))))
                                (let ((_hd197761197798_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e197762197794_)))
                                      (_tl197760197801_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e197762197794_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl197760197801_))
                                      (let ((_g202928_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl197760197801_
                                                '0))))
                                        (begin
                                          (let ((_g202929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202928_)
                                                       (##vector-length
                                                        _g202928_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202929_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202929_)))
                                          (let ((_target197763197804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202928_ 0)))
                                                (_tl197765197807_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202928_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl197765197807_))
                                                (letrec ((_loop197766197810_
                                                          (lambda (_hd197764197814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause197770197817_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd197764197814_))
                        (let ((_e197767197820_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd197764197814_))))
                          (let ((_lp-hd197768197824_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e197767197820_)))
                                (_lp-tl197769197827_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e197767197820_))))
                            (_loop197766197810_
                             _lp-tl197769197827_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd197768197824_
                                     _clause197770197817_)))))
                        (let ((_clause197771197830_
                               (reverse _clause197770197817_)))
                          ((lambda (_L197834_ _L197836_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L197836_))
                                 (let* ((_g197855197872_
                                         (lambda (_g197856197868_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g197856197868_))))
                                        (_g197854197933_
                                         (lambda (_g197856197876_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g197856197876_))
                                               (let ((_g202930_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g197856197876_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202931_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202930_)
                        (##vector-length _g202930_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202931_ 2)))
                 (error "Context expects 2 values" _g202931_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target197858197879_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202930_
                                                             0)))
                                                         (_tl197860197882_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202930_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl197860197882_))
                                                         (letrec ((_loop197861197885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd197859197889_ _clause197865197892_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd197859197889_))
                                 (let ((_e197862197895_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd197859197889_))))
                                   (let ((_lp-hd197863197899_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e197862197895_)))
                                         (_lp-tl197864197902_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e197862197895_))))
                                     (_loop197861197885_
                                      _lp-tl197864197902_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd197863197899_
                                              _clause197865197892_)))))
                                 (let ((_clause197866197905_
                                        (reverse _clause197865197892_)))
                                   ((lambda (_L197909_)
                                      (let ()
                                        (let ((__tmp202943
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp202932
                                               (let ((__tmp202941
                                                      (let ((__tmp202942
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp202942 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp202933
                                                      (let ((__tmp202934
                                                             (let ((__tmp202940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp202935
                            (let ((__tmp202939
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp202936
                                   (let ((__tmp202937
                                          (let ((__tmp202938
                                                 (lambda (_g197924197927_
                                                          _g197925197930_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g197924197927_
                                                           _g197925197930_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp202938
                                                    '()
                                                    _L197909_))))
                                     (declare (not safe))
                                     (cons _L197836_ __tmp202937))))
                              (declare (not safe))
                              (cons __tmp202939 __tmp202936))))
                       (declare (not safe))
                       (cons __tmp202940 __tmp202935))))
                (declare (not safe))
                (cons __tmp202934 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp202941
                                                       __tmp202933))))
                                          (declare (not safe))
                                          (cons __tmp202943 __tmp202932))))
                                    _clause197866197905_))))))
                   (_loop197861197885_ _target197858197879_ '()))
                 (_g197855197872_ _g197856197876_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g197855197872_
                                                _g197856197876_)))))
                                   (_g197854197933_
                                    (let ((__tmp202946
                                           (lambda (_clause197937_)
                                             (let* ((___stx202874202875_
                                                     _clause197937_)
                                                    (_g197941197968_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx202874202875_)))))
                                               (let ((___kont202877202878_
                                                      (lambda (_L198053_
                                                               _L198055_)
                                                        (let ((__tmp202947
                                                               (let ((__tmp202948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp202950
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp202949
                                     (let ()
                                       (declare (not safe))
                                       (cons _L198053_ '()))))
                                (declare (not safe))
                                (cons __tmp202950 __tmp202949))))
                         (declare (not safe))
                         (cons __tmp202948 '()))))
                  (declare (not safe))
                  (cons _L198055_ __tmp202947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont202879202880_
                                                      (lambda (_L198005_
                                                               _L198007_
                                                               _L198008_)
                                                        (let ((__tmp202951
                                                               (let ((__tmp202952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp202953
                                     (let ((__tmp202955
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp202954
                                            (let ()
                                              (declare (not safe))
                                              (cons _L198005_ '()))))
                                       (declare (not safe))
                                       (cons __tmp202955 __tmp202954))))
                                (declare (not safe))
                                (cons __tmp202953 '()))))
                         (declare (not safe))
                         (cons _L198007_ __tmp202952))))
                  (declare (not safe))
                  (cons _L198008_ __tmp202951)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx202874202875_))
                                                     (let ((_e197947198033_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx202874202875_))))
                                                       (let ((_tl197945198040_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e197947198033_)))
                     (_hd197946198037_
                      (let () (declare (not safe)) (##car _e197947198033_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl197945198040_))
                     (let ((_e197950198043_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl197945198040_))))
                       (let ((_tl197948198050_
                              (let ()
                                (declare (not safe))
                                (##cdr _e197950198043_)))
                             (_hd197949198047_
                              (let ()
                                (declare (not safe))
                                (##car _e197950198043_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl197948198050_))
                             (___kont202877202878_
                              _hd197949198047_
                              _hd197946198037_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl197948198050_))
                                 (let ((_e197962197995_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl197948198050_))))
                                   (let ((_tl197960198002_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e197962197995_)))
                                         (_hd197961197999_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e197962197995_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl197960198002_))
                                         (___kont202879202880_
                                          _hd197961197999_
                                          _hd197949198047_
                                          _hd197946198037_)
                                         (let ()
                                           (declare (not safe))
                                           (_g197941197968_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g197941197968_))))))
                     (let () (declare (not safe)) (_g197941197968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g197941197968_)))))))
                                          (__tmp202944
                                           (let ((__tmp202945
                                                  (lambda (_g198071198074_
                                                           _g198072198077_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g198071198074_
                                                            _g198072198077_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp202945
                                                     '()
                                                     _L197834_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp202946 __tmp202944))))
                                 (_g197753197777_ _g197754197781_)))
                           _clause197771197830_
                           _hd197761197798_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop197766197810_
                                                   _target197763197804_
                                                   '()))
                                                (_g197753197777_
                                                 _g197754197781_)))))
                                      (_g197753197777_ _g197754197781_))))
                              (_g197753197777_ _g197754197781_))))
                      (_g197753197777_ _g197754197781_)))))
          (_g197752198080_ _stx197750_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj202917
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
           __obj202917
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202956 |gxc[1]#_g202957_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           __tmp202956
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202958 |gxc[1]#_g202959_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           __tmp202958
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202960 |gxc[1]#_g202961_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           __tmp202960
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202962
               (let ((__tmp202967
                      (let ((__tmp202968 |gxc[1]#_g202969_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202968)))
                     (__tmp202963
                      (let ((__tmp202964
                             (let ((__tmp202965 |gxc[1]#_g202966_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202965))))
                        (declare (not safe))
                        (cons __tmp202964 '()))))
                 (declare (not safe))
                 (cons __tmp202967 __tmp202963))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           __tmp202962
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202970
               (let ((__tmp202975
                      (let ((__tmp202976 |gxc[1]#_g202977_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202976)))
                     (__tmp202971
                      (let ((__tmp202972
                             (let ((__tmp202973 |gxc[1]#_g202974_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202973))))
                        (declare (not safe))
                        (cons __tmp202972 '()))))
                 (declare (not safe))
                 (cons __tmp202975 __tmp202971))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           __tmp202970
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202978
               (let ((__tmp202983
                      (let ((__tmp202984 |gxc[1]#_g202985_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202984)))
                     (__tmp202979
                      (let ((__tmp202980
                             (let ((__tmp202981 |gxc[1]#_g202982_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202981))))
                        (declare (not safe))
                        (cons __tmp202980 '()))))
                 (declare (not safe))
                 (cons __tmp202983 __tmp202979))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           __tmp202978
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202986
               (let ((__tmp202991
                      (let ((__tmp202992 |gxc[1]#_g202993_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202992)))
                     (__tmp202987
                      (let ((__tmp202988
                             (let ((__tmp202989 |gxc[1]#_g202990_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202989))))
                        (declare (not safe))
                        (cons __tmp202988 '()))))
                 (declare (not safe))
                 (cons __tmp202991 __tmp202987))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202917
           __tmp202986
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj202917))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx198086_)
        (let* ((_g198090198104_
                (lambda (_g198091198100_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g198091198100_))))
               (_g198089198145_
                (lambda (_g198091198108_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g198091198108_))
                      (let ((_e198095198111_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g198091198108_))))
                        (let ((_hd198094198115_
                               (let ()
                                 (declare (not safe))
                                 (##car _e198095198111_)))
                              (_tl198093198118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e198095198111_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl198093198118_))
                              (let ((_e198098198121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl198093198118_))))
                                (let ((_hd198097198125_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e198098198121_)))
                                      (_tl198096198128_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e198098198121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl198096198128_))
                                      ((lambda (_L198131_)
                                         (let ((__tmp203001
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp202994
                                                (let ((__tmp203000
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp202995
                                                       (let ((__tmp202996
                                                              (let ((__tmp202999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp202997
                             (let ((__tmp202998
                                    (let ()
                                      (declare (not safe))
                                      (cons _L198131_ '()))))
                               (declare (not safe))
                               (cons '() __tmp202998))))
                        (declare (not safe))
                        (cons __tmp202999 __tmp202997))))
                 (declare (not safe))
                 (cons __tmp202996 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp203000
                                                        __tmp202995))))
                                           (declare (not safe))
                                           (cons __tmp203001 __tmp202994)))
                                       _hd198097198125_)
                                      (_g198090198104_ _g198091198108_))))
                              (_g198090198104_ _g198091198108_))))
                      (_g198090198104_ _g198091198108_)))))
          (_g198089198145_ _$stx198086_))))))
