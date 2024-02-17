(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g190012_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190014_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190016_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190021_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190024_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190029_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190032_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190037_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190040_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190045_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190048_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx185303_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx185303_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx185306_)
        (let* ((_g185309185333_
                (lambda (_g185310185329_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g185310185329_))))
               (_g185308185636_
                (lambda (_g185310185337_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g185310185337_))
                      (let ((_e185315185340_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g185310185337_))))
                        (let ((_hd185314185344_
                               (let ()
                                 (declare (not safe))
                                 (##car _e185315185340_)))
                              (_tl185313185347_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e185315185340_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl185313185347_))
                              (let ((_e185318185350_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl185313185347_))))
                                (let ((_hd185317185354_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e185318185350_)))
                                      (_tl185316185357_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e185318185350_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl185316185357_))
                                      (let ((_g189983_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl185316185357_
                                                '0))))
                                        (begin
                                          (let ((_g189984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g189983_)
                                                       (##vector-length
                                                        _g189983_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g189984_ 2)))
                                                (error "Context expects 2 values"
                                                       _g189984_)))
                                          (let ((_target185319185360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g189983_ 0)))
                                                (_tl185321185363_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g189983_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl185321185363_))
                                                (letrec ((_loop185322185366_
                                                          (lambda (_hd185320185370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause185326185373_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd185320185370_))
                        (let ((_e185323185376_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd185320185370_))))
                          (let ((_lp-hd185324185380_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e185323185376_)))
                                (_lp-tl185325185383_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e185323185376_))))
                            (_loop185322185366_
                             _lp-tl185325185383_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd185324185380_
                                     _clause185326185373_)))))
                        (let ((_clause185327185386_
                               (reverse _clause185326185373_)))
                          ((lambda (_L185390_ _L185392_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L185392_))
                                 (let* ((_g185411185428_
                                         (lambda (_g185412185424_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g185412185424_))))
                                        (_g185410185489_
                                         (lambda (_g185412185432_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g185412185432_))
                                               (let ((_g189985_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g185412185432_
                                                         '0))))
                                                 (begin
                                                   (let ((_g189986_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g189985_)
                        (##vector-length _g189985_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g189986_ 2)))
                 (error "Context expects 2 values" _g189986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target185414185435_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g189985_
                                                             0)))
                                                         (_tl185416185438_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g189985_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl185416185438_))
                                                         (letrec ((_loop185417185441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd185415185445_ _clause185421185448_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd185415185445_))
                                 (let ((_e185418185451_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd185415185445_))))
                                   (let ((_lp-hd185419185455_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e185418185451_)))
                                         (_lp-tl185420185458_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e185418185451_))))
                                     (_loop185417185441_
                                      _lp-tl185420185458_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd185419185455_
                                              _clause185421185448_)))))
                                 (let ((_clause185422185461_
                                        (reverse _clause185421185448_)))
                                   ((lambda (_L185465_)
                                      (let ()
                                        (let ((__tmp189998
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp189987
                                               (let ((__tmp189996
                                                      (let ((__tmp189997
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp189997 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189988
                                                      (let ((__tmp189989
                                                             (let ((__tmp189995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp189990
                            (let ((__tmp189994
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp189991
                                   (let ((__tmp189992
                                          (let ((__tmp189993
                                                 (lambda (_g185480185483_
                                                          _g185481185486_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g185480185483_
                                                           _g185481185486_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp189993
                                                    '()
                                                    _L185465_))))
                                     (declare (not safe))
                                     (cons _L185392_ __tmp189992))))
                              (declare (not safe))
                              (cons __tmp189994 __tmp189991))))
                       (declare (not safe))
                       (cons __tmp189995 __tmp189990))))
                (declare (not safe))
                (cons __tmp189989 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp189996
                                                       __tmp189988))))
                                          (declare (not safe))
                                          (cons __tmp189998 __tmp189987))))
                                    _clause185422185461_))))))
                   (_loop185417185441_ _target185414185435_ '()))
                 (_g185411185428_ _g185412185432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g185411185428_
                                                _g185412185432_)))))
                                   (_g185410185489_
                                    (let ((__tmp190001
                                           (lambda (_clause185493_)
                                             (let* ((___stx189929189930_
                                                     _clause185493_)
                                                    (_g185497185524_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx189929189930_)))))
                                               (let ((___kont189932189933_
                                                      (lambda (_L185609_
                                                               _L185611_)
                                                        (let ((__tmp190002
                                                               (let ((__tmp190003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp190005
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp190004
                                     (let ()
                                       (declare (not safe))
                                       (cons _L185609_ '()))))
                                (declare (not safe))
                                (cons __tmp190005 __tmp190004))))
                         (declare (not safe))
                         (cons __tmp190003 '()))))
                  (declare (not safe))
                  (cons _L185611_ __tmp190002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont189934189935_
                                                      (lambda (_L185561_
                                                               _L185563_
                                                               _L185564_)
                                                        (let ((__tmp190006
                                                               (let ((__tmp190007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp190008
                                     (let ((__tmp190010
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp190009
                                            (let ()
                                              (declare (not safe))
                                              (cons _L185561_ '()))))
                                       (declare (not safe))
                                       (cons __tmp190010 __tmp190009))))
                                (declare (not safe))
                                (cons __tmp190008 '()))))
                         (declare (not safe))
                         (cons _L185563_ __tmp190007))))
                  (declare (not safe))
                  (cons _L185564_ __tmp190006)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx189929189930_))
                                                     (let ((_e185503185589_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx189929189930_))))
                                                       (let ((_tl185501185596_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e185503185589_)))
                     (_hd185502185593_
                      (let () (declare (not safe)) (##car _e185503185589_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl185501185596_))
                     (let ((_e185506185599_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl185501185596_))))
                       (let ((_tl185504185606_
                              (let ()
                                (declare (not safe))
                                (##cdr _e185506185599_)))
                             (_hd185505185603_
                              (let ()
                                (declare (not safe))
                                (##car _e185506185599_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl185504185606_))
                             (___kont189932189933_
                              _hd185505185603_
                              _hd185502185593_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl185504185606_))
                                 (let ((_e185518185551_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl185504185606_))))
                                   (let ((_tl185516185558_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e185518185551_)))
                                         (_hd185517185555_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e185518185551_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl185516185558_))
                                         (___kont189934189935_
                                          _hd185517185555_
                                          _hd185505185603_
                                          _hd185502185593_)
                                         (let ()
                                           (declare (not safe))
                                           (_g185497185524_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g185497185524_))))))
                     (let () (declare (not safe)) (_g185497185524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g185497185524_)))))))
                                          (__tmp189999
                                           (let ((__tmp190000
                                                  (lambda (_g185627185630_
                                                           _g185628185633_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g185627185630_
                                                            _g185628185633_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp190000
                                                     '()
                                                     _L185390_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp190001 __tmp189999))))
                                 (_g185309185333_ _g185310185337_)))
                           _clause185327185386_
                           _hd185317185354_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop185322185366_
                                                   _target185319185360_
                                                   '()))
                                                (_g185309185333_
                                                 _g185310185337_)))))
                                      (_g185309185333_ _g185310185337_))))
                              (_g185309185333_ _g185310185337_))))
                      (_g185309185333_ _g185310185337_)))))
          (_g185308185636_ _stx185306_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj189972
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
           __obj189972
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190011 |gxc[1]#_g190012_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           __tmp190011
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190013 |gxc[1]#_g190014_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           __tmp190013
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190015 |gxc[1]#_g190016_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           __tmp190015
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190017
               (let ((__tmp190022
                      (let ((__tmp190023 |gxc[1]#_g190024_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp190023)))
                     (__tmp190018
                      (let ((__tmp190019
                             (let ((__tmp190020 |gxc[1]#_g190021_|))
                               (declare (not safe))
                               (cons 'bindings __tmp190020))))
                        (declare (not safe))
                        (cons __tmp190019 '()))))
                 (declare (not safe))
                 (cons __tmp190022 __tmp190018))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           __tmp190017
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190025
               (let ((__tmp190030
                      (let ((__tmp190031 |gxc[1]#_g190032_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp190031)))
                     (__tmp190026
                      (let ((__tmp190027
                             (let ((__tmp190028 |gxc[1]#_g190029_|))
                               (declare (not safe))
                               (cons 'bindings __tmp190028))))
                        (declare (not safe))
                        (cons __tmp190027 '()))))
                 (declare (not safe))
                 (cons __tmp190030 __tmp190026))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           __tmp190025
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190033
               (let ((__tmp190038
                      (let ((__tmp190039 |gxc[1]#_g190040_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp190039)))
                     (__tmp190034
                      (let ((__tmp190035
                             (let ((__tmp190036 |gxc[1]#_g190037_|))
                               (declare (not safe))
                               (cons 'bindings __tmp190036))))
                        (declare (not safe))
                        (cons __tmp190035 '()))))
                 (declare (not safe))
                 (cons __tmp190038 __tmp190034))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           __tmp190033
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp190041
               (let ((__tmp190046
                      (let ((__tmp190047 |gxc[1]#_g190048_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp190047)))
                     (__tmp190042
                      (let ((__tmp190043
                             (let ((__tmp190044 |gxc[1]#_g190045_|))
                               (declare (not safe))
                               (cons 'bindings __tmp190044))))
                        (declare (not safe))
                        (cons __tmp190043 '()))))
                 (declare (not safe))
                 (cons __tmp190046 __tmp190042))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189972
           __tmp190041
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj189972))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx185642_)
        (let* ((_g185646185660_
                (lambda (_g185647185656_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g185647185656_))))
               (_g185645185701_
                (lambda (_g185647185664_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g185647185664_))
                      (let ((_e185651185667_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g185647185664_))))
                        (let ((_hd185650185671_
                               (let ()
                                 (declare (not safe))
                                 (##car _e185651185667_)))
                              (_tl185649185674_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e185651185667_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl185649185674_))
                              (let ((_e185654185677_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl185649185674_))))
                                (let ((_hd185653185681_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e185654185677_)))
                                      (_tl185652185684_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e185654185677_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl185652185684_))
                                      ((lambda (_L185687_)
                                         (let ((__tmp190056
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp190049
                                                (let ((__tmp190055
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp190050
                                                       (let ((__tmp190051
                                                              (let ((__tmp190054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp190052
                             (let ((__tmp190053
                                    (let ()
                                      (declare (not safe))
                                      (cons _L185687_ '()))))
                               (declare (not safe))
                               (cons '() __tmp190053))))
                        (declare (not safe))
                        (cons __tmp190054 __tmp190052))))
                 (declare (not safe))
                 (cons __tmp190051 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp190055
                                                        __tmp190050))))
                                           (declare (not safe))
                                           (cons __tmp190056 __tmp190049)))
                                       _hd185653185681_)
                                      (_g185646185660_ _g185647185664_))))
                              (_g185646185660_ _g185647185664_))))
                      (_g185646185660_ _g185647185664_)))))
          (_g185645185701_ _$stx185642_))))))
