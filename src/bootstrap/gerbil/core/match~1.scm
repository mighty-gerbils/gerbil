(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g42147_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42148_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42154_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42155_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42156_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42158_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42159_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42160_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42161_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42162_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42163_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42164_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42165_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42166_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42167_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42247_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42273_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42276_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42277_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g42295_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42296_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42297_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42298_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g42299_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/match[1]#match-macro::t|
      (let ((__tmp42145 (list gerbil/core/macro-object#macro-object::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil.core#match-macro::t
         'match-macro
         __tmp42145
         '()
         '()
         '#f)))
    (define |gerbil/core/match[1]#match-macro?|
      (let ()
        (declare (not safe))
        (__make-class-predicate |gerbil/core/match[1]#match-macro::t|)))
    (define |gerbil/core/match[1]#make-match-macro|
      (lambda _$args37446_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _$args37446_)))
    (define |gerbil/core/match[1]#match-macro-macro|
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         |gerbil/core/match[1]#match-macro::t|
         'macro)))
    (define |gerbil/core/match[1]#match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         |gerbil/core/match[1]#match-macro::t|
         'macro)))
    (define |gerbil/core/match[1]#&match-macro-macro|
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         |gerbil/core/match[1]#match-macro::t|
         'macro)))
    (define |gerbil/core/match[1]#&match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         |gerbil/core/match[1]#match-macro::t|
         'macro)))
    (define |gerbil/core/match[1]#syntax-local-match-macro?|
      (lambda (_stx37443_)
        (if (gx#identifier? _stx37443_)
            (let ((__tmp42146 (gx#syntax-local-value _stx37443_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp42146))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_stx35749_ _match-stx35751_)
        (letrec ((_parse135753_
                  (lambda (_hd36106_)
                    (let* ((___stx3993339934_ _hd36106_)
                           (_g3613236274_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3993339934_))))
                      (let ((___kont3993639937_
                             (lambda (_L37206_ _L37208_)
                               (let* ((___stx3985339854_ _L37206_)
                                      (_g3722537258_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx3985339854_))))
                                 (let ((___kont3985639857_
                                        (lambda ()
                                          (cons '?: (cons _L37208_ '()))))
                                       (___kont3985839859_
                                        (lambda (_L37399_)
                                          (cons '?:
                                                (cons _L37208_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse135753_
                                                               _L37399_))
                                                            '())))))
                                       (___kont3986039861_
                                        (lambda (_L37369_)
                                          (cons '?:
                                                (cons _L37208_
                                                      (cons '=>:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (_parse135753_ _L37369_))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3986239863_
                                        (lambda (_L37320_ _L37322_)
                                          (cons '?:
                                                (cons _L37208_
                                                      (cons '::
                                                            (cons _L37322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (let ()
                                        (declare (not safe))
                                        (_parse135753_ _L37320_))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3986439865_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error35760_ _hd36106_)))))
                                   (let ((_g3722137410_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx3985339854_)
                                                (let ((_e3723037389_
                                                       (gx#syntax-e
                                                        ___stx3985339854_)))
                                                  (let ((_tl3722837396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3723037389_)))
                                                        (_hd3722937393_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3723037389_))))
                                                    (if (gx#stx-null?
                                                         _tl3722837396_)
                                                        (___kont3985839859_
                                                         _hd3722937393_)
                                                        (if (gx#identifier?
                                                             _hd3722937393_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g42147_|
                         _hd3722937393_)
                        (if (gx#stx-pair? _tl3722837396_)
                            (let ((_e3723737359_ (gx#syntax-e _tl3722837396_)))
                              (let ((_tl3723537366_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3723737359_)))
                                    (_hd3723637363_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3723737359_))))
                                (if (gx#stx-null? _tl3723537366_)
                                    (___kont3986039861_ _hd3723637363_)
                                    (___kont3986439865_))))
                            (___kont3986439865_))
                        (___kont3986439865_))
                    (if (gx#stx-datum? _hd3722937393_)
                        (let ((_e3724337286_ (gx#stx-e _hd3722937393_)))
                          (if (equal? _e3724337286_ '::)
                              (if (gx#stx-pair? _tl3722837396_)
                                  (let ((_e3724637290_
                                         (gx#syntax-e _tl3722837396_)))
                                    (let ((_tl3724437297_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3724637290_)))
                                          (_hd3724537294_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3724637290_))))
                                      (if (gx#stx-pair? _tl3724437297_)
                                          (let ((_e3724937300_
                                                 (gx#syntax-e _tl3724437297_)))
                                            (let ((_tl3724737307_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3724937300_)))
                                                  (_hd3724837304_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3724937300_))))
                                              (if (gx#identifier?
                                                   _hd3724837304_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g42148_|
                                                       _hd3724837304_)
                                                      (if (gx#stx-pair?
                                                           _tl3724737307_)
                                                          (let ((_e3725237310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3724737307_)))
                    (let ((_tl3725037317_
                           (let () (declare (not safe)) (##cdr _e3725237310_)))
                          (_hd3725137314_
                           (let ()
                             (declare (not safe))
                             (##car _e3725237310_))))
                      (if (gx#stx-null? _tl3725037317_)
                          (___kont3986239863_ _hd3725137314_ _hd3724537294_)
                          (___kont3986439865_))))
                  (___kont3986439865_))
              (___kont3986439865_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3986439865_))))
                                          (___kont3986439865_))))
                                  (___kont3986439865_))
                              (___kont3986439865_)))
                        (___kont3986439865_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3986439865_)))))
                                     (if (gx#stx-null? ___stx3985339854_)
                                         (___kont3985639857_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3722137410_))))))))
                            (___kont3993839939_
                             (lambda (_L37111_)
                               (let* ((___stx3983539836_ _L37111_)
                                      (_g3712337134_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx3983539836_))))
                                 (let ((___kont3983839839_
                                        (lambda (_L37162_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse135753_ _L37162_))))
                                       (___kont3984039841_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse135753_
                                                 _L37111_)))))
                                   (if (gx#stx-pair? ___stx3983539836_)
                                       (let ((_e3712837152_
                                              (gx#syntax-e ___stx3983539836_)))
                                         (let ((_tl3712637159_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3712837152_)))
                                               (_hd3712737156_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3712837152_))))
                                           (if (gx#stx-null? _tl3712637159_)
                                               (___kont3983839839_
                                                _hd3712737156_)
                                               (___kont3984039841_))))
                                       (___kont3984039841_))))))
                            (___kont3994039941_
                             (lambda (_L37026_)
                               (let* ((___stx3981739818_ _L37026_)
                                      (_g3703837049_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx3981739818_))))
                                 (let ((___kont3982039821_
                                        (lambda (_L37077_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse135753_ _L37077_))))
                                       (___kont3982239823_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse135753_
                                                 _L37026_)))))
                                   (if (gx#stx-pair? ___stx3981739818_)
                                       (let ((_e3704337067_
                                              (gx#syntax-e ___stx3981739818_)))
                                         (let ((_tl3704137074_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3704337067_)))
                                               (_hd3704237071_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3704337067_))))
                                           (if (gx#stx-null? _tl3704137074_)
                                               (___kont3982039821_
                                                _hd3704237071_)
                                               (___kont3982239823_))))
                                       (___kont3982239823_))))))
                            (___kont3994239943_
                             (lambda (_L36996_)
                               (cons 'not:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse135753_ _L36996_))
                                           '()))))
                            (___kont3994439945_
                             (lambda (_L36952_ _L36954_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse135753_ _L36954_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse135753_ _L36952_))
                                                 '())))))
                            (___kont3994639947_
                             (lambda (_L36896_ _L36898_ _L36899_)
                               (if (gx#stx-null? _L36896_)
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_parse135753_ _L36899_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (_parse135753_
                                                        _L36898_))
                                                     '())))
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_parse135753_ _L36899_))
                                               (cons (let ((__tmp42149
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons*)
                          (cons _L36898_ _L36896_))))
               (declare (not safe))
               (_parse135753_ __tmp42149))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont3994839949_
                             (lambda (_L36848_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list35755_ _L36848_))))
                            (___kont3995039951_
                             (lambda (_L36818_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse135753_ _L36818_))
                                           '()))))
                            (___kont3995239953_
                             (lambda (_L36781_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse135753_ _L36781_))
                                           '()))))
                            (___kont3995439955_
                             (lambda (_L36757_)
                               (let ()
                                 (declare (not safe))
                                 (_parse135753_ _L36757_))))
                            (___kont3995639957_
                             (lambda (_L36719_)
                               (cons 'values:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse-vector35756_ _L36719_))
                                           '()))))
                            (___kont3995839959_
                             (lambda (_L36691_)
                               (cons 'vector:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse-vector35756_ _L36691_))
                                           '()))))
                            (___kont3996039961_
                             (lambda (_L36652_)
                               (cons 'vector:
                                     (cons (let ((__tmp42150
                                                  (let ((__tmp42151
                                                         (lambda (_g3666536668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3666636671_)
                   (cons _g3666536668_ _g3666636671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp42151
                                                     '()
                                                     _L36652_))))
                                             (declare (not safe))
                                             (_parse-vector35756_ __tmp42150))
                                           '()))))
                            (___kont3996439965_
                             (lambda (_L36598_ _L36600_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L36600_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-vector35756_
                                                    _L36598_))
                                                 '())))))
                            (___kont3996639967_
                             (lambda (_L36568_ _L36570_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L36570_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-class-body35758_
                                                    _L36568_))
                                                 '())))))
                            (___kont3996839969_
                             (lambda (_L36528_ _L36530_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _L36530_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _L36528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (___kont3997039971_
                             (lambda (_L36488_)
                               (cons 'datum: (cons (gx#stx-e _L36488_) '()))))
                            (___kont3997239973_
                             (lambda (_L36448_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq35759_ _L36448_))))
                            (___kont3997439975_
                             (lambda (_L36404_ _L36406_)
                               (cons 'apply:
                                     (cons _L36406_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse135753_ _L36404_))
                                                 '())))))
                            (___kont3997639977_
                             (lambda (_L36352_)
                               (let ((__tmp42152
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L36352_)
                                       (gx#stx-wrap-source
                                        (cons 'match: _hd36106_)
                                        (let ((_$e36363_
                                               (gx#stx-source _hd36106_)))
                                          (if _$e36363_
                                              _$e36363_
                                              (gx#stx-source _stx35749_)))))))
                                 (declare (not safe))
                                 (_parse135753_ __tmp42152))))
                            (___kont3997839979_
                             (lambda (_L36326_) (cons 'any: '())))
                            (___kont3998039981_
                             (lambda (_L36310_)
                               (cons 'var: (cons _L36310_ '()))))
                            (___kont3998239983_
                             (lambda (_L36292_)
                               (cons 'datum: (cons (gx#stx-e _L36292_) '()))))
                            (___kont3998439985_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error35760_ _hd36106_)))))
                        (let* ((_g3613036303_
                                (lambda ()
                                  (let ((_L36292_ ___stx3993339934_))
                                    (if (gx#stx-datum? _L36292_)
                                        (___kont3998239983_ _L36292_)
                                        (___kont3998439985_)))))
                               (_g3612936319_
                                (lambda ()
                                  (let ((_L36310_ ___stx3993339934_))
                                    (if (and (gx#identifier? _L36310_)
                                             (let ((__tmp42153
                                                    (gx#ellipsis? _L36310_)))
                                               (declare (not safe))
                                               (not __tmp42153)))
                                        (___kont3998039981_ _L36310_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3613036303_))))))
                               (_g3612836335_
                                (lambda ()
                                  (let ((_L36326_ ___stx3993339934_))
                                    (if (gx#underscore? _L36326_)
                                        (___kont3997839979_ _L36326_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3612936319_))))))
                               (___match4026040261_
                                (lambda (_e3626536342_
                                         _hd3626436346_
                                         _tl3626336349_)
                                  (let ((_L36352_ _hd3626436346_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core/match[1]#syntax-local-match-macro?|
                                           _L36352_))
                                        (___kont3997639977_ _L36352_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3612836335_))))))
                               (___match4019440195_
                                (lambda (_e3623336508_
                                         _hd3623236512_
                                         _tl3623136515_
                                         _e3623636518_
                                         _hd3623536522_
                                         _tl3623436525_)
                                  (let ((_L36528_ _hd3623536522_)
                                        (_L36530_ _hd3623236512_))
                                    (if (and (gx#identifier? _L36530_)
                                             (or (gx#free-identifier=?
                                                  _L36530_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L36530_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L36530_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont3996839969_ _L36528_ _L36530_)
                                        (if (gx#identifier? _hd3623236512_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g42154_|
                                                 _hd3623236512_)
                                                (___kont3997039971_
                                                 _hd3623536522_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g42155_|
                                                     _hd3623236512_)
                                                    (___kont3997239973_
                                                     _hd3623536522_)
                                                    (___match4026040261_
                                                     _e3623336508_
                                                     _hd3623236512_
                                                     _tl3623136515_)))
                                            (___match4026040261_
                                             _e3623336508_
                                             _hd3623236512_
                                             _tl3623136515_))))))
                               (___match4018040181_
                                (lambda (_e3622836558_
                                         _hd3622736562_
                                         _tl3622636565_)
                                  (let ((_L36568_ _tl3622636565_)
                                        (_L36570_ _hd3622736562_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _L36570_))
                                        (___kont3996639967_ _L36568_ _L36570_)
                                        (if (gx#stx-pair? _tl3622636565_)
                                            (let ((_e3623636518_
                                                   (gx#syntax-e
                                                    _tl3622636565_)))
                                              (let ((_tl3623436525_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3623636518_)))
                                                    (_hd3623536522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3623636518_))))
                                                (if (gx#stx-null?
                                                     _tl3623436525_)
                                                    (___match4019440195_
                                                     _e3622836558_
                                                     _hd3622736562_
                                                     _tl3622636565_
                                                     _e3623636518_
                                                     _hd3623536522_
                                                     _tl3623436525_)
                                                    (if (gx#identifier?
                                                         _hd3622736562_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g42154_|
                                                             _hd3622736562_)
                                                            (___match4026040261_
                                                             _e3622836558_
                                                             _hd3622736562_
                                                             _tl3622636565_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g42155_|
                         _hd3622736562_)
                        (___match4026040261_
                         _e3622836558_
                         _hd3622736562_
                         _tl3622636565_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g42156_|
                             _hd3622736562_)
                            (if (gx#stx-pair? _tl3623436525_)
                                (let ((_e3626136394_
                                       (gx#syntax-e _tl3623436525_)))
                                  (let ((_tl3625936401_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3626136394_)))
                                        (_hd3626036398_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3626136394_))))
                                    (if (gx#stx-null? _tl3625936401_)
                                        (___kont3997439975_
                                         _hd3626036398_
                                         _hd3623536522_)
                                        (___match4026040261_
                                         _e3622836558_
                                         _hd3622736562_
                                         _tl3622636565_))))
                                (___match4026040261_
                                 _e3622836558_
                                 _hd3622736562_
                                 _tl3622636565_))
                            (___match4026040261_
                             _e3622836558_
                             _hd3622736562_
                             _tl3622636565_))))
                (___match4026040261_
                 _e3622836558_
                 _hd3622736562_
                 _tl3622636565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4026040261_
                                             _e3622836558_
                                             _hd3622736562_
                                             _tl3622636565_))))))
                               (___match4017440175_
                                (lambda (_e3622336588_
                                         _hd3622236592_
                                         _tl3622136595_)
                                  (let ((_L36598_ _tl3622136595_)
                                        (_L36600_ _hd3622236592_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _L36600_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (___kont3996439965_ _L36598_ _L36600_)
                                        (___match4018040181_
                                         _e3622336588_
                                         _hd3622236592_
                                         _tl3622136595_)))))
                               (___match4016840169_
                                (lambda (_e3620936618_
                                         ___splice3996239963_
                                         _target3621036622_
                                         _tl3621236625_)
                                  (letrec ((_loop3621336628_
                                            (lambda (_hd3621136632_
                                                     _body3621736635_)
                                              (if (gx#stx-pair? _hd3621136632_)
                                                  (let ((_e3621436638_
                                                         (gx#syntax-e
                                                          _hd3621136632_)))
                                                    (let ((_lp-tl3621636645_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3621436638_)))
                                                          (_lp-hd3621536642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3621436638_))))
                                                      (let ((__tmp42157
                                                             (cons _lp-hd3621536642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body3621736635_)))
                (declare (not safe))
                (_loop3621336628_ _lp-tl3621636645_ __tmp42157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body3621836648_
                                                         (reverse _body3621736635_)))
                                                    (___kont3996039961_
                                                     _body3621836648_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop3621336628_
                                       _target3621036622_
                                       '())))))
                               (_g3612036674_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3993339934_)
                                      (let ((_e3620936618_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3993339934_))))
                                        (if (gx#stx-pair/null? _e3620936618_)
                                            (let ((___splice3996239963_
                                                   (gx#syntax-split-splice
                                                    _e3620936618_
                                                    '0)))
                                              (let ((_tl3621236625_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3996239963_
                                                        '1)))
                                                    (_target3621036622_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3996239963_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3621236625_)
                                                    (___match4016840169_
                                                     _e3620936618_
                                                     ___splice3996239963_
                                                     _target3621036622_
                                                     _tl3621236625_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3612836335_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3612836335_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3612836335_)))))
                               (_g3611636791_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3993339934_)
                                      (let ((_e3619236777_
                                             (unbox (gx#syntax-e
                                                     ___stx3993339934_))))
                                        (___kont3995239953_ _e3619236777_))
                                      (let ()
                                        (declare (not safe))
                                        (_g3612036674_)))))
                               (___match4002240023_
                                (lambda (_e3614937016_
                                         _hd3614837020_
                                         _tl3614737023_)
                                  (let ((_L37026_ _tl3614737023_))
                                    (if (gx#stx-list? _L37026_)
                                        (___kont3994039941_ _L37026_)
                                        (___match4017440175_
                                         _e3614937016_
                                         _hd3614837020_
                                         _tl3614737023_)))))
                               (___match4001240013_
                                (lambda (_e3614537101_
                                         _hd3614437105_
                                         _tl3614337108_)
                                  (let ((_L37111_ _tl3614337108_))
                                    (if (gx#stx-list? _L37111_)
                                        (___kont3993839939_ _L37111_)
                                        (___match4017440175_
                                         _e3614537101_
                                         _hd3614437105_
                                         _tl3614337108_))))))
                          (if (gx#stx-pair? ___stx3993339934_)
                              (let ((_e3613837186_
                                     (gx#syntax-e ___stx3993339934_)))
                                (let ((_tl3613637193_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3613837186_)))
                                      (_hd3613737190_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3613837186_))))
                                  (if (gx#identifier? _hd3613737190_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g42158_|
                                           _hd3613737190_)
                                          (if (gx#stx-pair? _tl3613637193_)
                                              (let ((_e3614137196_
                                                     (gx#syntax-e
                                                      _tl3613637193_)))
                                                (let ((_tl3613937203_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3614137196_)))
                                                      (_hd3614037200_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3614137196_))))
                                                  (___kont3993639937_
                                                   _tl3613937203_
                                                   _hd3614037200_)))
                                              (___match4017440175_
                                               _e3613837186_
                                               _hd3613737190_
                                               _tl3613637193_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g42159_|
                                               _hd3613737190_)
                                              (___match4001240013_
                                               _e3613837186_
                                               _hd3613737190_
                                               _tl3613637193_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g42160_|
                                                   _hd3613737190_)
                                                  (___match4002240023_
                                                   _e3613837186_
                                                   _hd3613737190_
                                                   _tl3613637193_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g42161_|
                                                       _hd3613737190_)
                                                      (if (gx#stx-pair?
                                                           _tl3613637193_)
                                                          (let ((_e3615636986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3613637193_)))
                    (let ((_tl3615436993_
                           (let () (declare (not safe)) (##cdr _e3615636986_)))
                          (_hd3615536990_
                           (let ()
                             (declare (not safe))
                             (##car _e3615636986_))))
                      (if (gx#stx-null? _tl3615436993_)
                          (___kont3994239943_ _hd3615536990_)
                          (___match4017440175_
                           _e3613837186_
                           _hd3613737190_
                           _tl3613637193_))))
                  (___match4017440175_
                   _e3613837186_
                   _hd3613737190_
                   _tl3613637193_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g42162_|
                   _hd3613737190_)
                  (if (gx#stx-pair? _tl3613637193_)
                      (let ((_e3616436932_ (gx#syntax-e _tl3613637193_)))
                        (let ((_tl3616236939_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3616436932_)))
                              (_hd3616336936_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3616436932_))))
                          (if (gx#stx-pair? _tl3616236939_)
                              (let ((_e3616736942_
                                     (gx#syntax-e _tl3616236939_)))
                                (let ((_tl3616536949_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3616736942_)))
                                      (_hd3616636946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3616736942_))))
                                  (if (gx#stx-null? _tl3616536949_)
                                      (___kont3994439945_
                                       _hd3616636946_
                                       _hd3616336936_)
                                      (___match4017440175_
                                       _e3613837186_
                                       _hd3613737190_
                                       _tl3613637193_))))
                              (___match4017440175_
                               _e3613837186_
                               _hd3613737190_
                               _tl3613637193_))))
                      (___match4017440175_
                       _e3613837186_
                       _hd3613737190_
                       _tl3613637193_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g42163_|
                       _hd3613737190_)
                      (if (gx#stx-pair? _tl3613637193_)
                          (let ((_e3617636876_ (gx#syntax-e _tl3613637193_)))
                            (let ((_tl3617436883_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3617636876_)))
                                  (_hd3617536880_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3617636876_))))
                              (if (gx#stx-pair? _tl3617436883_)
                                  (let ((_e3617936886_
                                         (gx#syntax-e _tl3617436883_)))
                                    (let ((_tl3617736893_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3617936886_)))
                                          (_hd3617836890_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3617936886_))))
                                      (___kont3994639947_
                                       _tl3617736893_
                                       _hd3617836890_
                                       _hd3617536880_)))
                                  (___match4017440175_
                                   _e3613837186_
                                   _hd3613737190_
                                   _tl3613637193_))))
                          (___match4017440175_
                           _e3613837186_
                           _hd3613737190_
                           _tl3613637193_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g42164_|
                           _hd3613737190_)
                          (___kont3994839949_ _tl3613637193_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g42165_|
                               _hd3613737190_)
                              (if (gx#stx-pair? _tl3613637193_)
                                  (let ((_e3619036808_
                                         (gx#syntax-e _tl3613637193_)))
                                    (let ((_tl3618836815_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3619036808_)))
                                          (_hd3618936812_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3619036808_))))
                                      (if (gx#stx-null? _tl3618836815_)
                                          (___kont3995039951_ _hd3618936812_)
                                          (___match4017440175_
                                           _e3613837186_
                                           _hd3613737190_
                                           _tl3613637193_))))
                                  (___match4017440175_
                                   _e3613837186_
                                   _hd3613737190_
                                   _tl3613637193_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g42166_|
                                   _hd3613737190_)
                                  (if (gx#stx-pair? _tl3613637193_)
                                      (let ((_e3619936747_
                                             (gx#syntax-e _tl3613637193_)))
                                        (let ((_tl3619736754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3619936747_)))
                                              (_hd3619836751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3619936747_))))
                                          (if (gx#stx-null? _tl3619736754_)
                                              (___kont3995439955_
                                               _hd3619836751_)
                                              (___kont3995639957_
                                               _tl3613637193_))))
                                      (___kont3995639957_ _tl3613637193_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g42167_|
                                       _hd3613737190_)
                                      (___kont3995839959_ _tl3613637193_)
                                      (___match4017440175_
                                       _e3613837186_
                                       _hd3613737190_
                                       _tl3613637193_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4017440175_
                                       _e3613837186_
                                       _hd3613737190_
                                       _tl3613637193_))))
                              (let ()
                                (declare (not safe))
                                (_g3611636791_))))))))
                 (_parse-list35755_
                  (lambda (_body35935_)
                    (let* ((___stx4026340264_ _body35935_)
                           (_g3594135970_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4026340264_))))
                      (let ((___kont4026640267_
                             (lambda (_L36088_)
                               (let ()
                                 (declare (not safe))
                                 (_parse135753_ _L36088_))))
                            (___kont4026840269_
                             (lambda (_L36040_ _L36042_ _L36043_)
                               (cons 'splice:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse135753_ _L36043_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-list35755_
                                                    _L36040_))
                                                 '())))))
                            (___kont4027040271_
                             (lambda (_L35998_ _L36000_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse135753_ _L36000_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-list35755_
                                                    _L35998_))
                                                 '())))))
                            (___kont4027240273_
                             (lambda ()
                               (if (gx#stx-null? _body35935_)
                                   (cons 'null: '())
                                   (if (let ((__tmp42168
                                              (gx#stx-pair? _body35935_)))
                                         (declare (not safe))
                                         (not __tmp42168))
                                       (let ()
                                         (declare (not safe))
                                         (_parse135753_ _body35935_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error35760_ _body35935_)))))))
                        (let* ((___match4031240313_
                                (lambda (_e3596435988_
                                         _hd3596335992_
                                         _tl3596235995_)
                                  (let ((_L35998_ _tl3596235995_)
                                        (_L36000_ _hd3596335992_))
                                    (if (let ((__tmp42169
                                               (gx#ellipsis? _L36000_)))
                                          (declare (not safe))
                                          (not __tmp42169))
                                        (___kont4027040271_ _L35998_ _L36000_)
                                        (___kont4027240273_)))))
                               (___match4030640307_
                                (lambda (_e3595636020_
                                         _hd3595536024_
                                         _tl3595436027_
                                         _e3595936030_
                                         _hd3595836034_
                                         _tl3595736037_)
                                  (let ((_L36040_ _tl3595736037_)
                                        (_L36042_ _hd3595836034_)
                                        (_L36043_ _hd3595536024_))
                                    (if (gx#ellipsis? _L36042_)
                                        (___kont4026840269_
                                         _L36040_
                                         _L36042_
                                         _L36043_)
                                        (___match4031240313_
                                         _e3595636020_
                                         _hd3595536024_
                                         _tl3595436027_))))))
                          (if (gx#stx-pair? ___stx4026340264_)
                              (let ((_e3594636064_
                                     (gx#syntax-e ___stx4026340264_)))
                                (let ((_tl3594436071_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3594636064_)))
                                      (_hd3594536068_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3594636064_))))
                                  (if (gx#stx-datum? _hd3594536068_)
                                      (let ((_e3594736074_
                                             (gx#stx-e _hd3594536068_)))
                                        (if (equal? _e3594736074_ '::)
                                            (if (gx#stx-pair? _tl3594436071_)
                                                (let ((_e3595036078_
                                                       (gx#syntax-e
                                                        _tl3594436071_)))
                                                  (let ((_tl3594836085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3595036078_)))
                                                        (_hd3594936082_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3595036078_))))
                                                    (if (gx#stx-null?
                                                         _tl3594836085_)
                                                        (___kont4026640267_
                                                         _hd3594936082_)
                                                        (___match4030640307_
                                                         _e3594636064_
                                                         _hd3594536068_
                                                         _tl3594436071_
                                                         _e3595036078_
                                                         _hd3594936082_
                                                         _tl3594836085_))))
                                                (___match4031240313_
                                                 _e3594636064_
                                                 _hd3594536068_
                                                 _tl3594436071_))
                                            (if (gx#stx-pair? _tl3594436071_)
                                                (let ((_e3595936030_
                                                       (gx#syntax-e
                                                        _tl3594436071_)))
                                                  (let ((_tl3595736037_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3595936030_)))
                                                        (_hd3595836034_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3595936030_))))
                                                    (___match4030640307_
                                                     _e3594636064_
                                                     _hd3594536068_
                                                     _tl3594436071_
                                                     _e3595936030_
                                                     _hd3595836034_
                                                     _tl3595736037_)))
                                                (___match4031240313_
                                                 _e3594636064_
                                                 _hd3594536068_
                                                 _tl3594436071_))))
                                      (if (gx#stx-pair? _tl3594436071_)
                                          (let ((_e3595936030_
                                                 (gx#syntax-e _tl3594436071_)))
                                            (let ((_tl3595736037_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3595936030_)))
                                                  (_hd3595836034_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3595936030_))))
                                              (___match4030640307_
                                               _e3594636064_
                                               _hd3594536068_
                                               _tl3594436071_
                                               _e3595936030_
                                               _hd3595836034_
                                               _tl3595736037_)))
                                          (___match4031240313_
                                           _e3594636064_
                                           _hd3594536068_
                                           _tl3594436071_)))))
                              (___kont4027240273_)))))))
                 (_parse-vector35756_
                  (lambda (_body35932_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?35757_ _body35932_))
                        (cons 'simple:
                              (cons (gx#stx-map _parse135753_ _body35932_)
                                    '()))
                        (cons 'list:
                              (cons (let ()
                                      (declare (not safe))
                                      (_parse-list35755_ _body35932_))
                                    '())))))
                 (_simple-vector?35757_
                  (lambda (_body35869_)
                    (let* ((___stx4031540316_ _body35869_)
                           (_g3587335885_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4031540316_))))
                      (let ((___kont4031840319_
                             (lambda (_L35913_ _L35915_)
                               (if (let ((__tmp42170 (gx#ellipsis? _L35915_)))
                                     (declare (not safe))
                                     (not __tmp42170))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?35757_ _L35913_))
                                   '#f)))
                            (___kont4032040321_
                             (lambda () (gx#stx-null? _body35869_))))
                        (if (gx#stx-pair? ___stx4031540316_)
                            (let ((_e3587935903_
                                   (gx#syntax-e ___stx4031540316_)))
                              (let ((_tl3587735910_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3587935903_)))
                                    (_hd3587835907_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3587935903_))))
                                (___kont4031840319_
                                 _tl3587735910_
                                 _hd3587835907_)))
                            (___kont4032040321_))))))
                 (_parse-class-body35758_
                  (lambda (_body35778_)
                    (let _recur35781_ ((_rest35784_ _body35778_))
                      (let* ((___stx4033140332_ _rest35784_)
                             (_g3578835804_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4033140332_))))
                        (let ((___kont4033440335_
                               (lambda (_L35842_ _L35844_ _L35845_)
                                 (let ((__tmp42171
                                        (let ((__tmp42173
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse135753_ _L35844_)))
                                              (__tmp42172
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur35781_ _L35842_))))
                                          (declare (not safe))
                                          (cons __tmp42173 __tmp42172))))
                                   (declare (not safe))
                                   (cons _L35845_ __tmp42171))))
                              (___kont4033640337_
                               (lambda ()
                                 (if (gx#stx-null? _rest35784_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error35760_ _rest35784_))))))
                          (let ((___match4035040351_
                                 (lambda (_e3579535822_
                                          _hd3579435826_
                                          _tl3579335829_
                                          _e3579835832_
                                          _hd3579735836_
                                          _tl3579635839_)
                                   (let ((_L35842_ _tl3579635839_)
                                         (_L35844_ _hd3579735836_)
                                         (_L35845_ _hd3579435826_))
                                     (if (gx#stx-keyword? _L35845_)
                                         (___kont4033440335_
                                          _L35842_
                                          _L35844_
                                          _L35845_)
                                         (___kont4033640337_))))))
                            (if (gx#stx-pair? ___stx4033140332_)
                                (let ((_e3579535822_
                                       (gx#syntax-e ___stx4033140332_)))
                                  (let ((_tl3579335829_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3579535822_)))
                                        (_hd3579435826_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3579535822_))))
                                    (if (gx#stx-pair? _tl3579335829_)
                                        (let ((_e3579835832_
                                               (gx#syntax-e _tl3579335829_)))
                                          (let ((_tl3579635839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3579835832_)))
                                                (_hd3579735836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3579835832_))))
                                            (___match4035040351_
                                             _e3579535822_
                                             _hd3579435826_
                                             _tl3579335829_
                                             _e3579835832_
                                             _hd3579735836_
                                             _tl3579635839_)))
                                        (___kont4033640337_))))
                                (___kont4033640337_))))))))
                 (_parse-qq35759_
                  (lambda (_hd35765_)
                    (let ((_g3576735774_
                           (lambda (_g3576835770_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3576835770_))))
                      (declare (not safe))
                      (_g3576735774_ _hd35765_))))
                 (_parse-error35760_
                  (lambda (_hd35762_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx35751_
                               (cons _match-stx35751_
                                     (cons _stx35749_ (cons _hd35762_ '())))
                               (cons _stx35749_ (cons _hd35762_ '())))))))
          (let () (declare (not safe)) (_parse135753_ _stx35749_)))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_stx37433_)
        (let ((_match-stx37436_ '#f))
          (declare (not safe))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _stx37433_
           _match-stx37436_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g42175_
        (let ((_g42174_ (let () (declare (not safe)) (##length _g42175_))))
          (cond ((let () (declare (not safe)) (##fx= _g42174_ 1))
                 (apply (lambda (_stx37433_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__0|
                             _stx37433_)))
                        _g42175_))
                ((let () (declare (not safe)) (##fx= _g42174_ 2))
                 (apply (lambda (_stx37439_ _match-stx37441_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__%|
                             _stx37439_
                             _match-stx37441_)))
                        _g42175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g42175_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_stx35734_)
        (let ((__tmp42176
               (lambda (_E35737_)
                 (let ((__tmp42178
                        (let ((_E!35740_ (current-exception-handler)))
                          (lambda (_e35743_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   _e35743_
                                   'gerbil/runtime/syntax#SyntaxError::t))
                                (_E35737_ '#f)
                                (_E!35740_ _e35743_)))))
                       (__tmp42177
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__0|
                             _stx35734_))
                          '#t)))
                   (declare (not safe))
                   (__with-exception-handler __tmp42178 __tmp42177)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp42176))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_ptree34469_)
        (letrec ((_loop34472_
                  (lambda (_ptree34759_ _vars34761_ _K34762_)
                    (let* ((___stx4044940450_ _ptree34759_)
                           (_g3477534885_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4044940450_))))
                      (let ((___kont4045240453_
                             (lambda (_L35515_)
                               (let* ((___stx4036940370_ _L35515_)
                                      (_g3553235566_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4036940370_))))
                                 (let ((___kont4037240373_
                                        (lambda (_L35715_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop34472_
                                             _L35715_
                                             _vars34761_
                                             _K34762_))))
                                       (___kont4037440375_
                                        (lambda (_L35684_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop34472_
                                             _L35684_
                                             _vars34761_
                                             _K34762_))))
                                       (___kont4037640377_
                                        (lambda (_L35632_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop34472_
                                             _L35632_
                                             _vars34761_
                                             _K34762_))))
                                       (___kont4037840379_
                                        (lambda () (_K34762_ _vars34761_))))
                                   (if (gx#stx-pair? ___stx4036940370_)
                                       (let ((_e3553735705_
                                              (gx#syntax-e ___stx4036940370_)))
                                         (let ((_tl3553535712_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3553735705_)))
                                               (_hd3553635709_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3553735705_))))
                                           (if (gx#stx-null? _tl3553535712_)
                                               (___kont4037240373_
                                                _hd3553635709_)
                                               (if (gx#stx-datum?
                                                    _hd3553635709_)
                                                   (let ((_e3554235670_
                                                          (gx#stx-e
                                                           _hd3553635709_)))
                                                     (if (equal? _e3554235670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _tl3553535712_)
                     (let ((_e3554535674_ (gx#syntax-e _tl3553535712_)))
                       (let ((_tl3554335681_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3554535674_)))
                             (_hd3554435678_
                              (let ()
                                (declare (not safe))
                                (##car _e3554535674_))))
                         (if (gx#stx-null? _tl3554335681_)
                             (___kont4037440375_ _hd3554435678_)
                             (___kont4037840379_))))
                     (___kont4037840379_))
                 (if (equal? _e3554235670_ '::)
                     (if (gx#stx-pair? _tl3553535712_)
                         (let ((_e3555335598_ (gx#syntax-e _tl3553535712_)))
                           (let ((_tl3555135605_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3555335598_)))
                                 (_hd3555235602_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3555335598_))))
                             (if (gx#stx-pair? _tl3555135605_)
                                 (let ((_e3555635608_
                                        (gx#syntax-e _tl3555135605_)))
                                   (let ((_tl3555435615_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3555635608_)))
                                         (_hd3555535612_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3555635608_))))
                                     (if (gx#stx-datum? _hd3555535612_)
                                         (let ((_e3555735618_
                                                (gx#stx-e _hd3555535612_)))
                                           (if (equal? _e3555735618_ '=>:)
                                               (if (gx#stx-pair?
                                                    _tl3555435615_)
                                                   (let ((_e3556035622_
                                                          (gx#syntax-e
                                                           _tl3555435615_)))
                                                     (let ((_tl3555835629_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3556035622_)))
                                                           (_hd3555935626_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3556035622_))))
                                                       (if (gx#stx-null?
                                                            _tl3555835629_)
                                                           (___kont4037640377_
                                                            _hd3555935626_)
                                                           (___kont4037840379_))))
                                                   (___kont4037840379_))
                                               (___kont4037840379_)))
                                         (___kont4037840379_))))
                                 (___kont4037840379_))))
                         (___kont4037840379_))
                     (___kont4037840379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4037840379_)))))
                                       (___kont4037840379_))))))
                            (___kont4045440455_
                             (lambda (_L35402_ _L35404_)
                               (let* ((___stx4035340354_ _L35402_)
                                      (_g3542035432_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4035340354_))))
                                 (let ((___kont4035640357_
                                        (lambda (_L35460_ _L35462_)
                                          (let ((__tmp42179
                                                 (lambda (_g3547435476_)
                                                   (let ((__tmp42180
                                                          (cons _L35404_
                                                                _L35460_)))
                                                     (declare (not safe))
                                                     (_loop34472_
                                                      __tmp42180
                                                      _g3547435476_
                                                      _K34762_)))))
                                            (declare (not safe))
                                            (_loop34472_
                                             _L35462_
                                             _vars34761_
                                             __tmp42179))))
                                       (___kont4035840359_
                                        (lambda () (_K34762_ _vars34761_))))
                                   (if (gx#stx-pair? ___stx4035340354_)
                                       (let ((_e3542635450_
                                              (gx#syntax-e ___stx4035340354_)))
                                         (let ((_tl3542435457_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3542635450_)))
                                               (_hd3542535454_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3542635450_))))
                                           (___kont4035640357_
                                            _tl3542435457_
                                            _hd3542535454_)))
                                       (___kont4035840359_))))))
                            (___kont4045640457_
                             (lambda (_L35371_)
                               (let ()
                                 (declare (not safe))
                                 (_loop34472_ _L35371_ _vars34761_ _K34762_))))
                            (___kont4045840459_
                             (lambda (_L35317_ _L35319_)
                               (let ((__tmp42181
                                      (lambda (_g3533435336_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop34472_
                                           _L35317_
                                           _g3533435336_
                                           _K34762_)))))
                                 (declare (not safe))
                                 (_loop34472_
                                  _L35319_
                                  _vars34761_
                                  __tmp42181))))
                            (___kont4046040461_
                             (lambda (_L35253_ _L35255_)
                               (let ((__tmp42182
                                      (lambda (_g3527035272_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop34472_
                                           _L35253_
                                           _g3527035272_
                                           _K34762_)))))
                                 (declare (not safe))
                                 (_loop34472_
                                  _L35255_
                                  _vars34761_
                                  __tmp42182))))
                            (___kont4046240463_
                             (lambda (_L35198_)
                               (let ()
                                 (declare (not safe))
                                 (_loop34472_ _L35198_ _vars34761_ _K34762_))))
                            (___kont4046440465_
                             (lambda (_L35148_ _L35150_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector34474_
                                  _L35148_
                                  _vars34761_
                                  _K34762_))))
                            (___kont4046640467_
                             (lambda (_L35105_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector34474_
                                  _L35105_
                                  _vars34761_
                                  _K34762_))))
                            (___kont4046840469_
                             (lambda (_L35048_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list34476_
                                  _L35048_
                                  _vars34761_
                                  _K34762_))))
                            (___kont4047040471_
                             (lambda (_L34989_ _L34991_)
                               (let ()
                                 (declare (not safe))
                                 (_loop34472_ _L34989_ _vars34761_ _K34762_))))
                            (___kont4047240473_
                             (lambda (_L34927_)
                               (if (let ((__tmp42183
                                          (lambda (_g3494234944_)
                                            (gx#bound-identifier=?
                                             _g3494234944_
                                             _L34927_))))
                                     (declare (not safe))
                                     (__find __tmp42183 _vars34761_))
                                   (_K34762_ _vars34761_)
                                   (_K34762_ (cons _L34927_ _vars34761_)))))
                            (___kont4047440475_
                             (lambda () (_K34762_ _vars34761_))))
                        (let* ((___match4060640607_
                                (lambda (_e3483435128_
                                         _hd3483335132_
                                         _tl3483235135_
                                         _e3483735138_
                                         _hd3483635142_
                                         _tl3483535145_)
                                  (let ((_L35148_ _hd3483635142_)
                                        (_L35150_ _hd3483335132_))
                                    (if (or (gx#stx-eq? 'values: _L35150_)
                                            (gx#stx-eq? 'vector: _L35150_))
                                        (___kont4046440465_ _L35148_ _L35150_)
                                        (if (gx#stx-datum? _hd3483335132_)
                                            (let ((_e3484235081_
                                                   (gx#stx-e _hd3483335132_)))
                                              (if (equal? _e3484235081_
                                                          'struct:)
                                                  (___kont4047440475_)
                                                  (if (equal? _e3484235081_
                                                              'class:)
                                                      (___kont4047440475_)
                                                      (if (equal? _e3484235081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (___kont4047440475_)
                  (if (equal? _e3484235081_ 'var:)
                      (___kont4047240473_ _hd3483635142_)
                      (___kont4047440475_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4047440475_))))))
                               (___match4050040501_
                                (lambda (_e3478935392_
                                         _hd3478835396_
                                         _tl3478735399_)
                                  (let ((_L35402_ _tl3478735399_)
                                        (_L35404_ _hd3478835396_))
                                    (if (or (gx#stx-eq? 'and: _L35404_)
                                            (gx#stx-eq? 'or: _L35404_))
                                        (___kont4045440455_ _L35402_ _L35404_)
                                        (if (gx#stx-datum? _hd3478835396_)
                                            (let ((_e3479435357_
                                                   (gx#stx-e _hd3478835396_)))
                                              (if (equal? _e3479435357_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl3478735399_)
                                                      (let ((_e3479735361_
                                                             (gx#syntax-e
                                                              _tl3478735399_)))
                                                        (let ((_tl3479535368_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3479735361_)))
                      (_hd3479635365_
                       (let () (declare (not safe)) (##car _e3479735361_))))
                  (if (gx#stx-null? _tl3479535368_)
                      (___kont4045640457_ _hd3479635365_)
                      (___kont4047440475_))))
              (___kont4047440475_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _e3479435357_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl3478735399_)
                                                          (let ((_e3480635297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3478735399_)))
                    (let ((_tl3480435304_
                           (let () (declare (not safe)) (##cdr _e3480635297_)))
                          (_hd3480535301_
                           (let ()
                             (declare (not safe))
                             (##car _e3480635297_))))
                      (if (gx#stx-pair? _tl3480435304_)
                          (let ((_e3480935307_ (gx#syntax-e _tl3480435304_)))
                            (let ((_tl3480735314_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3480935307_)))
                                  (_hd3480835311_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3480935307_))))
                              (if (gx#stx-null? _tl3480735314_)
                                  (___kont4045840459_
                                   _hd3480835311_
                                   _hd3480535301_)
                                  (___kont4047440475_))))
                          (if (gx#stx-null? _tl3480435304_)
                              (___match4060640607_
                               _e3478935392_
                               _hd3478835396_
                               _tl3478735399_
                               _e3480635297_
                               _hd3480535301_
                               _tl3480435304_)
                              (___kont4047440475_)))))
                  (___kont4047440475_))
              (if (equal? _e3479435357_ 'splice:)
                  (if (gx#stx-pair? _tl3478735399_)
                      (let ((_e3481835233_ (gx#syntax-e _tl3478735399_)))
                        (let ((_tl3481635240_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3481835233_)))
                              (_hd3481735237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3481835233_))))
                          (if (gx#stx-pair? _tl3481635240_)
                              (let ((_e3482135243_
                                     (gx#syntax-e _tl3481635240_)))
                                (let ((_tl3481935250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3482135243_)))
                                      (_hd3482035247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3482135243_))))
                                  (if (gx#stx-null? _tl3481935250_)
                                      (___kont4046040461_
                                       _hd3482035247_
                                       _hd3481735237_)
                                      (___kont4047440475_))))
                              (if (gx#stx-null? _tl3481635240_)
                                  (___match4060640607_
                                   _e3478935392_
                                   _hd3478835396_
                                   _tl3478735399_
                                   _e3481835233_
                                   _hd3481735237_
                                   _tl3481635240_)
                                  (___kont4047440475_)))))
                      (___kont4047440475_))
                  (if (equal? _e3479435357_ 'box:)
                      (if (gx#stx-pair? _tl3478735399_)
                          (let ((_e3482935188_ (gx#syntax-e _tl3478735399_)))
                            (let ((_tl3482735195_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3482935188_)))
                                  (_hd3482835192_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3482935188_))))
                              (if (gx#stx-null? _tl3482735195_)
                                  (___kont4046240463_ _hd3482835192_)
                                  (___kont4047440475_))))
                          (___kont4047440475_))
                      (if (gx#stx-pair? _tl3478735399_)
                          (let ((_e3483735138_ (gx#syntax-e _tl3478735399_)))
                            (let ((_tl3483535145_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3483735138_)))
                                  (_hd3483635142_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3483735138_))))
                              (if (gx#stx-null? _tl3483535145_)
                                  (___match4060640607_
                                   _e3478935392_
                                   _hd3478835396_
                                   _tl3478735399_
                                   _e3483735138_
                                   _hd3483635142_
                                   _tl3483535145_)
                                  (if (equal? _e3479435357_ 'struct:)
                                      (if (gx#stx-pair? _tl3483535145_)
                                          (let ((_e3484835095_
                                                 (gx#syntax-e _tl3483535145_)))
                                            (let ((_tl3484635102_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3484835095_)))
                                                  (_hd3484735099_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3484835095_))))
                                              (if (gx#stx-null? _tl3484635102_)
                                                  (___kont4046640467_
                                                   _hd3484735099_)
                                                  (___kont4047440475_))))
                                          (___kont4047440475_))
                                      (if (equal? _e3479435357_ 'class:)
                                          (if (gx#stx-pair? _tl3483535145_)
                                              (let ((_e3485935038_
                                                     (gx#syntax-e
                                                      _tl3483535145_)))
                                                (let ((_tl3485735045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3485935038_)))
                                                      (_hd3485835042_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3485935038_))))
                                                  (if (gx#stx-null?
                                                       _tl3485735045_)
                                                      (___kont4046840469_
                                                       _hd3485835042_)
                                                      (___kont4047440475_))))
                                              (___kont4047440475_))
                                          (if (equal? _e3479435357_ 'apply:)
                                              (if (gx#stx-pair? _tl3483535145_)
                                                  (let ((_e3487134979_
                                                         (gx#syntax-e
                                                          _tl3483535145_)))
                                                    (let ((_tl3486934986_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3487134979_)))
                                                          (_hd3487034983_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3487134979_))))
                                                      (if (gx#stx-null?
                                                           _tl3486934986_)
                                                          (___kont4047040471_
                                                           _hd3487034983_
                                                           _hd3483635142_)
                                                          (___kont4047440475_))))
                                                  (___kont4047440475_))
                                              (___kont4047440475_)))))))
                          (___kont4047440475_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3478735399_)
                                                (let ((_e3483735138_
                                                       (gx#syntax-e
                                                        _tl3478735399_)))
                                                  (let ((_tl3483535145_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3483735138_)))
                                                        (_hd3483635142_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3483735138_))))
                                                    (if (gx#stx-null?
                                                         _tl3483535145_)
                                                        (___match4060640607_
                                                         _e3478935392_
                                                         _hd3478835396_
                                                         _tl3478735399_
                                                         _e3483735138_
                                                         _hd3483635142_
                                                         _tl3483535145_)
                                                        (___kont4047440475_))))
                                                (___kont4047440475_))))))))
                          (if (gx#stx-pair? ___stx4044940450_)
                              (let ((_e3478035491_
                                     (gx#syntax-e ___stx4044940450_)))
                                (let ((_tl3477835498_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3478035491_)))
                                      (_hd3477935495_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3478035491_))))
                                  (if (gx#stx-datum? _hd3477935495_)
                                      (let ((_e3478135501_
                                             (gx#stx-e _hd3477935495_)))
                                        (if (equal? _e3478135501_ '?:)
                                            (if (gx#stx-pair? _tl3477835498_)
                                                (let ((_e3478435505_
                                                       (gx#syntax-e
                                                        _tl3477835498_)))
                                                  (let ((_tl3478235512_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3478435505_)))
                                                        (_hd3478335509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3478435505_))))
                                                    (___kont4045240453_
                                                     _tl3478235512_)))
                                                (___match4050040501_
                                                 _e3478035491_
                                                 _hd3477935495_
                                                 _tl3477835498_))
                                            (___match4050040501_
                                             _e3478035491_
                                             _hd3477935495_
                                             _tl3477835498_)))
                                      (___match4050040501_
                                       _e3478035491_
                                       _hd3477935495_
                                       _tl3477835498_))))
                              (___kont4047440475_)))))))
                 (_loop-vector34474_
                  (lambda (_body34635_ _vars34637_ _K34638_)
                    (let* ((___stx4070740708_ _body34635_)
                           (_g3464134664_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4070740708_))))
                      (let ((___kont4071040711_
                             (lambda (_L34741_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list34475_
                                  _L34741_
                                  _vars34637_
                                  _K34638_))))
                            (___kont4071240713_
                             (lambda (_L34695_)
                               (let ()
                                 (declare (not safe))
                                 (_loop34472_
                                  _L34695_
                                  _vars34637_
                                  _K34638_)))))
                        (if (gx#stx-pair? ___stx4070740708_)
                            (let ((_e3464634717_
                                   (gx#syntax-e ___stx4070740708_)))
                              (let ((_tl3464434724_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3464634717_)))
                                    (_hd3464534721_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3464634717_))))
                                (if (gx#stx-datum? _hd3464534721_)
                                    (let ((_e3464734727_
                                           (gx#stx-e _hd3464534721_)))
                                      (if (equal? _e3464734727_ 'simple:)
                                          (if (gx#stx-pair? _tl3464434724_)
                                              (let ((_e3465034731_
                                                     (gx#syntax-e
                                                      _tl3464434724_)))
                                                (let ((_tl3464834738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3465034731_)))
                                                      (_hd3464934735_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3465034731_))))
                                                  (if (gx#stx-null?
                                                       _tl3464834738_)
                                                      (___kont4071040711_
                                                       _hd3464934735_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3464134664_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3464134664_)))
                                          (if (equal? _e3464734727_ 'list:)
                                              (if (gx#stx-pair? _tl3464434724_)
                                                  (let ((_e3465834685_
                                                         (gx#syntax-e
                                                          _tl3464434724_)))
                                                    (let ((_tl3465634692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3465834685_)))
                                                          (_hd3465734689_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3465834685_))))
                                                      (if (gx#stx-null?
                                                           _tl3465634692_)
                                                          (___kont4071240713_
                                                           _hd3465734689_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3464134664_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3464134664_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3464134664_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3464134664_)))))
                            (let () (declare (not safe)) (_g3464134664_)))))))
                 (_loop-list34475_
                  (lambda (_rest34565_ _vars34567_ _K34568_)
                    (let* ((___stx4075740758_ _rest34565_)
                           (_g3457134583_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4075740758_))))
                      (let ((___kont4076040761_
                             (lambda (_L34611_ _L34613_)
                               (let ((__tmp42184
                                      (lambda (_g3462534627_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list34475_
                                           _L34611_
                                           _g3462534627_
                                           _K34568_)))))
                                 (declare (not safe))
                                 (_loop34472_
                                  _L34613_
                                  _vars34567_
                                  __tmp42184))))
                            (___kont4076240763_
                             (lambda () (_K34568_ _vars34567_))))
                        (if (gx#stx-pair? ___stx4075740758_)
                            (let ((_e3457734601_
                                   (gx#syntax-e ___stx4075740758_)))
                              (let ((_tl3457534608_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3457734601_)))
                                    (_hd3457634605_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3457734601_))))
                                (___kont4076040761_
                                 _tl3457534608_
                                 _hd3457634605_)))
                            (___kont4076240763_))))))
                 (_loop-class-list34476_
                  (lambda (_rest34478_ _vars34480_ _K34481_)
                    (let* ((___stx4077340774_ _rest34478_)
                           (_g3448434499_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4077340774_))))
                      (let ((___kont4077640777_
                             (lambda (_L34537_ _L34539_)
                               (let ((__tmp42185
                                      (lambda (_g3455534557_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list34476_
                                           _L34537_
                                           _g3455534557_
                                           _K34481_)))))
                                 (declare (not safe))
                                 (_loop34472_
                                  _L34539_
                                  _vars34480_
                                  __tmp42185))))
                            (___kont4077840779_
                             (lambda () (_K34481_ _vars34480_))))
                        (if (gx#stx-pair? ___stx4077340774_)
                            (let ((_e3449034517_
                                   (gx#syntax-e ___stx4077340774_)))
                              (let ((_tl3448834524_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3449034517_)))
                                    (_hd3448934521_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3449034517_))))
                                (if (gx#stx-pair? _tl3448834524_)
                                    (let ((_e3449334527_
                                           (gx#syntax-e _tl3448834524_)))
                                      (let ((_tl3449134534_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3449334527_)))
                                            (_hd3449234531_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3449334527_))))
                                        (___kont4077640777_
                                         _tl3449134534_
                                         _hd3449234531_)))
                                    (___kont4077840779_))))
                            (___kont4077840779_)))))))
          (let ()
            (declare (not safe))
            (_loop34472_ _ptree34469_ '() values)))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_stx31430_ _tgt31432_ _ptree31433_ _K31434_ _E31435_)
        (letrec ((_generate131437_
                  (lambda (_tgt32682_ _ptree32684_ _K32685_ _E32686_)
                    (let* ((_g3268832696_
                            (lambda (_g3268932692_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3268932692_)))
                           (_g3268734465_
                            (lambda (_g3268932700_)
                              ((lambda (_L32703_)
                                 (let ()
                                   (let* ((___stx4100941010_ _ptree32684_)
                                          (_g3273032872_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4100941010_))))
                                     (let ((___kont4101241013_
                                            (lambda (_L34180_ _L34182_)
                                              (let* ((___stx4092740928_
                                                      _L34180_)
                                                     (_g3419934234_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4092740928_))))
                                                (let ((___kont4093040931_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L34182_ (cons _L32703_ '())))
                             (cons _K32685_ (cons _E32686_ '()))))))
              (___kont4093240933_
               (lambda (_L34435_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _L34182_ (cons _L32703_ '())))
                             (cons (let ()
                                     (declare (not safe))
                                     (_generate131437_
                                      _tgt32682_
                                      _L34435_
                                      _K32685_
                                      _E32686_))
                                   (cons _E32686_ '()))))))
              (___kont4093440935_
               (lambda (_L34373_)
                 (let* ((_g3438734395_
                         (lambda (_g3438834391_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3438834391_)))
                        (_g3438634414_
                         (lambda (_g3438834399_)
                           ((lambda (_L34402_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _L34402_
                                                        (cons (cons _L34182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L32703_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _L34402_
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (_generate131437_
                               _L34402_
                               _L34373_
                               _K32685_
                               _E32686_))
                            (cons _E32686_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g3438834399_)))
                        (__tmp42186 (gx#genident 'e)))
                   (declare (not safe))
                   (_g3438634414_ __tmp42186))))
              (___kont4093640937_
               (lambda (_L34289_ _L34291_)
                 (let* ((_g3431134319_
                         (lambda (_g3431234315_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3431234315_)))
                        (_g3431034338_
                         (lambda (_g3431234323_)
                           ((lambda (_L34326_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L34182_
                                                        (cons _L32703_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L34326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L34291_ (cons _L32703_ '()))
                                        '()))
                            '())
                      (cons (let ()
                              (declare (not safe))
                              (_generate131437_
                               _L34326_
                               _L34289_
                               _K32685_
                               _E32686_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E32686_ '()))))))
                            _g3431234323_)))
                        (__tmp42187 (gx#genident 'e)))
                   (declare (not safe))
                   (_g3431034338_ __tmp42187)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g3419634446_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4092740928_)
                                                               (let ((_e3420434425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4092740928_)))
                         (let ((_tl3420234432_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3420434425_)))
                               (_hd3420334429_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3420434425_))))
                           (if (gx#stx-null? _tl3420234432_)
                               (___kont4093240933_ _hd3420334429_)
                               (if (gx#stx-datum? _hd3420334429_)
                                   (let ((_e3420934359_
                                          (gx#stx-e _hd3420334429_)))
                                     (if (equal? _e3420934359_ '=>:)
                                         (if (gx#stx-pair? _tl3420234432_)
                                             (let ((_e3421234363_
                                                    (gx#syntax-e
                                                     _tl3420234432_)))
                                               (let ((_tl3421034370_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3421234363_)))
                                                     (_hd3421134367_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3421234363_))))
                                                 (if (gx#stx-null?
                                                      _tl3421034370_)
                                                     (___kont4093440935_
                                                      _hd3421134367_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3419934234_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3419934234_)))
                                         (if (equal? _e3420934359_ '::)
                                             (if (gx#stx-pair? _tl3420234432_)
                                                 (let ((_e3422134255_
                                                        (gx#syntax-e
                                                         _tl3420234432_)))
                                                   (let ((_tl3421934262_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3422134255_)))
                                                         (_hd3422034259_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3422134255_))))
                                                     (if (gx#stx-pair?
                                                          _tl3421934262_)
                                                         (let ((_e3422434265_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3421934262_)))
                   (let ((_tl3422234272_
                          (let () (declare (not safe)) (##cdr _e3422434265_)))
                         (_hd3422334269_
                          (let () (declare (not safe)) (##car _e3422434265_))))
                     (if (gx#stx-datum? _hd3422334269_)
                         (let ((_e3422534275_ (gx#stx-e _hd3422334269_)))
                           (if (equal? _e3422534275_ '=>:)
                               (if (gx#stx-pair? _tl3422234272_)
                                   (let ((_e3422834279_
                                          (gx#syntax-e _tl3422234272_)))
                                     (let ((_tl3422634286_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3422834279_)))
                                           (_hd3422734283_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3422834279_))))
                                       (if (gx#stx-null? _tl3422634286_)
                                           (___kont4093640937_
                                            _hd3422734283_
                                            _hd3422034259_)
                                           (let ()
                                             (declare (not safe))
                                             (_g3419934234_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3419934234_)))
                               (let () (declare (not safe)) (_g3419934234_))))
                         (let () (declare (not safe)) (_g3419934234_)))))
                 (let () (declare (not safe)) (_g3419934234_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3419934234_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g3419934234_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3419934234_))))))
                       (let () (declare (not safe)) (_g3419934234_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4092740928_)
                                                        (___kont4093040931_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3419634446_))))))))
                                           (___kont4101441015_
                                            (lambda (_L34077_)
                                              (let* ((___stx4091140912_
                                                      _L34077_)
                                                     (_g3409034102_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4091140912_))))
                                                (let ((___kont4091440915_
                                                       (lambda (_L34130_
                                                                _L34132_)
                                                         (let ((__tmp42188
                                                                (let ((__tmp42189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'and: _L34130_)))
                          (declare (not safe))
                          (_generate131437_
                           _tgt32682_
                           __tmp42189
                           _K32685_
                           _E32686_))))
                   (declare (not safe))
                   (_generate131437_
                    _tgt32682_
                    _L34132_
                    __tmp42188
                    _E32686_))))
              (___kont4091640917_ (lambda () _K32685_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4091140912_)
                                                      (let ((_e3409634120_
                                                             (gx#syntax-e
                                                              ___stx4091140912_)))
                                                        (let ((_tl3409434127_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3409634120_)))
                      (_hd3409534124_
                       (let () (declare (not safe)) (##car _e3409634120_))))
                  (___kont4091440915_ _tl3409434127_ _hd3409534124_)))
              (___kont4091640917_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4101641017_
                                            (lambda (_L33984_)
                                              (let* ((___stx4089540896_
                                                      _L33984_)
                                                     (_g3399734009_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4089540896_))))
                                                (let ((___kont4089840899_
                                                       (lambda (_L34037_
                                                                _L34039_)
                                                         (let ((__tmp42190
                                                                (let ((__tmp42191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'or: _L34037_)))
                          (declare (not safe))
                          (_generate131437_
                           _tgt32682_
                           __tmp42191
                           _K32685_
                           _E32686_))))
                   (declare (not safe))
                   (_generate131437_
                    _tgt32682_
                    _L34039_
                    _K32685_
                    __tmp42190))))
              (___kont4090040901_ (lambda () _E32686_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4089540896_)
                                                      (let ((_e3400334027_
                                                             (gx#syntax-e
                                                              ___stx4089540896_)))
                                                        (let ((_tl3400134034_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3400334027_)))
                      (_hd3400234031_
                       (let () (declare (not safe)) (##car _e3400334027_))))
                  (___kont4089840899_ _tl3400134034_ _hd3400234031_)))
              (___kont4090040901_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4101841019_
                                            (lambda (_L33949_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate131437_
                                                 _tgt32682_
                                                 _L33949_
                                                 _E32686_
                                                 _K32685_))))
                                           (___kont4102041021_
                                            (lambda (_L33831_ _L33833_)
                                              (let* ((_g3385033865_
                                                      (lambda (_g3385133861_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3385133861_)))
                                                     (_g3384933914_
                                                      (lambda (_g3385133869_)
                                                        (if (gx#stx-pair?
                                                             _g3385133869_)
                                                            (let ((_e3385633872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g3385133869_)))
                      (let ((_hd3385533876_
                             (let ()
                               (declare (not safe))
                               (##car _e3385633872_)))
                            (_tl3385433879_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3385633872_))))
                        (if (gx#stx-pair? _tl3385433879_)
                            (let ((_e3385933882_ (gx#syntax-e _tl3385433879_)))
                              (let ((_hd3385833886_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3385933882_)))
                                    (_tl3385733889_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3385933882_))))
                                (if (gx#stx-null? _tl3385733889_)
                                    ((lambda (_L33892_ _L33894_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _L32703_ '()))
                                                     (cons (let ((_hd-pat33910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _L33833_))
                         (_tl-pat33912_ (gx#stx-e _L33831_)))
                     (if (and (equal? _hd-pat33910_ '(any:))
                              (equal? _tl-pat33912_ '(any:)))
                         _K32685_
                         (if (equal? _tl-pat33912_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _L33894_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _L32703_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_generate131437_
                                                  _L33894_
                                                  _L33833_
                                                  _K32685_
                                                  _E32686_))
                                               '())))
                             (if (equal? _hd-pat33910_ '(any:))
                                 (cons 'let
                                       (cons (cons (cons _L33892_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L32703_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (_generate131437_
                                                      _L33892_
                                                      _L33831_
                                                      _K32685_
                                                      _E32686_))
                                                   '())))
                                 (cons 'let
                                       (cons (cons (cons _L33894_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L32703_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L33892_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L32703_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (let ((__tmp42192
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_generate131437_
                                                             _L33892_
                                                             _L33831_
                                                             _K32685_
                                                             _E32686_))))
                                                     (declare (not safe))
                                                     (_generate131437_
                                                      _L33894_
                                                      _L33833_
                                                      __tmp42192
                                                      _E32686_))
                                                   '())))))))
                   (cons _E32686_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd3385833886_
                                     _hd3385533876_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3385033865_ _g3385133869_)))))
                            (let ()
                              (declare (not safe))
                              (_g3385033865_ _g3385133869_)))))
                    (let ()
                      (declare (not safe))
                      (_g3385033865_ _g3385133869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42193
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g3384933914_ __tmp42193))))
                                           (___kont4102241023_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _L32703_ '()))
                  (cons _K32685_ (cons _E32686_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4102441025_
                                            (lambda (_L33747_ _L33749_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice31439_
                                                 _tgt32682_
                                                 _L33749_
                                                 _L33747_
                                                 _K32685_
                                                 _E32686_))))
                                           (___kont4102641027_
                                            (lambda (_L33661_)
                                              (let* ((_g3367533683_
                                                      (lambda (_g3367633679_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3367633679_)))
                                                     (_g3367433702_
                                                      (lambda (_g3367633687_)
                                                        ((lambda (_L33690_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _L32703_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _L33690_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _L32703_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_generate131437_
                                                            _L33690_
                                                            _L33661_
                                                            _K32685_
                                                            _E32686_))
                                                         '())))
                                       (cons _E32686_ '()))))))
                 _g3367633687_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42194
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3367433702_ __tmp42194))))
                                           (___kont4102841029_
                                            (lambda (_L33466_)
                                              (let* ((___stx4084540846_
                                                      _L33466_)
                                                     (_g3348133504_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4084540846_))))
                                                (let ((___kont4084840849_
                                                       (lambda (_L33581_)
                                                         (let* ((_g3359533603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3359633599_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3359633599_)))
                        (_g3359433622_
                         (lambda (_g3359633607_)
                           ((lambda (_L33610_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L32703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L33610_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (_generate-simple-vector31440_
                                                     _tgt32682_
                                                     _L33581_
                                                     '0
                                                     _K32685_
                                                     _E32686_))
                                                  (cons _E32686_ '()))))))
                            _g3359633607_)))
                        (__tmp42195 (gx#stx-length _L33581_)))
                   (declare (not safe))
                   (_g3359433622_ __tmp42195))))
              (___kont4085040851_
               (lambda (_L33535_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector31441_
                    _tgt32682_
                    _L33535_
                    'values->list
                    _K32685_
                    _E32686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4084540846_)
                                                      (let ((_e3348633557_
                                                             (gx#syntax-e
                                                              ___stx4084540846_)))
                                                        (let ((_tl3348433564_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3348633557_)))
                      (_hd3348533561_
                       (let () (declare (not safe)) (##car _e3348633557_))))
                  (if (gx#stx-datum? _hd3348533561_)
                      (let ((_e3348733567_ (gx#stx-e _hd3348533561_)))
                        (if (equal? _e3348733567_ 'simple:)
                            (if (gx#stx-pair? _tl3348433564_)
                                (let ((_e3349033571_
                                       (gx#syntax-e _tl3348433564_)))
                                  (let ((_tl3348833578_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3349033571_)))
                                        (_hd3348933575_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3349033571_))))
                                    (if (gx#stx-null? _tl3348833578_)
                                        (___kont4084840849_ _hd3348933575_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3348133504_)))))
                                (let () (declare (not safe)) (_g3348133504_)))
                            (if (equal? _e3348733567_ 'list:)
                                (if (gx#stx-pair? _tl3348433564_)
                                    (let ((_e3349833525_
                                           (gx#syntax-e _tl3348433564_)))
                                      (let ((_tl3349633532_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3349833525_)))
                                            (_hd3349733529_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3349833525_))))
                                        (if (gx#stx-null? _tl3349633532_)
                                            (___kont4085040851_ _hd3349733529_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3348133504_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3348133504_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3348133504_)))))
                      (let () (declare (not safe)) (_g3348133504_)))))
              (let () (declare (not safe)) (_g3348133504_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4103041031_
                                            (lambda (_L33271_)
                                              (let* ((___stx4079540796_
                                                      _L33271_)
                                                     (_g3328633309_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4079540796_))))
                                                (let ((___kont4079840799_
                                                       (lambda (_L33386_)
                                                         (let* ((_g3340033408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3340133404_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3340133404_)))
                        (_g3339933427_
                         (lambda (_g3340133412_)
                           ((lambda (_L33415_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _L32703_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _L32703_ '()))
                                  (cons _L33415_ '())))
                      (cons (let ()
                              (declare (not safe))
                              (_generate-simple-vector31440_
                               _tgt32682_
                               _L33386_
                               '0
                               _K32685_
                               _E32686_))
                            (cons _E32686_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E32686_ '()))))))
                            _g3340133412_)))
                        (__tmp42196 (gx#stx-length _L33386_)))
                   (declare (not safe))
                   (_g3339933427_ __tmp42196))))
              (___kont4080040801_
               (lambda (_L33340_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L32703_ '()))
                             (cons (let ()
                                     (declare (not safe))
                                     (_generate-list-vector31441_
                                      _tgt32682_
                                      _L33340_
                                      'vector->list
                                      _K32685_
                                      _E32686_))
                                   (cons _E32686_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4079540796_)
                                                      (let ((_e3329133362_
                                                             (gx#syntax-e
                                                              ___stx4079540796_)))
                                                        (let ((_tl3328933369_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3329133362_)))
                      (_hd3329033366_
                       (let () (declare (not safe)) (##car _e3329133362_))))
                  (if (gx#stx-datum? _hd3329033366_)
                      (let ((_e3329233372_ (gx#stx-e _hd3329033366_)))
                        (if (equal? _e3329233372_ 'simple:)
                            (if (gx#stx-pair? _tl3328933369_)
                                (let ((_e3329533376_
                                       (gx#syntax-e _tl3328933369_)))
                                  (let ((_tl3329333383_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3329533376_)))
                                        (_hd3329433380_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3329533376_))))
                                    (if (gx#stx-null? _tl3329333383_)
                                        (___kont4079840799_ _hd3329433380_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3328633309_)))))
                                (let () (declare (not safe)) (_g3328633309_)))
                            (if (equal? _e3329233372_ 'list:)
                                (if (gx#stx-pair? _tl3328933369_)
                                    (let ((_e3330333330_
                                           (gx#syntax-e _tl3328933369_)))
                                      (let ((_tl3330133337_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3330333330_)))
                                            (_hd3330233334_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3330333330_))))
                                        (if (gx#stx-null? _tl3330133337_)
                                            (___kont4080040801_ _hd3330233334_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3328633309_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3328633309_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3328633309_)))))
                      (let () (declare (not safe)) (_g3328633309_)))))
              (let () (declare (not safe)) (_g3328633309_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4103241033_
                                            (lambda (_L33222_ _L33224_)
                                              (let ((__tmp42197
                                                     (gx#stx-e _L33224_)))
                                                (declare (not safe))
                                                (_generate-struct31442_
                                                 __tmp42197
                                                 _tgt32682_
                                                 _L33222_
                                                 _K32685_
                                                 _E32686_))))
                                           (___kont4103441035_
                                            (lambda (_L33163_ _L33165_)
                                              (let ((__tmp42198
                                                     (gx#stx-e _L33165_)))
                                                (declare (not safe))
                                                (_generate-class31445_
                                                 __tmp42198
                                                 _tgt32682_
                                                 _L33163_
                                                 _K32685_
                                                 _E32686_))))
                                           (___kont4103641037_
                                            (lambda (_L33066_)
                                              (let* ((_g3308033088_
                                                      (lambda (_g3308133084_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3308133084_)))
                                                     (_g3307933107_
                                                      (lambda (_g3308133092_)
                                                        ((lambda (_L33095_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _L33095_
                                       (cons _L32703_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _L33066_ '()))
                                                   '())))
                                 (cons _K32685_ (cons _E32686_ '()))))))
                 _g3308133092_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42199
                                                      (let ((_e33111_
                                                             (gx#stx-e
                                                              _L33066_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e33111_))
                        (let () (declare (not safe)) (keyword? _e33111_))
                        (let () (declare (not safe)) (__immediate? _e33111_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e33111_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g3307933107_ __tmp42199))))
                                           (___kont4103841039_
                                            (lambda (_L32986_ _L32988_)
                                              (let* ((_g3300433012_
                                                      (lambda (_g3300533008_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3300533008_)))
                                                     (_g3300333031_
                                                      (lambda (_g3300533016_)
                                                        ((lambda (_L33019_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _L33019_
                                             (cons (cons _L32988_
                                                         (cons _L32703_ '()))
                                                   '()))
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (_generate131437_
                                          _L33019_
                                          _L32986_
                                          _K32685_
                                          _E32686_))
                                       '())))))
                 _g3300533016_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42200
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3300333031_ __tmp42200))))
                                           (___kont4104041041_
                                            (lambda (_L32928_)
                                              (cons 'let
                                                    (cons (cons (cons _L32928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L32703_ '()))
                        '())
                  (cons _K32685_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4104241043_
                                            (lambda () _K32685_)))
                                       (if (gx#stx-pair? ___stx4100941010_)
                                           (let ((_e3273634156_
                                                  (gx#syntax-e
                                                   ___stx4100941010_)))
                                             (let ((_tl3273434163_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3273634156_)))
                                                   (_hd3273534160_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3273634156_))))
                                               (if (gx#stx-datum?
                                                    _hd3273534160_)
                                                   (let ((_e3273734166_
                                                          (gx#stx-e
                                                           _hd3273534160_)))
                                                     (if (equal? _e3273734166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl3273434163_)
                     (let ((_e3274034170_ (gx#syntax-e _tl3273434163_)))
                       (let ((_tl3273834177_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3274034170_)))
                             (_hd3273934174_
                              (let ()
                                (declare (not safe))
                                (##car _e3274034170_))))
                         (___kont4101241013_ _tl3273834177_ _hd3273934174_)))
                     (let () (declare (not safe)) (_g3273032872_)))
                 (if (equal? _e3273734166_ 'and:)
                     (___kont4101441015_ _tl3273434163_)
                     (if (equal? _e3273734166_ 'or:)
                         (___kont4101641017_ _tl3273434163_)
                         (if (equal? _e3273734166_ 'not:)
                             (if (gx#stx-pair? _tl3273434163_)
                                 (let ((_e3275833939_
                                        (gx#syntax-e _tl3273434163_)))
                                   (let ((_tl3275633946_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3275833939_)))
                                         (_hd3275733943_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3275833939_))))
                                     (if (gx#stx-null? _tl3275633946_)
                                         (___kont4101841019_ _hd3275733943_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3273032872_)))))
                                 (let () (declare (not safe)) (_g3273032872_)))
                             (if (equal? _e3273734166_ 'cons:)
                                 (if (gx#stx-pair? _tl3273434163_)
                                     (let ((_e3276733811_
                                            (gx#syntax-e _tl3273434163_)))
                                       (let ((_tl3276533818_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3276733811_)))
                                             (_hd3276633815_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3276733811_))))
                                         (if (gx#stx-pair? _tl3276533818_)
                                             (let ((_e3277033821_
                                                    (gx#syntax-e
                                                     _tl3276533818_)))
                                               (let ((_tl3276833828_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3277033821_)))
                                                     (_hd3276933825_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3277033821_))))
                                                 (if (gx#stx-null?
                                                      _tl3276833828_)
                                                     (___kont4102041021_
                                                      _hd3276933825_
                                                      _hd3276633815_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3273032872_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3273032872_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3273032872_)))
                                 (if (equal? _e3273734166_ 'null:)
                                     (if (gx#stx-null? _tl3273434163_)
                                         (___kont4102241023_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3273032872_)))
                                     (if (equal? _e3273734166_ 'splice:)
                                         (if (gx#stx-pair? _tl3273434163_)
                                             (let ((_e3278333727_
                                                    (gx#syntax-e
                                                     _tl3273434163_)))
                                               (let ((_tl3278133734_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3278333727_)))
                                                     (_hd3278233731_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3278333727_))))
                                                 (if (gx#stx-pair?
                                                      _tl3278133734_)
                                                     (let ((_e3278633737_
                                                            (gx#syntax-e
                                                             _tl3278133734_)))
                                                       (let ((_tl3278433744_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3278633737_)))
                     (_hd3278533741_
                      (let () (declare (not safe)) (##car _e3278633737_))))
                 (if (gx#stx-null? _tl3278433744_)
                     (___kont4102441025_ _hd3278533741_ _hd3278233731_)
                     (let () (declare (not safe)) (_g3273032872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3273032872_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3273032872_)))
                                         (if (equal? _e3273734166_ 'box:)
                                             (if (gx#stx-pair? _tl3273434163_)
                                                 (let ((_e3279433651_
                                                        (gx#syntax-e
                                                         _tl3273434163_)))
                                                   (let ((_tl3279233658_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3279433651_)))
                                                         (_hd3279333655_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3279433651_))))
                                                     (if (gx#stx-null?
                                                          _tl3279233658_)
                                                         (___kont4102641027_
                                                          _hd3279333655_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3273032872_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3273032872_)))
                                             (if (equal? _e3273734166_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl3273434163_)
                                                     (let ((_e3280233456_
                                                            (gx#syntax-e
                                                             _tl3273434163_)))
                                                       (let ((_tl3280033463_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3280233456_)))
                     (_hd3280133460_
                      (let () (declare (not safe)) (##car _e3280233456_))))
                 (if (gx#stx-null? _tl3280033463_)
                     (___kont4102841029_ _hd3280133460_)
                     (let () (declare (not safe)) (_g3273032872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3273032872_)))
                                                 (if (equal? _e3273734166_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl3273434163_)
                                                         (let ((_e3281033261_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3273434163_)))
                   (let ((_tl3280833268_
                          (let () (declare (not safe)) (##cdr _e3281033261_)))
                         (_hd3280933265_
                          (let () (declare (not safe)) (##car _e3281033261_))))
                     (if (gx#stx-null? _tl3280833268_)
                         (___kont4103041031_ _hd3280933265_)
                         (let () (declare (not safe)) (_g3273032872_)))))
                 (let () (declare (not safe)) (_g3273032872_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e3273734166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl3273434163_)
                     (let ((_e3281933202_ (gx#syntax-e _tl3273434163_)))
                       (let ((_tl3281733209_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3281933202_)))
                             (_hd3281833206_
                              (let ()
                                (declare (not safe))
                                (##car _e3281933202_))))
                         (if (gx#stx-pair? _tl3281733209_)
                             (let ((_e3282233212_
                                    (gx#syntax-e _tl3281733209_)))
                               (let ((_tl3282033219_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3282233212_)))
                                     (_hd3282133216_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3282233212_))))
                                 (if (gx#stx-null? _tl3282033219_)
                                     (___kont4103241033_
                                      _hd3282133216_
                                      _hd3281833206_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3273032872_)))))
                             (let () (declare (not safe)) (_g3273032872_)))))
                     (let () (declare (not safe)) (_g3273032872_)))
                 (if (equal? _e3273734166_ 'class:)
                     (if (gx#stx-pair? _tl3273434163_)
                         (let ((_e3283133143_ (gx#syntax-e _tl3273434163_)))
                           (let ((_tl3282933150_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3283133143_)))
                                 (_hd3283033147_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3283133143_))))
                             (if (gx#stx-pair? _tl3282933150_)
                                 (let ((_e3283433153_
                                        (gx#syntax-e _tl3282933150_)))
                                   (let ((_tl3283233160_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3283433153_)))
                                         (_hd3283333157_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3283433153_))))
                                     (if (gx#stx-null? _tl3283233160_)
                                         (___kont4103441035_
                                          _hd3283333157_
                                          _hd3283033147_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3273032872_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g3273032872_)))))
                         (let () (declare (not safe)) (_g3273032872_)))
                     (if (equal? _e3273734166_ 'datum:)
                         (if (gx#stx-pair? _tl3273434163_)
                             (let ((_e3284233056_
                                    (gx#syntax-e _tl3273434163_)))
                               (let ((_tl3284033063_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3284233056_)))
                                     (_hd3284133060_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3284233056_))))
                                 (if (gx#stx-null? _tl3284033063_)
                                     (___kont4103641037_ _hd3284133060_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3273032872_)))))
                             (let () (declare (not safe)) (_g3273032872_)))
                         (if (equal? _e3273734166_ 'apply:)
                             (if (gx#stx-pair? _tl3273434163_)
                                 (let ((_e3285132966_
                                        (gx#syntax-e _tl3273434163_)))
                                   (let ((_tl3284932973_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3285132966_)))
                                         (_hd3285032970_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3285132966_))))
                                     (if (gx#stx-pair? _tl3284932973_)
                                         (let ((_e3285432976_
                                                (gx#syntax-e _tl3284932973_)))
                                           (let ((_tl3285232983_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e3285432976_)))
                                                 (_hd3285332980_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e3285432976_))))
                                             (if (gx#stx-null? _tl3285232983_)
                                                 (___kont4103841039_
                                                  _hd3285332980_
                                                  _hd3285032970_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3273032872_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3273032872_)))))
                                 (let () (declare (not safe)) (_g3273032872_)))
                             (if (equal? _e3273734166_ 'var:)
                                 (if (gx#stx-pair? _tl3273434163_)
                                     (let ((_e3286232918_
                                            (gx#syntax-e _tl3273434163_)))
                                       (let ((_tl3286032925_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3286232918_)))
                                             (_hd3286132922_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3286232918_))))
                                         (if (gx#stx-null? _tl3286032925_)
                                             (___kont4104041041_
                                              _hd3286132922_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3273032872_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3273032872_)))
                                 (if (equal? _e3273734166_ 'any:)
                                     (if (gx#stx-null? _tl3273434163_)
                                         (___kont4104241043_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3273032872_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g3273032872_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3273032872_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g3273032872_)))))))
                               _g3268932700_))))
                      (declare (not safe))
                      (_g3268734465_ _tgt32682_))))
                 (_generate-splice31439_
                  (lambda (_tgt32054_ _hd32056_ _rest32057_ _K32058_ _E32059_)
                    (let* ((_g3206132078_
                            (lambda (_g3206232074_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3206232074_)))
                           (_g3206032678_
                            (lambda (_g3206232082_)
                              (if (gx#stx-pair/null? _g3206232082_)
                                  (let ((_g42201_
                                         (gx#syntax-split-splice
                                          _g3206232082_
                                          '0)))
                                    (begin
                                      (let ((_g42202_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42201_)
                                                   (##vector-length _g42201_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42202_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42202_)))
                                      (let ((_target3206432085_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42201_ 0)))
                                            (_tl3206632088_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42201_ 1))))
                                        (if (gx#stx-null? _tl3206632088_)
                                            (letrec ((_loop3206732091_
                                                      (lambda (_hd3206532095_
                                                               _var3207132098_)
                                                        (if (gx#stx-pair?
                                                             _hd3206532095_)
                                                            (let ((_e3206832101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd3206532095_)))
                      (let ((_lp-hd3206932105_
                             (let ()
                               (declare (not safe))
                               (##car _e3206832101_)))
                            (_lp-tl3207032108_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3206832101_))))
                        (let ((__tmp42203
                               (cons _lp-hd3206932105_ _var3207132098_)))
                          (declare (not safe))
                          (_loop3206732091_ _lp-tl3207032108_ __tmp42203))))
                    (let ((_var3207232111_ (reverse _var3207132098_)))
                      ((lambda (_L32115_)
                         (let ()
                           (let* ((_g3213132148_
                                   (lambda (_g3213232144_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3213232144_)))
                                  (_g3213032666_
                                   (lambda (_g3213232152_)
                                     (if (gx#stx-pair/null? _g3213232152_)
                                         (let ((_g42204_
                                                (gx#syntax-split-splice
                                                 _g3213232152_
                                                 '0)))
                                           (begin
                                             (let ((_g42205_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g42204_)
                                                          (##vector-length
                                                           _g42204_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g42205_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g42205_)))
                                             (let ((_target3213432155_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42204_
                                                       0)))
                                                   (_tl3213632158_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42204_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl3213632158_)
                                                   (letrec ((_loop3213732161_
                                                             (lambda (_hd3213532165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r3214132168_)
                       (if (gx#stx-pair? _hd3213532165_)
                           (let ((_e3213832171_ (gx#syntax-e _hd3213532165_)))
                             (let ((_lp-hd3213932175_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3213832171_)))
                                   (_lp-tl3214032178_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3213832171_))))
                               (let ((__tmp42206
                                      (cons _lp-hd3213932175_
                                            _var-r3214132168_)))
                                 (declare (not safe))
                                 (_loop3213732161_
                                  _lp-tl3214032178_
                                  __tmp42206))))
                           (let ((_var-r3214232181_
                                  (reverse _var-r3214132168_)))
                             ((lambda (_L32185_)
                                (let ()
                                  (let* ((_g3220232219_
                                          (lambda (_g3220332215_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3220332215_)))
                                         (_g3220132654_
                                          (lambda (_g3220332223_)
                                            (if (gx#stx-pair/null?
                                                 _g3220332223_)
                                                (let ((_g42207_
                                                       (gx#syntax-split-splice
                                                        _g3220332223_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42207_)
                         (##vector-length _g42207_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42208_ 2)))
                  (error "Context expects 2 values" _g42208_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3220532226_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42207_
                                                              0)))
                                                          (_tl3220732229_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42207_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl3220732229_)
                                                          (letrec ((_loop3220832232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3220632236_ _init3221232239_)
                              (if (gx#stx-pair? _hd3220632236_)
                                  (let ((_e3220932242_
                                         (gx#syntax-e _hd3220632236_)))
                                    (let ((_lp-hd3221032246_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3220932242_)))
                                          (_lp-tl3221132249_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3220932242_))))
                                      (let ((__tmp42209
                                             (cons _lp-hd3221032246_
                                                   _init3221232239_)))
                                        (declare (not safe))
                                        (_loop3220832232_
                                         _lp-tl3221132249_
                                         __tmp42209))))
                                  (let ((_init3221332252_
                                         (reverse _init3221232239_)))
                                    ((lambda (_L32256_)
                                       (let ()
                                         (let* ((_g3227332281_
                                                 (lambda (_g3227432277_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3227432277_)))
                                                (_g3227232650_
                                                 (lambda (_g3227432285_)
                                                   ((lambda (_L32288_)
                                                      (let ()
                                                        (let* ((_g3230132309_
                                                                (lambda (_g3230232305_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3230232305_)))
                       (_g3230032646_
                        (lambda (_g3230232313_)
                          ((lambda (_L32316_)
                             (let ()
                               (let* ((_g3232932337_
                                       (lambda (_g3233032333_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3233032333_)))
                                      (_g3232832642_
                                       (lambda (_g3233032341_)
                                         ((lambda (_L32344_)
                                            (let ()
                                              (let* ((_g3235732365_
                                                      (lambda (_g3235832361_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3235832361_)))
                                                     (_g3235632638_
                                                      (lambda (_g3235832369_)
                                                        ((lambda (_L32372_)
                                                           (let ()
                                                             (let* ((_g3238532393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3238632389_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3238632389_)))
                            (_g3238432634_
                             (lambda (_g3238632397_)
                               ((lambda (_L32400_)
                                  (let ()
                                    (let* ((_g3241332421_
                                            (lambda (_g3241432417_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3241432417_)))
                                           (_g3241232630_
                                            (lambda (_g3241432425_)
                                              ((lambda (_L32428_)
                                                 (let ()
                                                   (let* ((_g3244132449_
                                                           (lambda (_g3244232445_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g3244232445_)))
                                                          (_g3244032626_
                                                           (lambda (_g3244232453_)
                                                             ((lambda (_L32456_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g3246932477_
                                  (lambda (_g3247032473_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g3247032473_)))
                                 (_g3246832611_
                                  (lambda (_g3247032481_)
                                    ((lambda (_L32484_)
                                       (let ()
                                         (let* ((_g3249732505_
                                                 (lambda (_g3249832501_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3249832501_)))
                                                (_g3249632599_
                                                 (lambda (_g3249832509_)
                                                   ((lambda (_L32512_)
                                                      (let ()
                                                        (let* ((_g3252532533_
                                                                (lambda (_g3252632529_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3252632529_)))
                       (_g3252432595_
                        (lambda (_g3252632537_)
                          ((lambda (_L32540_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _L32316_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _L32428_
                                         (let ((__tmp42210
                                                (lambda (_g3256232565_
                                                         _g3256332568_)
                                                  (cons _g3256232565_
                                                        _g3256332568_))))
                                           (declare (not safe))
                                           (__foldr1 __tmp42210 '() _L32115_)))
                                   (cons _L32456_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L32372_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _L32400_
                                               (cons _L32428_
                                                     (let ((__tmp42211
                                                            (lambda (_g3256032571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3256132574_)
                      (cons _g3256032571_ _g3256132574_))))
               (declare (not safe))
               (__foldr1 __tmp42211 '() _L32185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _L32540_ '())))
                             '()))
                 (cons (cons _L32344_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L32428_
                                                     (let ((__tmp42212
                                                            (lambda (_g3255832577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3255932580_)
                      (cons _g3255832577_ _g3255932580_))))
               (declare (not safe))
               (__foldr1 __tmp42212 '() _L32185_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _L32428_ '()))
                         (cons (cons _L32372_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _L32428_ '()))
                                           (cons _L32428_
                                                 (let ((__tmp42213
                                                        (lambda (_g3255632583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3255732586_)
                  (cons _g3255632583_ _g3255732586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp42213
                                                    '()
                                                    _L32185_)))))
                               (cons _L32512_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L32344_
                                                         (cons _L32288_
                                                               (let ((__tmp42214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3255432589_ _g3255532592_)
                                (cons _g3255432589_ _g3255532592_))))
                         (declare (not safe))
                         (__foldr1 __tmp42214 '() _L32256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g3252632537_)))
                       (__tmp42215
                        (let ()
                          (declare (not safe))
                          (_generate131437_
                           _L32400_
                           _hd32056_
                           _L32484_
                           _L32512_))))
                  (declare (not safe))
                  (_g3252432595_ __tmp42215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3249832509_)))
                                                (__tmp42216
                                                 (cons _L32316_
                                                       (cons _L32428_
                                                             (let ((__tmp42217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g3260232605_ _g3260332608_)
                              (cons (cons (gx#datum->syntax '#f 'reverse)
                                          (cons _g3260232605_ '()))
                                    _g3260332608_))))
                       (declare (not safe))
                       (__foldr1 __tmp42217 '() _L32185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g3249632599_ __tmp42216))))
                                     _g3247032481_)))
                                 (__tmp42218
                                  (cons _L32344_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##cdr)
                                                    (cons _L32428_ '()))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L32185_
                                                 _L32115_)
                                                (let ((__tmp42219
                                                       (lambda (_g3261432618_
                                                                _g3261532621_
                                                                _g3261632623_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'cons)
                             (cons _g3261532621_ (cons _g3261432618_ '())))
                       _g3261632623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr2
                                                   __tmp42219
                                                   '()
                                                   _L32185_
                                                   _L32115_)))))))
                            (declare (not safe))
                            (_g3246832611_ __tmp42218))))
                      _g3244232453_)))
                  (__tmp42220
                   (let ()
                     (declare (not safe))
                     (_generate131437_
                      _L32428_
                      _rest32057_
                      _K32058_
                      _E32059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g3244032626_
                                                      __tmp42220))))
                                               _g3241432425_)))
                                           (__tmp42221 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g3241232630_ __tmp42221))))
                                _g3238632397_)))
                            (__tmp42222 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g3238432634_ __tmp42222))))
                 _g3235832369_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42223
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g3235632638_ __tmp42223))))
                                          _g3233032341_)))
                                      (__tmp42224 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g3232832642_ __tmp42224))))
                           _g3230232313_)))
                       (__tmp42225 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g3230032646_ __tmp42225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3227432285_))))
                                           (declare (not safe))
                                           (_g3227232650_ _tgt32054_))))
                                     _init3221332252_))))))
                    (let ()
                      (declare (not safe))
                      (_loop3220832232_ _target3220532226_ '())))
                  (let ()
                    (declare (not safe))
                    (_g3220232219_ _g3220332223_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3220232219_
                                                   _g3220332223_)))))
                                         (__tmp42226
                                          (make-list
                                           (gx#stx-length
                                            (let ((__tmp42227
                                                   (lambda (_g3265732660_
                                                            _g3265832663_)
                                                     (cons _g3265732660_
                                                           _g3265832663_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp42227
                                               '()
                                               _L32115_)))
                                           (cons (gx#datum->syntax '#f '@list)
                                                 '()))))
                                    (declare (not safe))
                                    (_g3220132654_ __tmp42226))))
                              _var-r3214232181_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop3213732161_
                                                        _target3213432155_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3213132148_
                                                      _g3213232152_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3213132148_ _g3213232152_)))))
                                  (__tmp42228
                                   (gx#gentemps
                                    (let ((__tmp42229
                                           (lambda (_g3266932672_
                                                    _g3267032675_)
                                             (cons _g3266932672_
                                                   _g3267032675_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp42229 '() _L32115_)))))
                             (declare (not safe))
                             (_g3213032666_ __tmp42228))))
                       _var3207232111_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop3206732091_
                                                 _target3206432085_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g3206132078_
                                               _g3206232082_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3206132078_ _g3206232082_)))))
                           (__tmp42230
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/match[1]#match-pattern-vars|
                               _hd32056_))))
                      (declare (not safe))
                      (_g3206032678_ __tmp42230))))
                 (_generate-simple-vector31440_
                  (lambda (_tgt31896_
                           _body31898_
                           _start31899_
                           _K31900_
                           _E31901_)
                    (let _recur31903_ ((_rest31906_ _body31898_)
                                       (_off31908_ _start31899_))
                      (let* ((___stx4136741368_ _rest31906_)
                             (_g3191131923_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4136741368_))))
                        (let ((___kont4137041371_
                               (lambda (_L31951_ _L31953_)
                                 (let* ((_g3196831987_
                                         (lambda (_g3196931983_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3196931983_)))
                                        (_g3196732046_
                                         (lambda (_g3196931991_)
                                           (if (gx#stx-pair? _g3196931991_)
                                               (let ((_e3197531994_
                                                      (gx#syntax-e
                                                       _g3196931991_)))
                                                 (let ((_hd3197431998_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3197531994_)))
                                                       (_tl3197332001_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3197531994_))))
                                                   (if (gx#stx-pair?
                                                        _tl3197332001_)
                                                       (let ((_e3197832004_
                                                              (gx#syntax-e
                                                               _tl3197332001_)))
                                                         (let ((_hd3197732008_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3197832004_)))
                       (_tl3197632011_
                        (let () (declare (not safe)) (##cdr _e3197832004_))))
                   (if (gx#stx-pair? _tl3197632011_)
                       (let ((_e3198132014_ (gx#syntax-e _tl3197632011_)))
                         (let ((_hd3198032018_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3198132014_)))
                               (_tl3197932021_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3198132014_))))
                           (if (gx#stx-null? _tl3197932021_)
                               ((lambda (_L32024_ _L32026_ _L32027_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _L32027_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L32026_ (cons _L32024_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (let ((__tmp42231
                                                             (let ((__tmp42232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##fx+ _off31908_ '1))))
                       (declare (not safe))
                       (_recur31903_ _L31951_ __tmp42232))))
                (declare (not safe))
                (_generate131437_ _L32027_ _L31953_ __tmp42231 _E31901_))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _hd3198032018_
                                _hd3197732008_
                                _hd3197431998_)
                               (let ()
                                 (declare (not safe))
                                 (_g3196831987_ _g3196931991_)))))
                       (let ()
                         (declare (not safe))
                         (_g3196831987_ _g3196931991_)))))
               (let () (declare (not safe)) (_g3196831987_ _g3196931991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3196831987_
                                                  _g3196931991_)))))
                                        (__tmp42233
                                         (list (gx#genident 'e)
                                               _tgt31896_
                                               _off31908_)))
                                   (declare (not safe))
                                   (_g3196732046_ __tmp42233))))
                              (___kont4137241373_ (lambda () _K31900_)))
                          (if (gx#stx-pair? ___stx4136741368_)
                              (let ((_e3191731941_
                                     (gx#syntax-e ___stx4136741368_)))
                                (let ((_tl3191531948_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3191731941_)))
                                      (_hd3191631945_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3191731941_))))
                                  (___kont4137041371_
                                   _tl3191531948_
                                   _hd3191631945_)))
                              (___kont4137241373_)))))))
                 (_generate-list-vector31441_
                  (lambda (_tgt31788_
                           _body31790_
                           _->list31791_
                           _K31792_
                           _E31793_)
                    (let* ((_g3179531803_
                            (lambda (_g3179631799_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3179631799_)))
                           (_g3179431892_
                            (lambda (_g3179631807_)
                              ((lambda (_L31810_)
                                 (let ()
                                   (let* ((_g3182231830_
                                           (lambda (_g3182331826_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3182331826_)))
                                          (_g3182131888_
                                           (lambda (_g3182331834_)
                                             ((lambda (_L31837_)
                                                (let ()
                                                  (let* ((_g3185031858_
                                                          (lambda (_g3185131854_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g3185131854_)))
                                                         (_g3184931880_
                                                          (lambda (_g3185131862_)
                                                            ((lambda (_L31865_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _L31810_
                                                   (cons _L31865_ '()))
                                             '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (_generate131437_
                                                _L31810_
                                                _body31790_
                                                _K31792_
                                                _E31793_))
                                             '()))))))
                     _g3185131862_)))
                 (__tmp42234
                  (let ((_$e31884_ _->list31791_))
                    (if (eq? 'values->list _$e31884_)
                        (cons (gx#datum->syntax '#f 'values->list)
                              (cons _L31837_ '()))
                        (if (eq? 'vector->list _$e31884_)
                            (cons (gx#datum->syntax '#f '##vector->list)
                                  (cons _L31837_ '()))
                            (if (eq? 'struct->list _$e31884_)
                                (cons (gx#datum->syntax '#f '##cdr)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##structure->list)
                                                  (cons _L31837_ '()))
                                            '()))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx31430_
                                 _->list31791_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g3184931880_
                                                     __tmp42234))))
                                              _g3182331834_))))
                                     (declare (not safe))
                                     (_g3182131888_ _tgt31788_))))
                               _g3179631807_)))
                           (__tmp42235 (gx#genident 'e)))
                      (declare (not safe))
                      (_g3179431892_ __tmp42235))))
                 (_generate-struct31442_
                  (lambda (_info31659_
                           _tgt31661_
                           _body31662_
                           _K31663_
                           _E31664_)
                    (let* ((___stx4138341384_ _body31662_)
                           (_g3166731690_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4138341384_))))
                      (let ((___kont4138641387_
                             (lambda (_L31767_)
                               (let ((_fields31781_
                                      (let ()
                                        (declare (not safe))
                                        (_struct-field-accessors31444_
                                         _info31659_))))
                                 (cons 'if
                                       (cons (cons (let ((__obj42137
                                                          _info31659_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj42137
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj42137
                                                            '12
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj42137
                                                          'predicate)))
                                                   (cons _tgt31661_ '()))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (_generate-simple-struct-body31443_
                                                      _info31659_
                                                      _tgt31661_
                                                      _L31767_
                                                      _K31663_
                                                      _E31664_))
                                                   (cons _E31664_ '())))))))
                            (___kont4138841389_
                             (lambda (_L31721_)
                               (cons 'if
                                     (cons (cons (let ((__obj42138
                                                        _info31659_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj42138
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj42138
                                                          '12
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj42138
                                                        'predicate)))
                                                 (cons _tgt31661_ '()))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_generate-list-vector31441_
                                                    _tgt31661_
                                                    _L31721_
                                                    'struct->list
                                                    _K31663_
                                                    _E31664_))
                                                 (cons _E31664_ '())))))))
                        (if (gx#stx-pair? ___stx4138341384_)
                            (let ((_e3167231743_
                                   (gx#syntax-e ___stx4138341384_)))
                              (let ((_tl3167031750_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3167231743_)))
                                    (_hd3167131747_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3167231743_))))
                                (if (gx#stx-datum? _hd3167131747_)
                                    (let ((_e3167331753_
                                           (gx#stx-e _hd3167131747_)))
                                      (if (equal? _e3167331753_ 'simple:)
                                          (if (gx#stx-pair? _tl3167031750_)
                                              (let ((_e3167631757_
                                                     (gx#syntax-e
                                                      _tl3167031750_)))
                                                (let ((_tl3167431764_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3167631757_)))
                                                      (_hd3167531761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3167631757_))))
                                                  (if (gx#stx-null?
                                                       _tl3167431764_)
                                                      (___kont4138641387_
                                                       _hd3167531761_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3166731690_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3166731690_)))
                                          (if (equal? _e3167331753_ 'list:)
                                              (if (gx#stx-pair? _tl3167031750_)
                                                  (let ((_e3168431711_
                                                         (gx#syntax-e
                                                          _tl3167031750_)))
                                                    (let ((_tl3168231718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3168431711_)))
                                                          (_hd3168331715_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3168431711_))))
                                                      (if (gx#stx-null?
                                                           _tl3168231718_)
                                                          (___kont4138841389_
                                                           _hd3168331715_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3166731690_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3166731690_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3166731690_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3166731690_)))))
                            (let () (declare (not safe)) (_g3166731690_)))))))
                 (_generate-simple-struct-body31443_
                  (lambda (_info31579_
                           _tgt31581_
                           _body31582_
                           _K31583_
                           _E31584_)
                    (let _recur31586_ ((_rest31589_ _body31582_)
                                       (_fields31591_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors31444_
                                           _info31579_))))
                      (let* ((___stx4143341434_ _rest31589_)
                             (_g3159431606_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4143341434_))))
                        (let ((___kont4143641437_
                               (lambda (_L31634_ _L31636_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields31591_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx31430_
                                      _info31579_
                                      (let ((__obj42139 _info31579_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj42139
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj42139
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj42139
                                             'name))))
                                     (let ((_$tgt31651_ (gx#genident 'e))
                                           (_getf31653_ (car _fields31591_)))
                                       (cons 'let
                                             (cons (cons (cons _$tgt31651_
                                                               (cons (cons _getf31653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _tgt31581_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (let ((__tmp42236
                                                                (let ((__tmp42237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _fields31591_)))
                          (declare (not safe))
                          (_recur31586_ _L31634_ __tmp42237))))
                   (declare (not safe))
                   (_generate131437_ _$tgt31651_ _L31636_ __tmp42236 _E31584_))
                 '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4143841439_ (lambda () _K31583_)))
                          (if (gx#stx-pair? ___stx4143341434_)
                              (let ((_e3160031624_
                                     (gx#syntax-e ___stx4143341434_)))
                                (let ((_tl3159831631_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3160031624_)))
                                      (_hd3159931628_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3160031624_))))
                                  (___kont4143641437_
                                   _tl3159831631_
                                   _hd3159931628_)))
                              (___kont4143841439_)))))))
                 (_struct-field-accessors31444_
                  (lambda (_info31560_)
                    (let _recur31563_ ((_next31566_ (cons _info31560_ '())))
                      (if (let () (declare (not safe)) (null? _next31566_))
                          '()
                          (let ((_ti31569_ (car _next31566_)))
                            (append (let ((__tmp42238
                                           (map gx#syntax-local-value
                                                (let ((__obj42140 _ti31569_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj42140
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj42140
                                                         '3
                                                         '#f
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core/mop~MOP-2#class-type-info::t
                                                       __obj42140
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur31563_ __tmp42238))
                                    (map (lambda (_slot31572_)
                                           (let ((_$e31575_
                                                  (let ((__tmp42239
                                                         (let ((__obj42141
                                                                _ti31569_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj42141
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj42141 '15 '#f '#f))
                       (class-slot-ref
                        gerbil/core/mop~MOP-2#class-type-info::t
                        __obj42141
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (agetq__0
                                                     _slot31572_
                                                     __tmp42239))))
                                             (if _$e31575_
                                                 _$e31575_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx31430_
                                                  _info31560_
                                                  _slot31572_))))
                                         (let ((__obj42142 _ti31569_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj42142
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj42142
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj42142
                                                'slots))))))))))
                 (_generate-class31445_
                  (lambda (_info31553_
                           _tgt31555_
                           _body31556_
                           _K31557_
                           _E31558_)
                    (cons 'if
                          (cons (cons (let ((__obj42143 _info31553_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj42143
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj42143
                                               '12
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj42143
                                             'predicate)))
                                      (cons _tgt31555_ '()))
                                (cons (let ()
                                        (declare (not safe))
                                        (_generate-class-body31446_
                                         _info31553_
                                         _tgt31555_
                                         _body31556_
                                         _K31557_
                                         _E31558_))
                                      (cons _E31558_ '()))))))
                 (_generate-class-body31446_
                  (lambda (_info31448_
                           _tgt31450_
                           _body31451_
                           _K31452_
                           _E31453_)
                    (let _recur31455_ ((_rest31458_ _body31451_))
                      (let* ((___stx4144941450_ _rest31458_)
                             (_g3146231478_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4144941450_))))
                        (let ((___kont4145241453_
                               (lambda (_L31516_ _L31518_ _L31519_)
                                 (let ((_$e31539_
                                        (let ((__tmp42241
                                               (let ((__tmp42242
                                                      (keyword->string
                                                       (gx#stx-e _L31519_))))
                                                 (declare (not safe))
                                                 (##string->symbol
                                                  __tmp42242)))
                                              (__tmp42240
                                               (let ((__obj42144 _info31448_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj42144
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj42144
                                                        '15
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj42144
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (agetq__0 __tmp42241 __tmp42240))))
                                   (if _$e31539_
                                       ((lambda (_getf31543_)
                                          (let ((_$tgt31546_ (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _$tgt31546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _getf31543_ (cons _tgt31450_ '()))
                                  '()))
                      '())
                (cons (let ((__tmp42243
                             (let ()
                               (declare (not safe))
                               (_recur31455_ _L31516_))))
                        (declare (not safe))
                        (_generate131437_
                         _$tgt31546_
                         _L31518_
                         __tmp42243
                         _E31453_))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e31539_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx31430_
                                        _info31448_
                                        _L31519_)))))
                              (___kont4145441455_ (lambda () _K31452_)))
                          (if (gx#stx-pair? ___stx4144941450_)
                              (let ((_e3146931496_
                                     (gx#syntax-e ___stx4144941450_)))
                                (let ((_tl3146731503_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3146931496_)))
                                      (_hd3146831500_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3146931496_))))
                                  (if (gx#stx-pair? _tl3146731503_)
                                      (let ((_e3147231506_
                                             (gx#syntax-e _tl3146731503_)))
                                        (let ((_tl3147031513_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3147231506_)))
                                              (_hd3147131510_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3147231506_))))
                                          (___kont4145241453_
                                           _tl3147031513_
                                           _hd3147131510_
                                           _hd3146831500_)))
                                      (___kont4145441455_))))
                              (___kont4145441455_))))))))
          (let ()
            (declare (not safe))
            (_generate131437_ _tgt31432_ _ptree31433_ _K31434_ _E31435_)))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_stx30326_ _tgt-lst30328_ _clauses30329_)
        (letrec ((_parse-body30331_
                  (lambda (_hd-len31252_)
                    (let _lp31255_ ((_rest31258_ _clauses30329_)
                                    (_r31260_ '()))
                      (let* ((___stx4149941500_ _rest31258_)
                             (_g3126331275_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4149941500_))))
                        (let ((___kont4150241503_
                               (lambda (_L31303_ _L31305_)
                                 (let* ((___stx4147141472_ _L31305_)
                                        (_g3132231338_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4147141472_))))
                                   (let ((___kont4147441475_
                                          (lambda (_L31407_)
                                            (if (gx#stx-null? _L31303_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin) _L31407_)
                                 (let ((_$e31418_ (gx#stx-source _L31305_)))
                                   (if _$e31418_
                                       _$e31418_
                                       (gx#stx-source _stx30326_))))
                                '())))
              _r31260_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx30326_
                                                 _L31305_))))
                                         (___kont4147641477_
                                          (lambda (_L31366_ _L31368_)
                                            (let ((__tmp42244
                                                   (cons (cons (gx#genident
                                                                'try-match)
                                                               (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3138031382_)
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/match[1]#parse-match-pattern__%|
                                   _g3138031382_
                                   _stx30326_)))
                              _L31368_)
                             (cons (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'begin)
                                          _L31366_)
                                    (let ((_$e31386_ (gx#stx-source _L31305_)))
                                      (if _$e31386_
                                          _$e31386_
                                          (gx#stx-source _stx30326_))))
                                   '())))
                 _r31260_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_lp31255_
                                               _L31303_
                                               __tmp42244))))
                                         (___kont4147841479_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx30326_
                                             _L31305_))))
                                     (let* ((___match4149641497_
                                             (lambda (_e3133231356_
                                                      _hd3133131360_
                                                      _tl3133031363_)
                                               (let ((_L31366_ _tl3133031363_)
                                                     (_L31368_ _hd3133131360_))
                                                 (if (and (gx#stx-list?
                                                           _L31368_)
                                                          (fx= (gx#stx-length
                                                                _L31368_)
                                                               _hd-len31252_)
                                                          (gx#stx-list?
                                                           _L31366_)
                                                          (let ((__tmp42245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L31366_)))
                    (declare (not safe))
                    (not __tmp42245)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4147641477_
                                                      _L31366_
                                                      _L31368_)
                                                     (___kont4147841479_)))))
                                            (___match4149041491_
                                             (lambda (_e3132731397_
                                                      _hd3132631401_
                                                      _tl3132531404_)
                                               (let ((_L31407_ _tl3132531404_))
                                                 (if (and (gx#stx-list?
                                                           _L31407_)
                                                          (let ((__tmp42246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L31407_)))
                    (declare (not safe))
                    (not __tmp42246)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4147441475_
                                                      _L31407_)
                                                     (___match4149641497_
                                                      _e3132731397_
                                                      _hd3132631401_
                                                      _tl3132531404_))))))
                                       (if (gx#stx-pair? ___stx4147141472_)
                                           (let ((_e3132731397_
                                                  (gx#syntax-e
                                                   ___stx4147141472_)))
                                             (let ((_tl3132531404_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3132731397_)))
                                                   (_hd3132631401_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3132731397_))))
                                               (if (gx#identifier?
                                                    _hd3132631401_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g42247_|
                                                        _hd3132631401_)
                                                       (___match4149041491_
                                                        _e3132731397_
                                                        _hd3132631401_
                                                        _tl3132531404_)
                                                       (___match4149641497_
                                                        _e3132731397_
                                                        _hd3132631401_
                                                        _tl3132531404_))
                                                   (___match4149641497_
                                                    _e3132731397_
                                                    _hd3132631401_
                                                    _tl3132531404_))))
                                           (___kont4147841479_)))))))
                              (___kont4150441505_ (lambda () _r31260_)))
                          (if (gx#stx-pair? ___stx4149941500_)
                              (let ((_e3126931293_
                                     (gx#syntax-e ___stx4149941500_)))
                                (let ((_tl3126731300_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3126931293_)))
                                      (_hd3126831297_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3126931293_))))
                                  (___kont4150241503_
                                   _tl3126731300_
                                   _hd3126831297_)))
                              (___kont4150441505_)))))))
                 (_generate-body30333_
                  (lambda (_body31037_)
                    (let* ((_g3104031048_
                            (lambda (_g3104131044_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3104131044_)))
                           (_g3103931248_
                            (lambda (_g3104131052_)
                              ((lambda (_L31055_)
                                 (let ()
                                   (let* ((_g3106731084_
                                           (lambda (_g3106831080_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3106831080_)))
                                          (_g3106631244_
                                           (lambda (_g3106831088_)
                                             (if (gx#stx-pair/null?
                                                  _g3106831088_)
                                                 (let ((_g42248_
                                                        (gx#syntax-split-splice
                                                         _g3106831088_
                                                         '0)))
                                                   (begin
                                                     (let ((_g42249_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g42248_)
                          (##vector-length _g42248_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g42249_ 2)))
                   (error "Context expects 2 values" _g42249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3107031091_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42248_
                                                               0)))
                                                           (_tl3107231094_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42248_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl3107231094_)
                                                           (letrec ((_loop3107331097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3107131101_ _target3107731104_)
                               (if (gx#stx-pair? _hd3107131101_)
                                   (let ((_e3107431107_
                                          (gx#syntax-e _hd3107131101_)))
                                     (let ((_lp-hd3107531111_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3107431107_)))
                                           (_lp-tl3107631114_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3107431107_))))
                                       (let ((__tmp42250
                                              (cons _lp-hd3107531111_
                                                    _target3107731104_)))
                                         (declare (not safe))
                                         (_loop3107331097_
                                          _lp-tl3107631114_
                                          __tmp42250))))
                                   (let ((_target3107831117_
                                          (reverse _target3107731104_)))
                                     ((lambda (_L31121_)
                                        (let ()
                                          (let* ((_g3113831146_
                                                  (lambda (_g3113931142_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3113931142_)))
                                                 (_g3113731232_
                                                  (lambda (_g3113931150_)
                                                    ((lambda (_L31153_)
                                                       (let ()
                                                         (let* ((_g3116631174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3116731170_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3116731170_)))
                        (_g3116531228_
                         (lambda (_g3116731178_)
                           ((lambda (_L31181_)
                              (let ()
                                (let* ((_g3119431202_
                                        (lambda (_g3119531198_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3119531198_)))
                                       (_g3119331224_
                                        (lambda (_g3119531206_)
                                          ((lambda (_L31209_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match)
                                                             (cons _L31209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g3119531206_)))
                                       (__tmp42251
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _L31055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L31153_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L31181_ '())))
                                         (gx#stx-source _stx30326_))))
                                  (declare (not safe))
                                  (_g3119331224_ __tmp42251))))
                            _g3116731178_)))
                        (__tmp42252
                         (let ((__tmp42253 (cons _L31055_ '())))
                           (declare (not safe))
                           (_generate-clauses30334_ _body31037_ __tmp42253))))
                   (declare (not safe))
                   (_g3116531228_ __tmp42252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3113931150_)))
                                                 (__tmp42254
                                                  (gx#stx-wrap-source
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'error)
                                   (cons '"No clause matching"
                                         (let ((__tmp42255
                                                (lambda (_g3123531238_
                                                         _g3123631241_)
                                                  (cons _g3123531238_
                                                        _g3123631241_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp42255
                                            '()
                                            _L31121_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _stx30326_))))
                                            (declare (not safe))
                                            (_g3113731232_ __tmp42254))))
                                      _target3107831117_))))))
                     (let ()
                       (declare (not safe))
                       (_loop3107331097_ _target3107031091_ '())))
                   (let ()
                     (declare (not safe))
                     (_g3106731084_ _g3106831088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3106731084_
                                                    _g3106831088_))))))
                                     (declare (not safe))
                                     (_g3106631244_ _tgt-lst30328_))))
                               _g3104131052_)))
                           (__tmp42256 (gx#genident 'E)))
                      (declare (not safe))
                      (_g3103931248_ __tmp42256))))
                 (_generate-clauses30334_
                  (lambda (_rest30689_ _E30691_)
                    (let* ((___stx4151541516_ _rest30689_)
                           (_g3069530711_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4151541516_))))
                      (let ((___kont4151841519_
                             (lambda (_L30945_)
                               (let* ((_g3095630974_
                                       (lambda (_g3095730970_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3095730970_)))
                                      (_g3095531029_
                                       (lambda (_g3095730978_)
                                         (if (gx#stx-pair? _g3095730978_)
                                             (let ((_e3096230981_
                                                    (gx#syntax-e
                                                     _g3095730978_)))
                                               (let ((_hd3096130985_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3096230981_)))
                                                     (_tl3096030988_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3096230981_))))
                                                 (if (gx#stx-pair?
                                                      _tl3096030988_)
                                                     (let ((_e3096530991_
                                                            (gx#syntax-e
                                                             _tl3096030988_)))
                                                       (let ((_hd3096430995_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3096530991_)))
                     (_tl3096330998_
                      (let () (declare (not safe)) (##cdr _e3096530991_))))
                 (if (gx#stx-pair? _tl3096330998_)
                     (let ((_e3096831001_ (gx#syntax-e _tl3096330998_)))
                       (let ((_hd3096731005_
                              (let ()
                                (declare (not safe))
                                (##car _e3096831001_)))
                             (_tl3096631008_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3096831001_))))
                         (if (gx#stx-null? _tl3096631008_)
                             ((lambda (_L31011_ _L31013_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L31013_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate130335_
                                                         _L31013_
                                                         _L31011_
                                                         _E30691_))
                                                      _L31011_)
                                                  '()))))
                              _hd3096731005_
                              _hd3096430995_)
                             (let ()
                               (declare (not safe))
                               (_g3095630974_ _g3095730978_)))))
                     (let ()
                       (declare (not safe))
                       (_g3095630974_ _g3095730978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3095630974_
                                                        _g3095730978_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3095630974_
                                                _g3095730978_))))))
                                 (declare (not safe))
                                 (_g3095531029_ _L30945_))))
                            (___kont4152041521_
                             (lambda (_L30739_ _L30741_)
                               (let* ((_g3075430773_
                                       (lambda (_g3075530769_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3075530769_)))
                                      (_g3075330924_
                                       (lambda (_g3075530777_)
                                         (if (gx#stx-pair? _g3075530777_)
                                             (let ((_e3076130780_
                                                    (gx#syntax-e
                                                     _g3075530777_)))
                                               (let ((_hd3076030784_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3076130780_)))
                                                     (_tl3075930787_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3076130780_))))
                                                 (if (gx#stx-pair?
                                                      _tl3075930787_)
                                                     (let ((_e3076430790_
                                                            (gx#syntax-e
                                                             _tl3075930787_)))
                                                       (let ((_hd3076330794_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3076430790_)))
                     (_tl3076230797_
                      (let () (declare (not safe)) (##cdr _e3076430790_))))
                 (if (gx#stx-pair? _tl3076230797_)
                     (let ((_e3076730800_ (gx#syntax-e _tl3076230797_)))
                       (let ((_hd3076630804_
                              (let ()
                                (declare (not safe))
                                (##car _e3076730800_)))
                             (_tl3076530807_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3076730800_))))
                         (if (gx#stx-null? _tl3076530807_)
                             ((lambda (_L30810_ _L30812_ _L30813_)
                                (if (gx#stx-e _L30812_)
                                    (let* ((_g3083030845_
                                            (lambda (_g3083130841_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3083130841_)))
                                           (_g3082930890_
                                            (lambda (_g3083130849_)
                                              (if (gx#stx-pair? _g3083130849_)
                                                  (let ((_e3083630852_
                                                         (gx#syntax-e
                                                          _g3083130849_)))
                                                    (let ((_hd3083530856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3083630852_)))
                                                          (_tl3083430859_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3083630852_))))
                                                      (if (gx#stx-pair?
                                                           _tl3083430859_)
                                                          (let ((_e3083930862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3083430859_)))
                    (let ((_hd3083830866_
                           (let () (declare (not safe)) (##car _e3083930862_)))
                          (_tl3083730869_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3083930862_))))
                      (if (gx#stx-null? _tl3083730869_)
                          ((lambda (_L30872_ _L30874_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L30813_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L30874_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _L30872_ '())))))
                           _hd3083830866_
                           _hd3083530856_)
                          (let ()
                            (declare (not safe))
                            (_g3083030845_ _g3083130849_)))))
                  (let ()
                    (declare (not safe))
                    (_g3083030845_ _g3083130849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3083030845_
                                                     _g3083130849_)))))
                                           (__tmp42257
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate130335_
                                                     _L30812_
                                                     _L30810_
                                                     _E30691_))
                                                  (let ((__tmp42258
                                                         (cons _L30813_ '())))
                                                    (declare (not safe))
                                                    (_generate-clauses30334_
                                                     _L30739_
                                                     __tmp42258)))))
                                      (declare (not safe))
                                      (_g3082930890_ __tmp42257))
                                    (let* ((_g3089430902_
                                            (lambda (_g3089530898_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3089530898_)))
                                           (_g3089330920_
                                            (lambda (_g3089530906_)
                                              ((lambda (_L30909_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L30813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@match-else)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _L30810_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _L30909_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g3089530906_)))
                                           (__tmp42259
                                            (let ((__tmp42260
                                                   (cons _L30813_ '())))
                                              (declare (not safe))
                                              (_generate-clauses30334_
                                               _L30739_
                                               __tmp42260))))
                                      (declare (not safe))
                                      (_g3089330920_ __tmp42259))))
                              _hd3076630804_
                              _hd3076330794_
                              _hd3076030784_)
                             (let ()
                               (declare (not safe))
                               (_g3075430773_ _g3075530777_)))))
                     (let ()
                       (declare (not safe))
                       (_g3075430773_ _g3075530777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3075430773_
                                                        _g3075530777_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3075430773_
                                                _g3075530777_))))))
                                 (declare (not safe))
                                 (_g3075330924_ _L30741_))))
                            (___kont4152241523_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E30691_ '()))))))
                        (if (gx#stx-pair? ___stx4151541516_)
                            (let ((_e3070030935_
                                   (gx#syntax-e ___stx4151541516_)))
                              (let ((_tl3069830942_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3070030935_)))
                                    (_hd3069930939_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3070030935_))))
                                (if (gx#stx-null? _tl3069830942_)
                                    (___kont4151841519_ _hd3069930939_)
                                    (___kont4152041521_
                                     _tl3069830942_
                                     _hd3069930939_))))
                            (___kont4152241523_))))))
                 (_generate130335_
                  (lambda (_clause30337_ _body30339_ _E30340_)
                    (let* ((_g3034230366_
                            (lambda (_g3034330362_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3034330362_)))
                           (_g3034130685_
                            (lambda (_g3034330370_)
                              (if (gx#stx-pair? _g3034330370_)
                                  (let ((_e3034830373_
                                         (gx#syntax-e _g3034330370_)))
                                    (let ((_hd3034730377_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3034830373_)))
                                          (_tl3034630380_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3034830373_))))
                                      (if (gx#stx-pair? _tl3034630380_)
                                          (let ((_e3035130383_
                                                 (gx#syntax-e _tl3034630380_)))
                                            (let ((_hd3035030387_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3035130383_)))
                                                  (_tl3034930390_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3035130383_))))
                                              (if (gx#stx-pair/null?
                                                   _hd3035030387_)
                                                  (let ((_g42261_
                                                         (gx#syntax-split-splice
                                                          _hd3035030387_
                                                          '0)))
                                                    (begin
                                                      (let ((_g42262_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g42261_)
                           (##vector-length _g42261_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g42262_ 2)))
                    (error "Context expects 2 values" _g42262_)))
              (let ((_target3035230393_
                     (let () (declare (not safe)) (##vector-ref _g42261_ 0)))
                    (_tl3035430396_
                     (let () (declare (not safe)) (##vector-ref _g42261_ 1))))
                (if (gx#stx-null? _tl3035430396_)
                    (letrec ((_loop3035530399_
                              (lambda (_hd3035330403_ _var3035930406_)
                                (if (gx#stx-pair? _hd3035330403_)
                                    (let ((_e3035630409_
                                           (gx#syntax-e _hd3035330403_)))
                                      (let ((_lp-hd3035730413_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3035630409_)))
                                            (_lp-tl3035830416_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3035630409_))))
                                        (let ((__tmp42263
                                               (cons _lp-hd3035730413_
                                                     _var3035930406_)))
                                          (declare (not safe))
                                          (_loop3035530399_
                                           _lp-tl3035830416_
                                           __tmp42263))))
                                    (let ((_var3036030419_
                                           (reverse _var3035930406_)))
                                      (if (gx#stx-null? _tl3034930390_)
                                          ((lambda (_L30423_ _L30425_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp42264
                                                       (lambda (_g3044630449_
                                                                _g3044730452_)
                                                         (cons _g3044630449_
                                                               _g3044730452_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp42264
                                                   '()
                                                   _L30423_))
                                                _stx30326_)
                                               (let* ((_g3045530463_
                                                       (lambda (_g3045630459_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3045630459_)))
                                                      (_g3045430557_
                                                       (lambda (_g3045630467_)
                                                         ((lambda (_L30470_)
                                                            (let ()
                                                              (let* ((_g3048330491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3048430487_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3048430487_)))
                             (_g3048230553_
                              (lambda (_g3048430495_)
                                ((lambda (_L30498_)
                                   (let ()
                                     (let* ((_g3051130519_
                                             (lambda (_g3051230515_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3051230515_)))
                                            (_g3051030541_
                                             (lambda (_g3051230523_)
                                               ((lambda (_L30526_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons _L30425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L30526_ '()))
                           (cons _L30470_ '())))
               (gx#stx-source _stx30326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3051230523_)))
                                            (__tmp42265
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons (let ((__tmp42266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3054430547_ _g3054530550_)
                           (cons _g3054430547_ _g3054530550_))))
                    (declare (not safe))
                    (__foldr1 __tmp42266 '() _L30423_))
                  (cons _L30498_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx30326_))))
                                       (declare (not safe))
                                       (_g3051030541_ __tmp42265))))
                                 _g3048430495_))))
                        (declare (not safe))
                        (_g3048230553_ _body30339_))))
                  _g3045630467_)))
              (__tmp42267
               (let _recur30561_ ((_rest30564_ _clause30337_)
                                  (_rest-targets30566_ _tgt-lst30328_))
                 (let* ((___stx4154141542_ _rest30564_)
                        (_g3056930581_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4154141542_))))
                   (let ((___kont4154441545_
                          (lambda (_L30617_ _L30619_)
                            (let* ((_g3063430646_
                                    (lambda (_g3063530642_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g3063530642_)))
                                   (_g3063330677_
                                    (lambda (_g3063530650_)
                                      (if (gx#stx-pair? _g3063530650_)
                                          (let ((_e3064030653_
                                                 (gx#syntax-e _g3063530650_)))
                                            (let ((_hd3063930657_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3064030653_)))
                                                  (_tl3063830660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3064030653_))))
                                              ((lambda (_L30663_ _L30665_)
                                                 (let ((__tmp42268
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur30561_
                                                           _L30617_
                                                           _L30663_))))
                                                   (declare (not safe))
                                                   (|gerbil/core/match[1]#generate-match1|
                                                    _stx30326_
                                                    _L30665_
                                                    _L30619_
                                                    __tmp42268
                                                    _E30340_)))
                                               _tl3063830660_
                                               _hd3063930657_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3063430646_ _g3063530650_))))))
                              (declare (not safe))
                              (_g3063330677_ _rest-targets30566_))))
                         (___kont4154641547_
                          (lambda ()
                            (cons _L30425_
                                  (let ((__tmp42269
                                         (lambda (_g3059130594_ _g3059230597_)
                                           (cons _g3059130594_
                                                 _g3059230597_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp42269 '() _L30423_))))))
                     (if (gx#stx-pair? ___stx4154141542_)
                         (let ((_e3057530607_ (gx#syntax-e ___stx4154141542_)))
                           (let ((_tl3057330614_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3057530607_)))
                                 (_hd3057430611_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3057530607_))))
                             (___kont4154441545_
                              _tl3057330614_
                              _hd3057430611_)))
                         (___kont4154641547_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g3045430557_ __tmp42267))))
                                           _var3036030419_
                                           _hd3034730377_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3034230366_
                                             _g3034330370_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop3035530399_ _target3035230393_ '())))
                    (let ()
                      (declare (not safe))
                      (_g3034230366_ _g3034330370_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3034230366_
                                                     _g3034330370_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3034230366_ _g3034330370_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3034230366_ _g3034330370_)))))
                           (__tmp42270
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core/match[1]#match-pattern-vars|
                                              _clause30337_)))))
                      (declare (not safe))
                      (_g3034130685_ __tmp42270)))))
          (let ((__tmp42271
                 (let ((__tmp42272 (gx#stx-length _tgt-lst30328_)))
                   (declare (not safe))
                   (_parse-body30331_ __tmp42272))))
            (declare (not safe))
            (_generate-body30333_ __tmp42271)))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_stx30228_ _tgt30230_ _clauses30231_)
        (letrec ((_reclause30233_
                  (lambda (_clause30236_)
                    (let* ((___stx4155741558_ _clause30236_)
                           (_g3024130256_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4155741558_))))
                      (let ((___kont4156041561_ (lambda () _clause30236_))
                            (___kont4156241563_
                             (lambda (_L30284_ _L30286_)
                               (gx#stx-wrap-source
                                (cons (cons _L30286_ '()) _L30284_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4156441565_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx30228_
                                _clause30236_))))
                        (if (gx#stx-pair? ___stx4155741558_)
                            (let ((_e3024530308_
                                   (gx#syntax-e ___stx4155741558_)))
                              (let ((_tl3024330315_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3024530308_)))
                                    (_hd3024430312_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3024530308_))))
                                (if (gx#identifier? _hd3024430312_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g42273_|
                                         _hd3024430312_)
                                        (___kont4156041561_)
                                        (___kont4156241563_
                                         _tl3024330315_
                                         _hd3024430312_))
                                    (___kont4156241563_
                                     _tl3024330315_
                                     _hd3024430312_))))
                            (___kont4156441565_)))))))
          (let ((__tmp42275 (cons _tgt30230_ '()))
                (__tmp42274 (gx#stx-map _reclause30233_ _clauses30231_)))
            (declare (not safe))
            (|gerbil/core/match[1]#generate-match*|
             _stx30228_
             __tmp42275
             __tmp42274)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_stx37458_)
        (let* ((___stx4158541586_ _stx37458_)
               (_g3746337492_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4158541586_))))
          (let ((___kont4158841589_
                 (lambda (_L37732_)
                   (let* ((_g3774537753_
                           (lambda (_g3774637749_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3774637749_)))
                          (_g3774437806_
                           (lambda (_g3774637757_)
                             ((lambda (_L37760_)
                                (let ()
                                  (let* ((_g3777237780_
                                          (lambda (_g3777337776_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3777337776_)))
                                         (_g3777137802_
                                          (lambda (_g3777337784_)
                                            ((lambda (_L37787_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L37760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L37787_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3777337784_))))
                                    (_g3777137802_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L37760_ _L37732_))
                                      (gx#stx-source _stx37458_))))))
                              _g3774637757_))))
                     (_g3774437806_ (gx#genident 'e)))))
                (___kont4159041591_
                 (lambda (_L37627_)
                   (let* ((_g3764037648_
                           (lambda (_g3764137644_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3764137644_)))
                          (_g3763937701_
                           (lambda (_g3764137652_)
                             ((lambda (_L37655_)
                                (let ()
                                  (let* ((_g3766737675_
                                          (lambda (_g3766837671_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3766837671_)))
                                         (_g3766637697_
                                          (lambda (_g3766837679_)
                                            ((lambda (_L37682_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _L37655_
                                                               (cons _L37682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3766837679_))))
                                    (_g3766637697_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L37655_ _L37627_))
                                      (gx#stx-source _stx37458_))))))
                              _g3764137652_))))
                     (_g3763937701_ (gx#genident 'args)))))
                (___kont4159241593_
                 (lambda (_L37519_ _L37521_)
                   (let* ((_g3753537543_
                           (lambda (_g3753637539_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3753637539_)))
                          (_g3753437596_
                           (lambda (_g3753637547_)
                             ((lambda (_L37550_)
                                (let ()
                                  (let* ((_g3756237570_
                                          (lambda (_g3756337566_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3756337566_)))
                                         (_g3756137592_
                                          (lambda (_g3756337574_)
                                            ((lambda (_L37577_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L37550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L37521_ '()))
                             '())
                       (cons _L37577_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3756337574_))))
                                    (_g3756137592_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/match[1]#generate-match|
                                        _stx37458_
                                        _L37550_
                                        _L37519_))))))
                              _g3753637547_))))
                     (_g3753437596_ (gx#genident _L37521_))))))
            (let* ((___match4163841639_
                    (lambda (_e3748337499_
                             _hd3748237503_
                             _tl3748137506_
                             _e3748637509_
                             _hd3748537513_
                             _tl3748437516_)
                      (let ((_L37519_ _tl3748437516_)
                            (_L37521_ _hd3748537513_))
                        (if (gx#stx-list? _L37519_)
                            (___kont4159241593_ _L37519_ _L37521_)
                            (let () (declare (not safe)) (_g3746337492_))))))
                   (___match4162641627_
                    (lambda (_e3747537607_
                             _hd3747437611_
                             _tl3747337614_
                             _e3747837617_
                             _hd3747737621_
                             _tl3747637624_)
                      (let ((_L37627_ _tl3747637624_))
                        (if (gx#stx-list? _L37627_)
                            (___kont4159041591_ _L37627_)
                            (___match4163841639_
                             _e3747537607_
                             _hd3747437611_
                             _tl3747337614_
                             _e3747837617_
                             _hd3747737621_
                             _tl3747637624_)))))
                   (___match4161041611_
                    (lambda (_e3746837712_
                             _hd3746737716_
                             _tl3746637719_
                             _e3747137722_
                             _hd3747037726_
                             _tl3746937729_)
                      (let ((_L37732_ _tl3746937729_))
                        (if (gx#stx-list? _L37732_)
                            (___kont4158841589_ _L37732_)
                            (___match4163841639_
                             _e3746837712_
                             _hd3746737716_
                             _tl3746637719_
                             _e3747137722_
                             _hd3747037726_
                             _tl3746937729_))))))
              (if (gx#stx-pair? ___stx4158541586_)
                  (let ((_e3746837712_ (gx#syntax-e ___stx4158541586_)))
                    (let ((_tl3746637719_
                           (let () (declare (not safe)) (##cdr _e3746837712_)))
                          (_hd3746737716_
                           (let ()
                             (declare (not safe))
                             (##car _e3746837712_))))
                      (if (gx#stx-pair? _tl3746637719_)
                          (let ((_e3747137722_ (gx#syntax-e _tl3746637719_)))
                            (let ((_tl3746937729_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3747137722_)))
                                  (_hd3747037726_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3747137722_))))
                              (if (gx#identifier? _hd3747037726_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g42276_|
                                       _hd3747037726_)
                                      (___match4161041611_
                                       _e3746837712_
                                       _hd3746737716_
                                       _tl3746637719_
                                       _e3747137722_
                                       _hd3747037726_
                                       _tl3746937729_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g42277_|
                                           _hd3747037726_)
                                          (___match4162641627_
                                           _e3746837712_
                                           _hd3746737716_
                                           _tl3746637719_
                                           _e3747137722_
                                           _hd3747037726_
                                           _tl3746937729_)
                                          (___match4163841639_
                                           _e3746837712_
                                           _hd3746737716_
                                           _tl3746637719_
                                           _e3747137722_
                                           _hd3747037726_
                                           _tl3746937729_)))
                                  (___match4163841639_
                                   _e3746837712_
                                   _hd3746737716_
                                   _tl3746637719_
                                   _e3747137722_
                                   _hd3747037726_
                                   _tl3746937729_))))
                          (let () (declare (not safe)) (_g3746337492_)))))
                  (let () (declare (not safe)) (_g3746337492_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_stx37814_)
        (let* ((_g3781737841_
                (lambda (_g3781837837_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3781837837_)))
               (_g3781638053_
                (lambda (_g3781837845_)
                  (if (gx#stx-pair? _g3781837845_)
                      (let ((_e3782337848_ (gx#syntax-e _g3781837845_)))
                        (let ((_hd3782237852_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3782337848_)))
                              (_tl3782137855_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3782337848_))))
                          (if (gx#stx-pair? _tl3782137855_)
                              (let ((_e3782637858_
                                     (gx#syntax-e _tl3782137855_)))
                                (let ((_hd3782537862_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3782637858_)))
                                      (_tl3782437865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3782637858_))))
                                  (if (gx#stx-pair/null? _hd3782537862_)
                                      (let ((_g42278_
                                             (gx#syntax-split-splice
                                              _hd3782537862_
                                              '0)))
                                        (begin
                                          (let ((_g42279_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42278_)
                                                       (##vector-length
                                                        _g42278_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42279_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42279_)))
                                          (let ((_target3782737868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42278_ 0)))
                                                (_tl3782937871_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42278_ 1))))
                                            (if (gx#stx-null? _tl3782937871_)
                                                (letrec ((_loop3783037874_
                                                          (lambda (_hd3782837878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3783437881_)
                    (if (gx#stx-pair? _hd3782837878_)
                        (let ((_e3783137884_ (gx#syntax-e _hd3782837878_)))
                          (let ((_lp-hd3783237888_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3783137884_)))
                                (_lp-tl3783337891_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3783137884_))))
                            (_loop3783037874_
                             _lp-tl3783337891_
                             (cons _lp-hd3783237888_ _e3783437881_))))
                        (let ((_e3783537894_ (reverse _e3783437881_)))
                          ((lambda (_L37898_ _L37900_)
                             (if (gx#stx-list? _L37898_)
                                 (let* ((_g3791837935_
                                         (lambda (_g3791937931_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3791937931_)))
                                        (_g3791738041_
                                         (lambda (_g3791937939_)
                                           (if (gx#stx-pair/null?
                                                _g3791937939_)
                                               (let ((_g42280_
                                                      (gx#syntax-split-splice
                                                       _g3791937939_
                                                       '0)))
                                                 (begin
                                                   (let ((_g42281_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g42280_)
                        (##vector-length _g42280_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g42281_ 2)))
                 (error "Context expects 2 values" _g42281_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3792137942_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42280_
                                                             0)))
                                                         (_tl3792337945_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42280_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3792337945_)
                                                         (letrec ((_loop3792437948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3792237952_ _$e3792837955_)
                             (if (gx#stx-pair? _hd3792237952_)
                                 (let ((_e3792537958_
                                        (gx#syntax-e _hd3792237952_)))
                                   (let ((_lp-hd3792637962_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3792537958_)))
                                         (_lp-tl3792737965_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3792537958_))))
                                     (_loop3792437948_
                                      _lp-tl3792737965_
                                      (cons _lp-hd3792637962_
                                            _$e3792837955_))))
                                 (let ((_$e3792937968_
                                        (reverse _$e3792837955_)))
                                   ((lambda (_L37972_)
                                      (let ()
                                        (let* ((_g3798837996_
                                                (lambda (_g3798937992_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3798937992_)))
                                               (_g3798738029_
                                                (lambda (_g3798938000_)
                                                  ((lambda (_L38003_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L37900_
                                _L37972_)
                               (let ((__tmp42282
                                      (lambda (_g3801738021_
                                               _g3801838024_
                                               _g3801938026_)
                                        (cons (cons _g3801838024_
                                                    (cons _g3801738021_ '()))
                                              _g3801938026_))))
                                 (declare (not safe))
                                 (__foldr2 __tmp42282 '() _L37900_ _L37972_)))
                             (cons _L38003_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3798938000_))))
                                          (_g3798738029_
                                           (let ((__tmp42283
                                                  (let ((__tmp42284
                                                         (lambda (_g3803238035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3803338038_)
                   (cons _g3803238035_ _g3803338038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp42284
                                                     '()
                                                     _L37972_))))
                                             (declare (not safe))
                                             (|gerbil/core/match[1]#generate-match*|
                                              _stx37814_
                                              __tmp42283
                                              _L37898_))))))
                                    _$e3792937968_))))))
                   (_loop3792437948_ _target3792137942_ '()))
                 (_g3791837935_ _g3791937939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3791837935_
                                                _g3791937939_)))))
                                   (_g3791738041_
                                    (gx#gentemps
                                     (let ((__tmp42285
                                            (lambda (_g3804438047_
                                                     _g3804538050_)
                                              (cons _g3804438047_
                                                    _g3804538050_))))
                                       (declare (not safe))
                                       (__foldr1 __tmp42285 '() _L37900_)))))
                                 (_g3781737841_ _g3781837845_)))
                           _tl3782437865_
                           _e3783537894_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3783037874_
                                                   _target3782737868_
                                                   '()))
                                                (_g3781737841_
                                                 _g3781837845_)))))
                                      (_g3781737841_ _g3781837845_))))
                              (_g3781737841_ _g3781837845_))))
                      (_g3781737841_ _g3781837845_)))))
          (_g3781638053_ _stx37814_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_$stx38059_)
        (let* ((___stx4164141642_ _$stx38059_)
               (_g3806538148_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4164141642_))))
          (let ((___kont4164441645_
                 (lambda (_L38478_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (let ((__tmp42286
                                      (lambda (_g3849438497_ _g3849538500_)
                                        (cons _g3849438497_ _g3849538500_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp42286 '() _L38478_))))))
                (___kont4164841649_
                 (lambda (_L38386_ _L38388_ _L38389_ _L38390_)
                   (cons _L38390_
                         (cons (cons (cons _L38389_ (cons _L38388_ '())) '())
                               (let ((__tmp42287
                                      (lambda (_g3841238415_ _g3841338418_)
                                        (cons _g3841238415_ _g3841338418_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp42287 '() _L38386_))))))
                (___kont4165241653_
                 (lambda (_L38259_ _L38261_ _L38262_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (let ((__tmp42288
                                      (lambda (_g3828838291_ _g3828938294_)
                                        (cons _g3828838291_ _g3828938294_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp42288 '() _L38261_))
                               (cons (cons (let ((__tmp42289
                                                  (lambda (_g3828638297_
                                                           _g3828738300_)
                                                    (cons _g3828638297_
                                                          _g3828738300_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp42289
                                              '()
                                              _L38262_))
                                           (let ((__tmp42290
                                                  (lambda (_g3828438303_
                                                           _g3828538306_)
                                                    (cons _g3828438303_
                                                          _g3828538306_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp42290
                                              '()
                                              _L38259_)))
                                     '()))))))
            (let* ((___match4173441735_
                    (lambda (_e3811338155_
                             _hd3811238159_
                             _tl3811138162_
                             _e3811638165_
                             _hd3811538169_
                             _tl3811438172_
                             ___splice4165441655_
                             _target3811738175_
                             _tl3811938178_)
                      (letrec ((_loop3812038181_
                                (lambda (_hd3811838185_
                                         _expr3812438188_
                                         _hd3812538190_)
                                  (if (gx#stx-pair? _hd3811838185_)
                                      (let ((_e3812138193_
                                             (gx#syntax-e _hd3811838185_)))
                                        (let ((_lp-tl3812338200_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3812138193_)))
                                              (_lp-hd3812238197_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3812138193_))))
                                          (if (gx#stx-pair? _lp-hd3812238197_)
                                              (let ((_e3813038203_
                                                     (gx#syntax-e
                                                      _lp-hd3812238197_)))
                                                (let ((_tl3812838210_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3813038203_)))
                                                      (_hd3812938207_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3813038203_))))
                                                  (if (gx#stx-pair?
                                                       _tl3812838210_)
                                                      (let ((_e3813338213_
                                                             (gx#syntax-e
                                                              _tl3812838210_)))
                                                        (let ((_tl3813138220_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3813338213_)))
                      (_hd3813238217_
                       (let () (declare (not safe)) (##car _e3813338213_))))
                  (if (gx#stx-null? _tl3813138220_)
                      (_loop3812038181_
                       _lp-tl3812338200_
                       (cons _hd3813238217_ _expr3812438188_)
                       (cons _hd3812938207_ _hd3812538190_))
                      (let () (declare (not safe)) (_g3806538148_)))))
              (let () (declare (not safe)) (_g3806538148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3806538148_)))))
                                      (let ((_hd3812738226_
                                             (reverse _hd3812538190_))
                                            (_expr3812638223_
                                             (reverse _expr3812438188_)))
                                        (if (gx#stx-pair/null? _tl3811438172_)
                                            (let ((___splice4165641657_
                                                   (gx#syntax-split-splice
                                                    _tl3811438172_
                                                    '0)))
                                              (let ((_tl3813638232_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4165641657_
                                                        '1)))
                                                    (_target3813438229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4165641657_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3813638232_)
                                                    (letrec ((_loop3813738235_
                                                              (lambda (_hd3813538239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3814138242_)
                        (if (gx#stx-pair? _hd3813538239_)
                            (let ((_e3813838245_ (gx#syntax-e _hd3813538239_)))
                              (let ((_lp-tl3814038252_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3813838245_)))
                                    (_lp-hd3813938249_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3813838245_))))
                                (_loop3813738235_
                                 _lp-tl3814038252_
                                 (cons _lp-hd3813938249_ _body3814138242_))))
                            (let ((_body3814238255_
                                   (reverse _body3814138242_)))
                              (___kont4165241653_
                               _body3814238255_
                               _expr3812638223_
                               _hd3812738226_))))))
              (_loop3813738235_ _target3813438229_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3806538148_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3806538148_))))))))
                        (_loop3812038181_ _target3811738175_ '() '()))))
                   (___match4172641727_
                    (lambda (_e3811338155_
                             _hd3811238159_
                             _tl3811138162_
                             _e3811638165_
                             _hd3811538169_
                             _tl3811438172_)
                      (if (gx#stx-pair/null? _hd3811538169_)
                          (let ((___splice4165441655_
                                 (gx#syntax-split-splice _hd3811538169_ '0)))
                            (let ((_tl3811938178_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4165441655_ '1)))
                                  (_target3811738175_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4165441655_ '0))))
                              (if (gx#stx-null? _tl3811938178_)
                                  (___match4173441735_
                                   _e3811338155_
                                   _hd3811238159_
                                   _tl3811138162_
                                   _e3811638165_
                                   _hd3811538169_
                                   _tl3811438172_
                                   ___splice4165441655_
                                   _target3811738175_
                                   _tl3811938178_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3806538148_)))))
                          (let () (declare (not safe)) (_g3806538148_)))))
                   (___match4171441715_
                    (lambda (_e3808938316_
                             _hd3808838320_
                             _tl3808738323_
                             _e3809238326_
                             _hd3809138330_
                             _tl3809038333_
                             _e3809538336_
                             _hd3809438340_
                             _tl3809338343_
                             _e3809838346_
                             _hd3809738350_
                             _tl3809638353_
                             ___splice4165041651_
                             _target3809938356_
                             _tl3810138359_)
                      (letrec ((_loop3810238362_
                                (lambda (_hd3810038366_ _body3810638369_)
                                  (if (gx#stx-pair? _hd3810038366_)
                                      (let ((_e3810338372_
                                             (gx#syntax-e _hd3810038366_)))
                                        (let ((_lp-tl3810538379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3810338372_)))
                                              (_lp-hd3810438376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3810338372_))))
                                          (_loop3810238362_
                                           _lp-tl3810538379_
                                           (cons _lp-hd3810438376_
                                                 _body3810638369_))))
                                      (let ((_body3810738382_
                                             (reverse _body3810638369_)))
                                        (let ((_L38386_ _body3810738382_)
                                              (_L38388_ _hd3809738350_)
                                              (_L38389_ _hd3809438340_)
                                              (_L38390_ _hd3808838320_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/match[1]#match-pattern?|
                                                 _L38389_))
                                              (___kont4164841649_
                                               _L38386_
                                               _L38388_
                                               _L38389_
                                               _L38390_)
                                              (___match4172641727_
                                               _e3808938316_
                                               _hd3808838320_
                                               _tl3808738323_
                                               _e3809238326_
                                               _hd3809138330_
                                               _tl3809038333_))))))))
                        (_loop3810238362_ _target3809938356_ '()))))
                   (___match4168041681_
                    (lambda (_e3807038428_
                             _hd3806938432_
                             _tl3806838435_
                             _e3807338438_
                             _hd3807238442_
                             _tl3807138445_
                             ___splice4164641647_
                             _target3807438448_
                             _tl3807638451_)
                      (letrec ((_loop3807738454_
                                (lambda (_hd3807538458_ _body3808138461_)
                                  (if (gx#stx-pair? _hd3807538458_)
                                      (let ((_e3807838464_
                                             (gx#syntax-e _hd3807538458_)))
                                        (let ((_lp-tl3808038471_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3807838464_)))
                                              (_lp-hd3807938468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3807838464_))))
                                          (_loop3807738454_
                                           _lp-tl3808038471_
                                           (cons _lp-hd3807938468_
                                                 _body3808138461_))))
                                      (let ((_body3808238474_
                                             (reverse _body3808138461_)))
                                        (___kont4164441645_
                                         _body3808238474_))))))
                        (_loop3807738454_ _target3807438448_ '())))))
              (if (gx#stx-pair? ___stx4164141642_)
                  (let ((_e3807038428_ (gx#syntax-e ___stx4164141642_)))
                    (let ((_tl3806838435_
                           (let () (declare (not safe)) (##cdr _e3807038428_)))
                          (_hd3806938432_
                           (let ()
                             (declare (not safe))
                             (##car _e3807038428_))))
                      (if (gx#stx-pair? _tl3806838435_)
                          (let ((_e3807338438_ (gx#syntax-e _tl3806838435_)))
                            (let ((_tl3807138445_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3807338438_)))
                                  (_hd3807238442_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3807338438_))))
                              (if (gx#stx-null? _hd3807238442_)
                                  (if (gx#stx-pair/null? _tl3807138445_)
                                      (let ((___splice4164641647_
                                             (gx#syntax-split-splice
                                              _tl3807138445_
                                              '0)))
                                        (let ((_tl3807638451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4164641647_
                                                  '1)))
                                              (_target3807438448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4164641647_
                                                  '0))))
                                          (if (gx#stx-null? _tl3807638451_)
                                              (___match4168041681_
                                               _e3807038428_
                                               _hd3806938432_
                                               _tl3806838435_
                                               _e3807338438_
                                               _hd3807238442_
                                               _tl3807138445_
                                               ___splice4164641647_
                                               _target3807438448_
                                               _tl3807638451_)
                                              (if (gx#stx-pair/null?
                                                   _hd3807238442_)
                                                  (let ((___splice4165441655_
                                                         (gx#syntax-split-splice
                                                          _hd3807238442_
                                                          '0)))
                                                    (let ((_tl3811938178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4165441655_
                                                              '1)))
                                                          (_target3811738175_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4165441655_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3811938178_)
                                                          (___match4173441735_
                                                           _e3807038428_
                                                           _hd3806938432_
                                                           _tl3806838435_
                                                           _e3807338438_
                                                           _hd3807238442_
                                                           _tl3807138445_
                                                           ___splice4165441655_
                                                           _target3811738175_
                                                           _tl3811938178_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3806538148_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3806538148_))))))
                                      (if (gx#stx-pair/null? _hd3807238442_)
                                          (let ((___splice4165441655_
                                                 (gx#syntax-split-splice
                                                  _hd3807238442_
                                                  '0)))
                                            (let ((_tl3811938178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4165441655_
                                                      '1)))
                                                  (_target3811738175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4165441655_
                                                      '0))))
                                              (if (gx#stx-null? _tl3811938178_)
                                                  (___match4173441735_
                                                   _e3807038428_
                                                   _hd3806938432_
                                                   _tl3806838435_
                                                   _e3807338438_
                                                   _hd3807238442_
                                                   _tl3807138445_
                                                   ___splice4165441655_
                                                   _target3811738175_
                                                   _tl3811938178_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3806538148_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3806538148_))))
                                  (if (gx#stx-pair? _hd3807238442_)
                                      (let ((_e3809538336_
                                             (gx#syntax-e _hd3807238442_)))
                                        (let ((_tl3809338343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3809538336_)))
                                              (_hd3809438340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3809538336_))))
                                          (if (gx#stx-pair? _tl3809338343_)
                                              (let ((_e3809838346_
                                                     (gx#syntax-e
                                                      _tl3809338343_)))
                                                (let ((_tl3809638353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3809838346_)))
                                                      (_hd3809738350_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3809838346_))))
                                                  (if (gx#stx-null?
                                                       _tl3809638353_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3807138445_)
                                                          (let ((___splice4165041651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3807138445_ '0)))
                    (let ((_tl3810138359_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4165041651_ '1)))
                          (_target3809938356_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4165041651_ '0))))
                      (if (gx#stx-null? _tl3810138359_)
                          (___match4171441715_
                           _e3807038428_
                           _hd3806938432_
                           _tl3806838435_
                           _e3807338438_
                           _hd3807238442_
                           _tl3807138445_
                           _e3809538336_
                           _hd3809438340_
                           _tl3809338343_
                           _e3809838346_
                           _hd3809738350_
                           _tl3809638353_
                           ___splice4165041651_
                           _target3809938356_
                           _tl3810138359_)
                          (if (gx#stx-pair/null? _hd3807238442_)
                              (let ((___splice4165441655_
                                     (gx#syntax-split-splice
                                      _hd3807238442_
                                      '0)))
                                (let ((_tl3811938178_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4165441655_
                                          '1)))
                                      (_target3811738175_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4165441655_
                                          '0))))
                                  (if (gx#stx-null? _tl3811938178_)
                                      (___match4173441735_
                                       _e3807038428_
                                       _hd3806938432_
                                       _tl3806838435_
                                       _e3807338438_
                                       _hd3807238442_
                                       _tl3807138445_
                                       ___splice4165441655_
                                       _target3811738175_
                                       _tl3811938178_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3806538148_)))))
                              (let () (declare (not safe)) (_g3806538148_))))))
                  (if (gx#stx-pair/null? _hd3807238442_)
                      (let ((___splice4165441655_
                             (gx#syntax-split-splice _hd3807238442_ '0)))
                        (let ((_tl3811938178_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4165441655_ '1)))
                              (_target3811738175_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4165441655_ '0))))
                          (if (gx#stx-null? _tl3811938178_)
                              (___match4173441735_
                               _e3807038428_
                               _hd3806938432_
                               _tl3806838435_
                               _e3807338438_
                               _hd3807238442_
                               _tl3807138445_
                               ___splice4165441655_
                               _target3811738175_
                               _tl3811938178_)
                              (let () (declare (not safe)) (_g3806538148_)))))
                      (let () (declare (not safe)) (_g3806538148_))))
              (if (gx#stx-pair/null? _hd3807238442_)
                  (let ((___splice4165441655_
                         (gx#syntax-split-splice _hd3807238442_ '0)))
                    (let ((_tl3811938178_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4165441655_ '1)))
                          (_target3811738175_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4165441655_ '0))))
                      (if (gx#stx-null? _tl3811938178_)
                          (___match4173441735_
                           _e3807038428_
                           _hd3806938432_
                           _tl3806838435_
                           _e3807338438_
                           _hd3807238442_
                           _tl3807138445_
                           ___splice4165441655_
                           _target3811738175_
                           _tl3811938178_)
                          (let () (declare (not safe)) (_g3806538148_)))))
                  (let () (declare (not safe)) (_g3806538148_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3807238442_)
                                                  (let ((___splice4165441655_
                                                         (gx#syntax-split-splice
                                                          _hd3807238442_
                                                          '0)))
                                                    (let ((_tl3811938178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4165441655_
                                                              '1)))
                                                          (_target3811738175_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4165441655_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3811938178_)
                                                          (___match4173441735_
                                                           _e3807038428_
                                                           _hd3806938432_
                                                           _tl3806838435_
                                                           _e3807338438_
                                                           _hd3807238442_
                                                           _tl3807138445_
                                                           ___splice4165441655_
                                                           _target3811738175_
                                                           _tl3811938178_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3806538148_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3806538148_))))))
                                      (if (gx#stx-pair/null? _hd3807238442_)
                                          (let ((___splice4165441655_
                                                 (gx#syntax-split-splice
                                                  _hd3807238442_
                                                  '0)))
                                            (let ((_tl3811938178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4165441655_
                                                      '1)))
                                                  (_target3811738175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4165441655_
                                                      '0))))
                                              (if (gx#stx-null? _tl3811938178_)
                                                  (___match4173441735_
                                                   _e3807038428_
                                                   _hd3806938432_
                                                   _tl3806838435_
                                                   _e3807338438_
                                                   _hd3807238442_
                                                   _tl3807138445_
                                                   ___splice4165441655_
                                                   _target3811738175_
                                                   _tl3811938178_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3806538148_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3806538148_)))))))
                          (let () (declare (not safe)) (_g3806538148_)))))
                  (let () (declare (not safe)) (_g3806538148_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_$stx38511_)
        (let* ((___stx4173741738_ _$stx38511_)
               (_g3851638568_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4173741738_))))
          (let ((___kont4174041741_
                 (lambda (_L38738_ _L38740_ _L38741_ _L38742_ _L38743_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _L38742_ (cons _L38741_ '())) '())
                               (cons (cons _L38743_
                                           (cons _L38740_
                                                 (let ((__tmp42291
                                                        (lambda (_g3876838771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3876938774_)
                  (cons _g3876838771_ _g3876938774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp42291
                                                    '()
                                                    _L38738_))))
                                     '())))))
                (___kont4174441745_
                 (lambda (_L38625_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (let ((__tmp42292
                                      (lambda (_g3864238645_ _g3864338648_)
                                        (cons _g3864238645_ _g3864338648_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp42292 '() _L38625_)))))))
            (let* ((___match4181041811_
                    (lambda (_e3855038575_
                             _hd3854938579_
                             _tl3854838582_
                             _e3855338585_
                             _hd3855238589_
                             _tl3855138592_
                             ___splice4174641747_
                             _target3855438595_
                             _tl3855638598_)
                      (letrec ((_loop3855738601_
                                (lambda (_hd3855538605_ _body3856138608_)
                                  (if (gx#stx-pair? _hd3855538605_)
                                      (let ((_e3855838611_
                                             (gx#syntax-e _hd3855538605_)))
                                        (let ((_lp-tl3856038618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3855838611_)))
                                              (_lp-hd3855938615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3855838611_))))
                                          (_loop3855738601_
                                           _lp-tl3856038618_
                                           (cons _lp-hd3855938615_
                                                 _body3856138608_))))
                                      (let ((_body3856238621_
                                             (reverse _body3856138608_)))
                                        (___kont4174441745_
                                         _body3856238621_))))))
                        (_loop3855738601_ _target3855438595_ '()))))
                   (___match4178841789_
                    (lambda (_e3852538658_
                             _hd3852438662_
                             _tl3852338665_
                             _e3852838668_
                             _hd3852738672_
                             _tl3852638675_
                             _e3853138678_
                             _hd3853038682_
                             _tl3852938685_
                             _e3853438688_
                             _hd3853338692_
                             _tl3853238695_
                             _e3853738698_
                             _hd3853638702_
                             _tl3853538705_
                             ___splice4174241743_
                             _target3853838708_
                             _tl3854038711_)
                      (letrec ((_loop3854138714_
                                (lambda (_hd3853938718_ _body3854538721_)
                                  (if (gx#stx-pair? _hd3853938718_)
                                      (let ((_e3854238724_
                                             (gx#syntax-e _hd3853938718_)))
                                        (let ((_lp-tl3854438731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3854238724_)))
                                              (_lp-hd3854338728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3854238724_))))
                                          (_loop3854138714_
                                           _lp-tl3854438731_
                                           (cons _lp-hd3854338728_
                                                 _body3854538721_))))
                                      (let ((_body3854638734_
                                             (reverse _body3854538721_)))
                                        (___kont4174041741_
                                         _body3854638734_
                                         _tl3852938685_
                                         _hd3853638702_
                                         _hd3853338692_
                                         _hd3852438662_))))))
                        (_loop3854138714_ _target3853838708_ '())))))
              (if (gx#stx-pair? ___stx4173741738_)
                  (let ((_e3852538658_ (gx#syntax-e ___stx4173741738_)))
                    (let ((_tl3852338665_
                           (let () (declare (not safe)) (##cdr _e3852538658_)))
                          (_hd3852438662_
                           (let ()
                             (declare (not safe))
                             (##car _e3852538658_))))
                      (if (gx#stx-pair? _tl3852338665_)
                          (let ((_e3852838668_ (gx#syntax-e _tl3852338665_)))
                            (let ((_tl3852638675_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3852838668_)))
                                  (_hd3852738672_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3852838668_))))
                              (if (gx#stx-pair? _hd3852738672_)
                                  (let ((_e3853138678_
                                         (gx#syntax-e _hd3852738672_)))
                                    (let ((_tl3852938685_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3853138678_)))
                                          (_hd3853038682_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3853138678_))))
                                      (if (gx#stx-pair? _hd3853038682_)
                                          (let ((_e3853438688_
                                                 (gx#syntax-e _hd3853038682_)))
                                            (let ((_tl3853238695_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3853438688_)))
                                                  (_hd3853338692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3853438688_))))
                                              (if (gx#stx-pair? _tl3853238695_)
                                                  (let ((_e3853738698_
                                                         (gx#syntax-e
                                                          _tl3853238695_)))
                                                    (let ((_tl3853538705_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3853738698_)))
                                                          (_hd3853638702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3853738698_))))
                                                      (if (gx#stx-null?
                                                           _tl3853538705_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3852638675_)
                                                              (let ((___splice4174241743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3852638675_ '0)))
                        (let ((_tl3854038711_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4174241743_ '1)))
                              (_target3853838708_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4174241743_ '0))))
                          (if (gx#stx-null? _tl3854038711_)
                              (___match4178841789_
                               _e3852538658_
                               _hd3852438662_
                               _tl3852338665_
                               _e3852838668_
                               _hd3852738672_
                               _tl3852638675_
                               _e3853138678_
                               _hd3853038682_
                               _tl3852938685_
                               _e3853438688_
                               _hd3853338692_
                               _tl3853238695_
                               _e3853738698_
                               _hd3853638702_
                               _tl3853538705_
                               ___splice4174241743_
                               _target3853838708_
                               _tl3854038711_)
                              (let () (declare (not safe)) (_g3851638568_)))))
                      (let () (declare (not safe)) (_g3851638568_)))
                  (let () (declare (not safe)) (_g3851638568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3851638568_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3851638568_)))))
                                  (if (gx#stx-null? _hd3852738672_)
                                      (if (gx#stx-pair/null? _tl3852638675_)
                                          (let ((___splice4174641747_
                                                 (gx#syntax-split-splice
                                                  _tl3852638675_
                                                  '0)))
                                            (let ((_tl3855638598_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4174641747_
                                                      '1)))
                                                  (_target3855438595_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4174641747_
                                                      '0))))
                                              (if (gx#stx-null? _tl3855638598_)
                                                  (___match4181041811_
                                                   _e3852538658_
                                                   _hd3852438662_
                                                   _tl3852338665_
                                                   _e3852838668_
                                                   _hd3852738672_
                                                   _tl3852638675_
                                                   ___splice4174641747_
                                                   _target3855438595_
                                                   _tl3855638598_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3851638568_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3851638568_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3851638568_))))))
                          (let () (declare (not safe)) (_g3851638568_)))))
                  (let () (declare (not safe)) (_g3851638568_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_$stx38783_)
        (let* ((___stx4181341814_ _$stx38783_)
               (_g3879438940_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4181341814_))))
          (let ((___kont4181641817_
                 (lambda (_L39544_ _L39546_ _L39547_)
                   (cons (gx#datum->syntax '#f 'and)
                         (let ((__tmp42293
                                (lambda (_g3956839571_ _g3956939574_)
                                  (cons (cons _L39547_
                                              (cons _g3956839571_
                                                    (cons _L39544_ '())))
                                        _g3956939574_))))
                           (declare (not safe))
                           (__foldr1 __tmp42293 '() _L39546_)))))
                (___kont4182041821_
                 (lambda (_L39434_ _L39436_ _L39437_)
                   (cons (gx#datum->syntax '#f 'or)
                         (let ((__tmp42294
                                (lambda (_g3945839461_ _g3945939464_)
                                  (cons (cons _L39437_
                                              (cons _g3945839461_
                                                    (cons _L39434_ '())))
                                        _g3945939464_))))
                           (declare (not safe))
                           (__foldr1 __tmp42294 '() _L39436_)))))
                (___kont4182441825_
                 (lambda (_L39334_ _L39336_ _L39337_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _L39337_
                                     (cons _L39336_ (cons _L39334_ '())))
                               '()))))
                (___kont4182641827_
                 (lambda (_L39260_ _L39262_)
                   (cons _L39262_ (cons _L39260_ '()))))
                (___kont4182841829_
                 (lambda (_L39208_ _L39210_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _L39210_
                                           (cons _L39208_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (___kont4183041831_
                 (lambda (_L39160_ _L39162_ _L39163_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _L39163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L39162_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L39160_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4183241833_
                 (lambda (_L39091_ _L39093_ _L39094_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L39094_
                                                       (cons _L39093_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L39091_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4183441835_
                 (lambda (_L39011_ _L39013_ _L39014_ _L39015_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L39015_
                                                       (cons _L39014_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L39011_
                                                             (cons (cons _L39013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match4198641987_
                    (lambda (_e3888639120_
                             _hd3888539124_
                             _tl3888439127_
                             _e3888939130_
                             _hd3888839134_
                             _tl3888739137_
                             _e3889239140_
                             _hd3889139144_
                             _tl3889039147_)
                      (if (gx#identifier? _hd3889139144_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g42295_|
                               _hd3889139144_)
                              (if (gx#stx-pair? _tl3889039147_)
                                  (let ((_e3889539150_
                                         (gx#syntax-e _tl3889039147_)))
                                    (let ((_tl3889339157_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3889539150_)))
                                          (_hd3889439154_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3889539150_))))
                                      (if (gx#stx-null? _tl3889339157_)
                                          (___kont4183041831_
                                           _hd3889439154_
                                           _hd3888839134_
                                           _hd3888539124_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3879438940_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3879438940_)))
                              (let () (declare (not safe)) (_g3879438940_)))
                          (if (gx#stx-datum? _hd3889139144_)
                              (let ((_e3890839077_ (gx#stx-e _hd3889139144_)))
                                (if (equal? _e3890839077_ '::)
                                    (if (gx#stx-pair? _tl3889039147_)
                                        (let ((_e3891139081_
                                               (gx#syntax-e _tl3889039147_)))
                                          (let ((_tl3890939088_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3891139081_)))
                                                (_hd3891039085_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3891139081_))))
                                            (if (gx#stx-null? _tl3890939088_)
                                                (___kont4183241833_
                                                 _hd3891039085_
                                                 _hd3888839134_
                                                 _hd3888539124_)
                                                (if (gx#stx-pair?
                                                     _tl3890939088_)
                                                    (let ((_e3893138991_
                                                           (gx#syntax-e
                                                            _tl3890939088_)))
                                                      (let ((_tl3892938998_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3893138991_)))
                    (_hd3893038995_
                     (let () (declare (not safe)) (##car _e3893138991_))))
                (if (gx#identifier? _hd3893038995_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g42296_|
                         _hd3893038995_)
                        (if (gx#stx-pair? _tl3892938998_)
                            (let ((_e3893439001_ (gx#syntax-e _tl3892938998_)))
                              (let ((_tl3893239008_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3893439001_)))
                                    (_hd3893339005_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3893439001_))))
                                (if (gx#stx-null? _tl3893239008_)
                                    (___kont4183441835_
                                     _hd3893339005_
                                     _hd3891039085_
                                     _hd3888839134_
                                     _hd3888539124_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_)))))
                            (let () (declare (not safe)) (_g3879438940_)))
                        (let () (declare (not safe)) (_g3879438940_)))
                    (let () (declare (not safe)) (_g3879438940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3879438940_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3879438940_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_))))
                              (let () (declare (not safe)) (_g3879438940_))))))
                   (___match4196641967_
                    (lambda (_e3887739188_
                             _hd3887639192_
                             _tl3887539195_
                             _e3888039198_
                             _hd3887939202_
                             _tl3887839205_)
                      (if (gx#stx-null? _tl3887839205_)
                          (___kont4182841829_ _hd3887939202_ _hd3887639192_)
                          (if (gx#stx-pair? _tl3887839205_)
                              (let ((_e3889239140_
                                     (gx#syntax-e _tl3887839205_)))
                                (let ((_tl3889039147_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3889239140_)))
                                      (_hd3889139144_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3889239140_))))
                                  (if (gx#identifier? _hd3889139144_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g42295_|
                                           _hd3889139144_)
                                          (if (gx#stx-pair? _tl3889039147_)
                                              (let ((_e3889539150_
                                                     (gx#syntax-e
                                                      _tl3889039147_)))
                                                (let ((_tl3889339157_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3889539150_)))
                                                      (_hd3889439154_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3889539150_))))
                                                  (if (gx#stx-null?
                                                       _tl3889339157_)
                                                      (___kont4183041831_
                                                       _hd3889439154_
                                                       _hd3887939202_
                                                       _hd3887639192_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3879438940_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3879438940_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3879438940_)))
                                      (if (gx#stx-datum? _hd3889139144_)
                                          (let ((_e3890839077_
                                                 (gx#stx-e _hd3889139144_)))
                                            (if (equal? _e3890839077_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3889039147_)
                                                    (let ((_e3891139081_
                                                           (gx#syntax-e
                                                            _tl3889039147_)))
                                                      (let ((_tl3890939088_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3891139081_)))
                    (_hd3891039085_
                     (let () (declare (not safe)) (##car _e3891139081_))))
                (if (gx#stx-null? _tl3890939088_)
                    (___kont4183241833_
                     _hd3891039085_
                     _hd3887939202_
                     _hd3887639192_)
                    (if (gx#stx-pair? _tl3890939088_)
                        (let ((_e3893138991_ (gx#syntax-e _tl3890939088_)))
                          (let ((_tl3892938998_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3893138991_)))
                                (_hd3893038995_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3893138991_))))
                            (if (gx#identifier? _hd3893038995_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g42296_|
                                     _hd3893038995_)
                                    (if (gx#stx-pair? _tl3892938998_)
                                        (let ((_e3893439001_
                                               (gx#syntax-e _tl3892938998_)))
                                          (let ((_tl3893239008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3893439001_)))
                                                (_hd3893339005_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3893439001_))))
                                            (if (gx#stx-null? _tl3893239008_)
                                                (___kont4183441835_
                                                 _hd3893339005_
                                                 _hd3891039085_
                                                 _hd3887939202_
                                                 _hd3887639192_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3879438940_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3879438940_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3879438940_)))))
                        (let () (declare (not safe)) (_g3879438940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3879438940_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3879438940_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3879438940_))))))
                              (let () (declare (not safe)) (_g3879438940_))))))
                   (___match4189641897_
                    (lambda (_e3882539364_
                             _hd3882439368_
                             _tl3882339371_
                             _e3882839374_
                             _hd3882739378_
                             _tl3882639381_
                             _e3883139384_
                             _hd3883039388_
                             _tl3882939391_
                             ___splice4182241823_
                             _target3883239394_
                             _tl3883439397_)
                      (letrec ((_loop3883539400_
                                (lambda (_hd3883339404_ _pred3883939407_)
                                  (if (gx#stx-pair? _hd3883339404_)
                                      (let ((_e3883639410_
                                             (gx#syntax-e _hd3883339404_)))
                                        (let ((_lp-tl3883839417_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3883639410_)))
                                              (_lp-hd3883739414_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3883639410_))))
                                          (_loop3883539400_
                                           _lp-tl3883839417_
                                           (cons _lp-hd3883739414_
                                                 _pred3883939407_))))
                                      (let ((_pred3884039420_
                                             (reverse _pred3883939407_)))
                                        (if (gx#stx-pair? _tl3882639381_)
                                            (let ((_e3884339424_
                                                   (gx#syntax-e
                                                    _tl3882639381_)))
                                              (let ((_tl3884139431_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3884339424_)))
                                                    (_hd3884239428_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3884339424_))))
                                                (if (gx#stx-null?
                                                     _tl3884139431_)
                                                    (___kont4182041821_
                                                     _hd3884239428_
                                                     _pred3884039420_
                                                     _hd3882439368_)
                                                    (___match4198641987_
                                                     _e3882539364_
                                                     _hd3882439368_
                                                     _tl3882339371_
                                                     _e3882839374_
                                                     _hd3882739378_
                                                     _tl3882639381_
                                                     _e3884339424_
                                                     _hd3884239428_
                                                     _tl3884139431_))))
                                            (___match4196641967_
                                             _e3882539364_
                                             _hd3882439368_
                                             _tl3882339371_
                                             _e3882839374_
                                             _hd3882739378_
                                             _tl3882639381_)))))))
                        (_loop3883539400_ _target3883239394_ '()))))
                   (___match4186641867_
                    (lambda (_e3880139474_
                             _hd3880039478_
                             _tl3879939481_
                             _e3880439484_
                             _hd3880339488_
                             _tl3880239491_
                             _e3880739494_
                             _hd3880639498_
                             _tl3880539501_
                             ___splice4181841819_
                             _target3880839504_
                             _tl3881039507_)
                      (letrec ((_loop3881139510_
                                (lambda (_hd3880939514_ _pred3881539517_)
                                  (if (gx#stx-pair? _hd3880939514_)
                                      (let ((_e3881239520_
                                             (gx#syntax-e _hd3880939514_)))
                                        (let ((_lp-tl3881439527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3881239520_)))
                                              (_lp-hd3881339524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3881239520_))))
                                          (_loop3881139510_
                                           _lp-tl3881439527_
                                           (cons _lp-hd3881339524_
                                                 _pred3881539517_))))
                                      (let ((_pred3881639530_
                                             (reverse _pred3881539517_)))
                                        (if (gx#stx-pair? _tl3880239491_)
                                            (let ((_e3881939534_
                                                   (gx#syntax-e
                                                    _tl3880239491_)))
                                              (let ((_tl3881739541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3881939534_)))
                                                    (_hd3881839538_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3881939534_))))
                                                (if (gx#stx-null?
                                                     _tl3881739541_)
                                                    (___kont4181641817_
                                                     _hd3881839538_
                                                     _pred3881639530_
                                                     _hd3880039478_)
                                                    (___match4198641987_
                                                     _e3880139474_
                                                     _hd3880039478_
                                                     _tl3879939481_
                                                     _e3880439484_
                                                     _hd3880339488_
                                                     _tl3880239491_
                                                     _e3881939534_
                                                     _hd3881839538_
                                                     _tl3881739541_))))
                                            (___match4196641967_
                                             _e3880139474_
                                             _hd3880039478_
                                             _tl3879939481_
                                             _e3880439484_
                                             _hd3880339488_
                                             _tl3880239491_)))))))
                        (_loop3881139510_ _target3880839504_ '())))))
              (if (gx#stx-pair? ___stx4181341814_)
                  (let ((_e3880139474_ (gx#syntax-e ___stx4181341814_)))
                    (let ((_tl3879939481_
                           (let () (declare (not safe)) (##cdr _e3880139474_)))
                          (_hd3880039478_
                           (let ()
                             (declare (not safe))
                             (##car _e3880139474_))))
                      (if (gx#stx-pair? _tl3879939481_)
                          (let ((_e3880439484_ (gx#syntax-e _tl3879939481_)))
                            (let ((_tl3880239491_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3880439484_)))
                                  (_hd3880339488_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3880439484_))))
                              (if (gx#stx-pair? _hd3880339488_)
                                  (let ((_e3880739494_
                                         (gx#syntax-e _hd3880339488_)))
                                    (let ((_tl3880539501_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3880739494_)))
                                          (_hd3880639498_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3880739494_))))
                                      (if (gx#identifier? _hd3880639498_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g42297_|
                                               _hd3880639498_)
                                              (if (gx#stx-pair/null?
                                                   _tl3880539501_)
                                                  (let ((___splice4181841819_
                                                         (gx#syntax-split-splice
                                                          _tl3880539501_
                                                          '0)))
                                                    (let ((_tl3881039507_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4181841819_
                                                              '1)))
                                                          (_target3880839504_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4181841819_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3881039507_)
                                                          (___match4186641867_
                                                           _e3880139474_
                                                           _hd3880039478_
                                                           _tl3879939481_
                                                           _e3880439484_
                                                           _hd3880339488_
                                                           _tl3880239491_
                                                           _e3880739494_
                                                           _hd3880639498_
                                                           _tl3880539501_
                                                           ___splice4181841819_
                                                           _target3880839504_
                                                           _tl3881039507_)
                                                          (if (gx#stx-pair?
                                                               _tl3880239491_)
                                                              (let ((_e3887239250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3880239491_)))
                        (let ((_tl3887039257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3887239250_)))
                              (_hd3887139254_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3887239250_))))
                          (if (gx#stx-null? _tl3887039257_)
                              (___kont4182641827_
                               _hd3887139254_
                               _hd3880339488_)
                              (if (gx#identifier? _hd3887139254_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g42295_|
                                       _hd3887139254_)
                                      (if (gx#stx-pair? _tl3887039257_)
                                          (let ((_e3889539150_
                                                 (gx#syntax-e _tl3887039257_)))
                                            (let ((_tl3889339157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3889539150_)))
                                                  (_hd3889439154_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3889539150_))))
                                              (if (gx#stx-null? _tl3889339157_)
                                                  (___kont4183041831_
                                                   _hd3889439154_
                                                   _hd3880339488_
                                                   _hd3880039478_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3879438940_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3879438940_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3879438940_)))
                                  (if (gx#stx-datum? _hd3887139254_)
                                      (let ((_e3890839077_
                                             (gx#stx-e _hd3887139254_)))
                                        (if (equal? _e3890839077_ '::)
                                            (if (gx#stx-pair? _tl3887039257_)
                                                (let ((_e3891139081_
                                                       (gx#syntax-e
                                                        _tl3887039257_)))
                                                  (let ((_tl3890939088_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3891139081_)))
                                                        (_hd3891039085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3891139081_))))
                                                    (if (gx#stx-null?
                                                         _tl3890939088_)
                                                        (___kont4183241833_
                                                         _hd3891039085_
                                                         _hd3880339488_
                                                         _hd3880039478_)
                                                        (if (gx#stx-pair?
                                                             _tl3890939088_)
                                                            (let ((_e3893138991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3890939088_)))
                      (let ((_tl3892938998_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3893138991_)))
                            (_hd3893038995_
                             (let ()
                               (declare (not safe))
                               (##car _e3893138991_))))
                        (if (gx#identifier? _hd3893038995_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g42296_|
                                 _hd3893038995_)
                                (if (gx#stx-pair? _tl3892938998_)
                                    (let ((_e3893439001_
                                           (gx#syntax-e _tl3892938998_)))
                                      (let ((_tl3893239008_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3893439001_)))
                                            (_hd3893339005_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3893439001_))))
                                        (if (gx#stx-null? _tl3893239008_)
                                            (___kont4183441835_
                                             _hd3893339005_
                                             _hd3891039085_
                                             _hd3880339488_
                                             _hd3880039478_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3879438940_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_)))
                                (let () (declare (not safe)) (_g3879438940_)))
                            (let () (declare (not safe)) (_g3879438940_)))))
                    (let () (declare (not safe)) (_g3879438940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3879438940_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3879438940_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3879438940_)))))))
                      (if (gx#stx-null? _tl3880239491_)
                          (___kont4182841829_ _hd3880339488_ _hd3880039478_)
                          (let () (declare (not safe)) (_g3879438940_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3880239491_)
                                                      (let ((_e3887239250_
                                                             (gx#syntax-e
                                                              _tl3880239491_)))
                                                        (let ((_tl3887039257_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3887239250_)))
                      (_hd3887139254_
                       (let () (declare (not safe)) (##car _e3887239250_))))
                  (if (gx#stx-null? _tl3887039257_)
                      (___kont4182641827_ _hd3887139254_ _hd3880339488_)
                      (if (gx#identifier? _hd3887139254_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g42295_|
                               _hd3887139254_)
                              (if (gx#stx-pair? _tl3887039257_)
                                  (let ((_e3889539150_
                                         (gx#syntax-e _tl3887039257_)))
                                    (let ((_tl3889339157_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3889539150_)))
                                          (_hd3889439154_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3889539150_))))
                                      (if (gx#stx-null? _tl3889339157_)
                                          (___kont4183041831_
                                           _hd3889439154_
                                           _hd3880339488_
                                           _hd3880039478_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3879438940_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3879438940_)))
                              (let () (declare (not safe)) (_g3879438940_)))
                          (if (gx#stx-datum? _hd3887139254_)
                              (let ((_e3890839077_ (gx#stx-e _hd3887139254_)))
                                (if (equal? _e3890839077_ '::)
                                    (if (gx#stx-pair? _tl3887039257_)
                                        (let ((_e3891139081_
                                               (gx#syntax-e _tl3887039257_)))
                                          (let ((_tl3890939088_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3891139081_)))
                                                (_hd3891039085_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3891139081_))))
                                            (if (gx#stx-null? _tl3890939088_)
                                                (___kont4183241833_
                                                 _hd3891039085_
                                                 _hd3880339488_
                                                 _hd3880039478_)
                                                (if (gx#stx-pair?
                                                     _tl3890939088_)
                                                    (let ((_e3893138991_
                                                           (gx#syntax-e
                                                            _tl3890939088_)))
                                                      (let ((_tl3892938998_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3893138991_)))
                    (_hd3893038995_
                     (let () (declare (not safe)) (##car _e3893138991_))))
                (if (gx#identifier? _hd3893038995_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g42296_|
                         _hd3893038995_)
                        (if (gx#stx-pair? _tl3892938998_)
                            (let ((_e3893439001_ (gx#syntax-e _tl3892938998_)))
                              (let ((_tl3893239008_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3893439001_)))
                                    (_hd3893339005_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3893439001_))))
                                (if (gx#stx-null? _tl3893239008_)
                                    (___kont4183441835_
                                     _hd3893339005_
                                     _hd3891039085_
                                     _hd3880339488_
                                     _hd3880039478_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_)))))
                            (let () (declare (not safe)) (_g3879438940_)))
                        (let () (declare (not safe)) (_g3879438940_)))
                    (let () (declare (not safe)) (_g3879438940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3879438940_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3879438940_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_))))
                              (let ()
                                (declare (not safe))
                                (_g3879438940_)))))))
              (if (gx#stx-null? _tl3880239491_)
                  (___kont4182841829_ _hd3880339488_ _hd3880039478_)
                  (let () (declare (not safe)) (_g3879438940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g42298_|
                                                   _hd3880639498_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3880539501_)
                                                      (let ((___splice4182241823_
                                                             (gx#syntax-split-splice
                                                              _tl3880539501_
                                                              '0)))
                                                        (let ((_tl3883439397_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4182241823_ '1)))
                      (_target3883239394_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4182241823_ '0))))
                  (if (gx#stx-null? _tl3883439397_)
                      (___match4189641897_
                       _e3880139474_
                       _hd3880039478_
                       _tl3879939481_
                       _e3880439484_
                       _hd3880339488_
                       _tl3880239491_
                       _e3880739494_
                       _hd3880639498_
                       _tl3880539501_
                       ___splice4182241823_
                       _target3883239394_
                       _tl3883439397_)
                      (if (gx#stx-pair? _tl3880239491_)
                          (let ((_e3887239250_ (gx#syntax-e _tl3880239491_)))
                            (let ((_tl3887039257_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3887239250_)))
                                  (_hd3887139254_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3887239250_))))
                              (if (gx#stx-null? _tl3887039257_)
                                  (___kont4182641827_
                                   _hd3887139254_
                                   _hd3880339488_)
                                  (if (gx#identifier? _hd3887139254_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g42295_|
                                           _hd3887139254_)
                                          (if (gx#stx-pair? _tl3887039257_)
                                              (let ((_e3889539150_
                                                     (gx#syntax-e
                                                      _tl3887039257_)))
                                                (let ((_tl3889339157_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3889539150_)))
                                                      (_hd3889439154_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3889539150_))))
                                                  (if (gx#stx-null?
                                                       _tl3889339157_)
                                                      (___kont4183041831_
                                                       _hd3889439154_
                                                       _hd3880339488_
                                                       _hd3880039478_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3879438940_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3879438940_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3879438940_)))
                                      (if (gx#stx-datum? _hd3887139254_)
                                          (let ((_e3890839077_
                                                 (gx#stx-e _hd3887139254_)))
                                            (if (equal? _e3890839077_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3887039257_)
                                                    (let ((_e3891139081_
                                                           (gx#syntax-e
                                                            _tl3887039257_)))
                                                      (let ((_tl3890939088_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3891139081_)))
                    (_hd3891039085_
                     (let () (declare (not safe)) (##car _e3891139081_))))
                (if (gx#stx-null? _tl3890939088_)
                    (___kont4183241833_
                     _hd3891039085_
                     _hd3880339488_
                     _hd3880039478_)
                    (if (gx#stx-pair? _tl3890939088_)
                        (let ((_e3893138991_ (gx#syntax-e _tl3890939088_)))
                          (let ((_tl3892938998_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3893138991_)))
                                (_hd3893038995_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3893138991_))))
                            (if (gx#identifier? _hd3893038995_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g42296_|
                                     _hd3893038995_)
                                    (if (gx#stx-pair? _tl3892938998_)
                                        (let ((_e3893439001_
                                               (gx#syntax-e _tl3892938998_)))
                                          (let ((_tl3893239008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3893439001_)))
                                                (_hd3893339005_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3893439001_))))
                                            (if (gx#stx-null? _tl3893239008_)
                                                (___kont4183441835_
                                                 _hd3893339005_
                                                 _hd3891039085_
                                                 _hd3880339488_
                                                 _hd3880039478_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3879438940_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3879438940_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3879438940_)))))
                        (let () (declare (not safe)) (_g3879438940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3879438940_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3879438940_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3879438940_)))))))
                          (if (gx#stx-null? _tl3880239491_)
                              (___kont4182841829_
                               _hd3880339488_
                               _hd3880039478_)
                              (let ()
                                (declare (not safe))
                                (_g3879438940_)))))))
              (if (gx#stx-pair? _tl3880239491_)
                  (let ((_e3887239250_ (gx#syntax-e _tl3880239491_)))
                    (let ((_tl3887039257_
                           (let () (declare (not safe)) (##cdr _e3887239250_)))
                          (_hd3887139254_
                           (let ()
                             (declare (not safe))
                             (##car _e3887239250_))))
                      (if (gx#stx-null? _tl3887039257_)
                          (___kont4182641827_ _hd3887139254_ _hd3880339488_)
                          (if (gx#identifier? _hd3887139254_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g42295_|
                                   _hd3887139254_)
                                  (if (gx#stx-pair? _tl3887039257_)
                                      (let ((_e3889539150_
                                             (gx#syntax-e _tl3887039257_)))
                                        (let ((_tl3889339157_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3889539150_)))
                                              (_hd3889439154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3889539150_))))
                                          (if (gx#stx-null? _tl3889339157_)
                                              (___kont4183041831_
                                               _hd3889439154_
                                               _hd3880339488_
                                               _hd3880039478_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3879438940_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3879438940_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3879438940_)))
                              (if (gx#stx-datum? _hd3887139254_)
                                  (let ((_e3890839077_
                                         (gx#stx-e _hd3887139254_)))
                                    (if (equal? _e3890839077_ '::)
                                        (if (gx#stx-pair? _tl3887039257_)
                                            (let ((_e3891139081_
                                                   (gx#syntax-e
                                                    _tl3887039257_)))
                                              (let ((_tl3890939088_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3891139081_)))
                                                    (_hd3891039085_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3891139081_))))
                                                (if (gx#stx-null?
                                                     _tl3890939088_)
                                                    (___kont4183241833_
                                                     _hd3891039085_
                                                     _hd3880339488_
                                                     _hd3880039478_)
                                                    (if (gx#stx-pair?
                                                         _tl3890939088_)
                                                        (let ((_e3893138991_
                                                               (gx#syntax-e
                                                                _tl3890939088_)))
                                                          (let ((_tl3892938998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3893138991_)))
                        (_hd3893038995_
                         (let () (declare (not safe)) (##car _e3893138991_))))
                    (if (gx#identifier? _hd3893038995_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g42296_|
                             _hd3893038995_)
                            (if (gx#stx-pair? _tl3892938998_)
                                (let ((_e3893439001_
                                       (gx#syntax-e _tl3892938998_)))
                                  (let ((_tl3893239008_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3893439001_)))
                                        (_hd3893339005_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3893439001_))))
                                    (if (gx#stx-null? _tl3893239008_)
                                        (___kont4183441835_
                                         _hd3893339005_
                                         _hd3891039085_
                                         _hd3880339488_
                                         _hd3880039478_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3879438940_)))))
                                (let () (declare (not safe)) (_g3879438940_)))
                            (let () (declare (not safe)) (_g3879438940_)))
                        (let () (declare (not safe)) (_g3879438940_)))))
                (let () (declare (not safe)) (_g3879438940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3879438940_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3879438940_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3879438940_)))))))
                  (if (gx#stx-null? _tl3880239491_)
                      (___kont4182841829_ _hd3880339488_ _hd3880039478_)
                      (let () (declare (not safe)) (_g3879438940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g42299_|
                                                       _hd3880639498_)
                                                      (if (gx#stx-pair?
                                                           _tl3880539501_)
                                                          (let ((_e3885839314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3880539501_)))
                    (let ((_tl3885639321_
                           (let () (declare (not safe)) (##cdr _e3885839314_)))
                          (_hd3885739318_
                           (let ()
                             (declare (not safe))
                             (##car _e3885839314_))))
                      (if (gx#stx-null? _tl3885639321_)
                          (if (gx#stx-pair? _tl3880239491_)
                              (let ((_e3886139324_
                                     (gx#syntax-e _tl3880239491_)))
                                (let ((_tl3885939331_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3886139324_)))
                                      (_hd3886039328_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3886139324_))))
                                  (if (gx#stx-null? _tl3885939331_)
                                      (___kont4182441825_
                                       _hd3886039328_
                                       _hd3885739318_
                                       _hd3880039478_)
                                      (if (gx#identifier? _hd3886039328_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g42295_|
                                               _hd3886039328_)
                                              (if (gx#stx-pair? _tl3885939331_)
                                                  (let ((_e3889539150_
                                                         (gx#syntax-e
                                                          _tl3885939331_)))
                                                    (let ((_tl3889339157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3889539150_)))
                                                          (_hd3889439154_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3889539150_))))
                                                      (if (gx#stx-null?
                                                           _tl3889339157_)
                                                          (___kont4183041831_
                                                           _hd3889439154_
                                                           _hd3880339488_
                                                           _hd3880039478_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3879438940_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3879438940_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3879438940_)))
                                          (if (gx#stx-datum? _hd3886039328_)
                                              (let ((_e3890839077_
                                                     (gx#stx-e
                                                      _hd3886039328_)))
                                                (if (equal? _e3890839077_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3885939331_)
                                                        (let ((_e3891139081_
                                                               (gx#syntax-e
                                                                _tl3885939331_)))
                                                          (let ((_tl3890939088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3891139081_)))
                        (_hd3891039085_
                         (let () (declare (not safe)) (##car _e3891139081_))))
                    (if (gx#stx-null? _tl3890939088_)
                        (___kont4183241833_
                         _hd3891039085_
                         _hd3880339488_
                         _hd3880039478_)
                        (if (gx#stx-pair? _tl3890939088_)
                            (let ((_e3893138991_ (gx#syntax-e _tl3890939088_)))
                              (let ((_tl3892938998_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3893138991_)))
                                    (_hd3893038995_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3893138991_))))
                                (if (gx#identifier? _hd3893038995_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g42296_|
                                         _hd3893038995_)
                                        (if (gx#stx-pair? _tl3892938998_)
                                            (let ((_e3893439001_
                                                   (gx#syntax-e
                                                    _tl3892938998_)))
                                              (let ((_tl3893239008_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3893439001_)))
                                                    (_hd3893339005_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3893439001_))))
                                                (if (gx#stx-null?
                                                     _tl3893239008_)
                                                    (___kont4183441835_
                                                     _hd3893339005_
                                                     _hd3891039085_
                                                     _hd3880339488_
                                                     _hd3880039478_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3879438940_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3879438940_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3879438940_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_)))))
                            (let () (declare (not safe)) (_g3879438940_))))))
                (let () (declare (not safe)) (_g3879438940_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3879438940_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3879438940_)))))))
                              (if (gx#stx-null? _tl3880239491_)
                                  (___kont4182841829_
                                   _hd3880339488_
                                   _hd3880039478_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3879438940_))))
                          (if (gx#stx-pair? _tl3880239491_)
                              (let ((_e3887239250_
                                     (gx#syntax-e _tl3880239491_)))
                                (let ((_tl3887039257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3887239250_)))
                                      (_hd3887139254_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3887239250_))))
                                  (if (gx#stx-null? _tl3887039257_)
                                      (___kont4182641827_
                                       _hd3887139254_
                                       _hd3880339488_)
                                      (if (gx#identifier? _hd3887139254_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g42295_|
                                               _hd3887139254_)
                                              (if (gx#stx-pair? _tl3887039257_)
                                                  (let ((_e3889539150_
                                                         (gx#syntax-e
                                                          _tl3887039257_)))
                                                    (let ((_tl3889339157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3889539150_)))
                                                          (_hd3889439154_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3889539150_))))
                                                      (if (gx#stx-null?
                                                           _tl3889339157_)
                                                          (___kont4183041831_
                                                           _hd3889439154_
                                                           _hd3880339488_
                                                           _hd3880039478_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3879438940_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3879438940_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3879438940_)))
                                          (if (gx#stx-datum? _hd3887139254_)
                                              (let ((_e3890839077_
                                                     (gx#stx-e
                                                      _hd3887139254_)))
                                                (if (equal? _e3890839077_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3887039257_)
                                                        (let ((_e3891139081_
                                                               (gx#syntax-e
                                                                _tl3887039257_)))
                                                          (let ((_tl3890939088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3891139081_)))
                        (_hd3891039085_
                         (let () (declare (not safe)) (##car _e3891139081_))))
                    (if (gx#stx-null? _tl3890939088_)
                        (___kont4183241833_
                         _hd3891039085_
                         _hd3880339488_
                         _hd3880039478_)
                        (if (gx#stx-pair? _tl3890939088_)
                            (let ((_e3893138991_ (gx#syntax-e _tl3890939088_)))
                              (let ((_tl3892938998_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3893138991_)))
                                    (_hd3893038995_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3893138991_))))
                                (if (gx#identifier? _hd3893038995_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g42296_|
                                         _hd3893038995_)
                                        (if (gx#stx-pair? _tl3892938998_)
                                            (let ((_e3893439001_
                                                   (gx#syntax-e
                                                    _tl3892938998_)))
                                              (let ((_tl3893239008_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3893439001_)))
                                                    (_hd3893339005_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3893439001_))))
                                                (if (gx#stx-null?
                                                     _tl3893239008_)
                                                    (___kont4183441835_
                                                     _hd3893339005_
                                                     _hd3891039085_
                                                     _hd3880339488_
                                                     _hd3880039478_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3879438940_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3879438940_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3879438940_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_)))))
                            (let () (declare (not safe)) (_g3879438940_))))))
                (let () (declare (not safe)) (_g3879438940_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3879438940_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3879438940_)))))))
                              (if (gx#stx-null? _tl3880239491_)
                                  (___kont4182841829_
                                   _hd3880339488_
                                   _hd3880039478_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3879438940_)))))))
                  (if (gx#stx-pair? _tl3880239491_)
                      (let ((_e3887239250_ (gx#syntax-e _tl3880239491_)))
                        (let ((_tl3887039257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3887239250_)))
                              (_hd3887139254_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3887239250_))))
                          (if (gx#stx-null? _tl3887039257_)
                              (___kont4182641827_
                               _hd3887139254_
                               _hd3880339488_)
                              (if (gx#identifier? _hd3887139254_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g42295_|
                                       _hd3887139254_)
                                      (if (gx#stx-pair? _tl3887039257_)
                                          (let ((_e3889539150_
                                                 (gx#syntax-e _tl3887039257_)))
                                            (let ((_tl3889339157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3889539150_)))
                                                  (_hd3889439154_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3889539150_))))
                                              (if (gx#stx-null? _tl3889339157_)
                                                  (___kont4183041831_
                                                   _hd3889439154_
                                                   _hd3880339488_
                                                   _hd3880039478_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3879438940_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3879438940_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3879438940_)))
                                  (if (gx#stx-datum? _hd3887139254_)
                                      (let ((_e3890839077_
                                             (gx#stx-e _hd3887139254_)))
                                        (if (equal? _e3890839077_ '::)
                                            (if (gx#stx-pair? _tl3887039257_)
                                                (let ((_e3891139081_
                                                       (gx#syntax-e
                                                        _tl3887039257_)))
                                                  (let ((_tl3890939088_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3891139081_)))
                                                        (_hd3891039085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3891139081_))))
                                                    (if (gx#stx-null?
                                                         _tl3890939088_)
                                                        (___kont4183241833_
                                                         _hd3891039085_
                                                         _hd3880339488_
                                                         _hd3880039478_)
                                                        (if (gx#stx-pair?
                                                             _tl3890939088_)
                                                            (let ((_e3893138991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3890939088_)))
                      (let ((_tl3892938998_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3893138991_)))
                            (_hd3893038995_
                             (let ()
                               (declare (not safe))
                               (##car _e3893138991_))))
                        (if (gx#identifier? _hd3893038995_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g42296_|
                                 _hd3893038995_)
                                (if (gx#stx-pair? _tl3892938998_)
                                    (let ((_e3893439001_
                                           (gx#syntax-e _tl3892938998_)))
                                      (let ((_tl3893239008_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3893439001_)))
                                            (_hd3893339005_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3893439001_))))
                                        (if (gx#stx-null? _tl3893239008_)
                                            (___kont4183441835_
                                             _hd3893339005_
                                             _hd3891039085_
                                             _hd3880339488_
                                             _hd3880039478_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3879438940_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_)))
                                (let () (declare (not safe)) (_g3879438940_)))
                            (let () (declare (not safe)) (_g3879438940_)))))
                    (let () (declare (not safe)) (_g3879438940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3879438940_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3879438940_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3879438940_)))))))
                      (if (gx#stx-null? _tl3880239491_)
                          (___kont4182841829_ _hd3880339488_ _hd3880039478_)
                          (let () (declare (not safe)) (_g3879438940_)))))
              (if (gx#stx-pair? _tl3880239491_)
                  (let ((_e3887239250_ (gx#syntax-e _tl3880239491_)))
                    (let ((_tl3887039257_
                           (let () (declare (not safe)) (##cdr _e3887239250_)))
                          (_hd3887139254_
                           (let ()
                             (declare (not safe))
                             (##car _e3887239250_))))
                      (if (gx#stx-null? _tl3887039257_)
                          (___kont4182641827_ _hd3887139254_ _hd3880339488_)
                          (if (gx#identifier? _hd3887139254_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g42295_|
                                   _hd3887139254_)
                                  (if (gx#stx-pair? _tl3887039257_)
                                      (let ((_e3889539150_
                                             (gx#syntax-e _tl3887039257_)))
                                        (let ((_tl3889339157_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3889539150_)))
                                              (_hd3889439154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3889539150_))))
                                          (if (gx#stx-null? _tl3889339157_)
                                              (___kont4183041831_
                                               _hd3889439154_
                                               _hd3880339488_
                                               _hd3880039478_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3879438940_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3879438940_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3879438940_)))
                              (if (gx#stx-datum? _hd3887139254_)
                                  (let ((_e3890839077_
                                         (gx#stx-e _hd3887139254_)))
                                    (if (equal? _e3890839077_ '::)
                                        (if (gx#stx-pair? _tl3887039257_)
                                            (let ((_e3891139081_
                                                   (gx#syntax-e
                                                    _tl3887039257_)))
                                              (let ((_tl3890939088_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3891139081_)))
                                                    (_hd3891039085_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3891139081_))))
                                                (if (gx#stx-null?
                                                     _tl3890939088_)
                                                    (___kont4183241833_
                                                     _hd3891039085_
                                                     _hd3880339488_
                                                     _hd3880039478_)
                                                    (if (gx#stx-pair?
                                                         _tl3890939088_)
                                                        (let ((_e3893138991_
                                                               (gx#syntax-e
                                                                _tl3890939088_)))
                                                          (let ((_tl3892938998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3893138991_)))
                        (_hd3893038995_
                         (let () (declare (not safe)) (##car _e3893138991_))))
                    (if (gx#identifier? _hd3893038995_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g42296_|
                             _hd3893038995_)
                            (if (gx#stx-pair? _tl3892938998_)
                                (let ((_e3893439001_
                                       (gx#syntax-e _tl3892938998_)))
                                  (let ((_tl3893239008_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3893439001_)))
                                        (_hd3893339005_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3893439001_))))
                                    (if (gx#stx-null? _tl3893239008_)
                                        (___kont4183441835_
                                         _hd3893339005_
                                         _hd3891039085_
                                         _hd3880339488_
                                         _hd3880039478_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3879438940_)))))
                                (let () (declare (not safe)) (_g3879438940_)))
                            (let () (declare (not safe)) (_g3879438940_)))
                        (let () (declare (not safe)) (_g3879438940_)))))
                (let () (declare (not safe)) (_g3879438940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3879438940_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3879438940_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3879438940_)))))))
                  (if (gx#stx-null? _tl3880239491_)
                      (___kont4182841829_ _hd3880339488_ _hd3880039478_)
                      (let () (declare (not safe)) (_g3879438940_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3880239491_)
                                              (let ((_e3887239250_
                                                     (gx#syntax-e
                                                      _tl3880239491_)))
                                                (let ((_tl3887039257_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3887239250_)))
                                                      (_hd3887139254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3887239250_))))
                                                  (if (gx#stx-null?
                                                       _tl3887039257_)
                                                      (___kont4182641827_
                                                       _hd3887139254_
                                                       _hd3880339488_)
                                                      (if (gx#identifier?
                                                           _hd3887139254_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g42295_|
                                                               _hd3887139254_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3887039257_)
                          (let ((_e3889539150_ (gx#syntax-e _tl3887039257_)))
                            (let ((_tl3889339157_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3889539150_)))
                                  (_hd3889439154_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3889539150_))))
                              (if (gx#stx-null? _tl3889339157_)
                                  (___kont4183041831_
                                   _hd3889439154_
                                   _hd3880339488_
                                   _hd3880039478_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3879438940_)))))
                          (let () (declare (not safe)) (_g3879438940_)))
                      (let () (declare (not safe)) (_g3879438940_)))
                  (if (gx#stx-datum? _hd3887139254_)
                      (let ((_e3890839077_ (gx#stx-e _hd3887139254_)))
                        (if (equal? _e3890839077_ '::)
                            (if (gx#stx-pair? _tl3887039257_)
                                (let ((_e3891139081_
                                       (gx#syntax-e _tl3887039257_)))
                                  (let ((_tl3890939088_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3891139081_)))
                                        (_hd3891039085_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3891139081_))))
                                    (if (gx#stx-null? _tl3890939088_)
                                        (___kont4183241833_
                                         _hd3891039085_
                                         _hd3880339488_
                                         _hd3880039478_)
                                        (if (gx#stx-pair? _tl3890939088_)
                                            (let ((_e3893138991_
                                                   (gx#syntax-e
                                                    _tl3890939088_)))
                                              (let ((_tl3892938998_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3893138991_)))
                                                    (_hd3893038995_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3893138991_))))
                                                (if (gx#identifier?
                                                     _hd3893038995_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g42296_|
                                                         _hd3893038995_)
                                                        (if (gx#stx-pair?
                                                             _tl3892938998_)
                                                            (let ((_e3893439001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3892938998_)))
                      (let ((_tl3893239008_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3893439001_)))
                            (_hd3893339005_
                             (let ()
                               (declare (not safe))
                               (##car _e3893439001_))))
                        (if (gx#stx-null? _tl3893239008_)
                            (___kont4183441835_
                             _hd3893339005_
                             _hd3891039085_
                             _hd3880339488_
                             _hd3880039478_)
                            (let () (declare (not safe)) (_g3879438940_)))))
                    (let () (declare (not safe)) (_g3879438940_)))
                (let () (declare (not safe)) (_g3879438940_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3879438940_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3879438940_))))))
                                (let () (declare (not safe)) (_g3879438940_)))
                            (let () (declare (not safe)) (_g3879438940_))))
                      (let () (declare (not safe)) (_g3879438940_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3880239491_)
                                                  (___kont4182841829_
                                                   _hd3880339488_
                                                   _hd3880039478_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3879438940_)))))))
                                  (if (gx#stx-pair? _tl3880239491_)
                                      (let ((_e3887239250_
                                             (gx#syntax-e _tl3880239491_)))
                                        (let ((_tl3887039257_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3887239250_)))
                                              (_hd3887139254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3887239250_))))
                                          (if (gx#stx-null? _tl3887039257_)
                                              (___kont4182641827_
                                               _hd3887139254_
                                               _hd3880339488_)
                                              (if (gx#identifier?
                                                   _hd3887139254_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g42295_|
                                                       _hd3887139254_)
                                                      (if (gx#stx-pair?
                                                           _tl3887039257_)
                                                          (let ((_e3889539150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3887039257_)))
                    (let ((_tl3889339157_
                           (let () (declare (not safe)) (##cdr _e3889539150_)))
                          (_hd3889439154_
                           (let ()
                             (declare (not safe))
                             (##car _e3889539150_))))
                      (if (gx#stx-null? _tl3889339157_)
                          (___kont4183041831_
                           _hd3889439154_
                           _hd3880339488_
                           _hd3880039478_)
                          (let () (declare (not safe)) (_g3879438940_)))))
                  (let () (declare (not safe)) (_g3879438940_)))
              (let () (declare (not safe)) (_g3879438940_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3887139254_)
                                                      (let ((_e3890839077_
                                                             (gx#stx-e
                                                              _hd3887139254_)))
                                                        (if (equal? _e3890839077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3887039257_)
                        (let ((_e3891139081_ (gx#syntax-e _tl3887039257_)))
                          (let ((_tl3890939088_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3891139081_)))
                                (_hd3891039085_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3891139081_))))
                            (if (gx#stx-null? _tl3890939088_)
                                (___kont4183241833_
                                 _hd3891039085_
                                 _hd3880339488_
                                 _hd3880039478_)
                                (if (gx#stx-pair? _tl3890939088_)
                                    (let ((_e3893138991_
                                           (gx#syntax-e _tl3890939088_)))
                                      (let ((_tl3892938998_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3893138991_)))
                                            (_hd3893038995_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3893138991_))))
                                        (if (gx#identifier? _hd3893038995_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g42296_|
                                                 _hd3893038995_)
                                                (if (gx#stx-pair?
                                                     _tl3892938998_)
                                                    (let ((_e3893439001_
                                                           (gx#syntax-e
                                                            _tl3892938998_)))
                                                      (let ((_tl3893239008_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3893439001_)))
                    (_hd3893339005_
                     (let () (declare (not safe)) (##car _e3893439001_))))
                (if (gx#stx-null? _tl3893239008_)
                    (___kont4183441835_
                     _hd3893339005_
                     _hd3891039085_
                     _hd3880339488_
                     _hd3880039478_)
                    (let () (declare (not safe)) (_g3879438940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3879438940_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3879438940_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3879438940_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3879438940_))))))
                        (let () (declare (not safe)) (_g3879438940_)))
                    (let () (declare (not safe)) (_g3879438940_))))
              (let () (declare (not safe)) (_g3879438940_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3880239491_)
                                          (___kont4182841829_
                                           _hd3880339488_
                                           _hd3880039478_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3879438940_)))))))
                          (let () (declare (not safe)) (_g3879438940_)))))
                  (let () (declare (not safe)) (_g3879438940_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_$stx39583_)
        (let* ((___stx4208142082_ _$stx39583_)
               (_g3958839622_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4208142082_))))
          (let ((___kont4208442085_
                 (lambda (_L39726_ _L39728_ _L39729_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _L39729_
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'make-match-macro)
                                           (cons 'macro:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        '$match-e)
                                       (cons _L39728_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _L39726_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'syntax-case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$stx)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (cons 'match:
                                               (gx#datum->syntax '#f 'body))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-apply-expander)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$match-e)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-wrap-source)
                               (cons (cons (gx#datum->syntax '#f 'syntax)
                                           (cons (gx#datum->syntax '#f 'body)
                                                 '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'stx-source)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$stx)
                                                       '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f '_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'core-apply-expander)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$macro-e)
                         (cons (gx#datum->syntax '#f '$stx) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4208642087_
                 (lambda (_L39659_ _L39661_ _L39662_)
                   (cons _L39662_
                         (cons _L39661_
                               (cons _L39659_
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$stx)
                                                             '())
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'raise-syntax-error)
                           (cons '#f
                                 (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                       (cons (gx#datum->syntax '#f '$stx)
                                             '()))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let ((___match4211442115_
                   (lambda (_e3959539686_
                            _hd3959439690_
                            _tl3959339693_
                            _e3959839696_
                            _hd3959739700_
                            _tl3959639703_
                            _e3960139706_
                            _hd3960039710_
                            _tl3959939713_
                            _e3960439716_
                            _hd3960339720_
                            _tl3960239723_)
                     (let ((_L39726_ _hd3960339720_)
                           (_L39728_ _hd3960039710_)
                           (_L39729_ _hd3959739700_))
                       (if (gx#identifier? _L39729_)
                           (___kont4208442085_ _L39726_ _L39728_ _L39729_)
                           (let () (declare (not safe)) (_g3958839622_)))))))
              (if (gx#stx-pair? ___stx4208142082_)
                  (let ((_e3959539686_ (gx#syntax-e ___stx4208142082_)))
                    (let ((_tl3959339693_
                           (let () (declare (not safe)) (##cdr _e3959539686_)))
                          (_hd3959439690_
                           (let ()
                             (declare (not safe))
                             (##car _e3959539686_))))
                      (if (gx#stx-pair? _tl3959339693_)
                          (let ((_e3959839696_ (gx#syntax-e _tl3959339693_)))
                            (let ((_tl3959639703_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3959839696_)))
                                  (_hd3959739700_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3959839696_))))
                              (if (gx#stx-pair? _tl3959639703_)
                                  (let ((_e3960139706_
                                         (gx#syntax-e _tl3959639703_)))
                                    (let ((_tl3959939713_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3960139706_)))
                                          (_hd3960039710_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3960139706_))))
                                      (if (gx#stx-pair? _tl3959939713_)
                                          (let ((_e3960439716_
                                                 (gx#syntax-e _tl3959939713_)))
                                            (let ((_tl3960239723_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3960439716_)))
                                                  (_hd3960339720_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3960439716_))))
                                              (if (gx#stx-null? _tl3960239723_)
                                                  (___match4211442115_
                                                   _e3959539686_
                                                   _hd3959439690_
                                                   _tl3959339693_
                                                   _e3959839696_
                                                   _hd3959739700_
                                                   _tl3959639703_
                                                   _e3960139706_
                                                   _hd3960039710_
                                                   _tl3959939713_
                                                   _e3960439716_
                                                   _hd3960339720_
                                                   _tl3960239723_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3958839622_)))))
                                          (if (gx#stx-null? _tl3959939713_)
                                              (___kont4208642087_
                                               _hd3960039710_
                                               _hd3959739700_
                                               _hd3959439690_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3958839622_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3958839622_)))))
                          (let () (declare (not safe)) (_g3958839622_)))))
                  (let () (declare (not safe)) (_g3958839622_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_$stx39751_)
        (let* ((_g3975539770_
                (lambda (_g3975639766_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3975639766_)))
               (_g3975439813_
                (lambda (_g3975639774_)
                  (if (gx#stx-pair? _g3975639774_)
                      (let ((_e3976139777_ (gx#syntax-e _g3975639774_)))
                        (let ((_hd3976039781_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3976139777_)))
                              (_tl3975939784_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3976139777_))))
                          (if (gx#stx-pair? _tl3975939784_)
                              (let ((_e3976439787_
                                     (gx#syntax-e _tl3975939784_)))
                                (let ((_hd3976339791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3976439787_)))
                                      (_tl3976239794_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3976439787_))))
                                  ((lambda (_L39797_ _L39799_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L39799_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L39797_)
                                                       '()))))
                                   _tl3976239794_
                                   _hd3976339791_)))
                              (_g3975539770_ _g3975639774_))))
                      (_g3975539770_ _g3975639774_)))))
          (_g3975439813_ _$stx39751_))))))
