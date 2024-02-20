(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g49095_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49096_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49152_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49153_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49154_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49156_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49157_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49158_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49159_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49160_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49161_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49162_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49163_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49164_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49165_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49545_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50109_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50129_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50130_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50247_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50248_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50249_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50250_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50251_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       'match-macro
       (list gerbil/core$<macro-object>#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30641_
        (apply make-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30641_)))
    (define |gerbil/core$<match>[1]#match-macro-macro|
      (make-class-slot-accessor
       |gerbil/core$<match>[1]#match-macro::t|
       'macro))
    (define |gerbil/core$<match>[1]#match-macro-macro-set!|
      (make-class-slot-mutator |gerbil/core$<match>[1]#match-macro::t| 'macro))
    (define |gerbil/core$<match>[1]#&match-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core$<match>[1]#match-macro::t|
       'macro))
    (define |gerbil/core$<match>[1]#&match-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core$<match>[1]#match-macro::t|
       'macro))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30638_)
        (if (gx#identifier? _stx30638_)
            (let ((__tmp49080 (gx#syntax-local-value _stx30638_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp49080))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28944_ _match-stx28946_)
        (letrec ((_parse128948_
                  (lambda (_hd29301_)
                    (let* ((___stx4429644297_ _hd29301_)
                           (_g2932729469_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4429644297_))))
                      (let ((___kont4429944300_
                             (lambda (_L30401_ _L30403_)
                               (let* ((___stx4421644217_ _L30401_)
                                      (_g3042030453_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4421644217_))))
                                 (let ((___kont4421944220_
                                        (lambda ()
                                          (let ((__tmp49081
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30403_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp49081))))
                                       (___kont4422144222_
                                        (lambda (_L30594_)
                                          (let ((__tmp49082
                                                 (let ((__tmp49083
                                                        (let ((__tmp49084
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse128948_ _L30594_))))
                  (declare (not safe))
                  (cons __tmp49084 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49083))))
                                            (declare (not safe))
                                            (cons '?: __tmp49082))))
                                       (___kont4422344224_
                                        (lambda (_L30564_)
                                          (let ((__tmp49085
                                                 (let ((__tmp49086
                                                        (let ((__tmp49087
                                                               (let ((__tmp49088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse128948_ _L30564_))))
                         (declare (not safe))
                         (cons __tmp49088 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp49087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49086))))
                                            (declare (not safe))
                                            (cons '?: __tmp49085))))
                                       (___kont4422544226_
                                        (lambda (_L30515_ _L30517_)
                                          (let ((__tmp49089
                                                 (let ((__tmp49090
                                                        (let ((__tmp49091
                                                               (let ((__tmp49092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49093
                                     (let ((__tmp49094
                                            (let ()
                                              (declare (not safe))
                                              (_parse128948_ _L30515_))))
                                       (declare (not safe))
                                       (cons __tmp49094 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp49093))))
                         (declare (not safe))
                         (cons _L30517_ __tmp49092))))
                  (declare (not safe))
                  (cons ':: __tmp49091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49090))))
                                            (declare (not safe))
                                            (cons '?: __tmp49089))))
                                       (___kont4422744228_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28955_ _hd29301_)))))
                                   (let ((_g3041630605_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4421644217_)
                                                (let ((_e3042330584_
                                                       (gx#syntax-e
                                                        ___stx4421644217_)))
                                                  (let ((_tl3042530591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3042330584_)))
                                                        (_hd3042430588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3042330584_))))
                                                    (if (gx#stx-null?
                                                         _tl3042530591_)
                                                        (___kont4422144222_
                                                         _hd3042430588_)
                                                        (if (gx#identifier?
                                                             _hd3042430588_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49095_|
                         _hd3042430588_)
                        (if (gx#stx-pair? _tl3042530591_)
                            (let ((_e3043030554_ (gx#syntax-e _tl3042530591_)))
                              (let ((_tl3043230561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3043030554_)))
                                    (_hd3043130558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3043030554_))))
                                (if (gx#stx-null? _tl3043230561_)
                                    (___kont4422344224_ _hd3043130558_)
                                    (___kont4422744228_))))
                            (___kont4422744228_))
                        (___kont4422744228_))
                    (if (gx#stx-datum? _hd3042430588_)
                        (let ((_e3043830481_ (gx#stx-e _hd3042430588_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e3043830481_ '::))
                              (if (gx#stx-pair? _tl3042530591_)
                                  (let ((_e3043930485_
                                         (gx#syntax-e _tl3042530591_)))
                                    (let ((_tl3044130492_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3043930485_)))
                                          (_hd3044030489_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3043930485_))))
                                      (if (gx#stx-pair? _tl3044130492_)
                                          (let ((_e3044230495_
                                                 (gx#syntax-e _tl3044130492_)))
                                            (let ((_tl3044430502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3044230495_)))
                                                  (_hd3044330499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3044230495_))))
                                              (if (gx#identifier?
                                                   _hd3044330499_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49096_|
                                                       _hd3044330499_)
                                                      (if (gx#stx-pair?
                                                           _tl3044430502_)
                                                          (let ((_e3044530505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3044430502_)))
                    (let ((_tl3044730512_
                           (let () (declare (not safe)) (##cdr _e3044530505_)))
                          (_hd3044630509_
                           (let ()
                             (declare (not safe))
                             (##car _e3044530505_))))
                      (if (gx#stx-null? _tl3044730512_)
                          (___kont4422544226_ _hd3044630509_ _hd3044030489_)
                          (___kont4422744228_))))
                  (___kont4422744228_))
              (___kont4422744228_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4422744228_))))
                                          (___kont4422744228_))))
                                  (___kont4422744228_))
                              (___kont4422744228_)))
                        (___kont4422744228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4422744228_)))))
                                     (if (gx#stx-null? ___stx4421644217_)
                                         (___kont4421944220_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3041630605_))))))))
                            (___kont4430144302_
                             (lambda (_L30306_)
                               (let* ((___stx4419844199_ _L30306_)
                                      (_g3031830329_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4419844199_))))
                                 (let ((___kont4420144202_
                                        (lambda (_L30357_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128948_ _L30357_))))
                                       (___kont4420344204_
                                        (lambda ()
                                          (let ((__tmp49097
                                                 (gx#stx-map
                                                  _parse128948_
                                                  _L30306_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp49097)))))
                                   (if (gx#stx-pair? ___stx4419844199_)
                                       (let ((_e3032130347_
                                              (gx#syntax-e ___stx4419844199_)))
                                         (let ((_tl3032330354_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3032130347_)))
                                               (_hd3032230351_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3032130347_))))
                                           (if (gx#stx-null? _tl3032330354_)
                                               (___kont4420144202_
                                                _hd3032230351_)
                                               (___kont4420344204_))))
                                       (___kont4420344204_))))))
                            (___kont4430344304_
                             (lambda (_L30221_)
                               (let* ((___stx4418044181_ _L30221_)
                                      (_g3023330244_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4418044181_))))
                                 (let ((___kont4418344184_
                                        (lambda (_L30272_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128948_ _L30272_))))
                                       (___kont4418544186_
                                        (lambda ()
                                          (let ((__tmp49098
                                                 (gx#stx-map
                                                  _parse128948_
                                                  _L30221_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp49098)))))
                                   (if (gx#stx-pair? ___stx4418044181_)
                                       (let ((_e3023630262_
                                              (gx#syntax-e ___stx4418044181_)))
                                         (let ((_tl3023830269_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3023630262_)))
                                               (_hd3023730266_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3023630262_))))
                                           (if (gx#stx-null? _tl3023830269_)
                                               (___kont4418344184_
                                                _hd3023730266_)
                                               (___kont4418544186_))))
                                       (___kont4418544186_))))))
                            (___kont4430544306_
                             (lambda (_L30191_)
                               (let ((__tmp49099
                                      (let ((__tmp49100
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30191_))))
                                        (declare (not safe))
                                        (cons __tmp49100 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp49099))))
                            (___kont4430744308_
                             (lambda (_L30147_ _L30149_)
                               (let ((__tmp49101
                                      (let ((__tmp49104
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30149_)))
                                            (__tmp49102
                                             (let ((__tmp49103
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128948_
                                                       _L30147_))))
                                               (declare (not safe))
                                               (cons __tmp49103 '()))))
                                        (declare (not safe))
                                        (cons __tmp49104 __tmp49102))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49101))))
                            (___kont4430944310_
                             (lambda (_L30091_ _L30093_ _L30094_)
                               (if (gx#stx-null? _L30091_)
                                   (let ((__tmp49105
                                          (let ((__tmp49108
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128948_ _L30094_)))
                                                (__tmp49106
                                                 (let ((__tmp49107
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse128948_
                                                           _L30093_))))
                                                   (declare (not safe))
                                                   (cons __tmp49107 '()))))
                                            (declare (not safe))
                                            (cons __tmp49108 __tmp49106))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49105))
                                   (let ((__tmp49109
                                          (let ((__tmp49115
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128948_ _L30094_)))
                                                (__tmp49110
                                                 (let ((__tmp49111
                                                        (let ((__tmp49112
                                                               (let ((__tmp49114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp49113
                              (let ()
                                (declare (not safe))
                                (cons _L30093_ _L30091_))))
                         (declare (not safe))
                         (cons __tmp49114 __tmp49113))))
                  (declare (not safe))
                  (_parse128948_ __tmp49112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49111 '()))))
                                            (declare (not safe))
                                            (cons __tmp49115 __tmp49110))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49109)))))
                            (___kont4431144312_
                             (lambda (_L30043_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28950_ _L30043_))))
                            (___kont4431344314_
                             (lambda (_L30013_)
                               (let ((__tmp49116
                                      (let ((__tmp49117
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30013_))))
                                        (declare (not safe))
                                        (cons __tmp49117 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49116))))
                            (___kont4431544316_
                             (lambda (_L29976_)
                               (let ((__tmp49118
                                      (let ((__tmp49119
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29976_))))
                                        (declare (not safe))
                                        (cons __tmp49119 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49118))))
                            (___kont4431744318_
                             (lambda (_L29952_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128948_ _L29952_))))
                            (___kont4431944320_
                             (lambda (_L29914_)
                               (let ((__tmp49120
                                      (let ((__tmp49121
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                _L29914_))))
                                        (declare (not safe))
                                        (cons __tmp49121 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp49120))))
                            (___kont4432144322_
                             (lambda (_L29886_)
                               (let ((__tmp49122
                                      (let ((__tmp49123
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                _L29886_))))
                                        (declare (not safe))
                                        (cons __tmp49123 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49122))))
                            (___kont4432344324_
                             (lambda (_L29847_)
                               (let ((__tmp49124
                                      (let ((__tmp49125
                                             (let ((__tmp49126
                                                    (foldr (lambda (_g2986029863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2986129866_)
                     (let ()
                       (declare (not safe))
                       (cons _g2986029863_ _g2986129866_)))
                   '()
                   _L29847_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                __tmp49126))))
                                        (declare (not safe))
                                        (cons __tmp49125 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49124))))
                            (___kont4432744328_
                             (lambda (_L29793_ _L29795_)
                               (let ((__tmp49127
                                      (let ((__tmp49130
                                             (gx#syntax-local-value _L29795_))
                                            (__tmp49128
                                             (let ((__tmp49129
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector28951_
                                                       _L29793_))))
                                               (declare (not safe))
                                               (cons __tmp49129 '()))))
                                        (declare (not safe))
                                        (cons __tmp49130 __tmp49128))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp49127))))
                            (___kont4432944330_
                             (lambda (_L29763_ _L29765_)
                               (let ((__tmp49131
                                      (let ((__tmp49134
                                             (gx#syntax-local-value _L29765_))
                                            (__tmp49132
                                             (let ((__tmp49133
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body28953_
                                                       _L29763_))))
                                               (declare (not safe))
                                               (cons __tmp49133 '()))))
                                        (declare (not safe))
                                        (cons __tmp49134 __tmp49132))))
                                 (declare (not safe))
                                 (cons 'class: __tmp49131))))
                            (___kont4433144332_
                             (lambda (_L29723_ _L29725_)
                               (let ((__tmp49135
                                      (let ((__tmp49136
                                             (let ((__tmp49141
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp49137
                                                    (let ((__tmp49138
                                                           (let ((__tmp49140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp49139
                          (let () (declare (not safe)) (cons _L29723_ '()))))
                     (declare (not safe))
                     (cons __tmp49140 __tmp49139))))
              (declare (not safe))
              (cons _L29725_ __tmp49138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49141 __tmp49137))))
                                        (declare (not safe))
                                        (cons __tmp49136 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp49135))))
                            (___kont4433344334_
                             (lambda (_L29683_)
                               (let ((__tmp49142
                                      (let ((__tmp49143 (gx#stx-e _L29683_)))
                                        (declare (not safe))
                                        (cons __tmp49143 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49142))))
                            (___kont4433544336_
                             (lambda (_L29643_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28954_ _L29643_))))
                            (___kont4433744338_
                             (lambda (_L29599_ _L29601_)
                               (let ((__tmp49144
                                      (let ((__tmp49145
                                             (let ((__tmp49146
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128948_
                                                       _L29599_))))
                                               (declare (not safe))
                                               (cons __tmp49146 '()))))
                                        (declare (not safe))
                                        (cons _L29601_ __tmp49145))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp49144))))
                            (___kont4433944340_
                             (lambda (_L29547_)
                               (let ((__tmp49147
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29547_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd29301_))
                                        (let ((_$e29558_
                                               (gx#stx-source _hd29301_)))
                                          (if _$e29558_
                                              _$e29558_
                                              (gx#stx-source _stx28944_)))))))
                                 (declare (not safe))
                                 (_parse128948_ __tmp49147))))
                            (___kont4434144342_
                             (lambda (_L29521_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4434344344_
                             (lambda (_L29505_)
                               (let ((__tmp49148
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29505_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp49148))))
                            (___kont4434544346_
                             (lambda (_L29487_)
                               (let ((__tmp49149
                                      (let ((__tmp49150 (gx#stx-e _L29487_)))
                                        (declare (not safe))
                                        (cons __tmp49150 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49149))))
                            (___kont4434744348_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28955_ _hd29301_)))))
                        (let* ((_g2932529498_
                                (lambda ()
                                  (let ((_L29487_ ___stx4429644297_))
                                    (if (gx#stx-datum? _L29487_)
                                        (___kont4434544346_ _L29487_)
                                        (___kont4434744348_)))))
                               (_g2932429514_
                                (lambda ()
                                  (let ((_L29505_ ___stx4429644297_))
                                    (if (and (gx#identifier? _L29505_)
                                             (let ((__tmp49151
                                                    (gx#ellipsis? _L29505_)))
                                               (declare (not safe))
                                               (not __tmp49151)))
                                        (___kont4434344344_ _L29505_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932529498_))))))
                               (_g2932329530_
                                (lambda ()
                                  (let ((_L29521_ ___stx4429644297_))
                                    (if (gx#underscore? _L29521_)
                                        (___kont4434144342_ _L29521_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932429514_))))))
                               (___match4462344624_
                                (lambda (_e2945829537_
                                         _hd2945929541_
                                         _tl2946029544_)
                                  (let ((_L29547_ _hd2945929541_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29547_))
                                        (___kont4433944340_ _L29547_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932329530_))))))
                               (___match4455744558_
                                (lambda (_e2942629703_
                                         _hd2942729707_
                                         _tl2942829710_
                                         _e2942929713_
                                         _hd2943029717_
                                         _tl2943129720_)
                                  (let ((_L29723_ _hd2943029717_)
                                        (_L29725_ _hd2942729707_))
                                    (if (and (gx#identifier? _L29725_)
                                             (or (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4433144332_ _L29723_ _L29725_)
                                        (if (gx#identifier? _hd2942729707_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g49152_|
                                                 _hd2942729707_)
                                                (___kont4433344334_
                                                 _hd2943029717_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g49153_|
                                                     _hd2942729707_)
                                                    (___kont4433544336_
                                                     _hd2943029717_)
                                                    (___match4462344624_
                                                     _e2942629703_
                                                     _hd2942729707_
                                                     _tl2942829710_)))
                                            (___match4462344624_
                                             _e2942629703_
                                             _hd2942729707_
                                             _tl2942829710_))))))
                               (___match4454344544_
                                (lambda (_e2942129753_
                                         _hd2942229757_
                                         _tl2942329760_)
                                  (let ((_L29763_ _tl2942329760_)
                                        (_L29765_ _hd2942229757_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29765_))
                                        (___kont4432944330_ _L29763_ _L29765_)
                                        (if (gx#stx-pair? _tl2942329760_)
                                            (let ((_e2942929713_
                                                   (gx#syntax-e
                                                    _tl2942329760_)))
                                              (let ((_tl2943129720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2942929713_)))
                                                    (_hd2943029717_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2942929713_))))
                                                (if (gx#stx-null?
                                                     _tl2943129720_)
                                                    (___match4455744558_
                                                     _e2942129753_
                                                     _hd2942229757_
                                                     _tl2942329760_
                                                     _e2942929713_
                                                     _hd2943029717_
                                                     _tl2943129720_)
                                                    (if (gx#identifier?
                                                         _hd2942229757_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g49152_|
                                                             _hd2942229757_)
                                                            (___match4462344624_
                                                             _e2942129753_
                                                             _hd2942229757_
                                                             _tl2942329760_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49153_|
                         _hd2942229757_)
                        (___match4462344624_
                         _e2942129753_
                         _hd2942229757_
                         _tl2942329760_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g49154_|
                             _hd2942229757_)
                            (if (gx#stx-pair? _tl2943129720_)
                                (let ((_e2945429589_
                                       (gx#syntax-e _tl2943129720_)))
                                  (let ((_tl2945629596_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2945429589_)))
                                        (_hd2945529593_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2945429589_))))
                                    (if (gx#stx-null? _tl2945629596_)
                                        (___kont4433744338_
                                         _hd2945529593_
                                         _hd2943029717_)
                                        (___match4462344624_
                                         _e2942129753_
                                         _hd2942229757_
                                         _tl2942329760_))))
                                (___match4462344624_
                                 _e2942129753_
                                 _hd2942229757_
                                 _tl2942329760_))
                            (___match4462344624_
                             _e2942129753_
                             _hd2942229757_
                             _tl2942329760_))))
                (___match4462344624_
                 _e2942129753_
                 _hd2942229757_
                 _tl2942329760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4462344624_
                                             _e2942129753_
                                             _hd2942229757_
                                             _tl2942329760_))))))
                               (___match4453744538_
                                (lambda (_e2941629783_
                                         _hd2941729787_
                                         _tl2941829790_)
                                  (let ((_L29793_ _tl2941829790_)
                                        (_L29795_ _hd2941729787_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                           _L29795_
                                           gerbil/core$<MOP>$<MOP:2>#!class-type-struct?))
                                        (___kont4432744328_ _L29793_ _L29795_)
                                        (___match4454344544_
                                         _e2941629783_
                                         _hd2941729787_
                                         _tl2941829790_)))))
                               (___match4453144532_
                                (lambda (_e2940429813_
                                         ___splice4432544326_
                                         _target2940529817_
                                         _tl2940729820_)
                                  (letrec ((_loop2940829823_
                                            (lambda (_hd2940629827_
                                                     _body2941229830_)
                                              (if (gx#stx-pair? _hd2940629827_)
                                                  (let ((_e2940929833_
                                                         (gx#syntax-e
                                                          _hd2940629827_)))
                                                    (let ((_lp-tl2941129840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2940929833_)))
                                                          (_lp-hd2941029837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2940929833_))))
                                                      (let ((__tmp49155
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2941029837_ _body2941229830_))))
                (declare (not safe))
                (_loop2940829823_ _lp-tl2941129840_ __tmp49155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2941329843_
                                                         (reverse _body2941229830_)))
                                                    (___kont4432344324_
                                                     _body2941329843_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2940829823_
                                       _target2940529817_
                                       '())))))
                               (_g2931529869_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4429644297_)
                                      (let ((_e2940429813_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4429644297_))))
                                        (if (gx#stx-pair/null? _e2940429813_)
                                            (let ((___splice4432544326_
                                                   (gx#syntax-split-splice
                                                    _e2940429813_
                                                    '0)))
                                              (let ((_tl2940729820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4432544326_
                                                        '1)))
                                                    (_target2940529817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4432544326_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2940729820_)
                                                    (___match4453144532_
                                                     _e2940429813_
                                                     ___splice4432544326_
                                                     _target2940529817_
                                                     _tl2940729820_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2932329530_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2932329530_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2932329530_)))))
                               (_g2931129986_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4429644297_)
                                      (let ((_e2938729972_
                                             (unbox (gx#syntax-e
                                                     ___stx4429644297_))))
                                        (___kont4431544316_ _e2938729972_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2931529869_)))))
                               (___match4438544386_
                                (lambda (_e2934230211_
                                         _hd2934330215_
                                         _tl2934430218_)
                                  (let ((_L30221_ _tl2934430218_))
                                    (if (gx#stx-list? _L30221_)
                                        (___kont4430344304_ _L30221_)
                                        (___match4453744538_
                                         _e2934230211_
                                         _hd2934330215_
                                         _tl2934430218_)))))
                               (___match4437544376_
                                (lambda (_e2933830296_
                                         _hd2933930300_
                                         _tl2934030303_)
                                  (let ((_L30306_ _tl2934030303_))
                                    (if (gx#stx-list? _L30306_)
                                        (___kont4430144302_ _L30306_)
                                        (___match4453744538_
                                         _e2933830296_
                                         _hd2933930300_
                                         _tl2934030303_))))))
                          (if (gx#stx-pair? ___stx4429644297_)
                              (let ((_e2933130381_
                                     (gx#syntax-e ___stx4429644297_)))
                                (let ((_tl2933330388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2933130381_)))
                                      (_hd2933230385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2933130381_))))
                                  (if (gx#identifier? _hd2933230385_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g49156_|
                                           _hd2933230385_)
                                          (if (gx#stx-pair? _tl2933330388_)
                                              (let ((_e2933430391_
                                                     (gx#syntax-e
                                                      _tl2933330388_)))
                                                (let ((_tl2933630398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2933430391_)))
                                                      (_hd2933530395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2933430391_))))
                                                  (___kont4429944300_
                                                   _tl2933630398_
                                                   _hd2933530395_)))
                                              (___match4453744538_
                                               _e2933130381_
                                               _hd2933230385_
                                               _tl2933330388_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g49157_|
                                               _hd2933230385_)
                                              (___match4437544376_
                                               _e2933130381_
                                               _hd2933230385_
                                               _tl2933330388_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g49158_|
                                                   _hd2933230385_)
                                                  (___match4438544386_
                                                   _e2933130381_
                                                   _hd2933230385_
                                                   _tl2933330388_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49159_|
                                                       _hd2933230385_)
                                                      (if (gx#stx-pair?
                                                           _tl2933330388_)
                                                          (let ((_e2934930181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2933330388_)))
                    (let ((_tl2935130188_
                           (let () (declare (not safe)) (##cdr _e2934930181_)))
                          (_hd2935030185_
                           (let ()
                             (declare (not safe))
                             (##car _e2934930181_))))
                      (if (gx#stx-null? _tl2935130188_)
                          (___kont4430544306_ _hd2935030185_)
                          (___match4453744538_
                           _e2933130381_
                           _hd2933230385_
                           _tl2933330388_))))
                  (___match4453744538_
                   _e2933130381_
                   _hd2933230385_
                   _tl2933330388_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g49160_|
                   _hd2933230385_)
                  (if (gx#stx-pair? _tl2933330388_)
                      (let ((_e2935730127_ (gx#syntax-e _tl2933330388_)))
                        (let ((_tl2935930134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2935730127_)))
                              (_hd2935830131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2935730127_))))
                          (if (gx#stx-pair? _tl2935930134_)
                              (let ((_e2936030137_
                                     (gx#syntax-e _tl2935930134_)))
                                (let ((_tl2936230144_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2936030137_)))
                                      (_hd2936130141_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2936030137_))))
                                  (if (gx#stx-null? _tl2936230144_)
                                      (___kont4430744308_
                                       _hd2936130141_
                                       _hd2935830131_)
                                      (___match4453744538_
                                       _e2933130381_
                                       _hd2933230385_
                                       _tl2933330388_))))
                              (___match4453744538_
                               _e2933130381_
                               _hd2933230385_
                               _tl2933330388_))))
                      (___match4453744538_
                       _e2933130381_
                       _hd2933230385_
                       _tl2933330388_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g49161_|
                       _hd2933230385_)
                      (if (gx#stx-pair? _tl2933330388_)
                          (let ((_e2936930071_ (gx#syntax-e _tl2933330388_)))
                            (let ((_tl2937130078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2936930071_)))
                                  (_hd2937030075_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2936930071_))))
                              (if (gx#stx-pair? _tl2937130078_)
                                  (let ((_e2937230081_
                                         (gx#syntax-e _tl2937130078_)))
                                    (let ((_tl2937430088_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2937230081_)))
                                          (_hd2937330085_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2937230081_))))
                                      (___kont4430944310_
                                       _tl2937430088_
                                       _hd2937330085_
                                       _hd2937030075_)))
                                  (___match4453744538_
                                   _e2933130381_
                                   _hd2933230385_
                                   _tl2933330388_))))
                          (___match4453744538_
                           _e2933130381_
                           _hd2933230385_
                           _tl2933330388_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g49162_|
                           _hd2933230385_)
                          (___kont4431144312_ _tl2933330388_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g49163_|
                               _hd2933230385_)
                              (if (gx#stx-pair? _tl2933330388_)
                                  (let ((_e2938330003_
                                         (gx#syntax-e _tl2933330388_)))
                                    (let ((_tl2938530010_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2938330003_)))
                                          (_hd2938430007_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2938330003_))))
                                      (if (gx#stx-null? _tl2938530010_)
                                          (___kont4431344314_ _hd2938430007_)
                                          (___match4453744538_
                                           _e2933130381_
                                           _hd2933230385_
                                           _tl2933330388_))))
                                  (___match4453744538_
                                   _e2933130381_
                                   _hd2933230385_
                                   _tl2933330388_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g49164_|
                                   _hd2933230385_)
                                  (if (gx#stx-pair? _tl2933330388_)
                                      (let ((_e2939229942_
                                             (gx#syntax-e _tl2933330388_)))
                                        (let ((_tl2939429949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2939229942_)))
                                              (_hd2939329946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2939229942_))))
                                          (if (gx#stx-null? _tl2939429949_)
                                              (___kont4431744318_
                                               _hd2939329946_)
                                              (___kont4431944320_
                                               _tl2933330388_))))
                                      (___kont4431944320_ _tl2933330388_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g49165_|
                                       _hd2933230385_)
                                      (___kont4432144322_ _tl2933330388_)
                                      (___match4453744538_
                                       _e2933130381_
                                       _hd2933230385_
                                       _tl2933330388_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4453744538_
                                       _e2933130381_
                                       _hd2933230385_
                                       _tl2933330388_))))
                              (let ()
                                (declare (not safe))
                                (_g2931129986_))))))))
                 (_parse-list28950_
                  (lambda (_body29130_)
                    (let* ((___stx4462644627_ _body29130_)
                           (_g2913629165_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4462644627_))))
                      (let ((___kont4462944630_
                             (lambda (_L29283_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128948_ _L29283_))))
                            (___kont4463144632_
                             (lambda (_L29235_ _L29237_ _L29238_)
                               (let ((__tmp49166
                                      (let ((__tmp49169
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29238_)))
                                            (__tmp49167
                                             (let ((__tmp49168
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28950_
                                                       _L29235_))))
                                               (declare (not safe))
                                               (cons __tmp49168 '()))))
                                        (declare (not safe))
                                        (cons __tmp49169 __tmp49167))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp49166))))
                            (___kont4463344634_
                             (lambda (_L29193_ _L29195_)
                               (let ((__tmp49170
                                      (let ((__tmp49173
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29195_)))
                                            (__tmp49171
                                             (let ((__tmp49172
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28950_
                                                       _L29193_))))
                                               (declare (not safe))
                                               (cons __tmp49172 '()))))
                                        (declare (not safe))
                                        (cons __tmp49173 __tmp49171))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49170))))
                            (___kont4463544636_
                             (lambda ()
                               (if (gx#stx-null? _body29130_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp49174
                                              (gx#stx-pair? _body29130_)))
                                         (declare (not safe))
                                         (not __tmp49174))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128948_ _body29130_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28955_ _body29130_)))))))
                        (let* ((___match4467544676_
                                (lambda (_e2915729183_
                                         _hd2915829187_
                                         _tl2915929190_)
                                  (let ((_L29193_ _tl2915929190_)
                                        (_L29195_ _hd2915829187_))
                                    (if (let ((__tmp49175
                                               (gx#ellipsis? _L29195_)))
                                          (declare (not safe))
                                          (not __tmp49175))
                                        (___kont4463344634_ _L29193_ _L29195_)
                                        (___kont4463544636_)))))
                               (___match4466944670_
                                (lambda (_e2914929215_
                                         _hd2915029219_
                                         _tl2915129222_
                                         _e2915229225_
                                         _hd2915329229_
                                         _tl2915429232_)
                                  (let ((_L29235_ _tl2915429232_)
                                        (_L29237_ _hd2915329229_)
                                        (_L29238_ _hd2915029219_))
                                    (if (gx#ellipsis? _L29237_)
                                        (___kont4463144632_
                                         _L29235_
                                         _L29237_
                                         _L29238_)
                                        (___match4467544676_
                                         _e2914929215_
                                         _hd2915029219_
                                         _tl2915129222_))))))
                          (if (gx#stx-pair? ___stx4462644627_)
                              (let ((_e2913929259_
                                     (gx#syntax-e ___stx4462644627_)))
                                (let ((_tl2914129266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2913929259_)))
                                      (_hd2914029263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2913929259_))))
                                  (if (gx#stx-datum? _hd2914029263_)
                                      (let ((_e2914229269_
                                             (gx#stx-e _hd2914029263_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2914229269_ '::))
                                            (if (gx#stx-pair? _tl2914129266_)
                                                (let ((_e2914329273_
                                                       (gx#syntax-e
                                                        _tl2914129266_)))
                                                  (let ((_tl2914529280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2914329273_)))
                                                        (_hd2914429277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2914329273_))))
                                                    (if (gx#stx-null?
                                                         _tl2914529280_)
                                                        (___kont4462944630_
                                                         _hd2914429277_)
                                                        (___match4466944670_
                                                         _e2913929259_
                                                         _hd2914029263_
                                                         _tl2914129266_
                                                         _e2914329273_
                                                         _hd2914429277_
                                                         _tl2914529280_))))
                                                (___match4467544676_
                                                 _e2913929259_
                                                 _hd2914029263_
                                                 _tl2914129266_))
                                            (if (gx#stx-pair? _tl2914129266_)
                                                (let ((_e2915229225_
                                                       (gx#syntax-e
                                                        _tl2914129266_)))
                                                  (let ((_tl2915429232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2915229225_)))
                                                        (_hd2915329229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2915229225_))))
                                                    (___match4466944670_
                                                     _e2913929259_
                                                     _hd2914029263_
                                                     _tl2914129266_
                                                     _e2915229225_
                                                     _hd2915329229_
                                                     _tl2915429232_)))
                                                (___match4467544676_
                                                 _e2913929259_
                                                 _hd2914029263_
                                                 _tl2914129266_))))
                                      (if (gx#stx-pair? _tl2914129266_)
                                          (let ((_e2915229225_
                                                 (gx#syntax-e _tl2914129266_)))
                                            (let ((_tl2915429232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2915229225_)))
                                                  (_hd2915329229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2915229225_))))
                                              (___match4466944670_
                                               _e2913929259_
                                               _hd2914029263_
                                               _tl2914129266_
                                               _e2915229225_
                                               _hd2915329229_
                                               _tl2915429232_)))
                                          (___match4467544676_
                                           _e2913929259_
                                           _hd2914029263_
                                           _tl2914129266_)))))
                              (___kont4463544636_)))))))
                 (_parse-vector28951_
                  (lambda (_body29127_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28952_ _body29127_))
                        (let ((__tmp49176
                               (let ((__tmp49177
                                      (gx#stx-map _parse128948_ _body29127_)))
                                 (declare (not safe))
                                 (cons __tmp49177 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp49176))
                        (let ((__tmp49178
                               (let ((__tmp49179
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list28950_ _body29127_))))
                                 (declare (not safe))
                                 (cons __tmp49179 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp49178)))))
                 (_simple-vector?28952_
                  (lambda (_body29064_)
                    (let* ((___stx4467844679_ _body29064_)
                           (_g2906829080_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4467844679_))))
                      (let ((___kont4468144682_
                             (lambda (_L29108_ _L29110_)
                               (if (let ((__tmp49180 (gx#ellipsis? _L29110_)))
                                     (declare (not safe))
                                     (not __tmp49180))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28952_ _L29108_))
                                   '#f)))
                            (___kont4468344684_
                             (lambda () (gx#stx-null? _body29064_))))
                        (if (gx#stx-pair? ___stx4467844679_)
                            (let ((_e2907229098_
                                   (gx#syntax-e ___stx4467844679_)))
                              (let ((_tl2907429105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2907229098_)))
                                    (_hd2907329102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2907229098_))))
                                (___kont4468144682_
                                 _tl2907429105_
                                 _hd2907329102_)))
                            (___kont4468344684_))))))
                 (_parse-class-body28953_
                  (lambda (_body28973_)
                    (let _recur28976_ ((_rest28979_ _body28973_))
                      (let* ((___stx4469444695_ _rest28979_)
                             (_g2898328999_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4469444695_))))
                        (let ((___kont4469744698_
                               (lambda (_L29037_ _L29039_ _L29040_)
                                 (let ((__tmp49181
                                        (let ((__tmp49183
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse128948_ _L29039_)))
                                              (__tmp49182
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur28976_ _L29037_))))
                                          (declare (not safe))
                                          (cons __tmp49183 __tmp49182))))
                                   (declare (not safe))
                                   (cons _L29040_ __tmp49181))))
                              (___kont4469944700_
                               (lambda ()
                                 (if (gx#stx-null? _rest28979_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28955_ _rest28979_))))))
                          (let ((___match4471344714_
                                 (lambda (_e2898829017_
                                          _hd2898929021_
                                          _tl2899029024_
                                          _e2899129027_
                                          _hd2899229031_
                                          _tl2899329034_)
                                   (let ((_L29037_ _tl2899329034_)
                                         (_L29039_ _hd2899229031_)
                                         (_L29040_ _hd2898929021_))
                                     (if (gx#stx-keyword? _L29040_)
                                         (___kont4469744698_
                                          _L29037_
                                          _L29039_
                                          _L29040_)
                                         (___kont4469944700_))))))
                            (if (gx#stx-pair? ___stx4469444695_)
                                (let ((_e2898829017_
                                       (gx#syntax-e ___stx4469444695_)))
                                  (let ((_tl2899029024_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2898829017_)))
                                        (_hd2898929021_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2898829017_))))
                                    (if (gx#stx-pair? _tl2899029024_)
                                        (let ((_e2899129027_
                                               (gx#syntax-e _tl2899029024_)))
                                          (let ((_tl2899329034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2899129027_)))
                                                (_hd2899229031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2899129027_))))
                                            (___match4471344714_
                                             _e2898829017_
                                             _hd2898929021_
                                             _tl2899029024_
                                             _e2899129027_
                                             _hd2899229031_
                                             _tl2899329034_)))
                                        (___kont4469944700_))))
                                (___kont4469944700_))))))))
                 (_parse-qq28954_
                  (lambda (_hd28960_)
                    (let ((_g2896228969_
                           (lambda (_g2896328965_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2896328965_))))
                      (declare (not safe))
                      (_g2896228969_ _hd28960_))))
                 (_parse-error28955_
                  (lambda (_hd28957_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx28946_
                               (let ((__tmp49184
                                      (let ((__tmp49185
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd28957_ '()))))
                                        (declare (not safe))
                                        (cons _stx28944_ __tmp49185))))
                                 (declare (not safe))
                                 (cons _match-stx28946_ __tmp49184))
                               (let ((__tmp49186
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd28957_ '()))))
                                 (declare (not safe))
                                 (cons _stx28944_ __tmp49186)))))))
          (let () (declare (not safe)) (_parse128948_ _stx28944_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30628_)
        (let ((_match-stx30631_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30628_
           _match-stx30631_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g49188_
        (let ((_g49187_ (let () (declare (not safe)) (##length _g49188_))))
          (cond ((let () (declare (not safe)) (##fx= _g49187_ 1))
                 (apply (lambda (_stx30628_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30628_)))
                        _g49188_))
                ((let () (declare (not safe)) (##fx= _g49187_ 2))
                 (apply (lambda (_stx30634_ _match-stx30636_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30634_
                             _match-stx30636_)))
                        _g49188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g49188_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28928_)
        (call-with-current-continuation
         (lambda (_E28932_)
           (with-exception-handler
            (let ((_E!28935_ (current-exception-handler)))
              (lambda (_e28938_)
                (if (syntax-error? _e28938_)
                    (_E28932_ '#f)
                    (_E!28935_ _e28938_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28928_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27663_)
        (letrec ((_loop27666_
                  (lambda (_ptree27953_ _vars27955_ _K27956_)
                    (let* ((___stx4481244813_ _ptree27953_)
                           (_g2796928079_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4481244813_))))
                      (let ((___kont4481544816_
                             (lambda (_L28709_)
                               (let* ((___stx4473244733_ _L28709_)
                                      (_g2872628760_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4473244733_))))
                                 (let ((___kont4473544736_
                                        (lambda (_L28909_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28909_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4473744738_
                                        (lambda (_L28878_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28878_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4473944740_
                                        (lambda (_L28826_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28826_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4474144742_
                                        (lambda () (_K27956_ _vars27955_))))
                                   (if (gx#stx-pair? ___stx4473244733_)
                                       (let ((_e2872928899_
                                              (gx#syntax-e ___stx4473244733_)))
                                         (let ((_tl2873128906_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2872928899_)))
                                               (_hd2873028903_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2872928899_))))
                                           (if (gx#stx-null? _tl2873128906_)
                                               (___kont4473544736_
                                                _hd2873028903_)
                                               (if (gx#stx-datum?
                                                    _hd2873028903_)
                                                   (let ((_e2873628864_
                                                          (gx#stx-e
                                                           _hd2873028903_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2873628864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl2873128906_)
                     (let ((_e2873728868_ (gx#syntax-e _tl2873128906_)))
                       (let ((_tl2873928875_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2873728868_)))
                             (_hd2873828872_
                              (let ()
                                (declare (not safe))
                                (##car _e2873728868_))))
                         (if (gx#stx-null? _tl2873928875_)
                             (___kont4473744738_ _hd2873828872_)
                             (___kont4474144742_))))
                     (___kont4474144742_))
                 (if (let () (declare (not safe)) (equal? _e2873628864_ '::))
                     (if (gx#stx-pair? _tl2873128906_)
                         (let ((_e2874528792_ (gx#syntax-e _tl2873128906_)))
                           (let ((_tl2874728799_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2874528792_)))
                                 (_hd2874628796_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2874528792_))))
                             (if (gx#stx-pair? _tl2874728799_)
                                 (let ((_e2874828802_
                                        (gx#syntax-e _tl2874728799_)))
                                   (let ((_tl2875028809_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2874828802_)))
                                         (_hd2874928806_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2874828802_))))
                                     (if (gx#stx-datum? _hd2874928806_)
                                         (let ((_e2875128812_
                                                (gx#stx-e _hd2874928806_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e2875128812_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl2875028809_)
                                                   (let ((_e2875228816_
                                                          (gx#syntax-e
                                                           _tl2875028809_)))
                                                     (let ((_tl2875428823_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2875228816_)))
                                                           (_hd2875328820_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2875228816_))))
                                                       (if (gx#stx-null?
                                                            _tl2875428823_)
                                                           (___kont4473944740_
                                                            _hd2875328820_)
                                                           (___kont4474144742_))))
                                                   (___kont4474144742_))
                                               (___kont4474144742_)))
                                         (___kont4474144742_))))
                                 (___kont4474144742_))))
                         (___kont4474144742_))
                     (___kont4474144742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4474144742_)))))
                                       (___kont4474144742_))))))
                            (___kont4481744818_
                             (lambda (_L28596_ _L28598_)
                               (let* ((___stx4471644717_ _L28596_)
                                      (_g2861428626_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4471644717_))))
                                 (let ((___kont4471944720_
                                        (lambda (_L28654_ _L28656_)
                                          (let ((__tmp49189
                                                 (lambda (_g2866828670_)
                                                   (let ((__tmp49190
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27666_
                                                      __tmp49190
                                                      _g2866828670_
                                                      _K27956_)))))
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28656_
                                             _vars27955_
                                             __tmp49189))))
                                       (___kont4472144722_
                                        (lambda () (_K27956_ _vars27955_))))
                                   (if (gx#stx-pair? ___stx4471644717_)
                                       (let ((_e2861828644_
                                              (gx#syntax-e ___stx4471644717_)))
                                         (let ((_tl2862028651_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2861828644_)))
                                               (_hd2861928648_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2861828644_))))
                                           (___kont4471944720_
                                            _tl2862028651_
                                            _hd2861928648_)))
                                       (___kont4472144722_))))))
                            (___kont4481944820_
                             (lambda (_L28565_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28565_ _vars27955_ _K27956_))))
                            (___kont4482144822_
                             (lambda (_L28511_ _L28513_)
                               (let ((__tmp49191
                                      (lambda (_g2852828530_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27666_
                                           _L28511_
                                           _g2852828530_
                                           _K27956_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L28513_
                                  _vars27955_
                                  __tmp49191))))
                            (___kont4482344824_
                             (lambda (_L28447_ _L28449_)
                               (let ((__tmp49192
                                      (lambda (_g2846428466_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27666_
                                           _L28447_
                                           _g2846428466_
                                           _K27956_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L28449_
                                  _vars27955_
                                  __tmp49192))))
                            (___kont4482544826_
                             (lambda (_L28392_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28392_ _vars27955_ _K27956_))))
                            (___kont4482744828_
                             (lambda (_L28342_ _L28344_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27668_
                                  _L28342_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4482944830_
                             (lambda (_L28299_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27668_
                                  _L28299_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4483144832_
                             (lambda (_L28242_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27670_
                                  _L28242_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4483344834_
                             (lambda (_L28183_ _L28185_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28183_ _vars27955_ _K27956_))))
                            (___kont4483544836_
                             (lambda (_L28121_)
                               (if (find (lambda (_g2813628138_)
                                           (gx#bound-identifier=?
                                            _g2813628138_
                                            _L28121_))
                                         _vars27955_)
                                   (_K27956_ _vars27955_)
                                   (_K27956_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L28121_ _vars27955_))))))
                            (___kont4483744838_
                             (lambda () (_K27956_ _vars27955_))))
                        (let* ((___match4496944970_
                                (lambda (_e2802628322_
                                         _hd2802728326_
                                         _tl2802828329_
                                         _e2802928332_
                                         _hd2803028336_
                                         _tl2803128339_)
                                  (let ((_L28342_ _hd2803028336_)
                                        (_L28344_ _hd2802728326_))
                                    (if (or (gx#stx-eq? 'values: _L28344_)
                                            (gx#stx-eq? 'vector: _L28344_))
                                        (___kont4482744828_ _L28342_ _L28344_)
                                        (if (gx#stx-datum? _hd2802728326_)
                                            (let ((_e2803628275_
                                                   (gx#stx-e _hd2802728326_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2803628275_
                                                            'struct:))
                                                  (___kont4483744838_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2803628275_
                                                                'class:))
                                                      (___kont4483744838_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2803628275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4483744838_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2803628275_ 'var:))
                      (___kont4483544836_ _hd2803028336_)
                      (___kont4483744838_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4483744838_))))))
                               (___match4486344864_
                                (lambda (_e2798128586_
                                         _hd2798228590_
                                         _tl2798328593_)
                                  (let ((_L28596_ _tl2798328593_)
                                        (_L28598_ _hd2798228590_))
                                    (if (or (gx#stx-eq? 'and: _L28598_)
                                            (gx#stx-eq? 'or: _L28598_))
                                        (___kont4481744818_ _L28596_ _L28598_)
                                        (if (gx#stx-datum? _hd2798228590_)
                                            (let ((_e2798828551_
                                                   (gx#stx-e _hd2798228590_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2798828551_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl2798328593_)
                                                      (let ((_e2798928555_
                                                             (gx#syntax-e
                                                              _tl2798328593_)))
                                                        (let ((_tl2799128562_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2798928555_)))
                      (_hd2799028559_
                       (let () (declare (not safe)) (##car _e2798928555_))))
                  (if (gx#stx-null? _tl2799128562_)
                      (___kont4481944820_ _hd2799028559_)
                      (___kont4483744838_))))
              (___kont4483744838_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2798828551_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl2798328593_)
                                                          (let ((_e2799828491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2798328593_)))
                    (let ((_tl2800028498_
                           (let () (declare (not safe)) (##cdr _e2799828491_)))
                          (_hd2799928495_
                           (let ()
                             (declare (not safe))
                             (##car _e2799828491_))))
                      (if (gx#stx-pair? _tl2800028498_)
                          (let ((_e2800128501_ (gx#syntax-e _tl2800028498_)))
                            (let ((_tl2800328508_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2800128501_)))
                                  (_hd2800228505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2800128501_))))
                              (if (gx#stx-null? _tl2800328508_)
                                  (___kont4482144822_
                                   _hd2800228505_
                                   _hd2799928495_)
                                  (___kont4483744838_))))
                          (if (gx#stx-null? _tl2800028498_)
                              (___match4496944970_
                               _e2798128586_
                               _hd2798228590_
                               _tl2798328593_
                               _e2799828491_
                               _hd2799928495_
                               _tl2800028498_)
                              (___kont4483744838_)))))
                  (___kont4483744838_))
              (if (let () (declare (not safe)) (equal? _e2798828551_ 'splice:))
                  (if (gx#stx-pair? _tl2798328593_)
                      (let ((_e2801028427_ (gx#syntax-e _tl2798328593_)))
                        (let ((_tl2801228434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2801028427_)))
                              (_hd2801128431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2801028427_))))
                          (if (gx#stx-pair? _tl2801228434_)
                              (let ((_e2801328437_
                                     (gx#syntax-e _tl2801228434_)))
                                (let ((_tl2801528444_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2801328437_)))
                                      (_hd2801428441_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2801328437_))))
                                  (if (gx#stx-null? _tl2801528444_)
                                      (___kont4482344824_
                                       _hd2801428441_
                                       _hd2801128431_)
                                      (___kont4483744838_))))
                              (if (gx#stx-null? _tl2801228434_)
                                  (___match4496944970_
                                   _e2798128586_
                                   _hd2798228590_
                                   _tl2798328593_
                                   _e2801028427_
                                   _hd2801128431_
                                   _tl2801228434_)
                                  (___kont4483744838_)))))
                      (___kont4483744838_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2798828551_ 'box:))
                      (if (gx#stx-pair? _tl2798328593_)
                          (let ((_e2802128382_ (gx#syntax-e _tl2798328593_)))
                            (let ((_tl2802328389_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2802128382_)))
                                  (_hd2802228386_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2802128382_))))
                              (if (gx#stx-null? _tl2802328389_)
                                  (___kont4482544826_ _hd2802228386_)
                                  (___kont4483744838_))))
                          (___kont4483744838_))
                      (if (gx#stx-pair? _tl2798328593_)
                          (let ((_e2802928332_ (gx#syntax-e _tl2798328593_)))
                            (let ((_tl2803128339_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2802928332_)))
                                  (_hd2803028336_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2802928332_))))
                              (if (gx#stx-null? _tl2803128339_)
                                  (___match4496944970_
                                   _e2798128586_
                                   _hd2798228590_
                                   _tl2798328593_
                                   _e2802928332_
                                   _hd2803028336_
                                   _tl2803128339_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e2798828551_ 'struct:))
                                      (if (gx#stx-pair? _tl2803128339_)
                                          (let ((_e2804028289_
                                                 (gx#syntax-e _tl2803128339_)))
                                            (let ((_tl2804228296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2804028289_)))
                                                  (_hd2804128293_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2804028289_))))
                                              (if (gx#stx-null? _tl2804228296_)
                                                  (___kont4482944830_
                                                   _hd2804128293_)
                                                  (___kont4483744838_))))
                                          (___kont4483744838_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2798828551_ 'class:))
                                          (if (gx#stx-pair? _tl2803128339_)
                                              (let ((_e2805128232_
                                                     (gx#syntax-e
                                                      _tl2803128339_)))
                                                (let ((_tl2805328239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2805128232_)))
                                                      (_hd2805228236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2805128232_))))
                                                  (if (gx#stx-null?
                                                       _tl2805328239_)
                                                      (___kont4483144832_
                                                       _hd2805228236_)
                                                      (___kont4483744838_))))
                                              (___kont4483744838_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2798828551_ 'apply:))
                                              (if (gx#stx-pair? _tl2803128339_)
                                                  (let ((_e2806328173_
                                                         (gx#syntax-e
                                                          _tl2803128339_)))
                                                    (let ((_tl2806528180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2806328173_)))
                                                          (_hd2806428177_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2806328173_))))
                                                      (if (gx#stx-null?
                                                           _tl2806528180_)
                                                          (___kont4483344834_
                                                           _hd2806428177_
                                                           _hd2803028336_)
                                                          (___kont4483744838_))))
                                                  (___kont4483744838_))
                                              (___kont4483744838_)))))))
                          (___kont4483744838_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2798328593_)
                                                (let ((_e2802928332_
                                                       (gx#syntax-e
                                                        _tl2798328593_)))
                                                  (let ((_tl2803128339_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2802928332_)))
                                                        (_hd2803028336_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2802928332_))))
                                                    (if (gx#stx-null?
                                                         _tl2803128339_)
                                                        (___match4496944970_
                                                         _e2798128586_
                                                         _hd2798228590_
                                                         _tl2798328593_
                                                         _e2802928332_
                                                         _hd2803028336_
                                                         _tl2803128339_)
                                                        (___kont4483744838_))))
                                                (___kont4483744838_))))))))
                          (if (gx#stx-pair? ___stx4481244813_)
                              (let ((_e2797228685_
                                     (gx#syntax-e ___stx4481244813_)))
                                (let ((_tl2797428692_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2797228685_)))
                                      (_hd2797328689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2797228685_))))
                                  (if (gx#stx-datum? _hd2797328689_)
                                      (let ((_e2797528695_
                                             (gx#stx-e _hd2797328689_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2797528695_ '?:))
                                            (if (gx#stx-pair? _tl2797428692_)
                                                (let ((_e2797628699_
                                                       (gx#syntax-e
                                                        _tl2797428692_)))
                                                  (let ((_tl2797828706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2797628699_)))
                                                        (_hd2797728703_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2797628699_))))
                                                    (___kont4481544816_
                                                     _tl2797828706_)))
                                                (___match4486344864_
                                                 _e2797228685_
                                                 _hd2797328689_
                                                 _tl2797428692_))
                                            (___match4486344864_
                                             _e2797228685_
                                             _hd2797328689_
                                             _tl2797428692_)))
                                      (___match4486344864_
                                       _e2797228685_
                                       _hd2797328689_
                                       _tl2797428692_))))
                              (___kont4483744838_)))))))
                 (_loop-vector27668_
                  (lambda (_body27829_ _vars27831_ _K27832_)
                    (let* ((___stx4507045071_ _body27829_)
                           (_g2783527858_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4507045071_))))
                      (let ((___kont4507345074_
                             (lambda (_L27935_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27669_
                                  _L27935_
                                  _vars27831_
                                  _K27832_))))
                            (___kont4507545076_
                             (lambda (_L27889_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27889_
                                  _vars27831_
                                  _K27832_)))))
                        (if (gx#stx-pair? ___stx4507045071_)
                            (let ((_e2783827911_
                                   (gx#syntax-e ___stx4507045071_)))
                              (let ((_tl2784027918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2783827911_)))
                                    (_hd2783927915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2783827911_))))
                                (if (gx#stx-datum? _hd2783927915_)
                                    (let ((_e2784127921_
                                           (gx#stx-e _hd2783927915_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2784127921_ 'simple:))
                                          (if (gx#stx-pair? _tl2784027918_)
                                              (let ((_e2784227925_
                                                     (gx#syntax-e
                                                      _tl2784027918_)))
                                                (let ((_tl2784427932_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2784227925_)))
                                                      (_hd2784327929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2784227925_))))
                                                  (if (gx#stx-null?
                                                       _tl2784427932_)
                                                      (___kont4507345074_
                                                       _hd2784327929_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2783527858_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2783527858_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2784127921_ 'list:))
                                              (if (gx#stx-pair? _tl2784027918_)
                                                  (let ((_e2785027879_
                                                         (gx#syntax-e
                                                          _tl2784027918_)))
                                                    (let ((_tl2785227886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2785027879_)))
                                                          (_hd2785127883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2785027879_))))
                                                      (if (gx#stx-null?
                                                           _tl2785227886_)
                                                          (___kont4507545076_
                                                           _hd2785127883_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2783527858_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2783527858_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2783527858_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2783527858_)))))
                            (let () (declare (not safe)) (_g2783527858_)))))))
                 (_loop-list27669_
                  (lambda (_rest27759_ _vars27761_ _K27762_)
                    (let* ((___stx4512045121_ _rest27759_)
                           (_g2776527777_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4512045121_))))
                      (let ((___kont4512345124_
                             (lambda (_L27805_ _L27807_)
                               (let ((__tmp49193
                                      (lambda (_g2781927821_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27669_
                                           _L27805_
                                           _g2781927821_
                                           _K27762_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27807_
                                  _vars27761_
                                  __tmp49193))))
                            (___kont4512545126_
                             (lambda () (_K27762_ _vars27761_))))
                        (if (gx#stx-pair? ___stx4512045121_)
                            (let ((_e2776927795_
                                   (gx#syntax-e ___stx4512045121_)))
                              (let ((_tl2777127802_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2776927795_)))
                                    (_hd2777027799_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2776927795_))))
                                (___kont4512345124_
                                 _tl2777127802_
                                 _hd2777027799_)))
                            (___kont4512545126_))))))
                 (_loop-class-list27670_
                  (lambda (_rest27672_ _vars27674_ _K27675_)
                    (let* ((___stx4513645137_ _rest27672_)
                           (_g2767827693_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4513645137_))))
                      (let ((___kont4513945140_
                             (lambda (_L27731_ _L27733_)
                               (let ((__tmp49194
                                      (lambda (_g2774927751_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27670_
                                           _L27731_
                                           _g2774927751_
                                           _K27675_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27733_
                                  _vars27674_
                                  __tmp49194))))
                            (___kont4514145142_
                             (lambda () (_K27675_ _vars27674_))))
                        (if (gx#stx-pair? ___stx4513645137_)
                            (let ((_e2768227711_
                                   (gx#syntax-e ___stx4513645137_)))
                              (let ((_tl2768427718_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2768227711_)))
                                    (_hd2768327715_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2768227711_))))
                                (if (gx#stx-pair? _tl2768427718_)
                                    (let ((_e2768527721_
                                           (gx#syntax-e _tl2768427718_)))
                                      (let ((_tl2768727728_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2768527721_)))
                                            (_hd2768627725_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2768527721_))))
                                        (___kont4513945140_
                                         _tl2768727728_
                                         _hd2768627725_)))
                                    (___kont4514145142_))))
                            (___kont4514145142_)))))))
          (let ()
            (declare (not safe))
            (_loop27666_ _ptree27663_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx24624_ _tgt24626_ _ptree24627_ _K24628_ _E24629_)
        (letrec ((_generate124631_
                  (lambda (_tgt25876_ _ptree25878_ _K25879_ _E25880_)
                    (let* ((_g2588225890_
                            (lambda (_g2588325886_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2588325886_)))
                           (_g2588127659_
                            (lambda (_g2588325894_)
                              ((lambda (_L25897_)
                                 (let ()
                                   (let* ((___stx4537245373_ _ptree25878_)
                                          (_g2592426066_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4537245373_))))
                                     (let ((___kont4537545376_
                                            (lambda (_L27374_ _L27376_)
                                              (let* ((___stx4529045291_
                                                      _L27374_)
                                                     (_g2739327428_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4529045291_))))
                                                (let ((___kont4529345294_
                                                       (lambda ()
                                                         (let ((__tmp49195
                                                                (let ((__tmp49198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49201 (gx#datum->syntax '#f '?))
                                     (__tmp49199
                                      (let ((__tmp49200
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons _L27376_ __tmp49200))))
                                 (declare (not safe))
                                 (cons __tmp49201 __tmp49199)))
                              (__tmp49196
                               (let ((__tmp49197
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons _K25879_ __tmp49197))))
                          (declare (not safe))
                          (cons __tmp49198 __tmp49196))))
                   (declare (not safe))
                   (cons 'if __tmp49195))))
              (___kont4529545296_
               (lambda (_L27629_)
                 (let ((__tmp49202
                        (let ((__tmp49206
                               (let ((__tmp49209 (gx#datum->syntax '#f '?))
                                     (__tmp49207
                                      (let ((__tmp49208
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons _L27376_ __tmp49208))))
                                 (declare (not safe))
                                 (cons __tmp49209 __tmp49207)))
                              (__tmp49203
                               (let ((__tmp49205
                                      (let ()
                                        (declare (not safe))
                                        (_generate124631_
                                         _tgt25876_
                                         _L27629_
                                         _K25879_
                                         _E25880_)))
                                     (__tmp49204
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49205 __tmp49204))))
                          (declare (not safe))
                          (cons __tmp49206 __tmp49203))))
                   (declare (not safe))
                   (cons 'if __tmp49202))))
              (___kont4529745298_
               (lambda (_L27567_)
                 (let* ((_g2758127589_
                         (lambda (_g2758227585_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2758227585_)))
                        (_g2758027608_
                         (lambda (_g2758227593_)
                           ((lambda (_L27596_)
                              (let ()
                                (let ((__tmp49210
                                       (let ((__tmp49217
                                              (let ((__tmp49218
                                                     (let ((__tmp49219
                                                            (let ((__tmp49220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49221
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons _L27376_ __tmp49221))))
                      (declare (not safe))
                      (cons __tmp49220 '()))))
               (declare (not safe))
               (cons _L27596_ __tmp49219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49218 '())))
                                             (__tmp49211
                                              (let ((__tmp49212
                                                     (let ((__tmp49213
                                                            (let ((__tmp49214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49216
                                  (let ()
                                    (declare (not safe))
                                    (_generate124631_
                                     _L27596_
                                     _L27567_
                                     _K25879_
                                     _E25880_)))
                                 (__tmp49215
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25880_ '()))))
                             (declare (not safe))
                             (cons __tmp49216 __tmp49215))))
                      (declare (not safe))
                      (cons _L27596_ __tmp49214))))
               (declare (not safe))
               (cons 'if __tmp49213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49212 '()))))
                                         (declare (not safe))
                                         (cons __tmp49217 __tmp49211))))
                                  (declare (not safe))
                                  (cons 'let __tmp49210))))
                            _g2758227593_)))
                        (__tmp49222 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2758027608_ __tmp49222))))
              (___kont4529945300_
               (lambda (_L27483_ _L27485_)
                 (let* ((_g2750527513_
                         (lambda (_g2750627509_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2750627509_)))
                        (_g2750427532_
                         (lambda (_g2750627517_)
                           ((lambda (_L27520_)
                              (let ()
                                (let ((__tmp49223
                                       (let ((__tmp49235
                                              (let ((__tmp49238
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp49236
                                                     (let ((__tmp49237
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L25897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27376_ __tmp49237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49238 __tmp49236)))
                                             (__tmp49224
                                              (let ((__tmp49226
                                                     (let ((__tmp49227
                                                            (let ((__tmp49230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49231
                                  (let ((__tmp49232
                                         (let ((__tmp49233
                                                (let ((__tmp49234
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25897_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27485_ __tmp49234))))
                                           (declare (not safe))
                                           (cons __tmp49233 '()))))
                                    (declare (not safe))
                                    (cons _L27520_ __tmp49232))))
                             (declare (not safe))
                             (cons __tmp49231 '())))
                          (__tmp49228
                           (let ((__tmp49229
                                  (let ()
                                    (declare (not safe))
                                    (_generate124631_
                                     _L27520_
                                     _L27483_
                                     _K25879_
                                     _E25880_))))
                             (declare (not safe))
                             (cons __tmp49229 '()))))
                      (declare (not safe))
                      (cons __tmp49230 __tmp49228))))
               (declare (not safe))
               (cons 'let __tmp49227)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49225
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49226 __tmp49225))))
                                         (declare (not safe))
                                         (cons __tmp49235 __tmp49224))))
                                  (declare (not safe))
                                  (cons 'if __tmp49223))))
                            _g2750627517_)))
                        (__tmp49239 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2750427532_ __tmp49239)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2739027640_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4529045291_)
                                                               (let ((_e2739627619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4529045291_)))
                         (let ((_tl2739827626_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2739627619_)))
                               (_hd2739727623_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2739627619_))))
                           (if (gx#stx-null? _tl2739827626_)
                               (___kont4529545296_ _hd2739727623_)
                               (if (gx#stx-datum? _hd2739727623_)
                                   (let ((_e2740327553_
                                          (gx#stx-e _hd2739727623_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2740327553_ '=>:))
                                         (if (gx#stx-pair? _tl2739827626_)
                                             (let ((_e2740427557_
                                                    (gx#syntax-e
                                                     _tl2739827626_)))
                                               (let ((_tl2740627564_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2740427557_)))
                                                     (_hd2740527561_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2740427557_))))
                                                 (if (gx#stx-null?
                                                      _tl2740627564_)
                                                     (___kont4529745298_
                                                      _hd2740527561_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2739327428_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2739327428_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2740327553_ '::))
                                             (if (gx#stx-pair? _tl2739827626_)
                                                 (let ((_e2741327449_
                                                        (gx#syntax-e
                                                         _tl2739827626_)))
                                                   (let ((_tl2741527456_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2741327449_)))
                                                         (_hd2741427453_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2741327449_))))
                                                     (if (gx#stx-pair?
                                                          _tl2741527456_)
                                                         (let ((_e2741627459_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2741527456_)))
                   (let ((_tl2741827466_
                          (let () (declare (not safe)) (##cdr _e2741627459_)))
                         (_hd2741727463_
                          (let () (declare (not safe)) (##car _e2741627459_))))
                     (if (gx#stx-datum? _hd2741727463_)
                         (let ((_e2741927469_ (gx#stx-e _hd2741727463_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e2741927469_ '=>:))
                               (if (gx#stx-pair? _tl2741827466_)
                                   (let ((_e2742027473_
                                          (gx#syntax-e _tl2741827466_)))
                                     (let ((_tl2742227480_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2742027473_)))
                                           (_hd2742127477_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2742027473_))))
                                       (if (gx#stx-null? _tl2742227480_)
                                           (___kont4529945300_
                                            _hd2742127477_
                                            _hd2741427453_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2739327428_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2739327428_)))
                               (let () (declare (not safe)) (_g2739327428_))))
                         (let () (declare (not safe)) (_g2739327428_)))))
                 (let () (declare (not safe)) (_g2739327428_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2739327428_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2739327428_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2739327428_))))))
                       (let () (declare (not safe)) (_g2739327428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4529045291_)
                                                        (___kont4529345294_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2739027640_))))))))
                                           (___kont4537745378_
                                            (lambda (_L27271_)
                                              (let* ((___stx4527445275_
                                                      _L27271_)
                                                     (_g2728427296_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4527445275_))))
                                                (let ((___kont4527745278_
                                                       (lambda (_L27324_
                                                                _L27326_)
                                                         (let ((__tmp49240
                                                                (let ((__tmp49241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27324_))))
                          (declare (not safe))
                          (_generate124631_
                           _tgt25876_
                           __tmp49241
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_
                    _tgt25876_
                    _L27326_
                    __tmp49240
                    _E25880_))))
              (___kont4527945280_ (lambda () _K25879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4527445275_)
                                                      (let ((_e2728827314_
                                                             (gx#syntax-e
                                                              ___stx4527445275_)))
                                                        (let ((_tl2729027321_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2728827314_)))
                      (_hd2728927318_
                       (let () (declare (not safe)) (##car _e2728827314_))))
                  (___kont4527745278_ _tl2729027321_ _hd2728927318_)))
              (___kont4527945280_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4537945380_
                                            (lambda (_L27178_)
                                              (let* ((___stx4525845259_
                                                      _L27178_)
                                                     (_g2719127203_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4525845259_))))
                                                (let ((___kont4526145262_
                                                       (lambda (_L27231_
                                                                _L27233_)
                                                         (let ((__tmp49242
                                                                (let ((__tmp49243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27231_))))
                          (declare (not safe))
                          (_generate124631_
                           _tgt25876_
                           __tmp49243
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_
                    _tgt25876_
                    _L27233_
                    _K25879_
                    __tmp49242))))
              (___kont4526345264_ (lambda () _E25880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4525845259_)
                                                      (let ((_e2719527221_
                                                             (gx#syntax-e
                                                              ___stx4525845259_)))
                                                        (let ((_tl2719727228_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2719527221_)))
                      (_hd2719627225_
                       (let () (declare (not safe)) (##car _e2719527221_))))
                  (___kont4526145262_ _tl2719727228_ _hd2719627225_)))
              (___kont4526345264_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4538145382_
                                            (lambda (_L27143_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124631_
                                                 _tgt25876_
                                                 _L27143_
                                                 _E25880_
                                                 _K25879_))))
                                           (___kont4538345384_
                                            (lambda (_L27025_ _L27027_)
                                              (let* ((_g2704427059_
                                                      (lambda (_g2704527055_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2704527055_)))
                                                     (_g2704327108_
                                                      (lambda (_g2704527063_)
                                                        (if (gx#stx-pair?
                                                             _g2704527063_)
                                                            (let ((_e2704827066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2704527063_)))
                      (let ((_hd2704927070_
                             (let ()
                               (declare (not safe))
                               (##car _e2704827066_)))
                            (_tl2705027073_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2704827066_))))
                        (if (gx#stx-pair? _tl2705027073_)
                            (let ((_e2705127076_ (gx#syntax-e _tl2705027073_)))
                              (let ((_hd2705227080_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2705127076_)))
                                    (_tl2705327083_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2705127076_))))
                                (if (gx#stx-null? _tl2705327083_)
                                    ((lambda (_L27086_ _L27088_)
                                       (let ()
                                         (let ((__tmp49244
                                                (let ((__tmp49282
                                                       (let ((__tmp49284
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp49283
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L25897_ '()))))
                 (declare (not safe))
                 (cons __tmp49284 __tmp49283)))
              (__tmp49245
               (let ((__tmp49247
                      (let ((_hd-pat27104_ (gx#stx-e _L27027_))
                            (_tl-pat27106_ (gx#stx-e _L27025_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat27104_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat27106_ '(any:))))
                            _K25879_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat27106_ '(any:)))
                                (let ((__tmp49248
                                       (let ((__tmp49251
                                              (let ((__tmp49252
                                                     (let ((__tmp49253
                                                            (let ((__tmp49254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49256 (gx#datum->syntax '#f '##car))
                                 (__tmp49255
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons __tmp49256 __tmp49255))))
                      (declare (not safe))
                      (cons __tmp49254 '()))))
               (declare (not safe))
               (cons _L27088_ __tmp49253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49252 '())))
                                             (__tmp49249
                                              (let ((__tmp49250
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124631_
                                                        _L27088_
                                                        _L27027_
                                                        _K25879_
                                                        _E25880_))))
                                                (declare (not safe))
                                                (cons __tmp49250 '()))))
                                         (declare (not safe))
                                         (cons __tmp49251 __tmp49249))))
                                  (declare (not safe))
                                  (cons 'let __tmp49248))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat27104_ '(any:)))
                                    (let ((__tmp49257
                                           (let ((__tmp49260
                                                  (let ((__tmp49261
                                                         (let ((__tmp49262
                                                                (let ((__tmp49263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49265 (gx#datum->syntax '#f '##cdr))
                                     (__tmp49264
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49265 __tmp49264))))
                          (declare (not safe))
                          (cons __tmp49263 '()))))
                   (declare (not safe))
                   (cons _L27086_ __tmp49262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49261 '())))
                                                 (__tmp49258
                                                  (let ((__tmp49259
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124631_
                                                            _L27086_
                                                            _L27025_
                                                            _K25879_
                                                            _E25880_))))
                                                    (declare (not safe))
                                                    (cons __tmp49259 '()))))
                                             (declare (not safe))
                                             (cons __tmp49260 __tmp49258))))
                                      (declare (not safe))
                                      (cons 'let __tmp49257))
                                    (let ((__tmp49266
                                           (let ((__tmp49270
                                                  (let ((__tmp49277
                                                         (let ((__tmp49278
                                                                (let ((__tmp49279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49281 (gx#datum->syntax '#f '##car))
                                     (__tmp49280
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49281 __tmp49280))))
                          (declare (not safe))
                          (cons __tmp49279 '()))))
                   (declare (not safe))
                   (cons _L27088_ __tmp49278)))
                (__tmp49271
                 (let ((__tmp49272
                        (let ((__tmp49273
                               (let ((__tmp49274
                                      (let ((__tmp49276
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp49275
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49276 __tmp49275))))
                                 (declare (not safe))
                                 (cons __tmp49274 '()))))
                          (declare (not safe))
                          (cons _L27086_ __tmp49273))))
                   (declare (not safe))
                   (cons __tmp49272 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49277
                                                          __tmp49271)))
                                                 (__tmp49267
                                                  (let ((__tmp49268
                                                         (let ((__tmp49269
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124631_
                           _L27086_
                           _L27025_
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_ _L27088_ _L27027_ __tmp49269 _E25880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49268 '()))))
                                             (declare (not safe))
                                             (cons __tmp49270 __tmp49267))))
                                      (declare (not safe))
                                      (cons 'let __tmp49266)))))))
                     (__tmp49246
                      (let () (declare (not safe)) (cons _E25880_ '()))))
                 (declare (not safe))
                 (cons __tmp49247 __tmp49246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49282
                                                        __tmp49245))))
                                           (declare (not safe))
                                           (cons 'if __tmp49244))))
                                     _hd2705227080_
                                     _hd2704927070_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2704427059_ _g2704527063_)))))
                            (let ()
                              (declare (not safe))
                              (_g2704427059_ _g2704527063_)))))
                    (let ()
                      (declare (not safe))
                      (_g2704427059_ _g2704527063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49285
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2704327108_ __tmp49285))))
                                           (___kont4538545386_
                                            (lambda ()
                                              (let ((__tmp49286
                                                     (let ((__tmp49289
                                                            (let ((__tmp49291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp49290
                           (let () (declare (not safe)) (cons _L25897_ '()))))
                      (declare (not safe))
                      (cons __tmp49291 __tmp49290)))
                   (__tmp49287
                    (let ((__tmp49288
                           (let () (declare (not safe)) (cons _E25880_ '()))))
                      (declare (not safe))
                      (cons _K25879_ __tmp49288))))
               (declare (not safe))
               (cons __tmp49289 __tmp49287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp49286))))
                                           (___kont4538745388_
                                            (lambda (_L26941_ _L26943_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24633_
                                                 _tgt25876_
                                                 _L26943_
                                                 _L26941_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4538945390_
                                            (lambda (_L26855_)
                                              (let* ((_g2686926877_
                                                      (lambda (_g2687026873_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2687026873_)))
                                                     (_g2686826896_
                                                      (lambda (_g2687026881_)
                                                        ((lambda (_L26884_)
                                                           (let ()
                                                             (let ((__tmp49292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49305
                                   (let ((__tmp49307
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp49306
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25897_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49307 __tmp49306)))
                                  (__tmp49293
                                   (let ((__tmp49295
                                          (let ((__tmp49296
                                                 (let ((__tmp49299
                                                        (let ((__tmp49300
                                                               (let ((__tmp49301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49302
                                     (let ((__tmp49304
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp49303
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25897_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49304 __tmp49303))))
                                (declare (not safe))
                                (cons __tmp49302 '()))))
                         (declare (not safe))
                         (cons _L26884_ __tmp49301))))
                  (declare (not safe))
                  (cons __tmp49300 '())))
               (__tmp49297
                (let ((__tmp49298
                       (let ()
                         (declare (not safe))
                         (_generate124631_
                          _L26884_
                          _L26855_
                          _K25879_
                          _E25880_))))
                  (declare (not safe))
                  (cons __tmp49298 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49299
                                                         __tmp49297))))
                                            (declare (not safe))
                                            (cons 'let __tmp49296)))
                                         (__tmp49294
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25880_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49295 __tmp49294))))
                              (declare (not safe))
                              (cons __tmp49305 __tmp49293))))
                       (declare (not safe))
                       (cons 'if __tmp49292))))
                 _g2687026881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49308
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2686826896_ __tmp49308))))
                                           (___kont4539145392_
                                            (lambda (_L26660_)
                                              (let* ((___stx4520845209_
                                                      _L26660_)
                                                     (_g2667526698_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4520845209_))))
                                                (let ((___kont4521145212_
                                                       (lambda (_L26775_)
                                                         (let* ((_g2678926797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2679026793_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2679026793_)))
                        (_g2678826816_
                         (lambda (_g2679026801_)
                           ((lambda (_L26804_)
                              (let ()
                                (let ((__tmp49309
                                       (let ((__tmp49313
                                              (let ((__tmp49319
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp49314
                                                     (let ((__tmp49316
                                                            (let ((__tmp49318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp49317
                           (let () (declare (not safe)) (cons _L25897_ '()))))
                      (declare (not safe))
                      (cons __tmp49318 __tmp49317)))
                   (__tmp49315
                    (let () (declare (not safe)) (cons _L26804_ '()))))
               (declare (not safe))
               (cons __tmp49316 __tmp49315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49319 __tmp49314)))
                                             (__tmp49310
                                              (let ((__tmp49312
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24634_
                                                        _tgt25876_
                                                        _L26775_
                                                        '0
                                                        _K25879_
                                                        _E25880_)))
                                                    (__tmp49311
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49312 __tmp49311))))
                                         (declare (not safe))
                                         (cons __tmp49313 __tmp49310))))
                                  (declare (not safe))
                                  (cons 'if __tmp49309))))
                            _g2679026801_)))
                        (__tmp49320 (gx#stx-length _L26775_)))
                   (declare (not safe))
                   (_g2678826816_ __tmp49320))))
              (___kont4521345214_
               (lambda (_L26729_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector24635_
                    _tgt25876_
                    _L26729_
                    'values->list
                    _K25879_
                    _E25880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4520845209_)
                                                      (let ((_e2667826751_
                                                             (gx#syntax-e
                                                              ___stx4520845209_)))
                                                        (let ((_tl2668026758_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2667826751_)))
                      (_hd2667926755_
                       (let () (declare (not safe)) (##car _e2667826751_))))
                  (if (gx#stx-datum? _hd2667926755_)
                      (let ((_e2668126761_ (gx#stx-e _hd2667926755_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2668126761_ 'simple:))
                            (if (gx#stx-pair? _tl2668026758_)
                                (let ((_e2668226765_
                                       (gx#syntax-e _tl2668026758_)))
                                  (let ((_tl2668426772_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2668226765_)))
                                        (_hd2668326769_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2668226765_))))
                                    (if (gx#stx-null? _tl2668426772_)
                                        (___kont4521145212_ _hd2668326769_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2667526698_)))))
                                (let () (declare (not safe)) (_g2667526698_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2668126761_ 'list:))
                                (if (gx#stx-pair? _tl2668026758_)
                                    (let ((_e2669026719_
                                           (gx#syntax-e _tl2668026758_)))
                                      (let ((_tl2669226726_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2669026719_)))
                                            (_hd2669126723_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2669026719_))))
                                        (if (gx#stx-null? _tl2669226726_)
                                            (___kont4521345214_ _hd2669126723_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2667526698_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2667526698_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2667526698_)))))
                      (let () (declare (not safe)) (_g2667526698_)))))
              (let () (declare (not safe)) (_g2667526698_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4539345394_
                                            (lambda (_L26465_)
                                              (let* ((___stx4515845159_
                                                      _L26465_)
                                                     (_g2648026503_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4515845159_))))
                                                (let ((___kont4516145162_
                                                       (lambda (_L26580_)
                                                         (let* ((_g2659426602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2659526598_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2659526598_)))
                        (_g2659326621_
                         (lambda (_g2659526606_)
                           ((lambda (_L26609_)
                              (let ()
                                (let ((__tmp49321
                                       (let ((__tmp49336
                                              (let ((__tmp49338
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp49337
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25897_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49338 __tmp49337)))
                                             (__tmp49322
                                              (let ((__tmp49324
                                                     (let ((__tmp49325
                                                            (let ((__tmp49329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49335 (gx#datum->syntax '#f '##fx=))
                                 (__tmp49330
                                  (let ((__tmp49332
                                         (let ((__tmp49334
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp49333
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L25897_ '()))))
                                           (declare (not safe))
                                           (cons __tmp49334 __tmp49333)))
                                        (__tmp49331
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26609_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49332 __tmp49331))))
                             (declare (not safe))
                             (cons __tmp49335 __tmp49330)))
                          (__tmp49326
                           (let ((__tmp49328
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24634_
                                     _tgt25876_
                                     _L26580_
                                     '0
                                     _K25879_
                                     _E25880_)))
                                 (__tmp49327
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25880_ '()))))
                             (declare (not safe))
                             (cons __tmp49328 __tmp49327))))
                      (declare (not safe))
                      (cons __tmp49329 __tmp49326))))
               (declare (not safe))
               (cons 'if __tmp49325)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49323
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49324 __tmp49323))))
                                         (declare (not safe))
                                         (cons __tmp49336 __tmp49322))))
                                  (declare (not safe))
                                  (cons 'if __tmp49321))))
                            _g2659526606_)))
                        (__tmp49339 (gx#stx-length _L26580_)))
                   (declare (not safe))
                   (_g2659326621_ __tmp49339))))
              (___kont4516345164_
               (lambda (_L26534_)
                 (let ((__tmp49340
                        (let ((__tmp49344
                               (let ((__tmp49346
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp49345
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49346 __tmp49345)))
                              (__tmp49341
                               (let ((__tmp49343
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24635_
                                         _tgt25876_
                                         _L26534_
                                         'vector->list
                                         _K25879_
                                         _E25880_)))
                                     (__tmp49342
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49343 __tmp49342))))
                          (declare (not safe))
                          (cons __tmp49344 __tmp49341))))
                   (declare (not safe))
                   (cons 'if __tmp49340)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4515845159_)
                                                      (let ((_e2648326556_
                                                             (gx#syntax-e
                                                              ___stx4515845159_)))
                                                        (let ((_tl2648526563_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2648326556_)))
                      (_hd2648426560_
                       (let () (declare (not safe)) (##car _e2648326556_))))
                  (if (gx#stx-datum? _hd2648426560_)
                      (let ((_e2648626566_ (gx#stx-e _hd2648426560_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2648626566_ 'simple:))
                            (if (gx#stx-pair? _tl2648526563_)
                                (let ((_e2648726570_
                                       (gx#syntax-e _tl2648526563_)))
                                  (let ((_tl2648926577_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2648726570_)))
                                        (_hd2648826574_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2648726570_))))
                                    (if (gx#stx-null? _tl2648926577_)
                                        (___kont4516145162_ _hd2648826574_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2648026503_)))))
                                (let () (declare (not safe)) (_g2648026503_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2648626566_ 'list:))
                                (if (gx#stx-pair? _tl2648526563_)
                                    (let ((_e2649526524_
                                           (gx#syntax-e _tl2648526563_)))
                                      (let ((_tl2649726531_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2649526524_)))
                                            (_hd2649626528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2649526524_))))
                                        (if (gx#stx-null? _tl2649726531_)
                                            (___kont4516345164_ _hd2649626528_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2648026503_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2648026503_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2648026503_)))))
                      (let () (declare (not safe)) (_g2648026503_)))))
              (let () (declare (not safe)) (_g2648026503_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4539545396_
                                            (lambda (_L26416_ _L26418_)
                                              (let ((__tmp49347
                                                     (gx#stx-e _L26418_)))
                                                (declare (not safe))
                                                (_generate-struct24636_
                                                 __tmp49347
                                                 _tgt25876_
                                                 _L26416_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4539745398_
                                            (lambda (_L26357_ _L26359_)
                                              (let ((__tmp49348
                                                     (gx#stx-e _L26359_)))
                                                (declare (not safe))
                                                (_generate-class24639_
                                                 __tmp49348
                                                 _tgt25876_
                                                 _L26357_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4539945400_
                                            (lambda (_L26260_)
                                              (let* ((_g2627426282_
                                                      (lambda (_g2627526278_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2627526278_)))
                                                     (_g2627326301_
                                                      (lambda (_g2627526286_)
                                                        ((lambda (_L26289_)
                                                           (let ()
                                                             (let ((__tmp49349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49352
                                   (let ((__tmp49353
                                          (let ((__tmp49354
                                                 (let ((__tmp49355
                                                        (let ((__tmp49357
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp49356
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26260_ '()))))
                  (declare (not safe))
                  (cons __tmp49357 __tmp49356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49355 '()))))
                                            (declare (not safe))
                                            (cons _L25897_ __tmp49354))))
                                     (declare (not safe))
                                     (cons _L26289_ __tmp49353)))
                                  (__tmp49350
                                   (let ((__tmp49351
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25880_ '()))))
                                     (declare (not safe))
                                     (cons _K25879_ __tmp49351))))
                              (declare (not safe))
                              (cons __tmp49352 __tmp49350))))
                       (declare (not safe))
                       (cons 'if __tmp49349))))
                 _g2627526286_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49358
                                                      (let ((_e26305_
                                                             (gx#stx-e
                                                              _L26260_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e26305_))
                        (keyword? _e26305_)
                        (let () (declare (not safe)) (immediate? _e26305_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e26305_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2627326301_ __tmp49358))))
                                           (___kont4540145402_
                                            (lambda (_L26180_ _L26182_)
                                              (let* ((_g2619826206_
                                                      (lambda (_g2619926202_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2619926202_)))
                                                     (_g2619726225_
                                                      (lambda (_g2619926210_)
                                                        ((lambda (_L26213_)
                                                           (let ()
                                                             (let ((__tmp49359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49362
                                   (let ((__tmp49363
                                          (let ((__tmp49364
                                                 (let ((__tmp49365
                                                        (let ((__tmp49366
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L25897_ '()))))
                  (declare (not safe))
                  (cons _L26182_ __tmp49366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49365 '()))))
                                            (declare (not safe))
                                            (cons _L26213_ __tmp49364))))
                                     (declare (not safe))
                                     (cons __tmp49363 '())))
                                  (__tmp49360
                                   (let ((__tmp49361
                                          (let ()
                                            (declare (not safe))
                                            (_generate124631_
                                             _L26213_
                                             _L26180_
                                             _K25879_
                                             _E25880_))))
                                     (declare (not safe))
                                     (cons __tmp49361 '()))))
                              (declare (not safe))
                              (cons __tmp49362 __tmp49360))))
                       (declare (not safe))
                       (cons 'let __tmp49359))))
                 _g2619926210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49367
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2619726225_ __tmp49367))))
                                           (___kont4540345404_
                                            (lambda (_L26122_)
                                              (let ((__tmp49368
                                                     (let ((__tmp49370
                                                            (let ((__tmp49371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49372
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons _L26122_ __tmp49372))))
                      (declare (not safe))
                      (cons __tmp49371 '())))
                   (__tmp49369
                    (let () (declare (not safe)) (cons _K25879_ '()))))
               (declare (not safe))
               (cons __tmp49370 __tmp49369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp49368))))
                                           (___kont4540545406_
                                            (lambda () _K25879_)))
                                       (if (gx#stx-pair? ___stx4537245373_)
                                           (let ((_e2592827350_
                                                  (gx#syntax-e
                                                   ___stx4537245373_)))
                                             (let ((_tl2593027357_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2592827350_)))
                                                   (_hd2592927354_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2592827350_))))
                                               (if (gx#stx-datum?
                                                    _hd2592927354_)
                                                   (let ((_e2593127360_
                                                          (gx#stx-e
                                                           _hd2592927354_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2593127360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl2593027357_)
                     (let ((_e2593227364_ (gx#syntax-e _tl2593027357_)))
                       (let ((_tl2593427371_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2593227364_)))
                             (_hd2593327368_
                              (let ()
                                (declare (not safe))
                                (##car _e2593227364_))))
                         (___kont4537545376_ _tl2593427371_ _hd2593327368_)))
                     (let () (declare (not safe)) (_g2592426066_)))
                 (if (let () (declare (not safe)) (equal? _e2593127360_ 'and:))
                     (___kont4537745378_ _tl2593027357_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2593127360_ 'or:))
                         (___kont4537945380_ _tl2593027357_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2593127360_ 'not:))
                             (if (gx#stx-pair? _tl2593027357_)
                                 (let ((_e2595027133_
                                        (gx#syntax-e _tl2593027357_)))
                                   (let ((_tl2595227140_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2595027133_)))
                                         (_hd2595127137_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2595027133_))))
                                     (if (gx#stx-null? _tl2595227140_)
                                         (___kont4538145382_ _hd2595127137_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let () (declare (not safe)) (_g2592426066_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2593127360_ 'cons:))
                                 (if (gx#stx-pair? _tl2593027357_)
                                     (let ((_e2595927005_
                                            (gx#syntax-e _tl2593027357_)))
                                       (let ((_tl2596127012_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2595927005_)))
                                             (_hd2596027009_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2595927005_))))
                                         (if (gx#stx-pair? _tl2596127012_)
                                             (let ((_e2596227015_
                                                    (gx#syntax-e
                                                     _tl2596127012_)))
                                               (let ((_tl2596427022_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2596227015_)))
                                                     (_hd2596327019_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2596227015_))))
                                                 (if (gx#stx-null?
                                                      _tl2596427022_)
                                                     (___kont4538345384_
                                                      _hd2596327019_
                                                      _hd2596027009_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2593127360_ 'null:))
                                     (if (gx#stx-null? _tl2593027357_)
                                         (___kont4538545386_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2593127360_ 'splice:))
                                         (if (gx#stx-pair? _tl2593027357_)
                                             (let ((_e2597526921_
                                                    (gx#syntax-e
                                                     _tl2593027357_)))
                                               (let ((_tl2597726928_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2597526921_)))
                                                     (_hd2597626925_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2597526921_))))
                                                 (if (gx#stx-pair?
                                                      _tl2597726928_)
                                                     (let ((_e2597826931_
                                                            (gx#syntax-e
                                                             _tl2597726928_)))
                                                       (let ((_tl2598026938_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2597826931_)))
                     (_hd2597926935_
                      (let () (declare (not safe)) (##car _e2597826931_))))
                 (if (gx#stx-null? _tl2598026938_)
                     (___kont4538745388_ _hd2597926935_ _hd2597626925_)
                     (let () (declare (not safe)) (_g2592426066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2593127360_ 'box:))
                                             (if (gx#stx-pair? _tl2593027357_)
                                                 (let ((_e2598626845_
                                                        (gx#syntax-e
                                                         _tl2593027357_)))
                                                   (let ((_tl2598826852_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2598626845_)))
                                                         (_hd2598726849_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2598626845_))))
                                                     (if (gx#stx-null?
                                                          _tl2598826852_)
                                                         (___kont4538945390_
                                                          _hd2598726849_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2592426066_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2592426066_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e2593127360_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl2593027357_)
                                                     (let ((_e2599426650_
                                                            (gx#syntax-e
                                                             _tl2593027357_)))
                                                       (let ((_tl2599626657_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2599426650_)))
                     (_hd2599526654_
                      (let () (declare (not safe)) (##car _e2599426650_))))
                 (if (gx#stx-null? _tl2599626657_)
                     (___kont4539145392_ _hd2599526654_)
                     (let () (declare (not safe)) (_g2592426066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2593127360_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl2593027357_)
                                                         (let ((_e2600226455_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2593027357_)))
                   (let ((_tl2600426462_
                          (let () (declare (not safe)) (##cdr _e2600226455_)))
                         (_hd2600326459_
                          (let () (declare (not safe)) (##car _e2600226455_))))
                     (if (gx#stx-null? _tl2600426462_)
                         (___kont4539345394_ _hd2600326459_)
                         (let () (declare (not safe)) (_g2592426066_)))))
                 (let () (declare (not safe)) (_g2592426066_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2593127360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl2593027357_)
                     (let ((_e2601126396_ (gx#syntax-e _tl2593027357_)))
                       (let ((_tl2601326403_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2601126396_)))
                             (_hd2601226400_
                              (let ()
                                (declare (not safe))
                                (##car _e2601126396_))))
                         (if (gx#stx-pair? _tl2601326403_)
                             (let ((_e2601426406_
                                    (gx#syntax-e _tl2601326403_)))
                               (let ((_tl2601626413_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2601426406_)))
                                     (_hd2601526410_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2601426406_))))
                                 (if (gx#stx-null? _tl2601626413_)
                                     (___kont4539545396_
                                      _hd2601526410_
                                      _hd2601226400_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))
                             (let () (declare (not safe)) (_g2592426066_)))))
                     (let () (declare (not safe)) (_g2592426066_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e2593127360_ 'class:))
                     (if (gx#stx-pair? _tl2593027357_)
                         (let ((_e2602326337_ (gx#syntax-e _tl2593027357_)))
                           (let ((_tl2602526344_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2602326337_)))
                                 (_hd2602426341_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2602326337_))))
                             (if (gx#stx-pair? _tl2602526344_)
                                 (let ((_e2602626347_
                                        (gx#syntax-e _tl2602526344_)))
                                   (let ((_tl2602826354_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2602626347_)))
                                         (_hd2602726351_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2602626347_))))
                                     (if (gx#stx-null? _tl2602826354_)
                                         (___kont4539745398_
                                          _hd2602726351_
                                          _hd2602426341_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2592426066_)))))
                         (let () (declare (not safe)) (_g2592426066_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2593127360_ 'datum:))
                         (if (gx#stx-pair? _tl2593027357_)
                             (let ((_e2603426250_
                                    (gx#syntax-e _tl2593027357_)))
                               (let ((_tl2603626257_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2603426250_)))
                                     (_hd2603526254_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2603426250_))))
                                 (if (gx#stx-null? _tl2603626257_)
                                     (___kont4539945400_ _hd2603526254_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))
                             (let () (declare (not safe)) (_g2592426066_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2593127360_ 'apply:))
                             (if (gx#stx-pair? _tl2593027357_)
                                 (let ((_e2604326160_
                                        (gx#syntax-e _tl2593027357_)))
                                   (let ((_tl2604526167_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2604326160_)))
                                         (_hd2604426164_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2604326160_))))
                                     (if (gx#stx-pair? _tl2604526167_)
                                         (let ((_e2604626170_
                                                (gx#syntax-e _tl2604526167_)))
                                           (let ((_tl2604826177_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2604626170_)))
                                                 (_hd2604726174_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2604626170_))))
                                             (if (gx#stx-null? _tl2604826177_)
                                                 (___kont4540145402_
                                                  _hd2604726174_
                                                  _hd2604426164_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2592426066_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let () (declare (not safe)) (_g2592426066_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2593127360_ 'var:))
                                 (if (gx#stx-pair? _tl2593027357_)
                                     (let ((_e2605426112_
                                            (gx#syntax-e _tl2593027357_)))
                                       (let ((_tl2605626119_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2605426112_)))
                                             (_hd2605526116_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2605426112_))))
                                         (if (gx#stx-null? _tl2605626119_)
                                             (___kont4540345404_
                                              _hd2605526116_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2593127360_ 'any:))
                                     (if (gx#stx-null? _tl2593027357_)
                                         (___kont4540545406_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2592426066_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2592426066_)))))))
                               _g2588325894_))))
                      (declare (not safe))
                      (_g2588127659_ _tgt25876_))))
                 (_generate-splice24633_
                  (lambda (_tgt25248_ _hd25250_ _rest25251_ _K25252_ _E25253_)
                    (let* ((_g2525525272_
                            (lambda (_g2525625268_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2525625268_)))
                           (_g2525425872_
                            (lambda (_g2525625276_)
                              (if (gx#stx-pair/null? _g2525625276_)
                                  (let ((_g49373_
                                         (gx#syntax-split-splice
                                          _g2525625276_
                                          '0)))
                                    (begin
                                      (let ((_g49374_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g49373_)
                                                   (##vector-length _g49373_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g49374_ 2)))
                                            (error "Context expects 2 values"
                                                   _g49374_)))
                                      (let ((_target2525825279_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49373_ 0)))
                                            (_tl2526025282_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49373_ 1))))
                                        (if (gx#stx-null? _tl2526025282_)
                                            (letrec ((_loop2526125285_
                                                      (lambda (_hd2525925289_
                                                               _var2526525292_)
                                                        (if (gx#stx-pair?
                                                             _hd2525925289_)
                                                            (let ((_e2526225295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2525925289_)))
                      (let ((_lp-hd2526325299_
                             (let ()
                               (declare (not safe))
                               (##car _e2526225295_)))
                            (_lp-tl2526425302_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2526225295_))))
                        (let ((__tmp49375
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2526325299_ _var2526525292_))))
                          (declare (not safe))
                          (_loop2526125285_ _lp-tl2526425302_ __tmp49375))))
                    (let ((_var2526625305_ (reverse _var2526525292_)))
                      ((lambda (_L25309_)
                         (let ()
                           (let* ((_g2532525342_
                                   (lambda (_g2532625338_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2532625338_)))
                                  (_g2532425860_
                                   (lambda (_g2532625346_)
                                     (if (gx#stx-pair/null? _g2532625346_)
                                         (let ((_g49376_
                                                (gx#syntax-split-splice
                                                 _g2532625346_
                                                 '0)))
                                           (begin
                                             (let ((_g49377_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g49376_)
                                                          (##vector-length
                                                           _g49376_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g49377_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g49377_)))
                                             (let ((_target2532825349_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49376_
                                                       0)))
                                                   (_tl2533025352_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49376_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2533025352_)
                                                   (letrec ((_loop2533125355_
                                                             (lambda (_hd2532925359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2533525362_)
                       (if (gx#stx-pair? _hd2532925359_)
                           (let ((_e2533225365_ (gx#syntax-e _hd2532925359_)))
                             (let ((_lp-hd2533325369_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2533225365_)))
                                   (_lp-tl2533425372_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2533225365_))))
                               (let ((__tmp49378
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2533325369_
                                              _var-r2533525362_))))
                                 (declare (not safe))
                                 (_loop2533125355_
                                  _lp-tl2533425372_
                                  __tmp49378))))
                           (let ((_var-r2533625375_
                                  (reverse _var-r2533525362_)))
                             ((lambda (_L25379_)
                                (let ()
                                  (let* ((_g2539625413_
                                          (lambda (_g2539725409_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2539725409_)))
                                         (_g2539525848_
                                          (lambda (_g2539725417_)
                                            (if (gx#stx-pair/null?
                                                 _g2539725417_)
                                                (let ((_g49379_
                                                       (gx#syntax-split-splice
                                                        _g2539725417_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49379_)
                         (##vector-length _g49379_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49380_ 2)))
                  (error "Context expects 2 values" _g49380_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2539925420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49379_
                                                              0)))
                                                          (_tl2540125423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49379_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2540125423_)
                                                          (letrec ((_loop2540225426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2540025430_ _init2540625433_)
                              (if (gx#stx-pair? _hd2540025430_)
                                  (let ((_e2540325436_
                                         (gx#syntax-e _hd2540025430_)))
                                    (let ((_lp-hd2540425440_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2540325436_)))
                                          (_lp-tl2540525443_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2540325436_))))
                                      (let ((__tmp49381
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2540425440_
                                                     _init2540625433_))))
                                        (declare (not safe))
                                        (_loop2540225426_
                                         _lp-tl2540525443_
                                         __tmp49381))))
                                  (let ((_init2540725446_
                                         (reverse _init2540625433_)))
                                    ((lambda (_L25450_)
                                       (let ()
                                         (let* ((_g2546725475_
                                                 (lambda (_g2546825471_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2546825471_)))
                                                (_g2546625844_
                                                 (lambda (_g2546825479_)
                                                   ((lambda (_L25482_)
                                                      (let ()
                                                        (let* ((_g2549525503_
                                                                (lambda (_g2549625499_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2549625499_)))
                       (_g2549425840_
                        (lambda (_g2549625507_)
                          ((lambda (_L25510_)
                             (let ()
                               (let* ((_g2552325531_
                                       (lambda (_g2552425527_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2552425527_)))
                                      (_g2552225836_
                                       (lambda (_g2552425535_)
                                         ((lambda (_L25538_)
                                            (let ()
                                              (let* ((_g2555125559_
                                                      (lambda (_g2555225555_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2555225555_)))
                                                     (_g2555025832_
                                                      (lambda (_g2555225563_)
                                                        ((lambda (_L25566_)
                                                           (let ()
                                                             (let* ((_g2557925587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2558025583_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2558025583_)))
                            (_g2557825828_
                             (lambda (_g2558025591_)
                               ((lambda (_L25594_)
                                  (let ()
                                    (let* ((_g2560725615_
                                            (lambda (_g2560825611_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2560825611_)))
                                           (_g2560625824_
                                            (lambda (_g2560825619_)
                                              ((lambda (_L25622_)
                                                 (let ()
                                                   (let* ((_g2563525643_
                                                           (lambda (_g2563625639_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2563625639_)))
                                                          (_g2563425820_
                                                           (lambda (_g2563625647_)
                                                             ((lambda (_L25650_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2566325671_
                                  (lambda (_g2566425667_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2566425667_)))
                                 (_g2566225805_
                                  (lambda (_g2566425675_)
                                    ((lambda (_L25678_)
                                       (let ()
                                         (let* ((_g2569125699_
                                                 (lambda (_g2569225695_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2569225695_)))
                                                (_g2569025793_
                                                 (lambda (_g2569225703_)
                                                   ((lambda (_L25706_)
                                                      (let ()
                                                        (let* ((_g2571925727_
                                                                (lambda (_g2572025723_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2572025723_)))
                       (_g2571825789_
                        (lambda (_g2572025731_)
                          ((lambda (_L25734_)
                             (let ()
                               (let ()
                                 (let ((__tmp49430
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp49382
                                        (let ((__tmp49387
                                               (let ((__tmp49422
                                                      (let ((__tmp49423
                                                             (let ((__tmp49424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49429 (gx#datum->syntax '#f 'lambda))
                                  (__tmp49425
                                   (let ((__tmp49427
                                          (let ((__tmp49428
                                                 (foldr (lambda (_g2574825759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2574925762_)
                  (let ()
                    (declare (not safe))
                    (cons _g2574825759_ _g2574925762_)))
                '()
                _L25309_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons _L25622_ __tmp49428)))
                                         (__tmp49426
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25650_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49427 __tmp49426))))
                              (declare (not safe))
                              (cons __tmp49429 __tmp49425))))
                       (declare (not safe))
                       (cons __tmp49424 '()))))
                (declare (not safe))
                (cons _L25510_ __tmp49423)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49388
                                                      (let ((__tmp49413
                                                             (let ((__tmp49414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49415
                                   (let ((__tmp49421
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp49416
                                          (let ((__tmp49418
                                                 (let ((__tmp49419
                                                        (let ((__tmp49420
                                                               (foldr (lambda (_g2575025765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2575125768_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2575025765_ _g2575125768_)))
                              '()
                              _L25379_)))
                  (declare (not safe))
                  (cons _L25622_ __tmp49420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25594_ __tmp49419)))
                                                (__tmp49417
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25734_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49418 __tmp49417))))
                                     (declare (not safe))
                                     (cons __tmp49421 __tmp49416))))
                              (declare (not safe))
                              (cons __tmp49415 '()))))
                       (declare (not safe))
                       (cons _L25566_ __tmp49414)))
                    (__tmp49389
                     (let ((__tmp49390
                            (let ((__tmp49391
                                   (let ((__tmp49392
                                          (let ((__tmp49412
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp49393
                                                 (let ((__tmp49410
                                                        (let ((__tmp49411
                                                               (foldr (lambda (_g2575225771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2575325774_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2575225771_ _g2575325774_)))
                              '()
                              _L25379_)))
                  (declare (not safe))
                  (cons _L25622_ __tmp49411)))
               (__tmp49394
                (let ((__tmp49395
                       (let ((__tmp49409 (gx#datum->syntax '#f 'if))
                             (__tmp49396
                              (let ((__tmp49406
                                     (let ((__tmp49408
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp49407
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25622_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49408 __tmp49407)))
                                    (__tmp49397
                                     (let ((__tmp49399
                                            (let ((__tmp49400
                                                   (let ((__tmp49403
                                                          (let ((__tmp49405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp49404
                         (let () (declare (not safe)) (cons _L25622_ '()))))
                    (declare (not safe))
                    (cons __tmp49405 __tmp49404)))
                 (__tmp49401
                  (let ((__tmp49402
                         (foldr (lambda (_g2575425777_ _g2575525780_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2575425777_ _g2575525780_)))
                                '()
                                _L25379_)))
                    (declare (not safe))
                    (cons _L25622_ __tmp49402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49403
                                                           __tmp49401))))
                                              (declare (not safe))
                                              (cons _L25566_ __tmp49400)))
                                           (__tmp49398
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25706_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49399 __tmp49398))))
                                (declare (not safe))
                                (cons __tmp49406 __tmp49397))))
                         (declare (not safe))
                         (cons __tmp49409 __tmp49396))))
                  (declare (not safe))
                  (cons __tmp49395 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49410
                                                         __tmp49394))))
                                            (declare (not safe))
                                            (cons __tmp49412 __tmp49393))))
                                     (declare (not safe))
                                     (cons __tmp49392 '()))))
                              (declare (not safe))
                              (cons _L25538_ __tmp49391))))
                       (declare (not safe))
                       (cons __tmp49390 '()))))
                (declare (not safe))
                (cons __tmp49413 __tmp49389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49422 __tmp49388)))
                                              (__tmp49383
                                               (let ((__tmp49384
                                                      (let ((__tmp49385
                                                             (let ((__tmp49386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g2575625783_ _g2575725786_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2575625783_ _g2575725786_)))
                                   '()
                                   _L25450_)))
                       (declare (not safe))
                       (cons _L25482_ __tmp49386))))
                (declare (not safe))
                (cons _L25538_ __tmp49385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49384 '()))))
                                          (declare (not safe))
                                          (cons __tmp49387 __tmp49383))))
                                   (declare (not safe))
                                   (cons __tmp49430 __tmp49382)))))
                           _g2572025731_)))
                       (__tmp49431
                        (let ()
                          (declare (not safe))
                          (_generate124631_
                           _L25594_
                           _hd25250_
                           _L25678_
                           _L25706_))))
                  (declare (not safe))
                  (_g2571825789_ __tmp49431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2569225703_)))
                                                (__tmp49432
                                                 (let ((__tmp49433
                                                        (let ((__tmp49434
                                                               (foldr (lambda (_g2579625799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2579725802_)
                                (let ((__tmp49435
                                       (let ((__tmp49437
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp49436
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2579625799_ '()))))
                                         (declare (not safe))
                                         (cons __tmp49437 __tmp49436))))
                                  (declare (not safe))
                                  (cons __tmp49435 _g2579725802_)))
                              '()
                              _L25379_)))
                  (declare (not safe))
                  (cons _L25622_ __tmp49434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25510_
                                                         __tmp49433))))
                                           (declare (not safe))
                                           (_g2569025793_ __tmp49432))))
                                     _g2566425675_)))
                                 (__tmp49438
                                  (let ((__tmp49439
                                         (let ((__tmp49445
                                                (let ((__tmp49447
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp49446
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25622_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp49447
                                                        __tmp49446)))
                                               (__tmp49440
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25379_
                                                   _L25309_)
                                                  (foldr (lambda (_g2580825812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2580925815_
                          _g2581025817_)
                   (let ((__tmp49441
                          (let ((__tmp49444 (gx#datum->syntax '#f 'cons))
                                (__tmp49442
                                 (let ((__tmp49443
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2580825812_ '()))))
                                   (declare (not safe))
                                   (cons _g2580925815_ __tmp49443))))
                            (declare (not safe))
                            (cons __tmp49444 __tmp49442))))
                     (declare (not safe))
                     (cons __tmp49441 _g2581025817_)))
                 '()
                 _L25379_
                 _L25309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp49445 __tmp49440))))
                                    (declare (not safe))
                                    (cons _L25538_ __tmp49439))))
                            (declare (not safe))
                            (_g2566225805_ __tmp49438))))
                      _g2563625647_)))
                  (__tmp49448
                   (let ()
                     (declare (not safe))
                     (_generate124631_
                      _L25622_
                      _rest25251_
                      _K25252_
                      _E25253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2563425820_
                                                      __tmp49448))))
                                               _g2560825619_)))
                                           (__tmp49449 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2560625824_ __tmp49449))))
                                _g2558025591_)))
                            (__tmp49450 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2557825828_ __tmp49450))))
                 _g2555225563_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49451
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2555025832_ __tmp49451))))
                                          _g2552425535_)))
                                      (__tmp49452 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2552225836_ __tmp49452))))
                           _g2549625507_)))
                       (__tmp49453 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2549425840_ __tmp49453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2546825479_))))
                                           (declare (not safe))
                                           (_g2546625844_ _tgt25248_))))
                                     _init2540725446_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2540225426_ _target2539925420_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2539625413_ _g2539725417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2539625413_
                                                   _g2539725417_)))))
                                         (__tmp49454
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_g2585125854_
                                                            _g2585225857_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2585125854_
                                                             _g2585225857_)))
                                                   '()
                                                   _L25309_))
                                           (let ((__tmp49455
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp49455 '())))))
                                    (declare (not safe))
                                    (_g2539525848_ __tmp49454))))
                              _var-r2533625375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2533125355_
                                                        _target2532825349_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2532525342_
                                                      _g2532625346_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2532525342_ _g2532625346_)))))
                                  (__tmp49456
                                   (gx#gentemps
                                    (foldr (lambda (_g2586325866_
                                                    _g2586425869_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2586325866_
                                                     _g2586425869_)))
                                           '()
                                           _L25309_))))
                             (declare (not safe))
                             (_g2532425860_ __tmp49456))))
                       _var2526625305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2526125285_
                                                 _target2525825279_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2525525272_
                                               _g2525625276_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2525525272_ _g2525625276_)))))
                           (__tmp49457
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25250_))))
                      (declare (not safe))
                      (_g2525425872_ __tmp49457))))
                 (_generate-simple-vector24634_
                  (lambda (_tgt25090_
                           _body25092_
                           _start25093_
                           _K25094_
                           _E25095_)
                    (let _recur25097_ ((_rest25100_ _body25092_)
                                       (_off25102_ _start25093_))
                      (let* ((___stx4573045731_ _rest25100_)
                             (_g2510525117_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4573045731_))))
                        (let ((___kont4573345734_
                               (lambda (_L25145_ _L25147_)
                                 (let* ((_g2516225181_
                                         (lambda (_g2516325177_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2516325177_)))
                                        (_g2516125240_
                                         (lambda (_g2516325185_)
                                           (if (gx#stx-pair? _g2516325185_)
                                               (let ((_e2516725188_
                                                      (gx#syntax-e
                                                       _g2516325185_)))
                                                 (let ((_hd2516825192_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2516725188_)))
                                                       (_tl2516925195_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2516725188_))))
                                                   (if (gx#stx-pair?
                                                        _tl2516925195_)
                                                       (let ((_e2517025198_
                                                              (gx#syntax-e
                                                               _tl2516925195_)))
                                                         (let ((_hd2517125202_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2517025198_)))
                       (_tl2517225205_
                        (let () (declare (not safe)) (##cdr _e2517025198_))))
                   (if (gx#stx-pair? _tl2517225205_)
                       (let ((_e2517325208_ (gx#syntax-e _tl2517225205_)))
                         (let ((_hd2517425212_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2517325208_)))
                               (_tl2517525215_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2517325208_))))
                           (if (gx#stx-null? _tl2517525215_)
                               ((lambda (_L25218_ _L25220_ _L25221_)
                                  (let ()
                                    (let ((__tmp49458
                                           (let ((__tmp49463
                                                  (let ((__tmp49464
                                                         (let ((__tmp49465
                                                                (let ((__tmp49466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49469
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp49467
                                      (let ((__tmp49468
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25218_ '()))))
                                        (declare (not safe))
                                        (cons _L25220_ __tmp49468))))
                                 (declare (not safe))
                                 (cons __tmp49469 __tmp49467))))
                          (declare (not safe))
                          (cons __tmp49466 '()))))
                   (declare (not safe))
                   (cons _L25221_ __tmp49465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49464 '())))
                                                 (__tmp49459
                                                  (let ((__tmp49460
                                                         (let ((__tmp49461
                                                                (let ((__tmp49462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off25102_ '1))))
                          (declare (not safe))
                          (_recur25097_ _L25145_ __tmp49462))))
                   (declare (not safe))
                   (_generate124631_ _L25221_ _L25147_ __tmp49461 _E25095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49460 '()))))
                                             (declare (not safe))
                                             (cons __tmp49463 __tmp49459))))
                                      (declare (not safe))
                                      (cons 'let __tmp49458))))
                                _hd2517425212_
                                _hd2517125202_
                                _hd2516825192_)
                               (let ()
                                 (declare (not safe))
                                 (_g2516225181_ _g2516325185_)))))
                       (let ()
                         (declare (not safe))
                         (_g2516225181_ _g2516325185_)))))
               (let () (declare (not safe)) (_g2516225181_ _g2516325185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2516225181_
                                                  _g2516325185_)))))
                                        (__tmp49470
                                         (list (gx#genident 'e)
                                               _tgt25090_
                                               _off25102_)))
                                   (declare (not safe))
                                   (_g2516125240_ __tmp49470))))
                              (___kont4573545736_ (lambda () _K25094_)))
                          (if (gx#stx-pair? ___stx4573045731_)
                              (let ((_e2510925135_
                                     (gx#syntax-e ___stx4573045731_)))
                                (let ((_tl2511125142_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2510925135_)))
                                      (_hd2511025139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2510925135_))))
                                  (___kont4573345734_
                                   _tl2511125142_
                                   _hd2511025139_)))
                              (___kont4573545736_)))))))
                 (_generate-list-vector24635_
                  (lambda (_tgt24982_
                           _body24984_
                           _->list24985_
                           _K24986_
                           _E24987_)
                    (let* ((_g2498924997_
                            (lambda (_g2499024993_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2499024993_)))
                           (_g2498825086_
                            (lambda (_g2499025001_)
                              ((lambda (_L25004_)
                                 (let ()
                                   (let* ((_g2501625024_
                                           (lambda (_g2501725020_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2501725020_)))
                                          (_g2501525082_
                                           (lambda (_g2501725028_)
                                             ((lambda (_L25031_)
                                                (let ()
                                                  (let* ((_g2504425052_
                                                          (lambda (_g2504525048_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2504525048_)))
                                                         (_g2504325074_
                                                          (lambda (_g2504525056_)
                                                            ((lambda (_L25059_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp49471
                                  (let ((__tmp49474
                                         (let ((__tmp49475
                                                (let ((__tmp49476
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25059_ '()))))
                                                  (declare (not safe))
                                                  (cons _L25004_ __tmp49476))))
                                           (declare (not safe))
                                           (cons __tmp49475 '())))
                                        (__tmp49472
                                         (let ((__tmp49473
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124631_
                                                   _L25004_
                                                   _body24984_
                                                   _K24986_
                                                   _E24987_))))
                                           (declare (not safe))
                                           (cons __tmp49473 '()))))
                                    (declare (not safe))
                                    (cons __tmp49474 __tmp49472))))
                             (declare (not safe))
                             (cons 'let __tmp49471)))))
                     _g2504525056_)))
                 (__tmp49477
                  (let ((_$e25078_ _->list24985_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e25078_))
                        (let ((__tmp49479 (gx#datum->syntax '#f 'values->list))
                              (__tmp49478
                               (let ()
                                 (declare (not safe))
                                 (cons _L25031_ '()))))
                          (declare (not safe))
                          (cons __tmp49479 __tmp49478))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e25078_))
                            (let ((__tmp49481
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp49480
                                   (let ()
                                     (declare (not safe))
                                     (cons _L25031_ '()))))
                              (declare (not safe))
                              (cons __tmp49481 __tmp49480))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e25078_))
                                (let ((__tmp49486
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp49482
                                       (let ((__tmp49483
                                              (let ((__tmp49485
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp49484
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25031_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49485 __tmp49484))))
                                         (declare (not safe))
                                         (cons __tmp49483 '()))))
                                  (declare (not safe))
                                  (cons __tmp49486 __tmp49482))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24624_
                                 _->list24985_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2504325074_
                                                     __tmp49477))))
                                              _g2501725028_))))
                                     (declare (not safe))
                                     (_g2501525082_ _tgt24982_))))
                               _g2499025001_)))
                           (__tmp49487 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2498825086_ __tmp49487))))
                 (_generate-struct24636_
                  (lambda (_info24853_
                           _tgt24855_
                           _body24856_
                           _K24857_
                           _E24858_)
                    (let* ((___stx4574645747_ _body24856_)
                           (_g2486124884_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4574645747_))))
                      (let ((___kont4574945750_
                             (lambda (_L24961_)
                               (let* ((_fields24975_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24638_
                                          _info24853_)))
                                      (__tmp49488
                                       (let ((__tmp49492
                                              (let ((__tmp49494
                                                     (let ((__obj46949
                                                            _info24853_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj46949
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj46949
                                                              '11
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj46949
                                                            'predicate))))
                                                    (__tmp49493
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24855_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49494 __tmp49493)))
                                             (__tmp49489
                                              (let ((__tmp49491
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24637_
                                                        _info24853_
                                                        _tgt24855_
                                                        _L24961_
                                                        _K24857_
                                                        _E24858_)))
                                                    (__tmp49490
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24858_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49491 __tmp49490))))
                                         (declare (not safe))
                                         (cons __tmp49492 __tmp49489))))
                                 (declare (not safe))
                                 (cons 'if __tmp49488))))
                            (___kont4575145752_
                             (lambda (_L24915_)
                               (let ((__tmp49495
                                      (let ((__tmp49499
                                             (let ((__tmp49501
                                                    (let ((__obj46950
                                                           _info24853_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj46950
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj46950
                                                             '11
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj46950
                                                           'predicate))))
                                                   (__tmp49500
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24855_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49501 __tmp49500)))
                                            (__tmp49496
                                             (let ((__tmp49498
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24635_
                                                       _tgt24855_
                                                       _L24915_
                                                       'struct->list
                                                       _K24857_
                                                       _E24858_)))
                                                   (__tmp49497
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24858_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49498 __tmp49497))))
                                        (declare (not safe))
                                        (cons __tmp49499 __tmp49496))))
                                 (declare (not safe))
                                 (cons 'if __tmp49495)))))
                        (if (gx#stx-pair? ___stx4574645747_)
                            (let ((_e2486424937_
                                   (gx#syntax-e ___stx4574645747_)))
                              (let ((_tl2486624944_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2486424937_)))
                                    (_hd2486524941_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2486424937_))))
                                (if (gx#stx-datum? _hd2486524941_)
                                    (let ((_e2486724947_
                                           (gx#stx-e _hd2486524941_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2486724947_ 'simple:))
                                          (if (gx#stx-pair? _tl2486624944_)
                                              (let ((_e2486824951_
                                                     (gx#syntax-e
                                                      _tl2486624944_)))
                                                (let ((_tl2487024958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2486824951_)))
                                                      (_hd2486924955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2486824951_))))
                                                  (if (gx#stx-null?
                                                       _tl2487024958_)
                                                      (___kont4574945750_
                                                       _hd2486924955_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2486124884_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2486124884_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2486724947_ 'list:))
                                              (if (gx#stx-pair? _tl2486624944_)
                                                  (let ((_e2487624905_
                                                         (gx#syntax-e
                                                          _tl2486624944_)))
                                                    (let ((_tl2487824912_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2487624905_)))
                                                          (_hd2487724909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2487624905_))))
                                                      (if (gx#stx-null?
                                                           _tl2487824912_)
                                                          (___kont4575145752_
                                                           _hd2487724909_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2486124884_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2486124884_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2486124884_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2486124884_)))))
                            (let () (declare (not safe)) (_g2486124884_)))))))
                 (_generate-simple-struct-body24637_
                  (lambda (_info24773_
                           _tgt24775_
                           _body24776_
                           _K24777_
                           _E24778_)
                    (let _recur24780_ ((_rest24783_ _body24776_)
                                       (_fields24785_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors24638_
                                           _info24773_))))
                      (let* ((___stx4579645797_ _rest24783_)
                             (_g2478824800_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4579645797_))))
                        (let ((___kont4579945800_
                               (lambda (_L24828_ _L24830_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24785_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24624_
                                      _info24773_
                                      (let ((__obj46951 _info24773_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj46951
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj46951
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj46951
                                             'name))))
                                     (let ((_$tgt24845_ (gx#genident 'e))
                                           (_getf24847_ (car _fields24785_)))
                                       (let ((__tmp49502
                                              (let ((__tmp49507
                                                     (let ((__tmp49508
                                                            (let ((__tmp49509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49510
                                  (let ((__tmp49511
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24775_ '()))))
                                    (declare (not safe))
                                    (cons _getf24847_ __tmp49511))))
                             (declare (not safe))
                             (cons __tmp49510 '()))))
                      (declare (not safe))
                      (cons _$tgt24845_ __tmp49509))))
               (declare (not safe))
               (cons __tmp49508 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49503
                                                     (let ((__tmp49504
                                                            (let ((__tmp49505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49506 (cdr _fields24785_)))
                             (declare (not safe))
                             (_recur24780_ _L24828_ __tmp49506))))
                      (declare (not safe))
                      (_generate124631_
                       _$tgt24845_
                       _L24830_
                       __tmp49505
                       _E24778_))))
               (declare (not safe))
               (cons __tmp49504 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49507 __tmp49503))))
                                         (declare (not safe))
                                         (cons 'let __tmp49502))))))
                              (___kont4580145802_ (lambda () _K24777_)))
                          (if (gx#stx-pair? ___stx4579645797_)
                              (let ((_e2479224818_
                                     (gx#syntax-e ___stx4579645797_)))
                                (let ((_tl2479424825_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2479224818_)))
                                      (_hd2479324822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2479224818_))))
                                  (___kont4579945800_
                                   _tl2479424825_
                                   _hd2479324822_)))
                              (___kont4580145802_)))))))
                 (_struct-field-accessors24638_
                  (lambda (_info24754_)
                    (let _recur24757_ ((_next24760_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24754_ '()))))
                      (if (let () (declare (not safe)) (null? _next24760_))
                          '()
                          (let ((_ti24763_ (car _next24760_)))
                            (append (let ((__tmp49512
                                           (map gx#syntax-local-value
                                                (let ((__obj46952 _ti24763_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj46952
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj46952
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj46952
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24757_ __tmp49512))
                                    (map (lambda (_slot24766_)
                                           (let ((_$e24769_
                                                  (assgetq _slot24766_
                                                           (let ((__obj46953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ti24763_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj46953
                            'gerbil.core#class-type-info::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj46953
                            '14
                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                            '#f))
                         (class-slot-ref
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          __obj46953
                          'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e24769_
                                                 _$e24769_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24624_
                                                  _info24754_
                                                  _slot24766_))))
                                         (let ((__obj46954 _ti24763_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj46954
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj46954
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj46954
                                                'slots))))))))))
                 (_generate-class24639_
                  (lambda (_info24747_
                           _tgt24749_
                           _body24750_
                           _K24751_
                           _E24752_)
                    (let ((__tmp49513
                           (let ((__tmp49517
                                  (let ((__tmp49519
                                         (let ((__obj46955 _info24747_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj46955
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj46955
                                                  '11
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj46955
                                                'predicate))))
                                        (__tmp49518
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24749_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49519 __tmp49518)))
                                 (__tmp49514
                                  (let ((__tmp49516
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24640_
                                            _info24747_
                                            _tgt24749_
                                            _body24750_
                                            _K24751_
                                            _E24752_)))
                                        (__tmp49515
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24752_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49516 __tmp49515))))
                             (declare (not safe))
                             (cons __tmp49517 __tmp49514))))
                      (declare (not safe))
                      (cons 'if __tmp49513))))
                 (_generate-class-body24640_
                  (lambda (_info24642_
                           _tgt24644_
                           _body24645_
                           _K24646_
                           _E24647_)
                    (let _recur24649_ ((_rest24652_ _body24645_))
                      (let* ((___stx4581245813_ _rest24652_)
                             (_g2465624672_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4581245813_))))
                        (let ((___kont4581545816_
                               (lambda (_L24710_ _L24712_ _L24713_)
                                 (let ((_$e24733_
                                        (assgetq (string->symbol
                                                  (keyword->string
                                                   (gx#stx-e _L24713_)))
                                                 (let ((__obj46956
                                                        _info24642_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj46956
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj46956
                                                          '14
                                                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        __obj46956
                                                        'unchecked-accessors))))))
                                   (if _$e24733_
                                       ((lambda (_getf24737_)
                                          (let* ((_$tgt24740_ (gx#genident 'e))
                                                 (__tmp49520
                                                  (let ((__tmp49524
                                                         (let ((__tmp49525
                                                                (let ((__tmp49526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49527
                                      (let ((__tmp49528
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24644_ '()))))
                                        (declare (not safe))
                                        (cons _getf24737_ __tmp49528))))
                                 (declare (not safe))
                                 (cons __tmp49527 '()))))
                          (declare (not safe))
                          (cons _$tgt24740_ __tmp49526))))
                   (declare (not safe))
                   (cons __tmp49525 '())))
                (__tmp49521
                 (let ((__tmp49522
                        (let ((__tmp49523
                               (let ()
                                 (declare (not safe))
                                 (_recur24649_ _L24710_))))
                          (declare (not safe))
                          (_generate124631_
                           _$tgt24740_
                           _L24712_
                           __tmp49523
                           _E24647_))))
                   (declare (not safe))
                   (cons __tmp49522 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49524
                                                          __tmp49521))))
                                            (declare (not safe))
                                            (cons 'let __tmp49520)))
                                        _$e24733_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24624_
                                        _info24642_
                                        _L24713_)))))
                              (___kont4581745818_ (lambda () _K24646_)))
                          (if (gx#stx-pair? ___stx4581245813_)
                              (let ((_e2466124690_
                                     (gx#syntax-e ___stx4581245813_)))
                                (let ((_tl2466324697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2466124690_)))
                                      (_hd2466224694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2466124690_))))
                                  (if (gx#stx-pair? _tl2466324697_)
                                      (let ((_e2466424700_
                                             (gx#syntax-e _tl2466324697_)))
                                        (let ((_tl2466624707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2466424700_)))
                                              (_hd2466524704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2466424700_))))
                                          (___kont4581545816_
                                           _tl2466624707_
                                           _hd2466524704_
                                           _hd2466224694_)))
                                      (___kont4581745818_))))
                              (___kont4581745818_))))))))
          (let ()
            (declare (not safe))
            (_generate124631_ _tgt24626_ _ptree24627_ _K24628_ _E24629_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23520_ _tgt-lst23522_ _clauses23523_)
        (letrec ((_parse-body23525_
                  (lambda (_hd-len24446_)
                    (let _lp24449_ ((_rest24452_ _clauses23523_)
                                    (_r24454_ '()))
                      (let* ((___stx4586245863_ _rest24452_)
                             (_g2445724469_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4586245863_))))
                        (let ((___kont4586545866_
                               (lambda (_L24497_ _L24499_)
                                 (let* ((___stx4583445835_ _L24499_)
                                        (_g2451624532_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4583445835_))))
                                   (let ((___kont4583745838_
                                          (lambda (_L24601_)
                                            (if (gx#stx-null? _L24497_)
                                                (let ((__tmp49529
                                                       (let ((__tmp49534
                                                              (gx#genident
                                                               'else))
                                                             (__tmp49530
                                                              (let ((__tmp49531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49532
                                    (gx#stx-wrap-source
                                     (let ((__tmp49533
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp49533 _L24601_))
                                     (let ((_$e24612_
                                            (gx#stx-source _L24499_)))
                                       (if _$e24612_
                                           _$e24612_
                                           (gx#stx-source _stx23520_))))))
                               (declare (not safe))
                               (cons __tmp49532 '()))))
                        (declare (not safe))
                        (cons '#f __tmp49531))))
                 (declare (not safe))
                 (cons __tmp49534 __tmp49530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49529 _r24454_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23520_
                                                 _L24499_))))
                                         (___kont4583945840_
                                          (lambda (_L24560_ _L24562_)
                                            (let ((__tmp49535
                                                   (let ((__tmp49536
                                                          (let ((__tmp49542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp49537
                         (let ((__tmp49541
                                (gx#stx-map
                                 (lambda (_g2457424576_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2457424576_
                                      _stx23520_)))
                                 _L24562_))
                               (__tmp49538
                                (let ((__tmp49539
                                       (gx#stx-wrap-source
                                        (let ((__tmp49540
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp49540 _L24560_))
                                        (let ((_$e24580_
                                               (gx#stx-source _L24499_)))
                                          (if _$e24580_
                                              _$e24580_
                                              (gx#stx-source _stx23520_))))))
                                  (declare (not safe))
                                  (cons __tmp49539 '()))))
                           (declare (not safe))
                           (cons __tmp49541 __tmp49538))))
                    (declare (not safe))
                    (cons __tmp49542 __tmp49537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49536
                                                           _r24454_))))
                                              (declare (not safe))
                                              (_lp24449_
                                               _L24497_
                                               __tmp49535))))
                                         (___kont4584145842_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23520_
                                             _L24499_))))
                                     (let* ((___match4585945860_
                                             (lambda (_e2452424550_
                                                      _hd2452524554_
                                                      _tl2452624557_)
                                               (let ((_L24560_ _tl2452624557_)
                                                     (_L24562_ _hd2452524554_))
                                                 (if (and (gx#stx-list?
                                                           _L24562_)
                                                          (fx= (gx#stx-length
                                                                _L24562_)
                                                               _hd-len24446_)
                                                          (gx#stx-list?
                                                           _L24560_)
                                                          (let ((__tmp49543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24560_)))
                    (declare (not safe))
                    (not __tmp49543)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4583945840_
                                                      _L24560_
                                                      _L24562_)
                                                     (___kont4584145842_)))))
                                            (___match4585345854_
                                             (lambda (_e2451924591_
                                                      _hd2452024595_
                                                      _tl2452124598_)
                                               (let ((_L24601_ _tl2452124598_))
                                                 (if (and (gx#stx-list?
                                                           _L24601_)
                                                          (let ((__tmp49544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24601_)))
                    (declare (not safe))
                    (not __tmp49544)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4583745838_
                                                      _L24601_)
                                                     (___match4585945860_
                                                      _e2451924591_
                                                      _hd2452024595_
                                                      _tl2452124598_))))))
                                       (if (gx#stx-pair? ___stx4583445835_)
                                           (let ((_e2451924591_
                                                  (gx#syntax-e
                                                   ___stx4583445835_)))
                                             (let ((_tl2452124598_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2451924591_)))
                                                   (_hd2452024595_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2451924591_))))
                                               (if (gx#identifier?
                                                    _hd2452024595_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g49545_|
                                                        _hd2452024595_)
                                                       (___match4585345854_
                                                        _e2451924591_
                                                        _hd2452024595_
                                                        _tl2452124598_)
                                                       (___match4585945860_
                                                        _e2451924591_
                                                        _hd2452024595_
                                                        _tl2452124598_))
                                                   (___match4585945860_
                                                    _e2451924591_
                                                    _hd2452024595_
                                                    _tl2452124598_))))
                                           (___kont4584145842_)))))))
                              (___kont4586745868_ (lambda () _r24454_)))
                          (if (gx#stx-pair? ___stx4586245863_)
                              (let ((_e2446124487_
                                     (gx#syntax-e ___stx4586245863_)))
                                (let ((_tl2446324494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2446124487_)))
                                      (_hd2446224491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2446124487_))))
                                  (___kont4586545866_
                                   _tl2446324494_
                                   _hd2446224491_)))
                              (___kont4586745868_)))))))
                 (_generate-body23527_
                  (lambda (_body24231_)
                    (let* ((_g2423424242_
                            (lambda (_g2423524238_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2423524238_)))
                           (_g2423324442_
                            (lambda (_g2423524246_)
                              ((lambda (_L24249_)
                                 (let ()
                                   (let* ((_g2426124278_
                                           (lambda (_g2426224274_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2426224274_)))
                                          (_g2426024438_
                                           (lambda (_g2426224282_)
                                             (if (gx#stx-pair/null?
                                                  _g2426224282_)
                                                 (let ((_g49546_
                                                        (gx#syntax-split-splice
                                                         _g2426224282_
                                                         '0)))
                                                   (begin
                                                     (let ((_g49547_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g49546_)
                          (##vector-length _g49546_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g49547_ 2)))
                   (error "Context expects 2 values" _g49547_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2426424285_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49546_
                                                               0)))
                                                           (_tl2426624288_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49546_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2426624288_)
                                                           (letrec ((_loop2426724291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2426524295_ _target2427124298_)
                               (if (gx#stx-pair? _hd2426524295_)
                                   (let ((_e2426824301_
                                          (gx#syntax-e _hd2426524295_)))
                                     (let ((_lp-hd2426924305_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2426824301_)))
                                           (_lp-tl2427024308_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2426824301_))))
                                       (let ((__tmp49548
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2426924305_
                                                      _target2427124298_))))
                                         (declare (not safe))
                                         (_loop2426724291_
                                          _lp-tl2427024308_
                                          __tmp49548))))
                                   (let ((_target2427224311_
                                          (reverse _target2427124298_)))
                                     ((lambda (_L24315_)
                                        (let ()
                                          (let* ((_g2433224340_
                                                  (lambda (_g2433324336_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2433324336_)))
                                                 (_g2433124426_
                                                  (lambda (_g2433324344_)
                                                    ((lambda (_L24347_)
                                                       (let ()
                                                         (let* ((_g2436024368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2436124364_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2436124364_)))
                        (_g2435924422_
                         (lambda (_g2436124372_)
                           ((lambda (_L24375_)
                              (let ()
                                (let* ((_g2438824396_
                                        (lambda (_g2438924392_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2438924392_)))
                                       (_g2438724418_
                                        (lambda (_g2438924400_)
                                          ((lambda (_L24403_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp49552
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp49549
                                                        (let ((__tmp49551
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp49550
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24403_ '()))))
                  (declare (not safe))
                  (cons __tmp49551 __tmp49550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49552
                                                         __tmp49549)))))
                                           _g2438924400_)))
                                       (__tmp49553
                                        (gx#stx-wrap-source
                                         (let ((__tmp49559
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp49554
                                                (let ((__tmp49556
                                                       (let ((__tmp49557
                                                              (let ((__tmp49558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24347_ '()))))
                        (declare (not safe))
                        (cons _L24249_ __tmp49558))))
                 (declare (not safe))
                 (cons __tmp49557 '())))
              (__tmp49555 (let () (declare (not safe)) (cons _L24375_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49556
                                                        __tmp49555))))
                                           (declare (not safe))
                                           (cons __tmp49559 __tmp49554))
                                         (gx#stx-source _stx23520_))))
                                  (declare (not safe))
                                  (_g2438724418_ __tmp49553))))
                            _g2436124372_)))
                        (__tmp49560
                         (let ((__tmp49561
                                (let ()
                                  (declare (not safe))
                                  (cons _L24249_ '()))))
                           (declare (not safe))
                           (_generate-clauses23528_ _body24231_ __tmp49561))))
                   (declare (not safe))
                   (_g2435924422_ __tmp49560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2433324344_)))
                                                 (__tmp49562
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp49569
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp49563
                                                          (let ((__tmp49564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49565
                                (let ((__tmp49568
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp49566
                                       (let ((__tmp49567
                                              (foldr (lambda (_g2442924432_
                                                              _g2443024435_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2442924432_
                                                               _g2443024435_)))
                                                     '()
                                                     _L24315_)))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp49567))))
                                  (declare (not safe))
                                  (cons __tmp49568 __tmp49566))))
                           (declare (not safe))
                           (cons __tmp49565 '()))))
                    (declare (not safe))
                    (cons '() __tmp49564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49569
                                                           __tmp49563))
                                                   (gx#stx-source
                                                    _stx23520_))))
                                            (declare (not safe))
                                            (_g2433124426_ __tmp49562))))
                                      _target2427224311_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2426724291_ _target2426424285_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2426124278_ _g2426224282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2426124278_
                                                    _g2426224282_))))))
                                     (declare (not safe))
                                     (_g2426024438_ _tgt-lst23522_))))
                               _g2423524246_)))
                           (__tmp49570 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2423324442_ __tmp49570))))
                 (_generate-clauses23528_
                  (lambda (_rest23883_ _E23885_)
                    (let* ((___stx4587845879_ _rest23883_)
                           (_g2388923905_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4587845879_))))
                      (let ((___kont4588145882_
                             (lambda (_L24139_)
                               (let* ((_g2415024168_
                                       (lambda (_g2415124164_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2415124164_)))
                                      (_g2414924223_
                                       (lambda (_g2415124172_)
                                         (if (gx#stx-pair? _g2415124172_)
                                             (let ((_e2415424175_
                                                    (gx#syntax-e
                                                     _g2415124172_)))
                                               (let ((_hd2415524179_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2415424175_)))
                                                     (_tl2415624182_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2415424175_))))
                                                 (if (gx#stx-pair?
                                                      _tl2415624182_)
                                                     (let ((_e2415724185_
                                                            (gx#syntax-e
                                                             _tl2415624182_)))
                                                       (let ((_hd2415824189_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2415724185_)))
                     (_tl2415924192_
                      (let () (declare (not safe)) (##cdr _e2415724185_))))
                 (if (gx#stx-pair? _tl2415924192_)
                     (let ((_e2416024195_ (gx#syntax-e _tl2415924192_)))
                       (let ((_hd2416124199_
                              (let ()
                                (declare (not safe))
                                (##car _e2416024195_)))
                             (_tl2416224202_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2416024195_))))
                         (if (gx#stx-null? _tl2416224202_)
                             ((lambda (_L24205_ _L24207_)
                                (let ((__tmp49571
                                       (let ((__tmp49572
                                              (let ((__tmp49573
                                                     (if (gx#stx-e _L24207_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123529_
                                                            _L24207_
                                                            _L24205_
                                                            _E23885_))
                                                         _L24205_)))
                                                (declare (not safe))
                                                (cons __tmp49573 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp49572))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp49571)))
                              _hd2416124199_
                              _hd2415824189_)
                             (let ()
                               (declare (not safe))
                               (_g2415024168_ _g2415124172_)))))
                     (let ()
                       (declare (not safe))
                       (_g2415024168_ _g2415124172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2415024168_
                                                        _g2415124172_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2415024168_
                                                _g2415124172_))))))
                                 (declare (not safe))
                                 (_g2414924223_ _L24139_))))
                            (___kont4588345884_
                             (lambda (_L23933_ _L23935_)
                               (let* ((_g2394823967_
                                       (lambda (_g2394923963_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2394923963_)))
                                      (_g2394724118_
                                       (lambda (_g2394923971_)
                                         (if (gx#stx-pair? _g2394923971_)
                                             (let ((_e2395323974_
                                                    (gx#syntax-e
                                                     _g2394923971_)))
                                               (let ((_hd2395423978_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2395323974_)))
                                                     (_tl2395523981_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2395323974_))))
                                                 (if (gx#stx-pair?
                                                      _tl2395523981_)
                                                     (let ((_e2395623984_
                                                            (gx#syntax-e
                                                             _tl2395523981_)))
                                                       (let ((_hd2395723988_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2395623984_)))
                     (_tl2395823991_
                      (let () (declare (not safe)) (##cdr _e2395623984_))))
                 (if (gx#stx-pair? _tl2395823991_)
                     (let ((_e2395923994_ (gx#syntax-e _tl2395823991_)))
                       (let ((_hd2396023998_
                              (let ()
                                (declare (not safe))
                                (##car _e2395923994_)))
                             (_tl2396124001_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2395923994_))))
                         (if (gx#stx-null? _tl2396124001_)
                             ((lambda (_L24004_ _L24006_ _L24007_)
                                (if (gx#stx-e _L24006_)
                                    (let* ((_g2402424039_
                                            (lambda (_g2402524035_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2402524035_)))
                                           (_g2402324084_
                                            (lambda (_g2402524043_)
                                              (if (gx#stx-pair? _g2402524043_)
                                                  (let ((_e2402824046_
                                                         (gx#syntax-e
                                                          _g2402524043_)))
                                                    (let ((_hd2402924050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2402824046_)))
                                                          (_tl2403024053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2402824046_))))
                                                      (if (gx#stx-pair?
                                                           _tl2403024053_)
                                                          (let ((_e2403124056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2403024053_)))
                    (let ((_hd2403224060_
                           (let () (declare (not safe)) (##car _e2403124056_)))
                          (_tl2403324063_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2403124056_))))
                      (if (gx#stx-null? _tl2403324063_)
                          ((lambda (_L24066_ _L24068_)
                             (let ()
                               (let ((__tmp49583 (gx#datum->syntax '#f 'let))
                                     (__tmp49574
                                      (let ((__tmp49576
                                             (let ((__tmp49577
                                                    (let ((__tmp49578
                                                           (let ((__tmp49579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49582 (gx#datum->syntax '#f 'lambda))
                                (__tmp49580
                                 (let ((__tmp49581
                                        (let ()
                                          (declare (not safe))
                                          (cons _L24068_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp49581))))
                            (declare (not safe))
                            (cons __tmp49582 __tmp49580))))
                     (declare (not safe))
                     (cons __tmp49579 '()))))
              (declare (not safe))
              (cons _L24007_ __tmp49578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49577 '())))
                                            (__tmp49575
                                             (let ()
                                               (declare (not safe))
                                               (cons _L24066_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49576 __tmp49575))))
                                 (declare (not safe))
                                 (cons __tmp49583 __tmp49574))))
                           _hd2403224060_
                           _hd2402924050_)
                          (let ()
                            (declare (not safe))
                            (_g2402424039_ _g2402524043_)))))
                  (let ()
                    (declare (not safe))
                    (_g2402424039_ _g2402524043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2402424039_
                                                     _g2402524043_)))))
                                           (__tmp49584
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123529_
                                                     _L24006_
                                                     _L24004_
                                                     _E23885_))
                                                  (let ((__tmp49585
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L24007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23528_
                                                     _L23933_
                                                     __tmp49585)))))
                                      (declare (not safe))
                                      (_g2402324084_ __tmp49584))
                                    (let* ((_g2408824096_
                                            (lambda (_g2408924092_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2408924092_)))
                                           (_g2408724114_
                                            (lambda (_g2408924100_)
                                              ((lambda (_L24103_)
                                                 (let ()
                                                   (let ((__tmp49600
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp49586
                                                          (let ((__tmp49588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49589
                                (let ((__tmp49590
                                       (let ((__tmp49591
                                              (let ((__tmp49599
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp49592
                                                     (let ((__tmp49598
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp49593
                                                            (let ((__tmp49594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49597 (gx#datum->syntax '#f 'lambda))
                                 (__tmp49595
                                  (let ((__tmp49596
                                         (let ()
                                           (declare (not safe))
                                           (cons _L24004_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp49596))))
                             (declare (not safe))
                             (cons __tmp49597 __tmp49595))))
                      (declare (not safe))
                      (cons __tmp49594 '()))))
               (declare (not safe))
               (cons __tmp49598 __tmp49593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49599 __tmp49592))))
                                         (declare (not safe))
                                         (cons __tmp49591 '()))))
                                  (declare (not safe))
                                  (cons _L24007_ __tmp49590))))
                           (declare (not safe))
                           (cons __tmp49589 '())))
                        (__tmp49587
                         (let () (declare (not safe)) (cons _L24103_ '()))))
                    (declare (not safe))
                    (cons __tmp49588 __tmp49587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49600
                                                           __tmp49586))))
                                               _g2408924100_)))
                                           (__tmp49601
                                            (let ((__tmp49602
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L24007_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23528_
                                               _L23933_
                                               __tmp49602))))
                                      (declare (not safe))
                                      (_g2408724114_ __tmp49601))))
                              _hd2396023998_
                              _hd2395723988_
                              _hd2395423978_)
                             (let ()
                               (declare (not safe))
                               (_g2394823967_ _g2394923971_)))))
                     (let ()
                       (declare (not safe))
                       (_g2394823967_ _g2394923971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2394823967_
                                                        _g2394923971_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2394823967_
                                                _g2394923971_))))))
                                 (declare (not safe))
                                 (_g2394724118_ _L23935_))))
                            (___kont4588545886_
                             (lambda ()
                               (let ((__tmp49603
                                      (let ((__tmp49604
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23885_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp49604))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp49603)))))
                        (if (gx#stx-pair? ___stx4587845879_)
                            (let ((_e2389224129_
                                   (gx#syntax-e ___stx4587845879_)))
                              (let ((_tl2389424136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2389224129_)))
                                    (_hd2389324133_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2389224129_))))
                                (if (gx#stx-null? _tl2389424136_)
                                    (___kont4588145882_ _hd2389324133_)
                                    (___kont4588345884_
                                     _tl2389424136_
                                     _hd2389324133_))))
                            (___kont4588545886_))))))
                 (_generate123529_
                  (lambda (_clause23531_ _body23533_ _E23534_)
                    (let* ((_g2353623560_
                            (lambda (_g2353723556_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2353723556_)))
                           (_g2353523879_
                            (lambda (_g2353723564_)
                              (if (gx#stx-pair? _g2353723564_)
                                  (let ((_e2354023567_
                                         (gx#syntax-e _g2353723564_)))
                                    (let ((_hd2354123571_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2354023567_)))
                                          (_tl2354223574_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2354023567_))))
                                      (if (gx#stx-pair? _tl2354223574_)
                                          (let ((_e2354323577_
                                                 (gx#syntax-e _tl2354223574_)))
                                            (let ((_hd2354423581_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2354323577_)))
                                                  (_tl2354523584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2354323577_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2354423581_)
                                                  (let ((_g49605_
                                                         (gx#syntax-split-splice
                                                          _hd2354423581_
                                                          '0)))
                                                    (begin
                                                      (let ((_g49606_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g49605_)
                           (##vector-length _g49605_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g49606_ 2)))
                    (error "Context expects 2 values" _g49606_)))
              (let ((_target2354623587_
                     (let () (declare (not safe)) (##vector-ref _g49605_ 0)))
                    (_tl2354823590_
                     (let () (declare (not safe)) (##vector-ref _g49605_ 1))))
                (if (gx#stx-null? _tl2354823590_)
                    (letrec ((_loop2354923593_
                              (lambda (_hd2354723597_ _var2355323600_)
                                (if (gx#stx-pair? _hd2354723597_)
                                    (let ((_e2355023603_
                                           (gx#syntax-e _hd2354723597_)))
                                      (let ((_lp-hd2355123607_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2355023603_)))
                                            (_lp-tl2355223610_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2355023603_))))
                                        (let ((__tmp49607
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2355123607_
                                                       _var2355323600_))))
                                          (declare (not safe))
                                          (_loop2354923593_
                                           _lp-tl2355223610_
                                           __tmp49607))))
                                    (let ((_var2355423613_
                                           (reverse _var2355323600_)))
                                      (if (gx#stx-null? _tl2354523584_)
                                          ((lambda (_L23617_ _L23619_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g2364023643_
                                                                _g2364123646_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2364023643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2364123646_)))
               '()
               _L23617_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx23520_)
                                               (let* ((_g2364923657_
                                                       (lambda (_g2365023653_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2365023653_)))
                                                      (_g2364823751_
                                                       (lambda (_g2365023661_)
                                                         ((lambda (_L23664_)
                                                            (let ()
                                                              (let* ((_g2367723685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2367823681_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2367823681_)))
                             (_g2367623747_
                              (lambda (_g2367823689_)
                                ((lambda (_L23692_)
                                   (let ()
                                     (let* ((_g2370523713_
                                             (lambda (_g2370623709_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2370623709_)))
                                            (_g2370423735_
                                             (lambda (_g2370623717_)
                                               ((lambda (_L23720_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp50096
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp50092
                                                              (let ((__tmp50094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50095
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23720_ '()))))
                               (declare (not safe))
                               (cons _L23619_ __tmp50095)))
                            (__tmp50093
                             (let ()
                               (declare (not safe))
                               (cons _L23664_ '()))))
                        (declare (not safe))
                        (cons __tmp50094 __tmp50093))))
                 (declare (not safe))
                 (cons __tmp50096 __tmp50092))
               (gx#stx-source _stx23520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2370623717_)))
                                            (__tmp50097
                                             (gx#stx-wrap-source
                                              (let ((__tmp50101
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp50098
                                                     (let ((__tmp50100
                                                            (foldr (lambda (_g2373823741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2373923744_)
                             (let ()
                               (declare (not safe))
                               (cons _g2373823741_ _g2373923744_)))
                           '()
                           _L23617_))
                   (__tmp50099
                    (let () (declare (not safe)) (cons _L23692_ '()))))
               (declare (not safe))
               (cons __tmp50100 __tmp50099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50101 __tmp50098))
                                              (gx#stx-source _stx23520_))))
                                       (declare (not safe))
                                       (_g2370423735_ __tmp50097))))
                                 _g2367823689_))))
                        (declare (not safe))
                        (_g2367623747_ _body23533_))))
                  _g2365023661_)))
              (__tmp50102
               (let _recur23755_ ((_rest23758_ _clause23531_)
                                  (_rest-targets23760_ _tgt-lst23522_))
                 (let* ((___stx4590445905_ _rest23758_)
                        (_g2376323775_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4590445905_))))
                   (let ((___kont4590745908_
                          (lambda (_L23811_ _L23813_)
                            (let* ((_g2382823840_
                                    (lambda (_g2382923836_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2382923836_)))
                                   (_g2382723871_
                                    (lambda (_g2382923844_)
                                      (if (gx#stx-pair? _g2382923844_)
                                          (let ((_e2383223847_
                                                 (gx#syntax-e _g2382923844_)))
                                            (let ((_hd2383323851_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2383223847_)))
                                                  (_tl2383423854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2383223847_))))
                                              ((lambda (_L23857_ _L23859_)
                                                 (let ((__tmp50103
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23755_
                                                           _L23811_
                                                           _L23857_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx23520_
                                                    _L23859_
                                                    _L23813_
                                                    __tmp50103
                                                    _E23534_)))
                                               _tl2383423854_
                                               _hd2383323851_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2382823840_ _g2382923844_))))))
                              (declare (not safe))
                              (_g2382723871_ _rest-targets23760_))))
                         (___kont4590945910_
                          (lambda ()
                            (let ((__tmp50104
                                   (foldr (lambda (_g2378523788_ _g2378623791_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2378523788_
                                                    _g2378623791_)))
                                          '()
                                          _L23617_)))
                              (declare (not safe))
                              (cons _L23619_ __tmp50104)))))
                     (if (gx#stx-pair? ___stx4590445905_)
                         (let ((_e2376723801_ (gx#syntax-e ___stx4590445905_)))
                           (let ((_tl2376923808_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2376723801_)))
                                 (_hd2376823805_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2376723801_))))
                             (___kont4590745908_
                              _tl2376923808_
                              _hd2376823805_)))
                         (___kont4590945910_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2364823751_ __tmp50102))))
                                           _var2355423613_
                                           _hd2354123571_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2353623560_
                                             _g2353723564_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2354923593_ _target2354623587_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2353623560_ _g2353723564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2353623560_
                                                     _g2353723564_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2353623560_ _g2353723564_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2353623560_ _g2353723564_)))))
                           (__tmp50105
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23531_)))))
                      (declare (not safe))
                      (_g2353523879_ __tmp50105)))))
          (let ((__tmp50106
                 (let ((__tmp50107 (gx#stx-length _tgt-lst23522_)))
                   (declare (not safe))
                   (_parse-body23525_ __tmp50107))))
            (declare (not safe))
            (_generate-body23527_ __tmp50106)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23422_ _tgt23424_ _clauses23425_)
        (letrec ((_reclause23427_
                  (lambda (_clause23430_)
                    (let* ((___stx4592045921_ _clause23430_)
                           (_g2343523450_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4592045921_))))
                      (let ((___kont4592345924_ (lambda () _clause23430_))
                            (___kont4592545926_
                             (lambda (_L23478_ _L23480_)
                               (gx#stx-wrap-source
                                (let ((__tmp50108
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23480_ '()))))
                                  (declare (not safe))
                                  (cons __tmp50108 _L23478_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4592745928_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23422_
                                _clause23430_))))
                        (if (gx#stx-pair? ___stx4592045921_)
                            (let ((_e2343723502_
                                   (gx#syntax-e ___stx4592045921_)))
                              (let ((_tl2343923509_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2343723502_)))
                                    (_hd2343823506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2343723502_))))
                                (if (gx#identifier? _hd2343823506_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50109_|
                                         _hd2343823506_)
                                        (___kont4592345924_)
                                        (___kont4592545926_
                                         _tl2343923509_
                                         _hd2343823506_))
                                    (___kont4592545926_
                                     _tl2343923509_
                                     _hd2343823506_))))
                            (___kont4592745928_)))))))
          (let ((__tmp50111
                 (let () (declare (not safe)) (cons _tgt23424_ '())))
                (__tmp50110 (gx#stx-map _reclause23427_ _clauses23425_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23422_
             __tmp50111
             __tmp50110)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30653_)
        (let* ((___stx4594845949_ _stx30653_)
               (_g3065830687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4594845949_))))
          (let ((___kont4595145952_
                 (lambda (_L30927_)
                   (let* ((_g3094030948_
                           (lambda (_g3094130944_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3094130944_)))
                          (_g3093931001_
                           (lambda (_g3094130952_)
                             ((lambda (_L30955_)
                                (let ()
                                  (let* ((_g3096730975_
                                          (lambda (_g3096830971_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3096830971_)))
                                         (_g3096630997_
                                          (lambda (_g3096830979_)
                                            ((lambda (_L30982_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50115
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50112
                                                          (let ((__tmp50114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30955_ '())))
                        (__tmp50113
                         (let () (declare (not safe)) (cons _L30982_ '()))))
                    (declare (not safe))
                    (cons __tmp50114 __tmp50113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50115
                                                           __tmp50112)))))
                                             _g3096830979_))))
                                    (_g3096630997_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50117
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50116
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30955_ _L30927_))))
                                        (declare (not safe))
                                        (cons __tmp50117 __tmp50116))
                                      (gx#stx-source _stx30653_))))))
                              _g3094130952_))))
                     (_g3093931001_ (gx#genident 'e)))))
                (___kont4595345954_
                 (lambda (_L30822_)
                   (let* ((_g3083530843_
                           (lambda (_g3083630839_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3083630839_)))
                          (_g3083430896_
                           (lambda (_g3083630847_)
                             ((lambda (_L30850_)
                                (let ()
                                  (let* ((_g3086230870_
                                          (lambda (_g3086330866_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3086330866_)))
                                         (_g3086130892_
                                          (lambda (_g3086330874_)
                                            ((lambda (_L30877_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50120
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50118
                                                          (let ((__tmp50119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30877_ '()))))
                    (declare (not safe))
                    (cons _L30850_ __tmp50119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50120
                                                           __tmp50118)))))
                                             _g3086330874_))))
                                    (_g3086130892_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50122
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50121
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30850_ _L30822_))))
                                        (declare (not safe))
                                        (cons __tmp50122 __tmp50121))
                                      (gx#stx-source _stx30653_))))))
                              _g3083630847_))))
                     (_g3083430896_ (gx#genident 'args)))))
                (___kont4595545956_
                 (lambda (_L30714_ _L30716_)
                   (let* ((_g3073030738_
                           (lambda (_g3073130734_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3073130734_)))
                          (_g3072930791_
                           (lambda (_g3073130742_)
                             ((lambda (_L30745_)
                                (let ()
                                  (let* ((_g3075730765_
                                          (lambda (_g3075830761_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3075830761_)))
                                         (_g3075630787_
                                          (lambda (_g3075830769_)
                                            ((lambda (_L30772_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50128
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50123
                                                          (let ((__tmp50125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50126
                                (let ((__tmp50127
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30716_ '()))))
                                  (declare (not safe))
                                  (cons _L30745_ __tmp50127))))
                           (declare (not safe))
                           (cons __tmp50126 '())))
                        (__tmp50124
                         (let () (declare (not safe)) (cons _L30772_ '()))))
                    (declare (not safe))
                    (cons __tmp50125 __tmp50124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50128
                                                           __tmp50123)))))
                                             _g3075830769_))))
                                    (_g3075630787_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30653_
                                        _L30745_
                                        _L30714_))))))
                              _g3073130742_))))
                     (_g3072930791_ (gx#genident _L30716_))))))
            (let* ((___match4600146002_
                    (lambda (_e3067630694_
                             _hd3067730698_
                             _tl3067830701_
                             _e3067930704_
                             _hd3068030708_
                             _tl3068130711_)
                      (let ((_L30714_ _tl3068130711_)
                            (_L30716_ _hd3068030708_))
                        (if (gx#stx-list? _L30714_)
                            (___kont4595545956_ _L30714_ _L30716_)
                            (let () (declare (not safe)) (_g3065830687_))))))
                   (___match4598945990_
                    (lambda (_e3066830802_
                             _hd3066930806_
                             _tl3067030809_
                             _e3067130812_
                             _hd3067230816_
                             _tl3067330819_)
                      (let ((_L30822_ _tl3067330819_))
                        (if (gx#stx-list? _L30822_)
                            (___kont4595345954_ _L30822_)
                            (___match4600146002_
                             _e3066830802_
                             _hd3066930806_
                             _tl3067030809_
                             _e3067130812_
                             _hd3067230816_
                             _tl3067330819_)))))
                   (___match4597345974_
                    (lambda (_e3066130907_
                             _hd3066230911_
                             _tl3066330914_
                             _e3066430917_
                             _hd3066530921_
                             _tl3066630924_)
                      (let ((_L30927_ _tl3066630924_))
                        (if (gx#stx-list? _L30927_)
                            (___kont4595145952_ _L30927_)
                            (___match4600146002_
                             _e3066130907_
                             _hd3066230911_
                             _tl3066330914_
                             _e3066430917_
                             _hd3066530921_
                             _tl3066630924_))))))
              (if (gx#stx-pair? ___stx4594845949_)
                  (let ((_e3066130907_ (gx#syntax-e ___stx4594845949_)))
                    (let ((_tl3066330914_
                           (let () (declare (not safe)) (##cdr _e3066130907_)))
                          (_hd3066230911_
                           (let ()
                             (declare (not safe))
                             (##car _e3066130907_))))
                      (if (gx#stx-pair? _tl3066330914_)
                          (let ((_e3066430917_ (gx#syntax-e _tl3066330914_)))
                            (let ((_tl3066630924_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3066430917_)))
                                  (_hd3066530921_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3066430917_))))
                              (if (gx#identifier? _hd3066530921_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50129_|
                                       _hd3066530921_)
                                      (___match4597345974_
                                       _e3066130907_
                                       _hd3066230911_
                                       _tl3066330914_
                                       _e3066430917_
                                       _hd3066530921_
                                       _tl3066630924_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50130_|
                                           _hd3066530921_)
                                          (___match4598945990_
                                           _e3066130907_
                                           _hd3066230911_
                                           _tl3066330914_
                                           _e3066430917_
                                           _hd3066530921_
                                           _tl3066630924_)
                                          (___match4600146002_
                                           _e3066130907_
                                           _hd3066230911_
                                           _tl3066330914_
                                           _e3066430917_
                                           _hd3066530921_
                                           _tl3066630924_)))
                                  (___match4600146002_
                                   _e3066130907_
                                   _hd3066230911_
                                   _tl3066330914_
                                   _e3066430917_
                                   _hd3066530921_
                                   _tl3066630924_))))
                          (let () (declare (not safe)) (_g3065830687_)))))
                  (let () (declare (not safe)) (_g3065830687_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx31009_)
        (let* ((_g3101231036_
                (lambda (_g3101331032_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3101331032_)))
               (_g3101131248_
                (lambda (_g3101331040_)
                  (if (gx#stx-pair? _g3101331040_)
                      (let ((_e3101631043_ (gx#syntax-e _g3101331040_)))
                        (let ((_hd3101731047_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3101631043_)))
                              (_tl3101831050_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3101631043_))))
                          (if (gx#stx-pair? _tl3101831050_)
                              (let ((_e3101931053_
                                     (gx#syntax-e _tl3101831050_)))
                                (let ((_hd3102031057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3101931053_)))
                                      (_tl3102131060_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3101931053_))))
                                  (if (gx#stx-pair/null? _hd3102031057_)
                                      (let ((_g50131_
                                             (gx#syntax-split-splice
                                              _hd3102031057_
                                              '0)))
                                        (begin
                                          (let ((_g50132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50131_)
                                                       (##vector-length
                                                        _g50131_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50132_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50132_)))
                                          (let ((_target3102231063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50131_ 0)))
                                                (_tl3102431066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50131_ 1))))
                                            (if (gx#stx-null? _tl3102431066_)
                                                (letrec ((_loop3102531069_
                                                          (lambda (_hd3102331073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3102931076_)
                    (if (gx#stx-pair? _hd3102331073_)
                        (let ((_e3102631079_ (gx#syntax-e _hd3102331073_)))
                          (let ((_lp-hd3102731083_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3102631079_)))
                                (_lp-tl3102831086_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3102631079_))))
                            (_loop3102531069_
                             _lp-tl3102831086_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd3102731083_ _e3102931076_)))))
                        (let ((_e3103031089_ (reverse _e3102931076_)))
                          ((lambda (_L31093_ _L31095_)
                             (if (gx#stx-list? _L31093_)
                                 (let* ((_g3111331130_
                                         (lambda (_g3111431126_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3111431126_)))
                                        (_g3111231236_
                                         (lambda (_g3111431134_)
                                           (if (gx#stx-pair/null?
                                                _g3111431134_)
                                               (let ((_g50133_
                                                      (gx#syntax-split-splice
                                                       _g3111431134_
                                                       '0)))
                                                 (begin
                                                   (let ((_g50134_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g50133_)
                        (##vector-length _g50133_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g50134_ 2)))
                 (error "Context expects 2 values" _g50134_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3111631137_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50133_
                                                             0)))
                                                         (_tl3111831140_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50133_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3111831140_)
                                                         (letrec ((_loop3111931143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3111731147_ _$e3112331150_)
                             (if (gx#stx-pair? _hd3111731147_)
                                 (let ((_e3112031153_
                                        (gx#syntax-e _hd3111731147_)))
                                   (let ((_lp-hd3112131157_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3112031153_)))
                                         (_lp-tl3112231160_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3112031153_))))
                                     (_loop3111931143_
                                      _lp-tl3112231160_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3112131157_
                                              _$e3112331150_)))))
                                 (let ((_$e3112431163_
                                        (reverse _$e3112331150_)))
                                   ((lambda (_L31167_)
                                      (let ()
                                        (let* ((_g3118331191_
                                                (lambda (_g3118431187_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3118431187_)))
                                               (_g3118231224_
                                                (lambda (_g3118431195_)
                                                  ((lambda (_L31198_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp50140
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp50135
                        (let ((__tmp50137
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L31095_
                                  _L31167_)
                                 (foldr (lambda (_g3121231216_
                                                 _g3121331219_
                                                 _g3121431221_)
                                          (let ((__tmp50138
                                                 (let ((__tmp50139
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3121231216_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3121331219_
                                                         __tmp50139))))
                                            (declare (not safe))
                                            (cons __tmp50138 _g3121431221_)))
                                        '()
                                        _L31095_
                                        _L31167_)))
                              (__tmp50136
                               (let ()
                                 (declare (not safe))
                                 (cons _L31198_ '()))))
                          (declare (not safe))
                          (cons __tmp50137 __tmp50136))))
                   (declare (not safe))
                   (cons __tmp50140 __tmp50135)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3118431195_))))
                                          (_g3118231224_
                                           (let ((__tmp50141
                                                  (foldr (lambda (_g3122731230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3122831233_)
                   (let ()
                     (declare (not safe))
                     (cons _g3122731230_ _g3122831233_)))
                 '()
                 _L31167_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx31009_
                                              __tmp50141
                                              _L31093_))))))
                                    _$e3112431163_))))))
                   (_loop3111931143_ _target3111631137_ '()))
                 (_g3111331130_ _g3111431134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3111331130_
                                                _g3111431134_)))))
                                   (_g3111231236_
                                    (gx#gentemps
                                     (foldr (lambda (_g3123931242_
                                                     _g3124031245_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3123931242_
                                                      _g3124031245_)))
                                            '()
                                            _L31095_))))
                                 (_g3101231036_ _g3101331040_)))
                           _tl3102131060_
                           _e3103031089_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3102531069_
                                                   _target3102231063_
                                                   '()))
                                                (_g3101231036_
                                                 _g3101331040_)))))
                                      (_g3101231036_ _g3101331040_))))
                              (_g3101231036_ _g3101331040_))))
                      (_g3101231036_ _g3101331040_)))))
          (_g3101131248_ _stx31009_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx31254_)
        (let* ((___stx4600446005_ _$stx31254_)
               (_g3126031343_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4600446005_))))
          (let ((___kont4600746008_
                 (lambda (_L31673_)
                   (let ((__tmp50144 (gx#datum->syntax '#f 'let))
                         (__tmp50142
                          (let ((__tmp50143
                                 (foldr (lambda (_g3168931692_ _g3169031695_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3168931692_
                                                  _g3169031695_)))
                                        '()
                                        _L31673_)))
                            (declare (not safe))
                            (cons '() __tmp50143))))
                     (declare (not safe))
                     (cons __tmp50144 __tmp50142))))
                (___kont4601146012_
                 (lambda (_L31581_ _L31583_ _L31584_ _L31585_)
                   (let ((__tmp50145
                          (let ((__tmp50147
                                 (let ((__tmp50148
                                        (let ((__tmp50149
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31583_ '()))))
                                          (declare (not safe))
                                          (cons _L31584_ __tmp50149))))
                                   (declare (not safe))
                                   (cons __tmp50148 '())))
                                (__tmp50146
                                 (foldr (lambda (_g3160731610_ _g3160831613_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3160731610_
                                                  _g3160831613_)))
                                        '()
                                        _L31581_)))
                            (declare (not safe))
                            (cons __tmp50147 __tmp50146))))
                     (declare (not safe))
                     (cons _L31585_ __tmp50145))))
                (___kont4601546016_
                 (lambda (_L31454_ _L31456_ _L31457_)
                   (let ((__tmp50156 (gx#datum->syntax '#f 'match*))
                         (__tmp50150
                          (let ((__tmp50155
                                 (foldr (lambda (_g3147931486_ _g3148031489_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3147931486_
                                                  _g3148031489_)))
                                        '()
                                        _L31456_))
                                (__tmp50151
                                 (let ((__tmp50152
                                        (let ((__tmp50154
                                               (foldr (lambda (_g3148131492_
                                                               _g3148231495_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3148131492_
                                                                _g3148231495_)))
                                                      '()
                                                      _L31457_))
                                              (__tmp50153
                                               (foldr (lambda (_g3148331498_
                                                               _g3148431501_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3148331498_
                                                                _g3148431501_)))
                                                      '()
                                                      _L31454_)))
                                          (declare (not safe))
                                          (cons __tmp50154 __tmp50153))))
                                   (declare (not safe))
                                   (cons __tmp50152 '()))))
                            (declare (not safe))
                            (cons __tmp50155 __tmp50151))))
                     (declare (not safe))
                     (cons __tmp50156 __tmp50150)))))
            (let* ((___match4609746098_
                    (lambda (_e3130631350_
                             _hd3130731354_
                             _tl3130831357_
                             _e3130931360_
                             _hd3131031364_
                             _tl3131131367_
                             ___splice4601746018_
                             _target3131231370_
                             _tl3131431373_)
                      (letrec ((_loop3131531376_
                                (lambda (_hd3131331380_
                                         _expr3131931383_
                                         _hd3132031385_)
                                  (if (gx#stx-pair? _hd3131331380_)
                                      (let ((_e3131631388_
                                             (gx#syntax-e _hd3131331380_)))
                                        (let ((_lp-tl3131831395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3131631388_)))
                                              (_lp-hd3131731392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3131631388_))))
                                          (if (gx#stx-pair? _lp-hd3131731392_)
                                              (let ((_e3132331398_
                                                     (gx#syntax-e
                                                      _lp-hd3131731392_)))
                                                (let ((_tl3132531405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3132331398_)))
                                                      (_hd3132431402_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3132331398_))))
                                                  (if (gx#stx-pair?
                                                       _tl3132531405_)
                                                      (let ((_e3132631408_
                                                             (gx#syntax-e
                                                              _tl3132531405_)))
                                                        (let ((_tl3132831415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3132631408_)))
                      (_hd3132731412_
                       (let () (declare (not safe)) (##car _e3132631408_))))
                  (if (gx#stx-null? _tl3132831415_)
                      (_loop3131531376_
                       _lp-tl3131831395_
                       (let ()
                         (declare (not safe))
                         (cons _hd3132731412_ _expr3131931383_))
                       (let ()
                         (declare (not safe))
                         (cons _hd3132431402_ _hd3132031385_)))
                      (let () (declare (not safe)) (_g3126031343_)))))
              (let () (declare (not safe)) (_g3126031343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3126031343_)))))
                                      (let ((_hd3132231421_
                                             (reverse _hd3132031385_))
                                            (_expr3132131418_
                                             (reverse _expr3131931383_)))
                                        (if (gx#stx-pair/null? _tl3131131367_)
                                            (let ((___splice4601946020_
                                                   (gx#syntax-split-splice
                                                    _tl3131131367_
                                                    '0)))
                                              (let ((_tl3133131427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4601946020_
                                                        '1)))
                                                    (_target3132931424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4601946020_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3133131427_)
                                                    (letrec ((_loop3133231430_
                                                              (lambda (_hd3133031434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3133631437_)
                        (if (gx#stx-pair? _hd3133031434_)
                            (let ((_e3133331440_ (gx#syntax-e _hd3133031434_)))
                              (let ((_lp-tl3133531447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3133331440_)))
                                    (_lp-hd3133431444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3133331440_))))
                                (_loop3133231430_
                                 _lp-tl3133531447_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd3133431444_
                                         _body3133631437_)))))
                            (let ((_body3133731450_
                                   (reverse _body3133631437_)))
                              (___kont4601546016_
                               _body3133731450_
                               _expr3132131418_
                               _hd3132231421_))))))
              (_loop3133231430_ _target3132931424_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3126031343_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3126031343_))))))))
                        (_loop3131531376_ _target3131231370_ '() '()))))
                   (___match4608946090_
                    (lambda (_e3130631350_
                             _hd3130731354_
                             _tl3130831357_
                             _e3130931360_
                             _hd3131031364_
                             _tl3131131367_)
                      (if (gx#stx-pair/null? _hd3131031364_)
                          (let ((___splice4601746018_
                                 (gx#syntax-split-splice _hd3131031364_ '0)))
                            (let ((_tl3131431373_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4601746018_ '1)))
                                  (_target3131231370_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4601746018_ '0))))
                              (if (gx#stx-null? _tl3131431373_)
                                  (___match4609746098_
                                   _e3130631350_
                                   _hd3130731354_
                                   _tl3130831357_
                                   _e3130931360_
                                   _hd3131031364_
                                   _tl3131131367_
                                   ___splice4601746018_
                                   _target3131231370_
                                   _tl3131431373_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3126031343_)))))
                          (let () (declare (not safe)) (_g3126031343_)))))
                   (___match4607746078_
                    (lambda (_e3128231511_
                             _hd3128331515_
                             _tl3128431518_
                             _e3128531521_
                             _hd3128631525_
                             _tl3128731528_
                             _e3128831531_
                             _hd3128931535_
                             _tl3129031538_
                             _e3129131541_
                             _hd3129231545_
                             _tl3129331548_
                             ___splice4601346014_
                             _target3129431551_
                             _tl3129631554_)
                      (letrec ((_loop3129731557_
                                (lambda (_hd3129531561_ _body3130131564_)
                                  (if (gx#stx-pair? _hd3129531561_)
                                      (let ((_e3129831567_
                                             (gx#syntax-e _hd3129531561_)))
                                        (let ((_lp-tl3130031574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3129831567_)))
                                              (_lp-hd3129931571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3129831567_))))
                                          (_loop3129731557_
                                           _lp-tl3130031574_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3129931571_
                                                   _body3130131564_)))))
                                      (let ((_body3130231577_
                                             (reverse _body3130131564_)))
                                        (let ((_L31581_ _body3130231577_)
                                              (_L31583_ _hd3129231545_)
                                              (_L31584_ _hd3128931535_)
                                              (_L31585_ _hd3128331515_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31584_))
                                              (___kont4601146012_
                                               _L31581_
                                               _L31583_
                                               _L31584_
                                               _L31585_)
                                              (___match4608946090_
                                               _e3128231511_
                                               _hd3128331515_
                                               _tl3128431518_
                                               _e3128531521_
                                               _hd3128631525_
                                               _tl3128731528_))))))))
                        (_loop3129731557_ _target3129431551_ '()))))
                   (___match4604346044_
                    (lambda (_e3126331623_
                             _hd3126431627_
                             _tl3126531630_
                             _e3126631633_
                             _hd3126731637_
                             _tl3126831640_
                             ___splice4600946010_
                             _target3126931643_
                             _tl3127131646_)
                      (letrec ((_loop3127231649_
                                (lambda (_hd3127031653_ _body3127631656_)
                                  (if (gx#stx-pair? _hd3127031653_)
                                      (let ((_e3127331659_
                                             (gx#syntax-e _hd3127031653_)))
                                        (let ((_lp-tl3127531666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3127331659_)))
                                              (_lp-hd3127431663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3127331659_))))
                                          (_loop3127231649_
                                           _lp-tl3127531666_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3127431663_
                                                   _body3127631656_)))))
                                      (let ((_body3127731669_
                                             (reverse _body3127631656_)))
                                        (___kont4600746008_
                                         _body3127731669_))))))
                        (_loop3127231649_ _target3126931643_ '())))))
              (if (gx#stx-pair? ___stx4600446005_)
                  (let ((_e3126331623_ (gx#syntax-e ___stx4600446005_)))
                    (let ((_tl3126531630_
                           (let () (declare (not safe)) (##cdr _e3126331623_)))
                          (_hd3126431627_
                           (let ()
                             (declare (not safe))
                             (##car _e3126331623_))))
                      (if (gx#stx-pair? _tl3126531630_)
                          (let ((_e3126631633_ (gx#syntax-e _tl3126531630_)))
                            (let ((_tl3126831640_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3126631633_)))
                                  (_hd3126731637_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3126631633_))))
                              (if (gx#stx-null? _hd3126731637_)
                                  (if (gx#stx-pair/null? _tl3126831640_)
                                      (let ((___splice4600946010_
                                             (gx#syntax-split-splice
                                              _tl3126831640_
                                              '0)))
                                        (let ((_tl3127131646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4600946010_
                                                  '1)))
                                              (_target3126931643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4600946010_
                                                  '0))))
                                          (if (gx#stx-null? _tl3127131646_)
                                              (___match4604346044_
                                               _e3126331623_
                                               _hd3126431627_
                                               _tl3126531630_
                                               _e3126631633_
                                               _hd3126731637_
                                               _tl3126831640_
                                               ___splice4600946010_
                                               _target3126931643_
                                               _tl3127131646_)
                                              (if (gx#stx-pair/null?
                                                   _hd3126731637_)
                                                  (let ((___splice4601746018_
                                                         (gx#syntax-split-splice
                                                          _hd3126731637_
                                                          '0)))
                                                    (let ((_tl3131431373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4601746018_
                                                              '1)))
                                                          (_target3131231370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4601746018_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3131431373_)
                                                          (___match4609746098_
                                                           _e3126331623_
                                                           _hd3126431627_
                                                           _tl3126531630_
                                                           _e3126631633_
                                                           _hd3126731637_
                                                           _tl3126831640_
                                                           ___splice4601746018_
                                                           _target3131231370_
                                                           _tl3131431373_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3126031343_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_))))))
                                      (if (gx#stx-pair/null? _hd3126731637_)
                                          (let ((___splice4601746018_
                                                 (gx#syntax-split-splice
                                                  _hd3126731637_
                                                  '0)))
                                            (let ((_tl3131431373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4601746018_
                                                      '1)))
                                                  (_target3131231370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4601746018_
                                                      '0))))
                                              (if (gx#stx-null? _tl3131431373_)
                                                  (___match4609746098_
                                                   _e3126331623_
                                                   _hd3126431627_
                                                   _tl3126531630_
                                                   _e3126631633_
                                                   _hd3126731637_
                                                   _tl3126831640_
                                                   ___splice4601746018_
                                                   _target3131231370_
                                                   _tl3131431373_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3126031343_))))
                                  (if (gx#stx-pair? _hd3126731637_)
                                      (let ((_e3128831531_
                                             (gx#syntax-e _hd3126731637_)))
                                        (let ((_tl3129031538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3128831531_)))
                                              (_hd3128931535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3128831531_))))
                                          (if (gx#stx-pair? _tl3129031538_)
                                              (let ((_e3129131541_
                                                     (gx#syntax-e
                                                      _tl3129031538_)))
                                                (let ((_tl3129331548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3129131541_)))
                                                      (_hd3129231545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3129131541_))))
                                                  (if (gx#stx-null?
                                                       _tl3129331548_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3126831640_)
                                                          (let ((___splice4601346014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3126831640_ '0)))
                    (let ((_tl3129631554_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4601346014_ '1)))
                          (_target3129431551_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4601346014_ '0))))
                      (if (gx#stx-null? _tl3129631554_)
                          (___match4607746078_
                           _e3126331623_
                           _hd3126431627_
                           _tl3126531630_
                           _e3126631633_
                           _hd3126731637_
                           _tl3126831640_
                           _e3128831531_
                           _hd3128931535_
                           _tl3129031538_
                           _e3129131541_
                           _hd3129231545_
                           _tl3129331548_
                           ___splice4601346014_
                           _target3129431551_
                           _tl3129631554_)
                          (if (gx#stx-pair/null? _hd3126731637_)
                              (let ((___splice4601746018_
                                     (gx#syntax-split-splice
                                      _hd3126731637_
                                      '0)))
                                (let ((_tl3131431373_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4601746018_
                                          '1)))
                                      (_target3131231370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4601746018_
                                          '0))))
                                  (if (gx#stx-null? _tl3131431373_)
                                      (___match4609746098_
                                       _e3126331623_
                                       _hd3126431627_
                                       _tl3126531630_
                                       _e3126631633_
                                       _hd3126731637_
                                       _tl3126831640_
                                       ___splice4601746018_
                                       _target3131231370_
                                       _tl3131431373_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3126031343_)))))
                              (let () (declare (not safe)) (_g3126031343_))))))
                  (if (gx#stx-pair/null? _hd3126731637_)
                      (let ((___splice4601746018_
                             (gx#syntax-split-splice _hd3126731637_ '0)))
                        (let ((_tl3131431373_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4601746018_ '1)))
                              (_target3131231370_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4601746018_ '0))))
                          (if (gx#stx-null? _tl3131431373_)
                              (___match4609746098_
                               _e3126331623_
                               _hd3126431627_
                               _tl3126531630_
                               _e3126631633_
                               _hd3126731637_
                               _tl3126831640_
                               ___splice4601746018_
                               _target3131231370_
                               _tl3131431373_)
                              (let () (declare (not safe)) (_g3126031343_)))))
                      (let () (declare (not safe)) (_g3126031343_))))
              (if (gx#stx-pair/null? _hd3126731637_)
                  (let ((___splice4601746018_
                         (gx#syntax-split-splice _hd3126731637_ '0)))
                    (let ((_tl3131431373_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4601746018_ '1)))
                          (_target3131231370_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4601746018_ '0))))
                      (if (gx#stx-null? _tl3131431373_)
                          (___match4609746098_
                           _e3126331623_
                           _hd3126431627_
                           _tl3126531630_
                           _e3126631633_
                           _hd3126731637_
                           _tl3126831640_
                           ___splice4601746018_
                           _target3131231370_
                           _tl3131431373_)
                          (let () (declare (not safe)) (_g3126031343_)))))
                  (let () (declare (not safe)) (_g3126031343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3126731637_)
                                                  (let ((___splice4601746018_
                                                         (gx#syntax-split-splice
                                                          _hd3126731637_
                                                          '0)))
                                                    (let ((_tl3131431373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4601746018_
                                                              '1)))
                                                          (_target3131231370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4601746018_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3131431373_)
                                                          (___match4609746098_
                                                           _e3126331623_
                                                           _hd3126431627_
                                                           _tl3126531630_
                                                           _e3126631633_
                                                           _hd3126731637_
                                                           _tl3126831640_
                                                           ___splice4601746018_
                                                           _target3131231370_
                                                           _tl3131431373_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3126031343_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_))))))
                                      (if (gx#stx-pair/null? _hd3126731637_)
                                          (let ((___splice4601746018_
                                                 (gx#syntax-split-splice
                                                  _hd3126731637_
                                                  '0)))
                                            (let ((_tl3131431373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4601746018_
                                                      '1)))
                                                  (_target3131231370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4601746018_
                                                      '0))))
                                              (if (gx#stx-null? _tl3131431373_)
                                                  (___match4609746098_
                                                   _e3126331623_
                                                   _hd3126431627_
                                                   _tl3126531630_
                                                   _e3126631633_
                                                   _hd3126731637_
                                                   _tl3126831640_
                                                   ___splice4601746018_
                                                   _target3131231370_
                                                   _tl3131431373_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3126031343_)))))))
                          (let () (declare (not safe)) (_g3126031343_)))))
                  (let () (declare (not safe)) (_g3126031343_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31706_)
        (let* ((___stx4610046101_ _$stx31706_)
               (_g3171131763_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4610046101_))))
          (let ((___kont4610346104_
                 (lambda (_L31933_ _L31935_ _L31936_ _L31937_ _L31938_)
                   (let ((__tmp50165 (gx#datum->syntax '#f 'with))
                         (__tmp50157
                          (let ((__tmp50162
                                 (let ((__tmp50163
                                        (let ((__tmp50164
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31936_ '()))))
                                          (declare (not safe))
                                          (cons _L31937_ __tmp50164))))
                                   (declare (not safe))
                                   (cons __tmp50163 '())))
                                (__tmp50158
                                 (let ((__tmp50159
                                        (let ((__tmp50160
                                               (let ((__tmp50161
                                                      (foldr (lambda (_g3196331966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3196431969_)
                       (let ()
                         (declare (not safe))
                         (cons _g3196331966_ _g3196431969_)))
                     '()
                     _L31933_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31935_ __tmp50161))))
                                          (declare (not safe))
                                          (cons _L31938_ __tmp50160))))
                                   (declare (not safe))
                                   (cons __tmp50159 '()))))
                            (declare (not safe))
                            (cons __tmp50162 __tmp50158))))
                     (declare (not safe))
                     (cons __tmp50165 __tmp50157))))
                (___kont4610746108_
                 (lambda (_L31820_)
                   (let ((__tmp50168 (gx#datum->syntax '#f 'let))
                         (__tmp50166
                          (let ((__tmp50167
                                 (foldr (lambda (_g3183731840_ _g3183831843_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3183731840_
                                                  _g3183831843_)))
                                        '()
                                        _L31820_)))
                            (declare (not safe))
                            (cons '() __tmp50167))))
                     (declare (not safe))
                     (cons __tmp50168 __tmp50166)))))
            (let* ((___match4617346174_
                    (lambda (_e3174331770_
                             _hd3174431774_
                             _tl3174531777_
                             _e3174631780_
                             _hd3174731784_
                             _tl3174831787_
                             ___splice4610946110_
                             _target3174931790_
                             _tl3175131793_)
                      (letrec ((_loop3175231796_
                                (lambda (_hd3175031800_ _body3175631803_)
                                  (if (gx#stx-pair? _hd3175031800_)
                                      (let ((_e3175331806_
                                             (gx#syntax-e _hd3175031800_)))
                                        (let ((_lp-tl3175531813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3175331806_)))
                                              (_lp-hd3175431810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3175331806_))))
                                          (_loop3175231796_
                                           _lp-tl3175531813_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3175431810_
                                                   _body3175631803_)))))
                                      (let ((_body3175731816_
                                             (reverse _body3175631803_)))
                                        (___kont4610746108_
                                         _body3175731816_))))))
                        (_loop3175231796_ _target3174931790_ '()))))
                   (___match4615146152_
                    (lambda (_e3171831853_
                             _hd3171931857_
                             _tl3172031860_
                             _e3172131863_
                             _hd3172231867_
                             _tl3172331870_
                             _e3172431873_
                             _hd3172531877_
                             _tl3172631880_
                             _e3172731883_
                             _hd3172831887_
                             _tl3172931890_
                             _e3173031893_
                             _hd3173131897_
                             _tl3173231900_
                             ___splice4610546106_
                             _target3173331903_
                             _tl3173531906_)
                      (letrec ((_loop3173631909_
                                (lambda (_hd3173431913_ _body3174031916_)
                                  (if (gx#stx-pair? _hd3173431913_)
                                      (let ((_e3173731919_
                                             (gx#syntax-e _hd3173431913_)))
                                        (let ((_lp-tl3173931926_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3173731919_)))
                                              (_lp-hd3173831923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3173731919_))))
                                          (_loop3173631909_
                                           _lp-tl3173931926_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3173831923_
                                                   _body3174031916_)))))
                                      (let ((_body3174131929_
                                             (reverse _body3174031916_)))
                                        (___kont4610346104_
                                         _body3174131929_
                                         _tl3172631880_
                                         _hd3173131897_
                                         _hd3172831887_
                                         _hd3171931857_))))))
                        (_loop3173631909_ _target3173331903_ '())))))
              (if (gx#stx-pair? ___stx4610046101_)
                  (let ((_e3171831853_ (gx#syntax-e ___stx4610046101_)))
                    (let ((_tl3172031860_
                           (let () (declare (not safe)) (##cdr _e3171831853_)))
                          (_hd3171931857_
                           (let ()
                             (declare (not safe))
                             (##car _e3171831853_))))
                      (if (gx#stx-pair? _tl3172031860_)
                          (let ((_e3172131863_ (gx#syntax-e _tl3172031860_)))
                            (let ((_tl3172331870_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3172131863_)))
                                  (_hd3172231867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3172131863_))))
                              (if (gx#stx-pair? _hd3172231867_)
                                  (let ((_e3172431873_
                                         (gx#syntax-e _hd3172231867_)))
                                    (let ((_tl3172631880_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3172431873_)))
                                          (_hd3172531877_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3172431873_))))
                                      (if (gx#stx-pair? _hd3172531877_)
                                          (let ((_e3172731883_
                                                 (gx#syntax-e _hd3172531877_)))
                                            (let ((_tl3172931890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3172731883_)))
                                                  (_hd3172831887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3172731883_))))
                                              (if (gx#stx-pair? _tl3172931890_)
                                                  (let ((_e3173031893_
                                                         (gx#syntax-e
                                                          _tl3172931890_)))
                                                    (let ((_tl3173231900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3173031893_)))
                                                          (_hd3173131897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3173031893_))))
                                                      (if (gx#stx-null?
                                                           _tl3173231900_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3172331870_)
                                                              (let ((___splice4610546106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3172331870_ '0)))
                        (let ((_tl3173531906_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4610546106_ '1)))
                              (_target3173331903_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4610546106_ '0))))
                          (if (gx#stx-null? _tl3173531906_)
                              (___match4615146152_
                               _e3171831853_
                               _hd3171931857_
                               _tl3172031860_
                               _e3172131863_
                               _hd3172231867_
                               _tl3172331870_
                               _e3172431873_
                               _hd3172531877_
                               _tl3172631880_
                               _e3172731883_
                               _hd3172831887_
                               _tl3172931890_
                               _e3173031893_
                               _hd3173131897_
                               _tl3173231900_
                               ___splice4610546106_
                               _target3173331903_
                               _tl3173531906_)
                              (let () (declare (not safe)) (_g3171131763_)))))
                      (let () (declare (not safe)) (_g3171131763_)))
                  (let () (declare (not safe)) (_g3171131763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3171131763_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3171131763_)))))
                                  (if (gx#stx-null? _hd3172231867_)
                                      (if (gx#stx-pair/null? _tl3172331870_)
                                          (let ((___splice4610946110_
                                                 (gx#syntax-split-splice
                                                  _tl3172331870_
                                                  '0)))
                                            (let ((_tl3175131793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4610946110_
                                                      '1)))
                                                  (_target3174931790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4610946110_
                                                      '0))))
                                              (if (gx#stx-null? _tl3175131793_)
                                                  (___match4617346174_
                                                   _e3171831853_
                                                   _hd3171931857_
                                                   _tl3172031860_
                                                   _e3172131863_
                                                   _hd3172231867_
                                                   _tl3172331870_
                                                   ___splice4610946110_
                                                   _target3174931790_
                                                   _tl3175131793_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3171131763_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3171131763_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3171131763_))))))
                          (let () (declare (not safe)) (_g3171131763_)))))
                  (let () (declare (not safe)) (_g3171131763_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31978_)
        (let* ((___stx4617646177_ _$stx31978_)
               (_g3198932135_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4617646177_))))
          (let ((___kont4617946180_
                 (lambda (_L32739_ _L32741_ _L32742_)
                   (let ((__tmp50173 (gx#datum->syntax '#f 'and))
                         (__tmp50169
                          (foldr (lambda (_g3276332766_ _g3276432769_)
                                   (let ((__tmp50170
                                          (let ((__tmp50171
                                                 (let ((__tmp50172
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32739_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3276332766_
                                                         __tmp50172))))
                                            (declare (not safe))
                                            (cons _L32742_ __tmp50171))))
                                     (declare (not safe))
                                     (cons __tmp50170 _g3276432769_)))
                                 '()
                                 _L32741_)))
                     (declare (not safe))
                     (cons __tmp50173 __tmp50169))))
                (___kont4618346184_
                 (lambda (_L32629_ _L32631_ _L32632_)
                   (let ((__tmp50178 (gx#datum->syntax '#f 'or))
                         (__tmp50174
                          (foldr (lambda (_g3265332656_ _g3265432659_)
                                   (let ((__tmp50175
                                          (let ((__tmp50176
                                                 (let ((__tmp50177
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32629_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3265332656_
                                                         __tmp50177))))
                                            (declare (not safe))
                                            (cons _L32632_ __tmp50176))))
                                     (declare (not safe))
                                     (cons __tmp50175 _g3265432659_)))
                                 '()
                                 _L32631_)))
                     (declare (not safe))
                     (cons __tmp50178 __tmp50174))))
                (___kont4618746188_
                 (lambda (_L32529_ _L32531_ _L32532_)
                   (let ((__tmp50183 (gx#datum->syntax '#f 'not))
                         (__tmp50179
                          (let ((__tmp50180
                                 (let ((__tmp50181
                                        (let ((__tmp50182
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32529_ '()))))
                                          (declare (not safe))
                                          (cons _L32531_ __tmp50182))))
                                   (declare (not safe))
                                   (cons _L32532_ __tmp50181))))
                            (declare (not safe))
                            (cons __tmp50180 '()))))
                     (declare (not safe))
                     (cons __tmp50183 __tmp50179))))
                (___kont4618946190_
                 (lambda (_L32455_ _L32457_)
                   (let ((__tmp50184
                          (let () (declare (not safe)) (cons _L32455_ '()))))
                     (declare (not safe))
                     (cons _L32457_ __tmp50184))))
                (___kont4619146192_
                 (lambda (_L32403_ _L32405_)
                   (let ((__tmp50193 (gx#datum->syntax '#f 'lambda))
                         (__tmp50185
                          (let ((__tmp50191
                                 (let ((__tmp50192
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50192 '())))
                                (__tmp50186
                                 (let ((__tmp50187
                                        (let ((__tmp50188
                                               (let ((__tmp50189
                                                      (let ((__tmp50190
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp50190
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32403_ __tmp50189))))
                                          (declare (not safe))
                                          (cons _L32405_ __tmp50188))))
                                   (declare (not safe))
                                   (cons __tmp50187 '()))))
                            (declare (not safe))
                            (cons __tmp50191 __tmp50186))))
                     (declare (not safe))
                     (cons __tmp50193 __tmp50185))))
                (___kont4619346194_
                 (lambda (_L32355_ _L32357_ _L32358_)
                   (let ((__tmp50212 (gx#datum->syntax '#f 'lambda))
                         (__tmp50194
                          (let ((__tmp50210
                                 (let ((__tmp50211
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50211 '())))
                                (__tmp50195
                                 (let ((__tmp50196
                                        (let ((__tmp50209
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp50197
                                               (let ((__tmp50202
                                                      (let ((__tmp50208
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp50203
                                                             (let ((__tmp50204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50205
                                   (let ((__tmp50206
                                          (let ((__tmp50207
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50207 '()))))
                                     (declare (not safe))
                                     (cons _L32357_ __tmp50206))))
                              (declare (not safe))
                              (cons _L32358_ __tmp50205))))
                       (declare (not safe))
                       (cons __tmp50204 '()))))
                (declare (not safe))
                (cons __tmp50208 __tmp50203)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50198
                                                      (let ((__tmp50199
                                                             (let ((__tmp50200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50201 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp50201 '()))))
                       (declare (not safe))
                       (cons _L32355_ __tmp50200))))
                (declare (not safe))
                (cons __tmp50199 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50202
                                                       __tmp50198))))
                                          (declare (not safe))
                                          (cons __tmp50209 __tmp50197))))
                                   (declare (not safe))
                                   (cons __tmp50196 '()))))
                            (declare (not safe))
                            (cons __tmp50210 __tmp50195))))
                     (declare (not safe))
                     (cons __tmp50212 __tmp50194))))
                (___kont4619546196_
                 (lambda (_L32286_ _L32288_ _L32289_)
                   (let ((__tmp50228 (gx#datum->syntax '#f 'lambda))
                         (__tmp50213
                          (let ((__tmp50226
                                 (let ((__tmp50227
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50227 '())))
                                (__tmp50214
                                 (let ((__tmp50215
                                        (let ((__tmp50225
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50216
                                               (let ((__tmp50221
                                                      (let ((__tmp50222
                                                             (let ((__tmp50223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50224 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50224 '()))))
                       (declare (not safe))
                       (cons _L32288_ __tmp50223))))
                (declare (not safe))
                (cons _L32289_ __tmp50222)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50217
                                                      (let ((__tmp50218
                                                             (let ((__tmp50219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50220 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50220 '()))))
                       (declare (not safe))
                       (cons _L32286_ __tmp50219))))
                (declare (not safe))
                (cons __tmp50218 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50221
                                                       __tmp50217))))
                                          (declare (not safe))
                                          (cons __tmp50225 __tmp50216))))
                                   (declare (not safe))
                                   (cons __tmp50215 '()))))
                            (declare (not safe))
                            (cons __tmp50226 __tmp50214))))
                     (declare (not safe))
                     (cons __tmp50228 __tmp50213))))
                (___kont4619746198_
                 (lambda (_L32206_ _L32208_ _L32209_ _L32210_)
                   (let ((__tmp50246 (gx#datum->syntax '#f 'lambda))
                         (__tmp50229
                          (let ((__tmp50244
                                 (let ((__tmp50245
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50245 '())))
                                (__tmp50230
                                 (let ((__tmp50231
                                        (let ((__tmp50243
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50232
                                               (let ((__tmp50239
                                                      (let ((__tmp50240
                                                             (let ((__tmp50241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50242 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50242 '()))))
                       (declare (not safe))
                       (cons _L32209_ __tmp50241))))
                (declare (not safe))
                (cons _L32210_ __tmp50240)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50233
                                                      (let ((__tmp50234
                                                             (let ((__tmp50235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50236
                                   (let ((__tmp50237
                                          (let ((__tmp50238
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50238 '()))))
                                     (declare (not safe))
                                     (cons _L32208_ __tmp50237))))
                              (declare (not safe))
                              (cons __tmp50236 '()))))
                       (declare (not safe))
                       (cons _L32206_ __tmp50235))))
                (declare (not safe))
                (cons __tmp50234 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50239
                                                       __tmp50233))))
                                          (declare (not safe))
                                          (cons __tmp50243 __tmp50232))))
                                   (declare (not safe))
                                   (cons __tmp50231 '()))))
                            (declare (not safe))
                            (cons __tmp50244 __tmp50230))))
                     (declare (not safe))
                     (cons __tmp50246 __tmp50229)))))
            (let* ((___match4634946350_
                    (lambda (_e3207932315_
                             _hd3208032319_
                             _tl3208132322_
                             _e3208232325_
                             _hd3208332329_
                             _tl3208432332_
                             _e3208532335_
                             _hd3208632339_
                             _tl3208732342_)
                      (if (gx#identifier? _hd3208632339_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50247_|
                               _hd3208632339_)
                              (if (gx#stx-pair? _tl3208732342_)
                                  (let ((_e3208832345_
                                         (gx#syntax-e _tl3208732342_)))
                                    (let ((_tl3209032352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3208832345_)))
                                          (_hd3208932349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3208832345_))))
                                      (if (gx#stx-null? _tl3209032352_)
                                          (___kont4619346194_
                                           _hd3208932349_
                                           _hd3208332329_
                                           _hd3208032319_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (let () (declare (not safe)) (_g3198932135_)))
                          (if (gx#stx-datum? _hd3208632339_)
                              (let ((_e3210332272_ (gx#stx-e _hd3208632339_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3210332272_ '::))
                                    (if (gx#stx-pair? _tl3208732342_)
                                        (let ((_e3210432276_
                                               (gx#syntax-e _tl3208732342_)))
                                          (let ((_tl3210632283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3210432276_)))
                                                (_hd3210532280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3210432276_))))
                                            (if (gx#stx-null? _tl3210632283_)
                                                (___kont4619546196_
                                                 _hd3210532280_
                                                 _hd3208332329_
                                                 _hd3208032319_)
                                                (if (gx#stx-pair?
                                                     _tl3210632283_)
                                                    (let ((_e3212432186_
                                                           (gx#syntax-e
                                                            _tl3210632283_)))
                                                      (let ((_tl3212632193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212432186_)))
                    (_hd3212532190_
                     (let () (declare (not safe)) (##car _e3212432186_))))
                (if (gx#identifier? _hd3212532190_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50248_|
                         _hd3212532190_)
                        (if (gx#stx-pair? _tl3212632193_)
                            (let ((_e3212732196_ (gx#syntax-e _tl3212632193_)))
                              (let ((_tl3212932203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212732196_)))
                                    (_hd3212832200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212732196_))))
                                (if (gx#stx-null? _tl3212932203_)
                                    (___kont4619746198_
                                     _hd3212832200_
                                     _hd3210532280_
                                     _hd3208332329_
                                     _hd3208032319_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))
                              (let () (declare (not safe)) (_g3198932135_))))))
                   (___match4632946330_
                    (lambda (_e3207032383_
                             _hd3207132387_
                             _tl3207232390_
                             _e3207332393_
                             _hd3207432397_
                             _tl3207532400_)
                      (if (gx#stx-null? _tl3207532400_)
                          (___kont4619146192_ _hd3207432397_ _hd3207132387_)
                          (if (gx#stx-pair? _tl3207532400_)
                              (let ((_e3208532335_
                                     (gx#syntax-e _tl3207532400_)))
                                (let ((_tl3208732342_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3208532335_)))
                                      (_hd3208632339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3208532335_))))
                                  (if (gx#identifier? _hd3208632339_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50247_|
                                           _hd3208632339_)
                                          (if (gx#stx-pair? _tl3208732342_)
                                              (let ((_e3208832345_
                                                     (gx#syntax-e
                                                      _tl3208732342_)))
                                                (let ((_tl3209032352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3208832345_)))
                                                      (_hd3208932349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3208832345_))))
                                                  (if (gx#stx-null?
                                                       _tl3209032352_)
                                                      (___kont4619346194_
                                                       _hd3208932349_
                                                       _hd3207432397_
                                                       _hd3207132387_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3198932135_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (if (gx#stx-datum? _hd3208632339_)
                                          (let ((_e3210332272_
                                                 (gx#stx-e _hd3208632339_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3210332272_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3208732342_)
                                                    (let ((_e3210432276_
                                                           (gx#syntax-e
                                                            _tl3208732342_)))
                                                      (let ((_tl3210632283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3210432276_)))
                    (_hd3210532280_
                     (let () (declare (not safe)) (##car _e3210432276_))))
                (if (gx#stx-null? _tl3210632283_)
                    (___kont4619546196_
                     _hd3210532280_
                     _hd3207432397_
                     _hd3207132387_)
                    (if (gx#stx-pair? _tl3210632283_)
                        (let ((_e3212432186_ (gx#syntax-e _tl3210632283_)))
                          (let ((_tl3212632193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3212432186_)))
                                (_hd3212532190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3212432186_))))
                            (if (gx#identifier? _hd3212532190_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50248_|
                                     _hd3212532190_)
                                    (if (gx#stx-pair? _tl3212632193_)
                                        (let ((_e3212732196_
                                               (gx#syntax-e _tl3212632193_)))
                                          (let ((_tl3212932203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3212732196_)))
                                                (_hd3212832200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3212732196_))))
                                            (if (gx#stx-null? _tl3212932203_)
                                                (___kont4619746198_
                                                 _hd3212832200_
                                                 _hd3210532280_
                                                 _hd3207432397_
                                                 _hd3207132387_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3198932135_)))))
                        (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_))))))
                              (let () (declare (not safe)) (_g3198932135_))))))
                   (___match4625946260_
                    (lambda (_e3201832559_
                             _hd3201932563_
                             _tl3202032566_
                             _e3202132569_
                             _hd3202232573_
                             _tl3202332576_
                             _e3202432579_
                             _hd3202532583_
                             _tl3202632586_
                             ___splice4618546186_
                             _target3202732589_
                             _tl3202932592_)
                      (letrec ((_loop3203032595_
                                (lambda (_hd3202832599_ _pred3203432602_)
                                  (if (gx#stx-pair? _hd3202832599_)
                                      (let ((_e3203132605_
                                             (gx#syntax-e _hd3202832599_)))
                                        (let ((_lp-tl3203332612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3203132605_)))
                                              (_lp-hd3203232609_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3203132605_))))
                                          (_loop3203032595_
                                           _lp-tl3203332612_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3203232609_
                                                   _pred3203432602_)))))
                                      (let ((_pred3203532615_
                                             (reverse _pred3203432602_)))
                                        (if (gx#stx-pair? _tl3202332576_)
                                            (let ((_e3203632619_
                                                   (gx#syntax-e
                                                    _tl3202332576_)))
                                              (let ((_tl3203832626_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3203632619_)))
                                                    (_hd3203732623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3203632619_))))
                                                (if (gx#stx-null?
                                                     _tl3203832626_)
                                                    (___kont4618346184_
                                                     _hd3203732623_
                                                     _pred3203532615_
                                                     _hd3201932563_)
                                                    (___match4634946350_
                                                     _e3201832559_
                                                     _hd3201932563_
                                                     _tl3202032566_
                                                     _e3202132569_
                                                     _hd3202232573_
                                                     _tl3202332576_
                                                     _e3203632619_
                                                     _hd3203732623_
                                                     _tl3203832626_))))
                                            (___match4632946330_
                                             _e3201832559_
                                             _hd3201932563_
                                             _tl3202032566_
                                             _e3202132569_
                                             _hd3202232573_
                                             _tl3202332576_)))))))
                        (_loop3203032595_ _target3202732589_ '()))))
                   (___match4622946230_
                    (lambda (_e3199432669_
                             _hd3199532673_
                             _tl3199632676_
                             _e3199732679_
                             _hd3199832683_
                             _tl3199932686_
                             _e3200032689_
                             _hd3200132693_
                             _tl3200232696_
                             ___splice4618146182_
                             _target3200332699_
                             _tl3200532702_)
                      (letrec ((_loop3200632705_
                                (lambda (_hd3200432709_ _pred3201032712_)
                                  (if (gx#stx-pair? _hd3200432709_)
                                      (let ((_e3200732715_
                                             (gx#syntax-e _hd3200432709_)))
                                        (let ((_lp-tl3200932722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3200732715_)))
                                              (_lp-hd3200832719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3200732715_))))
                                          (_loop3200632705_
                                           _lp-tl3200932722_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3200832719_
                                                   _pred3201032712_)))))
                                      (let ((_pred3201132725_
                                             (reverse _pred3201032712_)))
                                        (if (gx#stx-pair? _tl3199932686_)
                                            (let ((_e3201232729_
                                                   (gx#syntax-e
                                                    _tl3199932686_)))
                                              (let ((_tl3201432736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3201232729_)))
                                                    (_hd3201332733_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3201232729_))))
                                                (if (gx#stx-null?
                                                     _tl3201432736_)
                                                    (___kont4617946180_
                                                     _hd3201332733_
                                                     _pred3201132725_
                                                     _hd3199532673_)
                                                    (___match4634946350_
                                                     _e3199432669_
                                                     _hd3199532673_
                                                     _tl3199632676_
                                                     _e3199732679_
                                                     _hd3199832683_
                                                     _tl3199932686_
                                                     _e3201232729_
                                                     _hd3201332733_
                                                     _tl3201432736_))))
                                            (___match4632946330_
                                             _e3199432669_
                                             _hd3199532673_
                                             _tl3199632676_
                                             _e3199732679_
                                             _hd3199832683_
                                             _tl3199932686_)))))))
                        (_loop3200632705_ _target3200332699_ '())))))
              (if (gx#stx-pair? ___stx4617646177_)
                  (let ((_e3199432669_ (gx#syntax-e ___stx4617646177_)))
                    (let ((_tl3199632676_
                           (let () (declare (not safe)) (##cdr _e3199432669_)))
                          (_hd3199532673_
                           (let ()
                             (declare (not safe))
                             (##car _e3199432669_))))
                      (if (gx#stx-pair? _tl3199632676_)
                          (let ((_e3199732679_ (gx#syntax-e _tl3199632676_)))
                            (let ((_tl3199932686_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3199732679_)))
                                  (_hd3199832683_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3199732679_))))
                              (if (gx#stx-pair? _hd3199832683_)
                                  (let ((_e3200032689_
                                         (gx#syntax-e _hd3199832683_)))
                                    (let ((_tl3200232696_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3200032689_)))
                                          (_hd3200132693_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3200032689_))))
                                      (if (gx#identifier? _hd3200132693_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50249_|
                                               _hd3200132693_)
                                              (if (gx#stx-pair/null?
                                                   _tl3200232696_)
                                                  (let ((___splice4618146182_
                                                         (gx#syntax-split-splice
                                                          _tl3200232696_
                                                          '0)))
                                                    (let ((_tl3200532702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4618146182_
                                                              '1)))
                                                          (_target3200332699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4618146182_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3200532702_)
                                                          (___match4622946230_
                                                           _e3199432669_
                                                           _hd3199532673_
                                                           _tl3199632676_
                                                           _e3199732679_
                                                           _hd3199832683_
                                                           _tl3199932686_
                                                           _e3200032689_
                                                           _hd3200132693_
                                                           _tl3200232696_
                                                           ___splice4618146182_
                                                           _target3200332699_
                                                           _tl3200532702_)
                                                          (if (gx#stx-pair?
                                                               _tl3199932686_)
                                                              (let ((_e3206532445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3199932686_)))
                        (let ((_tl3206732452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3206532445_)))
                              (_hd3206632449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3206532445_))))
                          (if (gx#stx-null? _tl3206732452_)
                              (___kont4618946190_
                               _hd3206632449_
                               _hd3199832683_)
                              (if (gx#identifier? _hd3206632449_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50247_|
                                       _hd3206632449_)
                                      (if (gx#stx-pair? _tl3206732452_)
                                          (let ((_e3208832345_
                                                 (gx#syntax-e _tl3206732452_)))
                                            (let ((_tl3209032352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3208832345_)))
                                                  (_hd3208932349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3208832345_))))
                                              (if (gx#stx-null? _tl3209032352_)
                                                  (___kont4619346194_
                                                   _hd3208932349_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (if (gx#stx-datum? _hd3206632449_)
                                      (let ((_e3210332272_
                                             (gx#stx-e _hd3206632449_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3210332272_ '::))
                                            (if (gx#stx-pair? _tl3206732452_)
                                                (let ((_e3210432276_
                                                       (gx#syntax-e
                                                        _tl3206732452_)))
                                                  (let ((_tl3210632283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3210432276_)))
                                                        (_hd3210532280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3210432276_))))
                                                    (if (gx#stx-null?
                                                         _tl3210632283_)
                                                        (___kont4619546196_
                                                         _hd3210532280_
                                                         _hd3199832683_
                                                         _hd3199532673_)
                                                        (if (gx#stx-pair?
                                                             _tl3210632283_)
                                                            (let ((_e3212432186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3210632283_)))
                      (let ((_tl3212632193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212432186_)))
                            (_hd3212532190_
                             (let ()
                               (declare (not safe))
                               (##car _e3212432186_))))
                        (if (gx#identifier? _hd3212532190_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50248_|
                                 _hd3212532190_)
                                (if (gx#stx-pair? _tl3212632193_)
                                    (let ((_e3212732196_
                                           (gx#syntax-e _tl3212632193_)))
                                      (let ((_tl3212932203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212732196_)))
                                            (_hd3212832200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212732196_))))
                                        (if (gx#stx-null? _tl3212932203_)
                                            (___kont4619746198_
                                             _hd3212832200_
                                             _hd3210532280_
                                             _hd3199832683_
                                             _hd3199532673_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))))))
                      (if (gx#stx-null? _tl3199932686_)
                          (___kont4619146192_ _hd3199832683_ _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3199932686_)
                                                      (let ((_e3206532445_
                                                             (gx#syntax-e
                                                              _tl3199932686_)))
                                                        (let ((_tl3206732452_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3206532445_)))
                      (_hd3206632449_
                       (let () (declare (not safe)) (##car _e3206532445_))))
                  (if (gx#stx-null? _tl3206732452_)
                      (___kont4618946190_ _hd3206632449_ _hd3199832683_)
                      (if (gx#identifier? _hd3206632449_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50247_|
                               _hd3206632449_)
                              (if (gx#stx-pair? _tl3206732452_)
                                  (let ((_e3208832345_
                                         (gx#syntax-e _tl3206732452_)))
                                    (let ((_tl3209032352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3208832345_)))
                                          (_hd3208932349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3208832345_))))
                                      (if (gx#stx-null? _tl3209032352_)
                                          (___kont4619346194_
                                           _hd3208932349_
                                           _hd3199832683_
                                           _hd3199532673_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (let () (declare (not safe)) (_g3198932135_)))
                          (if (gx#stx-datum? _hd3206632449_)
                              (let ((_e3210332272_ (gx#stx-e _hd3206632449_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3210332272_ '::))
                                    (if (gx#stx-pair? _tl3206732452_)
                                        (let ((_e3210432276_
                                               (gx#syntax-e _tl3206732452_)))
                                          (let ((_tl3210632283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3210432276_)))
                                                (_hd3210532280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3210432276_))))
                                            (if (gx#stx-null? _tl3210632283_)
                                                (___kont4619546196_
                                                 _hd3210532280_
                                                 _hd3199832683_
                                                 _hd3199532673_)
                                                (if (gx#stx-pair?
                                                     _tl3210632283_)
                                                    (let ((_e3212432186_
                                                           (gx#syntax-e
                                                            _tl3210632283_)))
                                                      (let ((_tl3212632193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212432186_)))
                    (_hd3212532190_
                     (let () (declare (not safe)) (##car _e3212432186_))))
                (if (gx#identifier? _hd3212532190_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50248_|
                         _hd3212532190_)
                        (if (gx#stx-pair? _tl3212632193_)
                            (let ((_e3212732196_ (gx#syntax-e _tl3212632193_)))
                              (let ((_tl3212932203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212732196_)))
                                    (_hd3212832200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212732196_))))
                                (if (gx#stx-null? _tl3212932203_)
                                    (___kont4619746198_
                                     _hd3212832200_
                                     _hd3210532280_
                                     _hd3199832683_
                                     _hd3199532673_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))
                              (let ()
                                (declare (not safe))
                                (_g3198932135_)))))))
              (if (gx#stx-null? _tl3199932686_)
                  (___kont4619146192_ _hd3199832683_ _hd3199532673_)
                  (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50250_|
                                                   _hd3200132693_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3200232696_)
                                                      (let ((___splice4618546186_
                                                             (gx#syntax-split-splice
                                                              _tl3200232696_
                                                              '0)))
                                                        (let ((_tl3202932592_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4618546186_ '1)))
                      (_target3202732589_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4618546186_ '0))))
                  (if (gx#stx-null? _tl3202932592_)
                      (___match4625946260_
                       _e3199432669_
                       _hd3199532673_
                       _tl3199632676_
                       _e3199732679_
                       _hd3199832683_
                       _tl3199932686_
                       _e3200032689_
                       _hd3200132693_
                       _tl3200232696_
                       ___splice4618546186_
                       _target3202732589_
                       _tl3202932592_)
                      (if (gx#stx-pair? _tl3199932686_)
                          (let ((_e3206532445_ (gx#syntax-e _tl3199932686_)))
                            (let ((_tl3206732452_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3206532445_)))
                                  (_hd3206632449_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3206532445_))))
                              (if (gx#stx-null? _tl3206732452_)
                                  (___kont4618946190_
                                   _hd3206632449_
                                   _hd3199832683_)
                                  (if (gx#identifier? _hd3206632449_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50247_|
                                           _hd3206632449_)
                                          (if (gx#stx-pair? _tl3206732452_)
                                              (let ((_e3208832345_
                                                     (gx#syntax-e
                                                      _tl3206732452_)))
                                                (let ((_tl3209032352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3208832345_)))
                                                      (_hd3208932349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3208832345_))))
                                                  (if (gx#stx-null?
                                                       _tl3209032352_)
                                                      (___kont4619346194_
                                                       _hd3208932349_
                                                       _hd3199832683_
                                                       _hd3199532673_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3198932135_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (if (gx#stx-datum? _hd3206632449_)
                                          (let ((_e3210332272_
                                                 (gx#stx-e _hd3206632449_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3210332272_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3206732452_)
                                                    (let ((_e3210432276_
                                                           (gx#syntax-e
                                                            _tl3206732452_)))
                                                      (let ((_tl3210632283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3210432276_)))
                    (_hd3210532280_
                     (let () (declare (not safe)) (##car _e3210432276_))))
                (if (gx#stx-null? _tl3210632283_)
                    (___kont4619546196_
                     _hd3210532280_
                     _hd3199832683_
                     _hd3199532673_)
                    (if (gx#stx-pair? _tl3210632283_)
                        (let ((_e3212432186_ (gx#syntax-e _tl3210632283_)))
                          (let ((_tl3212632193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3212432186_)))
                                (_hd3212532190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3212432186_))))
                            (if (gx#identifier? _hd3212532190_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50248_|
                                     _hd3212532190_)
                                    (if (gx#stx-pair? _tl3212632193_)
                                        (let ((_e3212732196_
                                               (gx#syntax-e _tl3212632193_)))
                                          (let ((_tl3212932203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3212732196_)))
                                                (_hd3212832200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3212732196_))))
                                            (if (gx#stx-null? _tl3212932203_)
                                                (___kont4619746198_
                                                 _hd3212832200_
                                                 _hd3210532280_
                                                 _hd3199832683_
                                                 _hd3199532673_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3198932135_)))))
                        (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))))
                          (if (gx#stx-null? _tl3199932686_)
                              (___kont4619146192_
                               _hd3199832683_
                               _hd3199532673_)
                              (let ()
                                (declare (not safe))
                                (_g3198932135_)))))))
              (if (gx#stx-pair? _tl3199932686_)
                  (let ((_e3206532445_ (gx#syntax-e _tl3199932686_)))
                    (let ((_tl3206732452_
                           (let () (declare (not safe)) (##cdr _e3206532445_)))
                          (_hd3206632449_
                           (let ()
                             (declare (not safe))
                             (##car _e3206532445_))))
                      (if (gx#stx-null? _tl3206732452_)
                          (___kont4618946190_ _hd3206632449_ _hd3199832683_)
                          (if (gx#identifier? _hd3206632449_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50247_|
                                   _hd3206632449_)
                                  (if (gx#stx-pair? _tl3206732452_)
                                      (let ((_e3208832345_
                                             (gx#syntax-e _tl3206732452_)))
                                        (let ((_tl3209032352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3208832345_)))
                                              (_hd3208932349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3208832345_))))
                                          (if (gx#stx-null? _tl3209032352_)
                                              (___kont4619346194_
                                               _hd3208932349_
                                               _hd3199832683_
                                               _hd3199532673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (if (gx#stx-datum? _hd3206632449_)
                                  (let ((_e3210332272_
                                         (gx#stx-e _hd3206632449_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3210332272_ '::))
                                        (if (gx#stx-pair? _tl3206732452_)
                                            (let ((_e3210432276_
                                                   (gx#syntax-e
                                                    _tl3206732452_)))
                                              (let ((_tl3210632283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3210432276_)))
                                                    (_hd3210532280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3210432276_))))
                                                (if (gx#stx-null?
                                                     _tl3210632283_)
                                                    (___kont4619546196_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (if (gx#stx-pair?
                                                         _tl3210632283_)
                                                        (let ((_e3212432186_
                                                               (gx#syntax-e
                                                                _tl3210632283_)))
                                                          (let ((_tl3212632193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3212432186_)))
                        (_hd3212532190_
                         (let () (declare (not safe)) (##car _e3212432186_))))
                    (if (gx#identifier? _hd3212532190_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50248_|
                             _hd3212532190_)
                            (if (gx#stx-pair? _tl3212632193_)
                                (let ((_e3212732196_
                                       (gx#syntax-e _tl3212632193_)))
                                  (let ((_tl3212932203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3212732196_)))
                                        (_hd3212832200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3212732196_))))
                                    (if (gx#stx-null? _tl3212932203_)
                                        (___kont4619746198_
                                         _hd3212832200_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))))
                (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-null? _tl3199932686_)
                      (___kont4619146192_ _hd3199832683_ _hd3199532673_)
                      (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50251_|
                                                       _hd3200132693_)
                                                      (if (gx#stx-pair?
                                                           _tl3200232696_)
                                                          (let ((_e3205132509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3200232696_)))
                    (let ((_tl3205332516_
                           (let () (declare (not safe)) (##cdr _e3205132509_)))
                          (_hd3205232513_
                           (let ()
                             (declare (not safe))
                             (##car _e3205132509_))))
                      (if (gx#stx-null? _tl3205332516_)
                          (if (gx#stx-pair? _tl3199932686_)
                              (let ((_e3205432519_
                                     (gx#syntax-e _tl3199932686_)))
                                (let ((_tl3205632526_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3205432519_)))
                                      (_hd3205532523_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3205432519_))))
                                  (if (gx#stx-null? _tl3205632526_)
                                      (___kont4618746188_
                                       _hd3205532523_
                                       _hd3205232513_
                                       _hd3199532673_)
                                      (if (gx#identifier? _hd3205532523_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50247_|
                                               _hd3205532523_)
                                              (if (gx#stx-pair? _tl3205632526_)
                                                  (let ((_e3208832345_
                                                         (gx#syntax-e
                                                          _tl3205632526_)))
                                                    (let ((_tl3209032352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3208832345_)))
                                                          (_hd3208932349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3208832345_))))
                                                      (if (gx#stx-null?
                                                           _tl3209032352_)
                                                          (___kont4619346194_
                                                           _hd3208932349_
                                                           _hd3199832683_
                                                           _hd3199532673_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3198932135_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (if (gx#stx-datum? _hd3205532523_)
                                              (let ((_e3210332272_
                                                     (gx#stx-e
                                                      _hd3205532523_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3210332272_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3205632526_)
                                                        (let ((_e3210432276_
                                                               (gx#syntax-e
                                                                _tl3205632526_)))
                                                          (let ((_tl3210632283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3210432276_)))
                        (_hd3210532280_
                         (let () (declare (not safe)) (##car _e3210432276_))))
                    (if (gx#stx-null? _tl3210632283_)
                        (___kont4619546196_
                         _hd3210532280_
                         _hd3199832683_
                         _hd3199532673_)
                        (if (gx#stx-pair? _tl3210632283_)
                            (let ((_e3212432186_ (gx#syntax-e _tl3210632283_)))
                              (let ((_tl3212632193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212432186_)))
                                    (_hd3212532190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212432186_))))
                                (if (gx#identifier? _hd3212532190_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50248_|
                                         _hd3212532190_)
                                        (if (gx#stx-pair? _tl3212632193_)
                                            (let ((_e3212732196_
                                                   (gx#syntax-e
                                                    _tl3212632193_)))
                                              (let ((_tl3212932203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212732196_)))
                                                    (_hd3212832200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212732196_))))
                                                (if (gx#stx-null?
                                                     _tl3212932203_)
                                                    (___kont4619746198_
                                                     _hd3212832200_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_))))))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))))
                              (if (gx#stx-null? _tl3199932686_)
                                  (___kont4619146192_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_))))
                          (if (gx#stx-pair? _tl3199932686_)
                              (let ((_e3206532445_
                                     (gx#syntax-e _tl3199932686_)))
                                (let ((_tl3206732452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3206532445_)))
                                      (_hd3206632449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3206532445_))))
                                  (if (gx#stx-null? _tl3206732452_)
                                      (___kont4618946190_
                                       _hd3206632449_
                                       _hd3199832683_)
                                      (if (gx#identifier? _hd3206632449_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50247_|
                                               _hd3206632449_)
                                              (if (gx#stx-pair? _tl3206732452_)
                                                  (let ((_e3208832345_
                                                         (gx#syntax-e
                                                          _tl3206732452_)))
                                                    (let ((_tl3209032352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3208832345_)))
                                                          (_hd3208932349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3208832345_))))
                                                      (if (gx#stx-null?
                                                           _tl3209032352_)
                                                          (___kont4619346194_
                                                           _hd3208932349_
                                                           _hd3199832683_
                                                           _hd3199532673_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3198932135_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (if (gx#stx-datum? _hd3206632449_)
                                              (let ((_e3210332272_
                                                     (gx#stx-e
                                                      _hd3206632449_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3210332272_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3206732452_)
                                                        (let ((_e3210432276_
                                                               (gx#syntax-e
                                                                _tl3206732452_)))
                                                          (let ((_tl3210632283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3210432276_)))
                        (_hd3210532280_
                         (let () (declare (not safe)) (##car _e3210432276_))))
                    (if (gx#stx-null? _tl3210632283_)
                        (___kont4619546196_
                         _hd3210532280_
                         _hd3199832683_
                         _hd3199532673_)
                        (if (gx#stx-pair? _tl3210632283_)
                            (let ((_e3212432186_ (gx#syntax-e _tl3210632283_)))
                              (let ((_tl3212632193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212432186_)))
                                    (_hd3212532190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212432186_))))
                                (if (gx#identifier? _hd3212532190_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50248_|
                                         _hd3212532190_)
                                        (if (gx#stx-pair? _tl3212632193_)
                                            (let ((_e3212732196_
                                                   (gx#syntax-e
                                                    _tl3212632193_)))
                                              (let ((_tl3212932203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212732196_)))
                                                    (_hd3212832200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212732196_))))
                                                (if (gx#stx-null?
                                                     _tl3212932203_)
                                                    (___kont4619746198_
                                                     _hd3212832200_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_))))))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))))
                              (if (gx#stx-null? _tl3199932686_)
                                  (___kont4619146192_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-pair? _tl3199932686_)
                      (let ((_e3206532445_ (gx#syntax-e _tl3199932686_)))
                        (let ((_tl3206732452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3206532445_)))
                              (_hd3206632449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3206532445_))))
                          (if (gx#stx-null? _tl3206732452_)
                              (___kont4618946190_
                               _hd3206632449_
                               _hd3199832683_)
                              (if (gx#identifier? _hd3206632449_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50247_|
                                       _hd3206632449_)
                                      (if (gx#stx-pair? _tl3206732452_)
                                          (let ((_e3208832345_
                                                 (gx#syntax-e _tl3206732452_)))
                                            (let ((_tl3209032352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3208832345_)))
                                                  (_hd3208932349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3208832345_))))
                                              (if (gx#stx-null? _tl3209032352_)
                                                  (___kont4619346194_
                                                   _hd3208932349_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (if (gx#stx-datum? _hd3206632449_)
                                      (let ((_e3210332272_
                                             (gx#stx-e _hd3206632449_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3210332272_ '::))
                                            (if (gx#stx-pair? _tl3206732452_)
                                                (let ((_e3210432276_
                                                       (gx#syntax-e
                                                        _tl3206732452_)))
                                                  (let ((_tl3210632283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3210432276_)))
                                                        (_hd3210532280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3210432276_))))
                                                    (if (gx#stx-null?
                                                         _tl3210632283_)
                                                        (___kont4619546196_
                                                         _hd3210532280_
                                                         _hd3199832683_
                                                         _hd3199532673_)
                                                        (if (gx#stx-pair?
                                                             _tl3210632283_)
                                                            (let ((_e3212432186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3210632283_)))
                      (let ((_tl3212632193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212432186_)))
                            (_hd3212532190_
                             (let ()
                               (declare (not safe))
                               (##car _e3212432186_))))
                        (if (gx#identifier? _hd3212532190_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50248_|
                                 _hd3212532190_)
                                (if (gx#stx-pair? _tl3212632193_)
                                    (let ((_e3212732196_
                                           (gx#syntax-e _tl3212632193_)))
                                      (let ((_tl3212932203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212732196_)))
                                            (_hd3212832200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212732196_))))
                                        (if (gx#stx-null? _tl3212932203_)
                                            (___kont4619746198_
                                             _hd3212832200_
                                             _hd3210532280_
                                             _hd3199832683_
                                             _hd3199532673_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))))))
                      (if (gx#stx-null? _tl3199932686_)
                          (___kont4619146192_ _hd3199832683_ _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))
              (if (gx#stx-pair? _tl3199932686_)
                  (let ((_e3206532445_ (gx#syntax-e _tl3199932686_)))
                    (let ((_tl3206732452_
                           (let () (declare (not safe)) (##cdr _e3206532445_)))
                          (_hd3206632449_
                           (let ()
                             (declare (not safe))
                             (##car _e3206532445_))))
                      (if (gx#stx-null? _tl3206732452_)
                          (___kont4618946190_ _hd3206632449_ _hd3199832683_)
                          (if (gx#identifier? _hd3206632449_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50247_|
                                   _hd3206632449_)
                                  (if (gx#stx-pair? _tl3206732452_)
                                      (let ((_e3208832345_
                                             (gx#syntax-e _tl3206732452_)))
                                        (let ((_tl3209032352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3208832345_)))
                                              (_hd3208932349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3208832345_))))
                                          (if (gx#stx-null? _tl3209032352_)
                                              (___kont4619346194_
                                               _hd3208932349_
                                               _hd3199832683_
                                               _hd3199532673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (if (gx#stx-datum? _hd3206632449_)
                                  (let ((_e3210332272_
                                         (gx#stx-e _hd3206632449_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3210332272_ '::))
                                        (if (gx#stx-pair? _tl3206732452_)
                                            (let ((_e3210432276_
                                                   (gx#syntax-e
                                                    _tl3206732452_)))
                                              (let ((_tl3210632283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3210432276_)))
                                                    (_hd3210532280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3210432276_))))
                                                (if (gx#stx-null?
                                                     _tl3210632283_)
                                                    (___kont4619546196_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (if (gx#stx-pair?
                                                         _tl3210632283_)
                                                        (let ((_e3212432186_
                                                               (gx#syntax-e
                                                                _tl3210632283_)))
                                                          (let ((_tl3212632193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3212432186_)))
                        (_hd3212532190_
                         (let () (declare (not safe)) (##car _e3212432186_))))
                    (if (gx#identifier? _hd3212532190_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50248_|
                             _hd3212532190_)
                            (if (gx#stx-pair? _tl3212632193_)
                                (let ((_e3212732196_
                                       (gx#syntax-e _tl3212632193_)))
                                  (let ((_tl3212932203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3212732196_)))
                                        (_hd3212832200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3212732196_))))
                                    (if (gx#stx-null? _tl3212932203_)
                                        (___kont4619746198_
                                         _hd3212832200_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))))
                (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-null? _tl3199932686_)
                      (___kont4619146192_ _hd3199832683_ _hd3199532673_)
                      (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3199932686_)
                                              (let ((_e3206532445_
                                                     (gx#syntax-e
                                                      _tl3199932686_)))
                                                (let ((_tl3206732452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3206532445_)))
                                                      (_hd3206632449_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3206532445_))))
                                                  (if (gx#stx-null?
                                                       _tl3206732452_)
                                                      (___kont4618946190_
                                                       _hd3206632449_
                                                       _hd3199832683_)
                                                      (if (gx#identifier?
                                                           _hd3206632449_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g50247_|
                                                               _hd3206632449_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3206732452_)
                          (let ((_e3208832345_ (gx#syntax-e _tl3206732452_)))
                            (let ((_tl3209032352_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3208832345_)))
                                  (_hd3208932349_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3208832345_))))
                              (if (gx#stx-null? _tl3209032352_)
                                  (___kont4619346194_
                                   _hd3208932349_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))
                          (let () (declare (not safe)) (_g3198932135_)))
                      (let () (declare (not safe)) (_g3198932135_)))
                  (if (gx#stx-datum? _hd3206632449_)
                      (let ((_e3210332272_ (gx#stx-e _hd3206632449_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3210332272_ '::))
                            (if (gx#stx-pair? _tl3206732452_)
                                (let ((_e3210432276_
                                       (gx#syntax-e _tl3206732452_)))
                                  (let ((_tl3210632283_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3210432276_)))
                                        (_hd3210532280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3210432276_))))
                                    (if (gx#stx-null? _tl3210632283_)
                                        (___kont4619546196_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (if (gx#stx-pair? _tl3210632283_)
                                            (let ((_e3212432186_
                                                   (gx#syntax-e
                                                    _tl3210632283_)))
                                              (let ((_tl3212632193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212432186_)))
                                                    (_hd3212532190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212432186_))))
                                                (if (gx#identifier?
                                                     _hd3212532190_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g50248_|
                                                         _hd3212532190_)
                                                        (if (gx#stx-pair?
                                                             _tl3212632193_)
                                                            (let ((_e3212732196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3212632193_)))
                      (let ((_tl3212932203_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212732196_)))
                            (_hd3212832200_
                             (let ()
                               (declare (not safe))
                               (##car _e3212732196_))))
                        (if (gx#stx-null? _tl3212932203_)
                            (___kont4619746198_
                             _hd3212832200_
                             _hd3210532280_
                             _hd3199832683_
                             _hd3199532673_)
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_)))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_))))
                      (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3199932686_)
                                                  (___kont4619146192_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))))
                                  (if (gx#stx-pair? _tl3199932686_)
                                      (let ((_e3206532445_
                                             (gx#syntax-e _tl3199932686_)))
                                        (let ((_tl3206732452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3206532445_)))
                                              (_hd3206632449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3206532445_))))
                                          (if (gx#stx-null? _tl3206732452_)
                                              (___kont4618946190_
                                               _hd3206632449_
                                               _hd3199832683_)
                                              (if (gx#identifier?
                                                   _hd3206632449_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50247_|
                                                       _hd3206632449_)
                                                      (if (gx#stx-pair?
                                                           _tl3206732452_)
                                                          (let ((_e3208832345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3206732452_)))
                    (let ((_tl3209032352_
                           (let () (declare (not safe)) (##cdr _e3208832345_)))
                          (_hd3208932349_
                           (let ()
                             (declare (not safe))
                             (##car _e3208832345_))))
                      (if (gx#stx-null? _tl3209032352_)
                          (___kont4619346194_
                           _hd3208932349_
                           _hd3199832683_
                           _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))
                  (let () (declare (not safe)) (_g3198932135_)))
              (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3206632449_)
                                                      (let ((_e3210332272_
                                                             (gx#stx-e
                                                              _hd3206632449_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e3210332272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl3206732452_)
                        (let ((_e3210432276_ (gx#syntax-e _tl3206732452_)))
                          (let ((_tl3210632283_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3210432276_)))
                                (_hd3210532280_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3210432276_))))
                            (if (gx#stx-null? _tl3210632283_)
                                (___kont4619546196_
                                 _hd3210532280_
                                 _hd3199832683_
                                 _hd3199532673_)
                                (if (gx#stx-pair? _tl3210632283_)
                                    (let ((_e3212432186_
                                           (gx#syntax-e _tl3210632283_)))
                                      (let ((_tl3212632193_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212432186_)))
                                            (_hd3212532190_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212432186_))))
                                        (if (gx#identifier? _hd3212532190_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g50248_|
                                                 _hd3212532190_)
                                                (if (gx#stx-pair?
                                                     _tl3212632193_)
                                                    (let ((_e3212732196_
                                                           (gx#syntax-e
                                                            _tl3212632193_)))
                                                      (let ((_tl3212932203_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212732196_)))
                    (_hd3212832200_
                     (let () (declare (not safe)) (##car _e3212732196_))))
                (if (gx#stx-null? _tl3212932203_)
                    (___kont4619746198_
                     _hd3212832200_
                     _hd3210532280_
                     _hd3199832683_
                     _hd3199532673_)
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_))))
              (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3199932686_)
                                          (___kont4619146192_
                                           _hd3199832683_
                                           _hd3199532673_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))))
                          (let () (declare (not safe)) (_g3198932135_)))))
                  (let () (declare (not safe)) (_g3198932135_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32778_)
        (let* ((___stx4644446445_ _$stx32778_)
               (_g3278332817_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4644446445_))))
          (let ((___kont4644746448_
                 (lambda (_L32921_ _L32923_ _L32924_)
                   (let ((__tmp50313 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp50252
                          (let ((__tmp50253
                                 (let ((__tmp50254
                                        (let ((__tmp50312
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp50255
                                               (let ((__tmp50256
                                                      (let ((__tmp50257
                                                             (let ((__tmp50311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp50258
                            (let ((__tmp50303
                                   (let ((__tmp50308
                                          (let ((__tmp50310
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp50309
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L32923_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50310 __tmp50309)))
                                         (__tmp50304
                                          (let ((__tmp50305
                                                 (let ((__tmp50307
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp50306
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32921_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50307
                                                         __tmp50306))))
                                            (declare (not safe))
                                            (cons __tmp50305 '()))))
                                     (declare (not safe))
                                     (cons __tmp50308 __tmp50304)))
                                  (__tmp50259
                                   (let ((__tmp50260
                                          (let ((__tmp50302
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50261
                                                 (let ((__tmp50300
                                                        (let ((__tmp50301
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp50301
                                                                '())))
                                                       (__tmp50262
                                                        (let ((__tmp50263
                                                               (let ((__tmp50299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp50264
                              (let ((__tmp50298 (gx#datum->syntax '#f '$stx))
                                    (__tmp50265
                                     (let ((__tmp50266
                                            (let ((__tmp50277
                                                   (let ((__tmp50296
                                                          (let ((__tmp50297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp50297)))
                 (__tmp50278
                  (let ((__tmp50279
                         (let ((__tmp50295
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp50280
                                (let ((__tmp50294
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp50281
                                       (let ((__tmp50282
                                              (let ((__tmp50293
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp50283
                                                     (let ((__tmp50289
                                                            (let ((__tmp50292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp50290
                           (let ((__tmp50291 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp50291 '()))))
                      (declare (not safe))
                      (cons __tmp50292 __tmp50290)))
                   (__tmp50284
                    (let ((__tmp50285
                           (let ((__tmp50288
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp50286
                                  (let ((__tmp50287
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp50287 '()))))
                             (declare (not safe))
                             (cons __tmp50288 __tmp50286))))
                      (declare (not safe))
                      (cons __tmp50285 '()))))
               (declare (not safe))
               (cons __tmp50289 __tmp50284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50293 __tmp50283))))
                                         (declare (not safe))
                                         (cons __tmp50282 '()))))
                                  (declare (not safe))
                                  (cons __tmp50294 __tmp50281))))
                           (declare (not safe))
                           (cons __tmp50295 __tmp50280))))
                    (declare (not safe))
                    (cons __tmp50279 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50296
                                                           __tmp50278)))
                                                  (__tmp50267
                                                   (let ((__tmp50268
                                                          (let ((__tmp50276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp50269
                         (let ((__tmp50270
                                (let ((__tmp50275
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp50271
                                       (let ((__tmp50274
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp50272
                                              (let ((__tmp50273
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp50273 '()))))
                                         (declare (not safe))
                                         (cons __tmp50274 __tmp50272))))
                                  (declare (not safe))
                                  (cons __tmp50275 __tmp50271))))
                           (declare (not safe))
                           (cons __tmp50270 '()))))
                    (declare (not safe))
                    (cons __tmp50276 __tmp50269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50268 '()))))
                                              (declare (not safe))
                                              (cons __tmp50277 __tmp50267))))
                                       (declare (not safe))
                                       (cons '() __tmp50266))))
                                (declare (not safe))
                                (cons __tmp50298 __tmp50265))))
                         (declare (not safe))
                         (cons __tmp50299 __tmp50264))))
                  (declare (not safe))
                  (cons __tmp50263 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50300
                                                         __tmp50262))))
                                            (declare (not safe))
                                            (cons __tmp50302 __tmp50261))))
                                     (declare (not safe))
                                     (cons __tmp50260 '()))))
                              (declare (not safe))
                              (cons __tmp50303 __tmp50259))))
                       (declare (not safe))
                       (cons __tmp50311 __tmp50258))))
                (declare (not safe))
                (cons __tmp50257 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp50256))))
                                          (declare (not safe))
                                          (cons __tmp50312 __tmp50255))))
                                   (declare (not safe))
                                   (cons __tmp50254 '()))))
                            (declare (not safe))
                            (cons _L32924_ __tmp50253))))
                     (declare (not safe))
                     (cons __tmp50313 __tmp50252))))
                (___kont4644946450_
                 (lambda (_L32854_ _L32856_ _L32857_)
                   (let ((__tmp50314
                          (let ((__tmp50315
                                 (let ((__tmp50316
                                        (let ((__tmp50317
                                               (let ((__tmp50328
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp50318
                                                      (let ((__tmp50326
                                                             (let ((__tmp50327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp50327 '())))
                    (__tmp50319
                     (let ((__tmp50320
                            (let ((__tmp50325
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp50321
                                   (let ((__tmp50322
                                          (let ((__tmp50323
                                                 (let ((__tmp50324
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp50324 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp50323))))
                                     (declare (not safe))
                                     (cons '#f __tmp50322))))
                              (declare (not safe))
                              (cons __tmp50325 __tmp50321))))
                       (declare (not safe))
                       (cons __tmp50320 '()))))
                (declare (not safe))
                (cons __tmp50326 __tmp50319))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50328
                                                       __tmp50318))))
                                          (declare (not safe))
                                          (cons __tmp50317 '()))))
                                   (declare (not safe))
                                   (cons _L32854_ __tmp50316))))
                            (declare (not safe))
                            (cons _L32856_ __tmp50315))))
                     (declare (not safe))
                     (cons _L32857_ __tmp50314)))))
            (let ((___match4647746478_
                   (lambda (_e3278832881_
                            _hd3278932885_
                            _tl3279032888_
                            _e3279132891_
                            _hd3279232895_
                            _tl3279332898_
                            _e3279432901_
                            _hd3279532905_
                            _tl3279632908_
                            _e3279732911_
                            _hd3279832915_
                            _tl3279932918_)
                     (let ((_L32921_ _hd3279832915_)
                           (_L32923_ _hd3279532905_)
                           (_L32924_ _hd3279232895_))
                       (if (gx#identifier? _L32924_)
                           (___kont4644746448_ _L32921_ _L32923_ _L32924_)
                           (let () (declare (not safe)) (_g3278332817_)))))))
              (if (gx#stx-pair? ___stx4644446445_)
                  (let ((_e3278832881_ (gx#syntax-e ___stx4644446445_)))
                    (let ((_tl3279032888_
                           (let () (declare (not safe)) (##cdr _e3278832881_)))
                          (_hd3278932885_
                           (let ()
                             (declare (not safe))
                             (##car _e3278832881_))))
                      (if (gx#stx-pair? _tl3279032888_)
                          (let ((_e3279132891_ (gx#syntax-e _tl3279032888_)))
                            (let ((_tl3279332898_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3279132891_)))
                                  (_hd3279232895_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3279132891_))))
                              (if (gx#stx-pair? _tl3279332898_)
                                  (let ((_e3279432901_
                                         (gx#syntax-e _tl3279332898_)))
                                    (let ((_tl3279632908_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3279432901_)))
                                          (_hd3279532905_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3279432901_))))
                                      (if (gx#stx-pair? _tl3279632908_)
                                          (let ((_e3279732911_
                                                 (gx#syntax-e _tl3279632908_)))
                                            (let ((_tl3279932918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3279732911_)))
                                                  (_hd3279832915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3279732911_))))
                                              (if (gx#stx-null? _tl3279932918_)
                                                  (___match4647746478_
                                                   _e3278832881_
                                                   _hd3278932885_
                                                   _tl3279032888_
                                                   _e3279132891_
                                                   _hd3279232895_
                                                   _tl3279332898_
                                                   _e3279432901_
                                                   _hd3279532905_
                                                   _tl3279632908_
                                                   _e3279732911_
                                                   _hd3279832915_
                                                   _tl3279932918_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3278332817_)))))
                                          (if (gx#stx-null? _tl3279632908_)
                                              (___kont4644946450_
                                               _hd3279532905_
                                               _hd3279232895_
                                               _hd3278932885_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3278332817_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3278332817_)))))
                          (let () (declare (not safe)) (_g3278332817_)))))
                  (let () (declare (not safe)) (_g3278332817_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32946_)
        (let* ((_g3295032965_
                (lambda (_g3295132961_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3295132961_)))
               (_g3294933008_
                (lambda (_g3295132969_)
                  (if (gx#stx-pair? _g3295132969_)
                      (let ((_e3295432972_ (gx#syntax-e _g3295132969_)))
                        (let ((_hd3295532976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3295432972_)))
                              (_tl3295632979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3295432972_))))
                          (if (gx#stx-pair? _tl3295632979_)
                              (let ((_e3295732982_
                                     (gx#syntax-e _tl3295632979_)))
                                (let ((_hd3295832986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3295732982_)))
                                      (_tl3295932989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3295732982_))))
                                  ((lambda (_L32992_ _L32994_)
                                     (let ((__tmp50333
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp50329
                                            (let ((__tmp50330
                                                   (let ((__tmp50331
                                                          (let ((__tmp50332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp50332 _L32992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50331 '()))))
                                              (declare (not safe))
                                              (cons _L32994_ __tmp50330))))
                                       (declare (not safe))
                                       (cons __tmp50333 __tmp50329)))
                                   _tl3295932989_
                                   _hd3295832986_)))
                              (_g3295032965_ _g3295132969_))))
                      (_g3295032965_ _g3295132969_)))))
          (_g3294933008_ _$stx32946_))))))
