(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134122_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134124_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134126_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134131_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134134_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134139_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134142_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134147_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134150_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134155_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134158_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134265_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj134117
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134121 |gx[1]#_g134122_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           __tmp134121
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134123 |gx[1]#_g134124_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           __tmp134123
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134125 |gx[1]#_g134126_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           __tmp134125
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134127
               (let ((__tmp134132
                      (let ((__tmp134133 |gx[1]#_g134134_|))
                        (declare (not safe))
                        (cons 'e __tmp134133)))
                     (__tmp134128
                      (let ((__tmp134129
                             (let ((__tmp134130 |gx[1]#_g134131_|))
                               (declare (not safe))
                               (cons 'source __tmp134130))))
                        (declare (not safe))
                        (cons __tmp134129 '()))))
                 (declare (not safe))
                 (cons __tmp134132 __tmp134128))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           __tmp134127
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134135
               (let ((__tmp134140
                      (let ((__tmp134141 |gx[1]#_g134142_|))
                        (declare (not safe))
                        (cons 'e __tmp134141)))
                     (__tmp134136
                      (let ((__tmp134137
                             (let ((__tmp134138 |gx[1]#_g134139_|))
                               (declare (not safe))
                               (cons 'source __tmp134138))))
                        (declare (not safe))
                        (cons __tmp134137 '()))))
                 (declare (not safe))
                 (cons __tmp134140 __tmp134136))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           __tmp134135
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134143
               (let ((__tmp134148
                      (let ((__tmp134149 |gx[1]#_g134150_|))
                        (declare (not safe))
                        (cons 'e __tmp134149)))
                     (__tmp134144
                      (let ((__tmp134145
                             (let ((__tmp134146 |gx[1]#_g134147_|))
                               (declare (not safe))
                               (cons 'source __tmp134146))))
                        (declare (not safe))
                        (cons __tmp134145 '()))))
                 (declare (not safe))
                 (cons __tmp134148 __tmp134144))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           __tmp134143
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134151
               (let ((__tmp134156
                      (let ((__tmp134157 |gx[1]#_g134158_|))
                        (declare (not safe))
                        (cons 'e __tmp134157)))
                     (__tmp134152
                      (let ((__tmp134153
                             (let ((__tmp134154 |gx[1]#_g134155_|))
                               (declare (not safe))
                               (cons 'source __tmp134154))))
                        (declare (not safe))
                        (cons __tmp134153 '()))))
                 (declare (not safe))
                 (cons __tmp134156 __tmp134152))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134117
           __tmp134151
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj134117))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx128269_)
        (let* ((_g128273128287_
                (lambda (_g128274128283_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g128274128283_)))
               (_g128272128329_
                (lambda (_g128274128291_)
                  (if (gx#stx-pair? _g128274128291_)
                      (let ((_e128278128294_ (gx#syntax-e _g128274128291_)))
                        (let ((_hd128277128298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128278128294_)))
                              (_tl128276128301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128278128294_))))
                          (if (gx#stx-pair? _tl128276128301_)
                              (let ((_e128281128304_
                                     (gx#syntax-e _tl128276128301_)))
                                (let ((_hd128280128308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128281128304_)))
                                      (_tl128279128311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128281128304_))))
                                  (if (gx#stx-null? _tl128279128311_)
                                      ((lambda (_L128314_)
                                         (let ((__tmp134168
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp134159
                                                (let ((__tmp134165
                                                       (let ((__tmp134167
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp134166
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L128314_ '()))))
                 (declare (not safe))
                 (cons __tmp134167 __tmp134166)))
              (__tmp134160
               (let ((__tmp134161
                      (let ((__tmp134164 (gx#datum->syntax '#f 'error))
                            (__tmp134162
                             (let ((__tmp134163
                                    (let ()
                                      (declare (not safe))
                                      (cons _L128314_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp134163))))
                        (declare (not safe))
                        (cons __tmp134164 __tmp134162))))
                 (declare (not safe))
                 (cons __tmp134161 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134165
                                                        __tmp134160))))
                                           (declare (not safe))
                                           (cons __tmp134168 __tmp134159)))
                                       _hd128280128308_)
                                      (_g128273128287_ _g128274128291_))))
                              (_g128273128287_ _g128274128291_))))
                      (_g128273128287_ _g128274128291_)))))
          (_g128272128329_ _$stx128269_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx128333_)
        (letrec ((_generate128336_
                  (lambda (_tgt128485_ _kws128487_ _clauses128488_)
                    (letrec ((_generate-clause128490_
                              (lambda (_hd129400_ _E129402_)
                                (let* ((___stx134020134021_ _hd129400_)
                                       (_g129406129433_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx134020134021_))))
                                  (let ((___kont134023134024_
                                         (lambda (_L129529_ _L129531_)
                                           (_generate1128492_
                                            _hd129400_
                                            _L129531_
                                            '#t
                                            _L129529_
                                            _E129402_)))
                                        (___kont134025134026_
                                         (lambda (_L129481_
                                                  _L129483_
                                                  _L129484_)
                                           (_generate1128492_
                                            _hd129400_
                                            _L129484_
                                            _L129483_
                                            _L129481_
                                            _E129402_)))
                                        (___kont134027134028_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx128333_
                                            _hd129400_))))
                                    (if (gx#stx-pair? ___stx134020134021_)
                                        (let ((_e129412129509_
                                               (gx#syntax-e
                                                ___stx134020134021_)))
                                          (let ((_tl129410129516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129412129509_)))
                                                (_hd129411129513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129412129509_))))
                                            (if (gx#stx-pair? _tl129410129516_)
                                                (let ((_e129415129519_
                                                       (gx#syntax-e
                                                        _tl129410129516_)))
                                                  (let ((_tl129413129526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129415129519_)))
                                                        (_hd129414129523_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129415129519_))))
                                                    (if (gx#stx-null?
                                                         _tl129413129526_)
                                                        (___kont134023134024_
                                                         _hd129414129523_
                                                         _hd129411129513_)
                                                        (if (gx#stx-pair?
                                                             _tl129413129526_)
                                                            (let ((_e129427129471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl129413129526_)))
                      (let ((_tl129425129478_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129427129471_)))
                            (_hd129426129475_
                             (let ()
                               (declare (not safe))
                               (##car _e129427129471_))))
                        (if (gx#stx-null? _tl129425129478_)
                            (___kont134025134026_
                             _hd129426129475_
                             _hd129414129523_
                             _hd129411129513_)
                            (___kont134027134028_))))
                    (___kont134027134028_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134027134028_))))
                                        (___kont134027134028_))))))
                             (_generate1128492_
                              (lambda (_where128878_
                                       _hd128880_
                                       _fender128881_
                                       _body128882_
                                       _E128883_)
                                (letrec ((_recur128885_
                                          (lambda (_hd128888_
                                                   _tgt128890_
                                                   _K128891_)
                                            (let* ((___stx134066134067_
                                                    _hd128888_)
                                                   (_g128894128906_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134066134067_))))
                                              (let ((___kont134069134070_
                                                     (lambda (_L129190_
                                                              _L129192_)
                                                       (let* ((_g129203129211_
                                                               (lambda (_g129204129207_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g129204129207_)))
                      (_g129202129392_
                       (lambda (_g129204129215_)
                         ((lambda (_L129218_)
                            (let ()
                              (let* ((_g129230129238_
                                      (lambda (_g129231129234_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g129231129234_)))
                                     (_g129229129388_
                                      (lambda (_g129231129242_)
                                        ((lambda (_L129245_)
                                           (let ()
                                             (let* ((_g129258129266_
                                                     (lambda (_g129259129262_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129259129262_)))
                                                    (_g129257129384_
                                                     (lambda (_g129259129270_)
                                                       ((lambda (_L129273_)
                                                          (let ()
                                                            (let* ((_g129286129294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g129287129290_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129287129290_)))
                           (_g129285129380_
                            (lambda (_g129287129298_)
                              ((lambda (_L129301_)
                                 (let ()
                                   (let* ((_g129314129322_
                                           (lambda (_g129315129318_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g129315129318_)))
                                          (_g129313129376_
                                           (lambda (_g129315129326_)
                                             ((lambda (_L129329_)
                                                (let ()
                                                  (let* ((_g129342129350_
                                                          (lambda (_g129343129346_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g129343129346_)))
                                                         (_g129341129372_
                                                          (lambda (_g129343129354_)
                                                            ((lambda (_L129357_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp134201 (gx#datum->syntax '#f 'if))
                                 (__tmp134169
                                  (let ((__tmp134198
                                         (let ((__tmp134200
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp134199
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129218_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134200 __tmp134199)))
                                        (__tmp134170
                                         (let ((__tmp134172
                                                (let ((__tmp134197
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp134173
                                                       (let ((__tmp134191
                                                              (let ((__tmp134192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134193
                                    (let ((__tmp134194
                                           (let ((__tmp134196
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp134195
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129218_ '()))))
                                             (declare (not safe))
                                             (cons __tmp134196 __tmp134195))))
                                      (declare (not safe))
                                      (cons __tmp134194 '()))))
                               (declare (not safe))
                               (cons _L129245_ __tmp134193))))
                        (declare (not safe))
                        (cons __tmp134192 '())))
                     (__tmp134174
                      (let ((__tmp134175
                             (let ((__tmp134190 (gx#datum->syntax '#f 'let))
                                   (__tmp134176
                                    (let ((__tmp134178
                                           (let ((__tmp134185
                                                  (let ((__tmp134186
                                                         (let ((__tmp134187
                                                                (let ((__tmp134189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp134188
                               (let ()
                                 (declare (not safe))
                                 (cons _L129245_ '()))))
                          (declare (not safe))
                          (cons __tmp134189 __tmp134188))))
                   (declare (not safe))
                   (cons __tmp134187 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L129273_
                                                          __tmp134186)))
                                                 (__tmp134179
                                                  (let ((__tmp134180
                                                         (let ((__tmp134181
                                                                (let ((__tmp134182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134184
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp134183
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129245_ '()))))
                                 (declare (not safe))
                                 (cons __tmp134184 __tmp134183))))
                          (declare (not safe))
                          (cons __tmp134182 '()))))
                   (declare (not safe))
                   (cons _L129301_ __tmp134181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134180 '()))))
                                             (declare (not safe))
                                             (cons __tmp134185 __tmp134179)))
                                          (__tmp134177
                                           (let ()
                                             (declare (not safe))
                                             (cons _L129329_ '()))))
                                      (declare (not safe))
                                      (cons __tmp134178 __tmp134177))))
                               (declare (not safe))
                               (cons __tmp134190 __tmp134176))))
                        (declare (not safe))
                        (cons __tmp134175 '()))))
                 (declare (not safe))
                 (cons __tmp134191 __tmp134174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134197
                                                        __tmp134173)))
                                               (__tmp134171
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129357_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134172 __tmp134171))))
                                    (declare (not safe))
                                    (cons __tmp134198 __tmp134170))))
                             (declare (not safe))
                             (cons __tmp134201 __tmp134169)))))
                     _g129343129354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g129341129372_
                                                     _E128883_))))
                                              _g129315129326_))))
                                     (_g129313129376_
                                      (_recur128885_
                                       _L129192_
                                       _L129273_
                                       (_recur128885_
                                        _L129190_
                                        _L129301_
                                        _K128891_))))))
                               _g129287129298_))))
                      (_g129285129380_ (gx#genident 'tl)))))
                _g129259129270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129257129384_
                                                (gx#genident 'hd)))))
                                         _g129231129242_))))
                                (_g129229129388_ (gx#genident 'e)))))
                          _g129204129215_))))
                 (_g129202129392_ _tgt128890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134071134072_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd128888_)
                                                           (if (gx#underscore?
                                                                _hd128888_)
                                                               _K128891_
                                                               (if (let ((__tmp134246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g128916128918_)
                                    (gx#bound-identifier=?
                                     _g128916128918_
                                     _hd128888_))))
                             (declare (not safe))
                             (find __tmp134246 _kws128487_))
                           (let* ((_g128922128937_
                                   (lambda (_g128923128933_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g128923128933_)))
                                  (_g128921128988_
                                   (lambda (_g128923128941_)
                                     (if (gx#stx-pair? _g128923128941_)
                                         (let ((_e128928128944_
                                                (gx#syntax-e _g128923128941_)))
                                           (let ((_hd128927128948_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128928128944_)))
                                                 (_tl128926128951_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128928128944_))))
                                             (if (gx#stx-pair?
                                                  _tl128926128951_)
                                                 (let ((_e128931128954_
                                                        (gx#syntax-e
                                                         _tl128926128951_)))
                                                   (let ((_hd128930128958_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e128931128954_)))
                                                         (_tl128929128961_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e128931128954_))))
                                                     (if (gx#stx-null?
                                                          _tl128929128961_)
                                                         ((lambda (_L128964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L128966_)
                    (let ()
                      (let ((__tmp134245 (gx#datum->syntax '#f 'if))
                            (__tmp134228
                             (let ((__tmp134231
                                    (let ((__tmp134244
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp134232
                                           (let ((__tmp134241
                                                  (let ((__tmp134243
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp134242
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L128966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134243
                                                          __tmp134242)))
                                                 (__tmp134233
                                                  (let ((__tmp134234
                                                         (let ((__tmp134240
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp134235
                        (let ((__tmp134236
                               (let ((__tmp134237
                                      (let ((__tmp134239
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp134238
                                             (let ()
                                               (declare (not safe))
                                               (cons _L128964_ '()))))
                                        (declare (not safe))
                                        (cons __tmp134239 __tmp134238))))
                                 (declare (not safe))
                                 (cons __tmp134237 '()))))
                          (declare (not safe))
                          (cons _L128966_ __tmp134236))))
                   (declare (not safe))
                   (cons __tmp134240 __tmp134235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134234 '()))))
                                             (declare (not safe))
                                             (cons __tmp134241 __tmp134233))))
                                      (declare (not safe))
                                      (cons __tmp134244 __tmp134232)))
                                   (__tmp134229
                                    (let ((__tmp134230
                                           (let ()
                                             (declare (not safe))
                                             (cons _E128883_ '()))))
                                      (declare (not safe))
                                      (cons _K128891_ __tmp134230))))
                               (declare (not safe))
                               (cons __tmp134231 __tmp134229))))
                        (declare (not safe))
                        (cons __tmp134245 __tmp134228))))
                  _hd128930128958_
                  _hd128927128948_)
                 (_g128922128937_ _g128923128941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g128922128937_
                                                  _g128923128941_))))
                                         (_g128922128937_ _g128923128941_)))))
                             (_g128921128988_ (list _tgt128890_ _hd128888_)))
                           (let* ((_g128992129007_
                                   (lambda (_g128993129003_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g128993129003_)))
                                  (_g128991129051_
                                   (lambda (_g128993129011_)
                                     (if (gx#stx-pair? _g128993129011_)
                                         (let ((_e128998129014_
                                                (gx#syntax-e _g128993129011_)))
                                           (let ((_hd128997129018_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128998129014_)))
                                                 (_tl128996129021_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128998129014_))))
                                             (if (gx#stx-pair?
                                                  _tl128996129021_)
                                                 (let ((_e129001129024_
                                                        (gx#syntax-e
                                                         _tl128996129021_)))
                                                   (let ((_hd129000129028_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129001129024_)))
                                                         (_tl128999129031_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129001129024_))))
                                                     (if (gx#stx-null?
                                                          _tl128999129031_)
                                                         ((lambda (_L129034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129036_)
                    (let ()
                      (let ((__tmp134227 (gx#datum->syntax '#f 'let))
                            (__tmp134222
                             (let ((__tmp134224
                                    (let ((__tmp134225
                                           (let ((__tmp134226
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129036_ '()))))
                                             (declare (not safe))
                                             (cons _L129034_ __tmp134226))))
                                      (declare (not safe))
                                      (cons __tmp134225 '())))
                                   (__tmp134223
                                    (let ()
                                      (declare (not safe))
                                      (cons _K128891_ '()))))
                               (declare (not safe))
                               (cons __tmp134224 __tmp134223))))
                        (declare (not safe))
                        (cons __tmp134227 __tmp134222))))
                  _hd129000129028_
                  _hd128997129018_)
                 (_g128992129007_ _g128993129011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g128992129007_
                                                  _g128993129011_))))
                                         (_g128992129007_ _g128993129011_)))))
                             (_g128991129051_ (list _tgt128890_ _hd128888_)))))
                   (if (gx#stx-null? _hd128888_)
                       (let* ((_g129055129063_
                               (lambda (_g129056129059_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g129056129059_)))
                              (_g129054129081_
                               (lambda (_g129056129067_)
                                 ((lambda (_L129070_)
                                    (let ()
                                      (let ((__tmp134221
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp134215
                                             (let ((__tmp134218
                                                    (let ((__tmp134220
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp134219
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L129070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp134220 __tmp134219)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134216
                                                    (let ((__tmp134217
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E128883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K128891_ __tmp134217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134218
                                                     __tmp134216))))
                                        (declare (not safe))
                                        (cons __tmp134221 __tmp134215))))
                                  _g129056129067_))))
                         (_g129054129081_ _tgt128890_))
                       (if (gx#stx-datum? _hd128888_)
                           (let* ((_g129085129104_
                                   (lambda (_g129086129100_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129086129100_)))
                                  (_g129084129162_
                                   (lambda (_g129086129108_)
                                     (if (gx#stx-pair? _g129086129108_)
                                         (let ((_e129092129111_
                                                (gx#syntax-e _g129086129108_)))
                                           (let ((_hd129091129115_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129092129111_)))
                                                 (_tl129090129118_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129092129111_))))
                                             (if (gx#stx-pair?
                                                  _tl129090129118_)
                                                 (let ((_e129095129121_
                                                        (gx#syntax-e
                                                         _tl129090129118_)))
                                                   (let ((_hd129094129125_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129095129121_)))
                                                         (_tl129093129128_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129095129121_))))
                                                     (if (gx#stx-pair?
                                                          _tl129093129128_)
                                                         (let ((_e129098129131_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl129093129128_)))
                   (let ((_hd129097129135_
                          (let ()
                            (declare (not safe))
                            (##car _e129098129131_)))
                         (_tl129096129138_
                          (let ()
                            (declare (not safe))
                            (##cdr _e129098129131_))))
                     (if (gx#stx-null? _tl129096129138_)
                         ((lambda (_L129141_ _L129143_ _L129144_)
                            (let ()
                              (let ((__tmp134214 (gx#datum->syntax '#f 'if))
                                    (__tmp134202
                                     (let ((__tmp134205
                                            (let ((__tmp134206
                                                   (let ((__tmp134211
                                                          (let ((__tmp134213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp134212
                         (let () (declare (not safe)) (cons _L129144_ '()))))
                    (declare (not safe))
                    (cons __tmp134213 __tmp134212)))
                 (__tmp134207
                  (let ((__tmp134208
                         (let ((__tmp134210 (gx#datum->syntax '#f 'quote))
                               (__tmp134209
                                (let ()
                                  (declare (not safe))
                                  (cons _L129143_ '()))))
                           (declare (not safe))
                           (cons __tmp134210 __tmp134209))))
                    (declare (not safe))
                    (cons __tmp134208 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134211
                                                           __tmp134207))))
                                              (declare (not safe))
                                              (cons _L129141_ __tmp134206)))
                                           (__tmp134203
                                            (let ((__tmp134204
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E128883_ '()))))
                                              (declare (not safe))
                                              (cons _K128891_ __tmp134204))))
                                       (declare (not safe))
                                       (cons __tmp134205 __tmp134203))))
                                (declare (not safe))
                                (cons __tmp134214 __tmp134202))))
                          _hd129097129135_
                          _hd129094129125_
                          _hd129091129115_)
                         (_g129085129104_ _g129086129108_))))
                 (_g129085129104_ _g129086129108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129085129104_
                                                  _g129086129108_))))
                                         (_g129085129104_ _g129086129108_)))))
                             (_g129084129162_
                              (list _tgt128890_
                                    _hd128888_
                                    (let ((_e129166_ (gx#stx-e _hd128888_)))
                                      (if (or (keyword? _e129166_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e129166_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e129166_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx128333_
                            _where128878_
                            _hd128888_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx134066134067_)
                                                    (let ((_e128900129180_
                                                           (gx#syntax-e
                                                            ___stx134066134067_)))
                                                      (let ((_tl128898129187_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128900129180_)))
                    (_hd128899129184_
                     (let () (declare (not safe)) (##car _e128900129180_))))
                (___kont134069134070_ _tl128898129187_ _hd128899129184_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134071134072_)))))))
                                  (_recur128885_
                                   _hd128880_
                                   _tgt128485_
                                   (let ((__tmp134250
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp134247
                                          (let ((__tmp134248
                                                 (let ((__tmp134249
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E128883_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body128882_
                                                         __tmp134249))))
                                            (declare (not safe))
                                            (cons _fender128881_
                                                  __tmp134248))))
                                     (declare (not safe))
                                     (cons __tmp134250 __tmp134247))))))
                             (_generate-clauses128493_
                              (lambda (_clauses128616_)
                                (let _lp128619_ ((_rest128622_ _clauses128616_)
                                                 (_E128624_ (gx#genident 'E))
                                                 (_r128625_ '()))
                                  (let* ((___stx134102134103_ _rest128622_)
                                         (_g128628128640_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx134102134103_))))
                                    (let ((___kont134105134106_
                                           (lambda (_L128705_ _L128707_)
                                             (let* ((___stx134082134083_
                                                     _L128707_)
                                                    (_g128719128730_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx134082134083_))))
                                               (let ((___kont134085134086_
                                                      (lambda (_L128859_)
                                                        (if (gx#stx-null?
                                                             _L128705_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L128859_)
                             (let ((__tmp134259 (gx#stx-null? _L128859_)))
                               (declare (not safe))
                               (not __tmp134259)))
                        (let ((__tmp134251
                               (let ((__tmp134252
                                      (let ((__tmp134253
                                             (gx#stx-wrap-source
                                              (let ((__tmp134258
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp134254
                                                     (let ((__tmp134255
                                                            (let ((__tmp134256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134257 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp134257 _L128859_))))
                      (declare (not safe))
                      (cons __tmp134256 '()))))
               (declare (not safe))
               (cons '() __tmp134255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134258 __tmp134254))
                                              (gx#stx-source _L128707_))))
                                        (declare (not safe))
                                        (cons __tmp134253 '()))))
                                 (declare (not safe))
                                 (cons _E128624_ __tmp134252))))
                          (declare (not safe))
                          (cons __tmp134251 _r128625_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx128333_
                         _L128707_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx128333_
                     _L128707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134087134088_
                                                      (lambda ()
                                                        (let* ((_g128741128749_
                                                                (lambda (_g128742128745_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g128742128745_)))
                       (_g128740128838_
                        (lambda (_g128742128753_)
                          ((lambda (_L128756_)
                             (let ()
                               (let* ((_g128772128780_
                                       (lambda (_g128773128776_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g128773128776_)))
                                      (_g128771128834_
                                       (lambda (_g128773128784_)
                                         ((lambda (_L128787_)
                                            (let ()
                                              (let* ((_g128800128808_
                                                      (lambda (_g128801128804_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g128801128804_)))
                                                     (_g128799128830_
                                                      (lambda (_g128801128812_)
                                                        ((lambda (_L128815_)
                                                           (let ()
                                                             (let ()
                                                               (_lp128619_
                                                                _L128705_
                                                                _L128756_
                                                                (let ((__tmp134260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134261
                                      (let ()
                                        (declare (not safe))
                                        (cons _L128815_ '()))))
                                 (declare (not safe))
                                 (cons _E128624_ __tmp134261))))
                          (declare (not safe))
                          (cons __tmp134260 _r128625_))))))
                 _g128801128812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g128799128830_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp134264
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp134262
                                                         (let ((__tmp134263
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L128787_ '()))))
                   (declare (not safe))
                   (cons '() __tmp134263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134264
                                                          __tmp134262))
                                                  (gx#stx-source
                                                   _L128707_))))))
                                          _g128773128784_))))
                                 (_g128771128834_
                                  (_generate-clause128490_
                                   _L128707_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L128756_ '())))))))
                           _g128742128753_))))
                  (_g128740128838_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx134082134083_)
                                                     (let ((_e128724128849_
                                                            (gx#syntax-e
                                                             ___stx134082134083_)))
                                                       (let ((_tl128722128856_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e128724128849_)))
                     (_hd128723128853_
                      (let () (declare (not safe)) (##car _e128724128849_))))
                 (if (gx#identifier? _hd128723128853_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g134265_|
                          _hd128723128853_)
                         (___kont134085134086_ _tl128722128856_)
                         (___kont134087134088_))
                     (___kont134087134088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134087134088_))))))
                                          (___kont134107134108_
                                           (lambda ()
                                             (let* ((_g128651128659_
                                                     (lambda (_g128652128655_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g128652128655_)))
                                                    (_g128650128684_
                                                     (lambda (_g128652128663_)
                                                       ((lambda (_L128666_)
                                                          (let ()
                                                            (let ((__tmp134266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134267
                                  (let ((__tmp134268
                                         (gx#stx-wrap-source
                                          (let ((__tmp134276
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp134269
                                                 (let ((__tmp134270
                                                        (let ((__tmp134271
                                                               (let ((__tmp134275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp134272
                              (let ((__tmp134273
                                     (let ((__tmp134274
                                            (let ()
                                              (declare (not safe))
                                              (cons _L128666_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp134274))))
                                (declare (not safe))
                                (cons '#f __tmp134273))))
                         (declare (not safe))
                         (cons __tmp134275 __tmp134272))))
                  (declare (not safe))
                  (cons __tmp134271 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp134270))))
                                            (declare (not safe))
                                            (cons __tmp134276 __tmp134269))
                                          (gx#stx-source _stx128333_))))
                                    (declare (not safe))
                                    (cons __tmp134268 '()))))
                             (declare (not safe))
                             (cons _E128624_ __tmp134267))))
                      (declare (not safe))
                      (cons __tmp134266 _r128625_))))
                _g128652128663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g128650128684_
                                                _tgt128485_)))))
                                      (if (gx#stx-pair? ___stx134102134103_)
                                          (let ((_e128634128695_
                                                 (gx#syntax-e
                                                  ___stx134102134103_)))
                                            (let ((_tl128632128702_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128634128695_)))
                                                  (_hd128633128699_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128634128695_))))
                                              (___kont134105134106_
                                               _tl128632128702_
                                               _hd128633128699_)))
                                          (___kont134107134108_))))))))
                      (let* ((_bind128495_
                              (_generate-clauses128493_ _clauses128488_))
                             (_g128498128515_
                              (lambda (_g128499128511_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g128499128511_)))
                             (_g128497128612_
                              (lambda (_g128499128519_)
                                (if (gx#stx-pair/null? _g128499128519_)
                                    (let ((_g134277_
                                           (gx#syntax-split-splice
                                            _g128499128519_
                                            '0)))
                                      (begin
                                        (let ((_g134278_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134277_)
                                                     (##vector-length
                                                      _g134277_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134278_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134278_)))
                                        (let ((_target128501128522_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134277_ 0)))
                                              (_tl128503128525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134277_ 1))))
                                          (if (gx#stx-null? _tl128503128525_)
                                              (letrec ((_loop128504128528_
                                                        (lambda (_hd128502128532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try128508128535_)
                  (if (gx#stx-pair? _hd128502128532_)
                      (let ((_e128505128538_ (gx#syntax-e _hd128502128532_)))
                        (let ((_lp-hd128506128542_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128505128538_)))
                              (_lp-tl128507128545_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128505128538_))))
                          (_loop128504128528_
                           _lp-tl128507128545_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd128506128542_
                                   _bind-try128508128535_)))))
                      (let ((_bind-try128509128548_
                             (reverse _bind-try128508128535_)))
                        ((lambda (_L128552_)
                           (let ()
                             (let* ((_g128570128578_
                                     (lambda (_g128571128574_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g128571128574_)))
                                    (_g128569128608_
                                     (lambda (_g128571128582_)
                                       ((lambda (_L128585_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp134284
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp134279
                                                     (let ((__tmp134282
                                                            (let ((__tmp134283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g128599128602_ _g128600128605_)
                             (let ()
                               (declare (not safe))
                               (cons _g128599128602_ _g128600128605_)))))
                      (declare (not safe))
                      (foldr1 __tmp134283 '() _L128552_)))
                   (__tmp134280
                    (let ((__tmp134281
                           (let () (declare (not safe)) (cons _L128585_ '()))))
                      (declare (not safe))
                      (cons __tmp134281 '()))))
               (declare (not safe))
               (cons __tmp134282 __tmp134280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134284
                                                      __tmp134279)))))
                                        _g128571128582_))))
                               (_g128569128608_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind128495_)))))))
                         _bind-try128509128548_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop128504128528_
                                                 _target128501128522_
                                                 '()))
                                              (_g128498128515_
                                               _g128499128519_)))))
                                    (_g128498128515_ _g128499128519_)))))
                        (_g128497128612_ _bind128495_))))))
          (let* ((_g128339128358_
                  (lambda (_g128340128354_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g128340128354_)))
                 (_g128338128481_
                  (lambda (_g128340128362_)
                    (if (gx#stx-pair? _g128340128362_)
                        (let ((_e128346128365_ (gx#syntax-e _g128340128362_)))
                          (let ((_hd128345128369_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128346128365_)))
                                (_tl128344128372_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128346128365_))))
                            (if (gx#stx-pair? _tl128344128372_)
                                (let ((_e128349128375_
                                       (gx#syntax-e _tl128344128372_)))
                                  (let ((_hd128348128379_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128349128375_)))
                                        (_tl128347128382_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128349128375_))))
                                    (if (gx#stx-pair? _tl128347128382_)
                                        (let ((_e128352128385_
                                               (gx#syntax-e _tl128347128382_)))
                                          (let ((_hd128351128389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128352128385_)))
                                                (_tl128350128392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128352128385_))))
                                            ((lambda (_L128395_
                                                      _L128397_
                                                      _L128398_)
                                               (if (and (gx#identifier-list?
                                                         _L128397_)
                                                        (gx#stx-list?
                                                         _L128395_))
                                                   (let* ((_g128416128424_
                                                           (lambda (_g128417128420_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g128417128420_)))
                                                          (_g128415128477_
                                                           (lambda (_g128417128428_)
                                                             ((lambda (_L128431_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g128443128451_
                                  (lambda (_g128444128447_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g128444128447_)))
                                 (_g128442128473_
                                  (lambda (_g128444128455_)
                                    ((lambda (_L128458_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp134290
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp134285
                                                  (let ((__tmp134287
                                                         (let ((__tmp134288
                                                                (let ((__tmp134289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L128398_ '()))))
                          (declare (not safe))
                          (cons _L128431_ __tmp134289))))
                   (declare (not safe))
                   (cons __tmp134288 '())))
                (__tmp134286
                 (let () (declare (not safe)) (cons _L128458_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134287
                                                          __tmp134286))))
                                             (declare (not safe))
                                             (cons __tmp134290 __tmp134285)))))
                                     _g128444128455_))))
                            (_g128442128473_
                             (_generate128336_
                              _L128431_
                              (gx#syntax->list _L128397_)
                              _L128395_)))))
                      _g128417128428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g128415128477_
                                                      (gx#genident 'e)))
                                                   (_g128339128358_
                                                    _g128340128362_)))
                                             _tl128350128392_
                                             _hd128351128389_
                                             _hd128348128379_)))
                                        (_g128339128358_ _g128340128362_))))
                                (_g128339128358_ _g128340128362_))))
                        (_g128339128358_ _g128340128362_)))))
            (_g128338128481_ _stx128333_)))))))
