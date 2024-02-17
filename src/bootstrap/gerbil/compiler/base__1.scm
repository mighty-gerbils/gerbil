(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g190009_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190011_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190013_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190018_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190021_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190026_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190029_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190034_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190037_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190042_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190045_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx185300_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx185300_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx185303_)
        (let* ((_g185306185330_
                (lambda (_g185307185326_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g185307185326_))))
               (_g185305185633_
                (lambda (_g185307185334_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g185307185334_))
                      (let ((_e185312185337_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g185307185334_))))
                        (let ((_hd185311185341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e185312185337_)))
                              (_tl185310185344_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e185312185337_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl185310185344_))
                              (let ((_e185315185347_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl185310185344_))))
                                (let ((_hd185314185351_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e185315185347_)))
                                      (_tl185313185354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e185315185347_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl185313185354_))
                                      (let ((_g189980_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl185313185354_
                                                '0))))
                                        (begin
                                          (let ((_g189981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g189980_)
                                                       (##vector-length
                                                        _g189980_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g189981_ 2)))
                                                (error "Context expects 2 values"
                                                       _g189981_)))
                                          (let ((_target185316185357_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g189980_ 0)))
                                                (_tl185318185360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g189980_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl185318185360_))
                                                (letrec ((_loop185319185363_
                                                          (lambda (_hd185317185367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause185323185370_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd185317185367_))
                        (let ((_e185320185373_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd185317185367_))))
                          (let ((_lp-hd185321185377_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e185320185373_)))
                                (_lp-tl185322185380_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e185320185373_))))
                            (_loop185319185363_
                             _lp-tl185322185380_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd185321185377_
                                     _clause185323185370_)))))
                        (let ((_clause185324185383_
                               (reverse _clause185323185370_)))
                          ((lambda (_L185387_ _L185389_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L185389_))
                                 (let* ((_g185408185425_
                                         (lambda (_g185409185421_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g185409185421_))))
                                        (_g185407185486_
                                         (lambda (_g185409185429_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g185409185429_))
                                               (let ((_g189982_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g185409185429_
                                                         '0))))
                                                 (begin
                                                   (let ((_g189983_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g189982_)
                        (##vector-length _g189982_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g189983_ 2)))
                 (error "Context expects 2 values" _g189983_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target185411185432_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g189982_
                                                             0)))
                                                         (_tl185413185435_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g189982_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl185413185435_))
                                                         (letrec ((_loop185414185438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd185412185442_ _clause185418185445_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd185412185442_))
                                 (let ((_e185415185448_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd185412185442_))))
                                   (let ((_lp-hd185416185452_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e185415185448_)))
                                         (_lp-tl185417185455_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e185415185448_))))
                                     (_loop185414185438_
                                      _lp-tl185417185455_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd185416185452_
                                              _clause185418185445_)))))
                                 (let ((_clause185419185458_
                                        (reverse _clause185418185445_)))
                                   ((lambda (_L185462_)
                                      (let ()
                                        (let ((__tmp189995
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp189984
                                               (let ((__tmp189993
                                                      (let ((__tmp189994
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp189994 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189985
                                                      (let ((__tmp189986
                                                             (let ((__tmp189992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp189987
                            (let ((__tmp189991
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp189988
                                   (let ((__tmp189989
                                          (let ((__tmp189990
                                                 (lambda (_g185477185480_
                                                          _g185478185483_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g185477185480_
                                                           _g185478185483_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp189990
                                                    '()
                                                    _L185462_))))
                                     (declare (not safe))
                                     (cons _L185389_ __tmp189989))))
                              (declare (not safe))
                              (cons __tmp189991 __tmp189988))))
                       (declare (not safe))
                       (cons __tmp189992 __tmp189987))))
                (declare (not safe))
                (cons __tmp189986 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp189993
                                                       __tmp189985))))
                                          (declare (not safe))
                                          (cons __tmp189995 __tmp189984))))
                                    _clause185419185458_))))))
                   (_loop185414185438_ _target185411185432_ '()))
                 (_g185408185425_ _g185409185429_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g185408185425_
                                                _g185409185429_)))))
                                   (_g185407185486_
                                    (let ((__tmp189998
                                           (lambda (_clause185490_)
                                             (let* ((___stx189926189927_
                                                     _clause185490_)
                                                    (_g185494185521_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx189926189927_)))))
                                               (let ((___kont189929189930_
                                                      (lambda (_L185606_
                                                               _L185608_)
                                                        (let ((__tmp189999
                                                               (let ((__tmp190000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp190002
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp190001
                                     (let ()
                                       (declare (not safe))
                                       (cons _L185606_ '()))))
                                (declare (not safe))
                                (cons __tmp190002 __tmp190001))))
                         (declare (not safe))
                         (cons __tmp190000 '()))))
                  (declare (not safe))
                  (cons _L185608_ __tmp189999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont189931189932_
                                                      (lambda (_L185558_
                                                               _L185560_
                                                               _L185561_)
                                                        (let ((__tmp190003
                                                               (let ((__tmp190004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp190005
                                     (let ((__tmp190007
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp190006
                                            (let ()
                                              (declare (not safe))
                                              (cons _L185558_ '()))))
                                       (declare (not safe))
                                       (cons __tmp190007 __tmp190006))))
                                (declare (not safe))
                                (cons __tmp190005 '()))))
                         (declare (not safe))
                         (cons _L185560_ __tmp190004))))
                  (declare (not safe))
                  (cons _L185561_ __tmp190003)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx189926189927_))
                                                     (let ((_e185500185586_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx189926189927_))))
                                                       (let ((_tl185498185593_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e185500185586_)))
                     (_hd185499185590_
                      (let () (declare (not safe)) (##car _e185500185586_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl185498185593_))
                     (let ((_e185503185596_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl185498185593_))))
                       (let ((_tl185501185603_
                              (let ()
                                (declare (not safe))
                                (##cdr _e185503185596_)))
                             (_hd185502185600_
                              (let ()
                                (declare (not safe))
                                (##car _e185503185596_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl185501185603_))
                             (___kont189929189930_
                              _hd185502185600_
                              _hd185499185590_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl185501185603_))
                                 (let ((_e185515185548_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl185501185603_))))
                                   (let ((_tl185513185555_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e185515185548_)))
                                         (_hd185514185552_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e185515185548_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl185513185555_))
                                         (___kont189931189932_
                                          _hd185514185552_
                                          _hd185502185600_
                                          _hd185499185590_)
                                         (let ()
                                           (declare (not safe))
                                           (_g185494185521_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g185494185521_))))))
                     (let () (declare (not safe)) (_g185494185521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g185494185521_)))))))
                                          (__tmp189996
                                           (let ((__tmp189997
                                                  (lambda (_g185624185627_
                                                           _g185625185630_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g185624185627_
                                                            _g185625185630_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp189997
                                                     '()
                                                     _L185387_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp189998 __tmp189996))))
                                 (_g185306185330_ _g185307185334_)))
                           _clause185324185383_
                           _hd185314185351_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop185319185363_
                                                   _target185316185357_
                                                   '()))
                                                (_g185306185330_
                                                 _g185307185334_)))))
                                      (_g185306185330_ _g185307185334_))))
                              (_g185306185330_ _g185307185334_))))
                      (_g185306185330_ _g185307185334_)))))
          (_g185305185633_ _stx185303_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj189969
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
           __obj189969
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190008 |gxc[1]#_g190009_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           __tmp190008
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190010 |gxc[1]#_g190011_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           __tmp190010
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190012 |gxc[1]#_g190013_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           __tmp190012
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190014
               (let ((__tmp190019
                      (let ((__tmp190020 |gxc[1]#_g190021_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp190020)))
                     (__tmp190015
                      (let ((__tmp190016
                             (let ((__tmp190017 |gxc[1]#_g190018_|))
                               (declare (not safe))
                               (cons 'bindings __tmp190017))))
                        (declare (not safe))
                        (cons __tmp190016 '()))))
                 (declare (not safe))
                 (cons __tmp190019 __tmp190015))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           __tmp190014
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190022
               (let ((__tmp190027
                      (let ((__tmp190028 |gxc[1]#_g190029_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp190028)))
                     (__tmp190023
                      (let ((__tmp190024
                             (let ((__tmp190025 |gxc[1]#_g190026_|))
                               (declare (not safe))
                               (cons 'bindings __tmp190025))))
                        (declare (not safe))
                        (cons __tmp190024 '()))))
                 (declare (not safe))
                 (cons __tmp190027 __tmp190023))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           __tmp190022
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190030
               (let ((__tmp190035
                      (let ((__tmp190036 |gxc[1]#_g190037_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp190036)))
                     (__tmp190031
                      (let ((__tmp190032
                             (let ((__tmp190033 |gxc[1]#_g190034_|))
                               (declare (not safe))
                               (cons 'bindings __tmp190033))))
                        (declare (not safe))
                        (cons __tmp190032 '()))))
                 (declare (not safe))
                 (cons __tmp190035 __tmp190031))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           __tmp190030
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190038
               (let ((__tmp190043
                      (let ((__tmp190044 |gxc[1]#_g190045_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp190044)))
                     (__tmp190039
                      (let ((__tmp190040
                             (let ((__tmp190041 |gxc[1]#_g190042_|))
                               (declare (not safe))
                               (cons 'bindings __tmp190041))))
                        (declare (not safe))
                        (cons __tmp190040 '()))))
                 (declare (not safe))
                 (cons __tmp190043 __tmp190039))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189969
           __tmp190038
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj189969))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx185639_)
        (let* ((_g185643185657_
                (lambda (_g185644185653_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g185644185653_))))
               (_g185642185698_
                (lambda (_g185644185661_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g185644185661_))
                      (let ((_e185648185664_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g185644185661_))))
                        (let ((_hd185647185668_
                               (let ()
                                 (declare (not safe))
                                 (##car _e185648185664_)))
                              (_tl185646185671_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e185648185664_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl185646185671_))
                              (let ((_e185651185674_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl185646185671_))))
                                (let ((_hd185650185678_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e185651185674_)))
                                      (_tl185649185681_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e185651185674_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl185649185681_))
                                      ((lambda (_L185684_)
                                         (let ((__tmp190053
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp190046
                                                (let ((__tmp190052
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp190047
                                                       (let ((__tmp190048
                                                              (let ((__tmp190051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp190049
                             (let ((__tmp190050
                                    (let ()
                                      (declare (not safe))
                                      (cons _L185684_ '()))))
                               (declare (not safe))
                               (cons '() __tmp190050))))
                        (declare (not safe))
                        (cons __tmp190051 __tmp190049))))
                 (declare (not safe))
                 (cons __tmp190048 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp190052
                                                        __tmp190047))))
                                           (declare (not safe))
                                           (cons __tmp190053 __tmp190046)))
                                       _hd185650185678_)
                                      (_g185643185657_ _g185644185661_))))
                              (_g185643185657_ _g185644185661_))))
                      (_g185643185657_ _g185644185661_)))))
          (_g185642185698_ _$stx185639_))))))
