(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g42943_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42944_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42948_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42949_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42950_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42952_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42953_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42954_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42955_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42956_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42957_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42958_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42959_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42960_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42961_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43024_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g43046_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g43049_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g43050_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43056_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43057_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43058_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43059_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g43060_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30347_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30347_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30344_)
        (if (gx#identifier? _stx30344_)
            (let ((__tmp42942 (gx#syntax-local-value _stx30344_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp42942))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28650_ _match-stx28652_)
        (letrec ((_parse128654_
                  (lambda (_hd29007_)
                    (let* ((___stx4012440125_ _hd29007_)
                           (_g2903329175_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4012440125_))))
                      (let ((___kont4012740128_
                             (lambda (_L30107_ _L30109_)
                               (let* ((___stx4004440045_ _L30107_)
                                      (_g3012630159_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4004440045_))))
                                 (let ((___kont4004740048_
                                        (lambda ()
                                          (cons '?: (cons _L30109_ '()))))
                                       (___kont4004940050_
                                        (lambda (_L30300_)
                                          (cons '?:
                                                (cons _L30109_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse128654_
                                                               _L30300_))
                                                            '())))))
                                       (___kont4005140052_
                                        (lambda (_L30270_)
                                          (cons '?:
                                                (cons _L30109_
                                                      (cons '=>:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (_parse128654_ _L30270_))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont4005340054_
                                        (lambda (_L30221_ _L30223_)
                                          (cons '?:
                                                (cons _L30109_
                                                      (cons '::
                                                            (cons _L30223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (let ()
                                        (declare (not safe))
                                        (_parse128654_ _L30221_))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont4005540056_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28661_ _hd29007_)))))
                                   (let ((_g3012230311_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4004440045_)
                                                (let ((_e3013130290_
                                                       (gx#syntax-e
                                                        ___stx4004440045_)))
                                                  (let ((_tl3012930297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3013130290_)))
                                                        (_hd3013030294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3013130290_))))
                                                    (if (gx#stx-null?
                                                         _tl3012930297_)
                                                        (___kont4004940050_
                                                         _hd3013030294_)
                                                        (if (gx#identifier?
                                                             _hd3013030294_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42944_|
                         _hd3013030294_)
                        (if (gx#stx-pair? _tl3012930297_)
                            (let ((_e3013830260_ (gx#syntax-e _tl3012930297_)))
                              (let ((_tl3013630267_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3013830260_)))
                                    (_hd3013730264_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3013830260_))))
                                (if (gx#stx-null? _tl3013630267_)
                                    (___kont4005140052_ _hd3013730264_)
                                    (___kont4005540056_))))
                            (___kont4005540056_))
                        (___kont4005540056_))
                    (if (gx#stx-datum? _hd3013030294_)
                        (let ((_e3014430187_ (gx#stx-e _hd3013030294_)))
                          (if (equal? _e3014430187_ '::)
                              (if (gx#stx-pair? _tl3012930297_)
                                  (let ((_e3014730191_
                                         (gx#syntax-e _tl3012930297_)))
                                    (let ((_tl3014530198_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3014730191_)))
                                          (_hd3014630195_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3014730191_))))
                                      (if (gx#stx-pair? _tl3014530198_)
                                          (let ((_e3015030201_
                                                 (gx#syntax-e _tl3014530198_)))
                                            (let ((_tl3014830208_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3015030201_)))
                                                  (_hd3014930205_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3015030201_))))
                                              (if (gx#identifier?
                                                   _hd3014930205_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42943_|
                                                       _hd3014930205_)
                                                      (if (gx#stx-pair?
                                                           _tl3014830208_)
                                                          (let ((_e3015330211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3014830208_)))
                    (let ((_tl3015130218_
                           (let () (declare (not safe)) (##cdr _e3015330211_)))
                          (_hd3015230215_
                           (let ()
                             (declare (not safe))
                             (##car _e3015330211_))))
                      (if (gx#stx-null? _tl3015130218_)
                          (___kont4005340054_ _hd3015230215_ _hd3014630195_)
                          (___kont4005540056_))))
                  (___kont4005540056_))
              (___kont4005540056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4005540056_))))
                                          (___kont4005540056_))))
                                  (___kont4005540056_))
                              (___kont4005540056_)))
                        (___kont4005540056_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4005540056_)))))
                                     (if (gx#stx-null? ___stx4004440045_)
                                         (___kont4004740048_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3012230311_))))))))
                            (___kont4012940130_
                             (lambda (_L30012_)
                               (let* ((___stx4002640027_ _L30012_)
                                      (_g3002430035_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4002640027_))))
                                 (let ((___kont4002940030_
                                        (lambda (_L30063_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128654_ _L30063_))))
                                       (___kont4003140032_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse128654_
                                                 _L30012_)))))
                                   (if (gx#stx-pair? ___stx4002640027_)
                                       (let ((_e3002930053_
                                              (gx#syntax-e ___stx4002640027_)))
                                         (let ((_tl3002730060_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3002930053_)))
                                               (_hd3002830057_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3002930053_))))
                                           (if (gx#stx-null? _tl3002730060_)
                                               (___kont4002940030_
                                                _hd3002830057_)
                                               (___kont4003140032_))))
                                       (___kont4003140032_))))))
                            (___kont4013140132_
                             (lambda (_L29927_)
                               (let* ((___stx4000840009_ _L29927_)
                                      (_g2993929950_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4000840009_))))
                                 (let ((___kont4001140012_
                                        (lambda (_L29978_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128654_ _L29978_))))
                                       (___kont4001340014_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse128654_
                                                 _L29927_)))))
                                   (if (gx#stx-pair? ___stx4000840009_)
                                       (let ((_e2994429968_
                                              (gx#syntax-e ___stx4000840009_)))
                                         (let ((_tl2994229975_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2994429968_)))
                                               (_hd2994329972_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2994429968_))))
                                           (if (gx#stx-null? _tl2994229975_)
                                               (___kont4001140012_
                                                _hd2994329972_)
                                               (___kont4001340014_))))
                                       (___kont4001340014_))))))
                            (___kont4013340134_
                             (lambda (_L29897_)
                               (cons 'not:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128654_ _L29897_))
                                           '()))))
                            (___kont4013540136_
                             (lambda (_L29853_ _L29855_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128654_ _L29855_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse128654_ _L29853_))
                                                 '())))))
                            (___kont4013740138_
                             (lambda (_L29797_ _L29799_ _L29800_)
                               (if (gx#stx-null? _L29797_)
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_parse128654_ _L29800_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (_parse128654_
                                                        _L29799_))
                                                     '())))
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_parse128654_ _L29800_))
                                               (cons (let ((__tmp42945
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons*)
                          (cons _L29799_ _L29797_))))
               (declare (not safe))
               (_parse128654_ __tmp42945))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont4013940140_
                             (lambda (_L29749_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28656_ _L29749_))))
                            (___kont4014140142_
                             (lambda (_L29719_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128654_ _L29719_))
                                           '()))))
                            (___kont4014340144_
                             (lambda (_L29682_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128654_ _L29682_))
                                           '()))))
                            (___kont4014540146_
                             (lambda (_L29658_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128654_ _L29658_))))
                            (___kont4014740148_
                             (lambda (_L29620_)
                               (cons 'values:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse-vector28657_ _L29620_))
                                           '()))))
                            (___kont4014940150_
                             (lambda (_L29592_)
                               (cons 'vector:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse-vector28657_ _L29592_))
                                           '()))))
                            (___kont4015140152_
                             (lambda (_L29553_)
                               (cons 'vector:
                                     (cons (let ((__tmp42946
                                                  (foldr (lambda (_g2956629569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2956729572_)
                   (cons _g2956629569_ _g2956729572_))
                 '()
                 _L29553_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_parse-vector28657_ __tmp42946))
                                           '()))))
                            (___kont4015540156_
                             (lambda (_L29499_ _L29501_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L29501_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-vector28657_
                                                    _L29499_))
                                                 '())))))
                            (___kont4015740158_
                             (lambda (_L29469_ _L29471_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L29471_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-class-body28659_
                                                    _L29469_))
                                                 '())))))
                            (___kont4015940160_
                             (lambda (_L29429_ _L29431_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _L29431_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _L29429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (___kont4016140162_
                             (lambda (_L29389_)
                               (cons 'datum: (cons (gx#stx-e _L29389_) '()))))
                            (___kont4016340164_
                             (lambda (_L29349_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28660_ _L29349_))))
                            (___kont4016540166_
                             (lambda (_L29305_ _L29307_)
                               (cons 'apply:
                                     (cons _L29307_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse128654_ _L29305_))
                                                 '())))))
                            (___kont4016740168_
                             (lambda (_L29253_)
                               (let ((__tmp42947
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29253_)
                                       (gx#stx-wrap-source
                                        (cons 'match: _hd29007_)
                                        (let ((_$e29264_
                                               (gx#stx-source _hd29007_)))
                                          (if _$e29264_
                                              _$e29264_
                                              (gx#stx-source _stx28650_)))))))
                                 (declare (not safe))
                                 (_parse128654_ __tmp42947))))
                            (___kont4016940170_
                             (lambda (_L29227_) (cons 'any: '())))
                            (___kont4017140172_
                             (lambda (_L29211_)
                               (cons 'var: (cons _L29211_ '()))))
                            (___kont4017340174_
                             (lambda (_L29193_)
                               (cons 'datum: (cons (gx#stx-e _L29193_) '()))))
                            (___kont4017540176_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28661_ _hd29007_)))))
                        (let* ((_g2903129204_
                                (lambda ()
                                  (let ((_L29193_ ___stx4012440125_))
                                    (if (gx#stx-datum? _L29193_)
                                        (___kont4017340174_ _L29193_)
                                        (___kont4017540176_)))))
                               (_g2903029220_
                                (lambda ()
                                  (let ((_L29211_ ___stx4012440125_))
                                    (if (and (gx#identifier? _L29211_)
                                             (not (gx#ellipsis? _L29211_)))
                                        (___kont4017140172_ _L29211_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2903129204_))))))
                               (_g2902929236_
                                (lambda ()
                                  (let ((_L29227_ ___stx4012440125_))
                                    (if (gx#underscore? _L29227_)
                                        (___kont4016940170_ _L29227_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2903029220_))))))
                               (___match4045140452_
                                (lambda (_e2916629243_
                                         _hd2916529247_
                                         _tl2916429250_)
                                  (let ((_L29253_ _hd2916529247_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29253_))
                                        (___kont4016740168_ _L29253_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2902929236_))))))
                               (___match4038540386_
                                (lambda (_e2913429409_
                                         _hd2913329413_
                                         _tl2913229416_
                                         _e2913729419_
                                         _hd2913629423_
                                         _tl2913529426_)
                                  (let ((_L29429_ _hd2913629423_)
                                        (_L29431_ _hd2913329413_))
                                    (if (and (gx#identifier? _L29431_)
                                             (or (gx#free-identifier=?
                                                  _L29431_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29431_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29431_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4015940160_ _L29429_ _L29431_)
                                        (if (gx#identifier? _hd2913329413_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g42949_|
                                                 _hd2913329413_)
                                                (___kont4016140162_
                                                 _hd2913629423_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g42948_|
                                                     _hd2913329413_)
                                                    (___kont4016340164_
                                                     _hd2913629423_)
                                                    (___match4045140452_
                                                     _e2913429409_
                                                     _hd2913329413_
                                                     _tl2913229416_)))
                                            (___match4045140452_
                                             _e2913429409_
                                             _hd2913329413_
                                             _tl2913229416_))))))
                               (___match4037140372_
                                (lambda (_e2912929459_
                                         _hd2912829463_
                                         _tl2912729466_)
                                  (let ((_L29469_ _tl2912729466_)
                                        (_L29471_ _hd2912829463_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                           _L29471_))
                                        (___kont4015740158_ _L29469_ _L29471_)
                                        (if (gx#stx-pair? _tl2912729466_)
                                            (let ((_e2913729419_
                                                   (gx#syntax-e
                                                    _tl2912729466_)))
                                              (let ((_tl2913529426_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2913729419_)))
                                                    (_hd2913629423_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2913729419_))))
                                                (if (gx#stx-null?
                                                     _tl2913529426_)
                                                    (___match4038540386_
                                                     _e2912929459_
                                                     _hd2912829463_
                                                     _tl2912729466_
                                                     _e2913729419_
                                                     _hd2913629423_
                                                     _tl2913529426_)
                                                    (if (gx#identifier?
                                                         _hd2912829463_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g42949_|
                                                             _hd2912829463_)
                                                            (___match4045140452_
                                                             _e2912929459_
                                                             _hd2912829463_
                                                             _tl2912729466_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42948_|
                         _hd2912829463_)
                        (___match4045140452_
                         _e2912929459_
                         _hd2912829463_
                         _tl2912729466_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42950_|
                             _hd2912829463_)
                            (if (gx#stx-pair? _tl2913529426_)
                                (let ((_e2916229295_
                                       (gx#syntax-e _tl2913529426_)))
                                  (let ((_tl2916029302_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2916229295_)))
                                        (_hd2916129299_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2916229295_))))
                                    (if (gx#stx-null? _tl2916029302_)
                                        (___kont4016540166_
                                         _hd2916129299_
                                         _hd2913629423_)
                                        (___match4045140452_
                                         _e2912929459_
                                         _hd2912829463_
                                         _tl2912729466_))))
                                (___match4045140452_
                                 _e2912929459_
                                 _hd2912829463_
                                 _tl2912729466_))
                            (___match4045140452_
                             _e2912929459_
                             _hd2912829463_
                             _tl2912729466_))))
                (___match4045140452_
                 _e2912929459_
                 _hd2912829463_
                 _tl2912729466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4045140452_
                                             _e2912929459_
                                             _hd2912829463_
                                             _tl2912729466_))))))
                               (___match4036540366_
                                (lambda (_e2912429489_
                                         _hd2912329493_
                                         _tl2912229496_)
                                  (let ((_L29499_ _tl2912229496_)
                                        (_L29501_ _hd2912329493_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                           _L29501_))
                                        (___kont4015540156_ _L29499_ _L29501_)
                                        (___match4037140372_
                                         _e2912429489_
                                         _hd2912329493_
                                         _tl2912229496_)))))
                               (___match4035940360_
                                (lambda (_e2911029519_
                                         ___splice4015340154_
                                         _target2911129523_
                                         _tl2911329526_)
                                  (letrec ((_loop2911429529_
                                            (lambda (_hd2911229533_
                                                     _body2911829536_)
                                              (if (gx#stx-pair? _hd2911229533_)
                                                  (let ((_e2911529539_
                                                         (gx#syntax-e
                                                          _hd2911229533_)))
                                                    (let ((_lp-tl2911729546_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2911529539_)))
                                                          (_lp-hd2911629543_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2911529539_))))
                                                      (let ((__tmp42951
                                                             (cons _lp-hd2911629543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2911829536_)))
                (declare (not safe))
                (_loop2911429529_ _lp-tl2911729546_ __tmp42951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2911929549_
                                                         (reverse _body2911829536_)))
                                                    (___kont4015140152_
                                                     _body2911929549_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2911429529_
                                       _target2911129523_
                                       '())))))
                               (_g2902129575_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4012440125_)
                                      (let ((_e2911029519_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4012440125_))))
                                        (if (gx#stx-pair/null? _e2911029519_)
                                            (let ((___splice4015340154_
                                                   (gx#syntax-split-splice
                                                    _e2911029519_
                                                    '0)))
                                              (let ((_tl2911329526_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4015340154_
                                                        '1)))
                                                    (_target2911129523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4015340154_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2911329526_)
                                                    (___match4035940360_
                                                     _e2911029519_
                                                     ___splice4015340154_
                                                     _target2911129523_
                                                     _tl2911329526_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2902929236_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2902929236_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2902929236_)))))
                               (_g2901729692_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4012440125_)
                                      (let ((_e2909329678_
                                             (unbox (gx#syntax-e
                                                     ___stx4012440125_))))
                                        (___kont4014340144_ _e2909329678_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2902129575_)))))
                               (___match4021340214_
                                (lambda (_e2905029917_
                                         _hd2904929921_
                                         _tl2904829924_)
                                  (let ((_L29927_ _tl2904829924_))
                                    (if (gx#stx-list? _L29927_)
                                        (___kont4013140132_ _L29927_)
                                        (___match4036540366_
                                         _e2905029917_
                                         _hd2904929921_
                                         _tl2904829924_)))))
                               (___match4020340204_
                                (lambda (_e2904630002_
                                         _hd2904530006_
                                         _tl2904430009_)
                                  (let ((_L30012_ _tl2904430009_))
                                    (if (gx#stx-list? _L30012_)
                                        (___kont4012940130_ _L30012_)
                                        (___match4036540366_
                                         _e2904630002_
                                         _hd2904530006_
                                         _tl2904430009_))))))
                          (if (gx#stx-pair? ___stx4012440125_)
                              (let ((_e2903930087_
                                     (gx#syntax-e ___stx4012440125_)))
                                (let ((_tl2903730094_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2903930087_)))
                                      (_hd2903830091_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2903930087_))))
                                  (if (gx#identifier? _hd2903830091_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42961_|
                                           _hd2903830091_)
                                          (if (gx#stx-pair? _tl2903730094_)
                                              (let ((_e2904230097_
                                                     (gx#syntax-e
                                                      _tl2903730094_)))
                                                (let ((_tl2904030104_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2904230097_)))
                                                      (_hd2904130101_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2904230097_))))
                                                  (___kont4012740128_
                                                   _tl2904030104_
                                                   _hd2904130101_)))
                                              (___match4036540366_
                                               _e2903930087_
                                               _hd2903830091_
                                               _tl2903730094_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42960_|
                                               _hd2903830091_)
                                              (___match4020340204_
                                               _e2903930087_
                                               _hd2903830091_
                                               _tl2903730094_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g42959_|
                                                   _hd2903830091_)
                                                  (___match4021340214_
                                                   _e2903930087_
                                                   _hd2903830091_
                                                   _tl2903730094_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42958_|
                                                       _hd2903830091_)
                                                      (if (gx#stx-pair?
                                                           _tl2903730094_)
                                                          (let ((_e2905729887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2903730094_)))
                    (let ((_tl2905529894_
                           (let () (declare (not safe)) (##cdr _e2905729887_)))
                          (_hd2905629891_
                           (let ()
                             (declare (not safe))
                             (##car _e2905729887_))))
                      (if (gx#stx-null? _tl2905529894_)
                          (___kont4013340134_ _hd2905629891_)
                          (___match4036540366_
                           _e2903930087_
                           _hd2903830091_
                           _tl2903730094_))))
                  (___match4036540366_
                   _e2903930087_
                   _hd2903830091_
                   _tl2903730094_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g42957_|
                   _hd2903830091_)
                  (if (gx#stx-pair? _tl2903730094_)
                      (let ((_e2906529833_ (gx#syntax-e _tl2903730094_)))
                        (let ((_tl2906329840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2906529833_)))
                              (_hd2906429837_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2906529833_))))
                          (if (gx#stx-pair? _tl2906329840_)
                              (let ((_e2906829843_
                                     (gx#syntax-e _tl2906329840_)))
                                (let ((_tl2906629850_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2906829843_)))
                                      (_hd2906729847_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2906829843_))))
                                  (if (gx#stx-null? _tl2906629850_)
                                      (___kont4013540136_
                                       _hd2906729847_
                                       _hd2906429837_)
                                      (___match4036540366_
                                       _e2903930087_
                                       _hd2903830091_
                                       _tl2903730094_))))
                              (___match4036540366_
                               _e2903930087_
                               _hd2903830091_
                               _tl2903730094_))))
                      (___match4036540366_
                       _e2903930087_
                       _hd2903830091_
                       _tl2903730094_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g42956_|
                       _hd2903830091_)
                      (if (gx#stx-pair? _tl2903730094_)
                          (let ((_e2907729777_ (gx#syntax-e _tl2903730094_)))
                            (let ((_tl2907529784_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2907729777_)))
                                  (_hd2907629781_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2907729777_))))
                              (if (gx#stx-pair? _tl2907529784_)
                                  (let ((_e2908029787_
                                         (gx#syntax-e _tl2907529784_)))
                                    (let ((_tl2907829794_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2908029787_)))
                                          (_hd2907929791_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2908029787_))))
                                      (___kont4013740138_
                                       _tl2907829794_
                                       _hd2907929791_
                                       _hd2907629781_)))
                                  (___match4036540366_
                                   _e2903930087_
                                   _hd2903830091_
                                   _tl2903730094_))))
                          (___match4036540366_
                           _e2903930087_
                           _hd2903830091_
                           _tl2903730094_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g42955_|
                           _hd2903830091_)
                          (___kont4013940140_ _tl2903730094_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42954_|
                               _hd2903830091_)
                              (if (gx#stx-pair? _tl2903730094_)
                                  (let ((_e2909129709_
                                         (gx#syntax-e _tl2903730094_)))
                                    (let ((_tl2908929716_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2909129709_)))
                                          (_hd2909029713_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2909129709_))))
                                      (if (gx#stx-null? _tl2908929716_)
                                          (___kont4014140142_ _hd2909029713_)
                                          (___match4036540366_
                                           _e2903930087_
                                           _hd2903830091_
                                           _tl2903730094_))))
                                  (___match4036540366_
                                   _e2903930087_
                                   _hd2903830091_
                                   _tl2903730094_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42953_|
                                   _hd2903830091_)
                                  (if (gx#stx-pair? _tl2903730094_)
                                      (let ((_e2910029648_
                                             (gx#syntax-e _tl2903730094_)))
                                        (let ((_tl2909829655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2910029648_)))
                                              (_hd2909929652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2910029648_))))
                                          (if (gx#stx-null? _tl2909829655_)
                                              (___kont4014540146_
                                               _hd2909929652_)
                                              (___kont4014740148_
                                               _tl2903730094_))))
                                      (___kont4014740148_ _tl2903730094_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42952_|
                                       _hd2903830091_)
                                      (___kont4014940150_ _tl2903730094_)
                                      (___match4036540366_
                                       _e2903930087_
                                       _hd2903830091_
                                       _tl2903730094_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4036540366_
                                       _e2903930087_
                                       _hd2903830091_
                                       _tl2903730094_))))
                              (let ()
                                (declare (not safe))
                                (_g2901729692_))))))))
                 (_parse-list28656_
                  (lambda (_body28836_)
                    (let* ((___stx4045440455_ _body28836_)
                           (_g2884228871_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4045440455_))))
                      (let ((___kont4045740458_
                             (lambda (_L28989_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128654_ _L28989_))))
                            (___kont4045940460_
                             (lambda (_L28941_ _L28943_ _L28944_)
                               (cons 'splice:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128654_ _L28944_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-list28656_
                                                    _L28941_))
                                                 '())))))
                            (___kont4046140462_
                             (lambda (_L28899_ _L28901_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128654_ _L28901_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-list28656_
                                                    _L28899_))
                                                 '())))))
                            (___kont4046340464_
                             (lambda ()
                               (if (gx#stx-null? _body28836_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _body28836_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128654_ _body28836_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28661_ _body28836_)))))))
                        (let* ((___match4050340504_
                                (lambda (_e2886528889_
                                         _hd2886428893_
                                         _tl2886328896_)
                                  (let ((_L28899_ _tl2886328896_)
                                        (_L28901_ _hd2886428893_))
                                    (if (not (gx#ellipsis? _L28901_))
                                        (___kont4046140462_ _L28899_ _L28901_)
                                        (___kont4046340464_)))))
                               (___match4049740498_
                                (lambda (_e2885728921_
                                         _hd2885628925_
                                         _tl2885528928_
                                         _e2886028931_
                                         _hd2885928935_
                                         _tl2885828938_)
                                  (let ((_L28941_ _tl2885828938_)
                                        (_L28943_ _hd2885928935_)
                                        (_L28944_ _hd2885628925_))
                                    (if (gx#ellipsis? _L28943_)
                                        (___kont4045940460_
                                         _L28941_
                                         _L28943_
                                         _L28944_)
                                        (___match4050340504_
                                         _e2885728921_
                                         _hd2885628925_
                                         _tl2885528928_))))))
                          (if (gx#stx-pair? ___stx4045440455_)
                              (let ((_e2884728965_
                                     (gx#syntax-e ___stx4045440455_)))
                                (let ((_tl2884528972_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2884728965_)))
                                      (_hd2884628969_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2884728965_))))
                                  (if (gx#stx-datum? _hd2884628969_)
                                      (let ((_e2884828975_
                                             (gx#stx-e _hd2884628969_)))
                                        (if (equal? _e2884828975_ '::)
                                            (if (gx#stx-pair? _tl2884528972_)
                                                (let ((_e2885128979_
                                                       (gx#syntax-e
                                                        _tl2884528972_)))
                                                  (let ((_tl2884928986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2885128979_)))
                                                        (_hd2885028983_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2885128979_))))
                                                    (if (gx#stx-null?
                                                         _tl2884928986_)
                                                        (___kont4045740458_
                                                         _hd2885028983_)
                                                        (___match4049740498_
                                                         _e2884728965_
                                                         _hd2884628969_
                                                         _tl2884528972_
                                                         _e2885128979_
                                                         _hd2885028983_
                                                         _tl2884928986_))))
                                                (___match4050340504_
                                                 _e2884728965_
                                                 _hd2884628969_
                                                 _tl2884528972_))
                                            (if (gx#stx-pair? _tl2884528972_)
                                                (let ((_e2886028931_
                                                       (gx#syntax-e
                                                        _tl2884528972_)))
                                                  (let ((_tl2885828938_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2886028931_)))
                                                        (_hd2885928935_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2886028931_))))
                                                    (___match4049740498_
                                                     _e2884728965_
                                                     _hd2884628969_
                                                     _tl2884528972_
                                                     _e2886028931_
                                                     _hd2885928935_
                                                     _tl2885828938_)))
                                                (___match4050340504_
                                                 _e2884728965_
                                                 _hd2884628969_
                                                 _tl2884528972_))))
                                      (if (gx#stx-pair? _tl2884528972_)
                                          (let ((_e2886028931_
                                                 (gx#syntax-e _tl2884528972_)))
                                            (let ((_tl2885828938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2886028931_)))
                                                  (_hd2885928935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2886028931_))))
                                              (___match4049740498_
                                               _e2884728965_
                                               _hd2884628969_
                                               _tl2884528972_
                                               _e2886028931_
                                               _hd2885928935_
                                               _tl2885828938_)))
                                          (___match4050340504_
                                           _e2884728965_
                                           _hd2884628969_
                                           _tl2884528972_)))))
                              (___kont4046340464_)))))))
                 (_parse-vector28657_
                  (lambda (_body28833_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28658_ _body28833_))
                        (cons 'simple:
                              (cons (gx#stx-map _parse128654_ _body28833_)
                                    '()))
                        (cons 'list:
                              (cons (let ()
                                      (declare (not safe))
                                      (_parse-list28656_ _body28833_))
                                    '())))))
                 (_simple-vector?28658_
                  (lambda (_body28770_)
                    (let* ((___stx4050640507_ _body28770_)
                           (_g2877428786_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4050640507_))))
                      (let ((___kont4050940510_
                             (lambda (_L28814_ _L28816_)
                               (if (not (gx#ellipsis? _L28816_))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28658_ _L28814_))
                                   '#f)))
                            (___kont4051140512_
                             (lambda () (gx#stx-null? _body28770_))))
                        (if (gx#stx-pair? ___stx4050640507_)
                            (let ((_e2878028804_
                                   (gx#syntax-e ___stx4050640507_)))
                              (let ((_tl2877828811_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2878028804_)))
                                    (_hd2877928808_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2878028804_))))
                                (___kont4050940510_
                                 _tl2877828811_
                                 _hd2877928808_)))
                            (___kont4051140512_))))))
                 (_parse-class-body28659_
                  (lambda (_body28679_)
                    (let _recur28682_ ((_rest28685_ _body28679_))
                      (let* ((___stx4052240523_ _rest28685_)
                             (_g2868928705_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4052240523_))))
                        (let ((___kont4052540526_
                               (lambda (_L28743_ _L28745_ _L28746_)
                                 (cons* _L28746_
                                        (let ()
                                          (declare (not safe))
                                          (_parse128654_ _L28745_))
                                        (let ()
                                          (declare (not safe))
                                          (_recur28682_ _L28743_)))))
                              (___kont4052740528_
                               (lambda ()
                                 (if (gx#stx-null? _rest28685_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28661_ _rest28685_))))))
                          (let ((___match4054140542_
                                 (lambda (_e2869628723_
                                          _hd2869528727_
                                          _tl2869428730_
                                          _e2869928733_
                                          _hd2869828737_
                                          _tl2869728740_)
                                   (let ((_L28743_ _tl2869728740_)
                                         (_L28745_ _hd2869828737_)
                                         (_L28746_ _hd2869528727_))
                                     (if (gx#stx-keyword? _L28746_)
                                         (___kont4052540526_
                                          _L28743_
                                          _L28745_
                                          _L28746_)
                                         (___kont4052740528_))))))
                            (if (gx#stx-pair? ___stx4052240523_)
                                (let ((_e2869628723_
                                       (gx#syntax-e ___stx4052240523_)))
                                  (let ((_tl2869428730_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2869628723_)))
                                        (_hd2869528727_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2869628723_))))
                                    (if (gx#stx-pair? _tl2869428730_)
                                        (let ((_e2869928733_
                                               (gx#syntax-e _tl2869428730_)))
                                          (let ((_tl2869728740_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2869928733_)))
                                                (_hd2869828737_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2869928733_))))
                                            (___match4054140542_
                                             _e2869628723_
                                             _hd2869528727_
                                             _tl2869428730_
                                             _e2869928733_
                                             _hd2869828737_
                                             _tl2869728740_)))
                                        (___kont4052740528_))))
                                (___kont4052740528_))))))))
                 (_parse-qq28660_
                  (lambda (_hd28666_)
                    (let ((_g2866828675_
                           (lambda (_g2866928671_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2866928671_))))
                      (declare (not safe))
                      (_g2866828675_ _hd28666_))))
                 (_parse-error28661_
                  (lambda (_hd28663_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"Bad syntax; illegal pattern"
                           (if _match-stx28652_
                               (cons _match-stx28652_
                                     (cons _stx28650_ (cons _hd28663_ '())))
                               (cons _stx28650_ (cons _hd28663_ '())))))))
          (let () (declare (not safe)) (_parse128654_ _stx28650_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30334_)
        (let ((_match-stx30337_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30334_
           _match-stx30337_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g42963_
        (let ((_g42962_ (let () (declare (not safe)) (##length _g42963_))))
          (cond ((let () (declare (not safe)) (##fx= _g42962_ 1))
                 (apply (lambda (_stx30334_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30334_)))
                        _g42963_))
                ((let () (declare (not safe)) (##fx= _g42962_ 2))
                 (apply (lambda (_stx30340_ _match-stx30342_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30340_
                             _match-stx30342_)))
                        _g42963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g42963_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28634_)
        (call-with-current-continuation
         (lambda (_E28638_)
           (with-exception-handler
            (let ((_E!28641_ (current-exception-handler)))
              (lambda (_e28644_)
                (if (syntax-error? _e28644_)
                    (_E28638_ '#f)
                    (_E!28641_ _e28644_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28634_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27369_)
        (letrec ((_loop27372_
                  (lambda (_ptree27659_ _vars27661_ _K27662_)
                    (let* ((___stx4064040641_ _ptree27659_)
                           (_g2767527785_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4064040641_))))
                      (let ((___kont4064340644_
                             (lambda (_L28415_)
                               (let* ((___stx4056040561_ _L28415_)
                                      (_g2843228466_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4056040561_))))
                                 (let ((___kont4056340564_
                                        (lambda (_L28615_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27372_
                                             _L28615_
                                             _vars27661_
                                             _K27662_))))
                                       (___kont4056540566_
                                        (lambda (_L28584_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27372_
                                             _L28584_
                                             _vars27661_
                                             _K27662_))))
                                       (___kont4056740568_
                                        (lambda (_L28532_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27372_
                                             _L28532_
                                             _vars27661_
                                             _K27662_))))
                                       (___kont4056940570_
                                        (lambda () (_K27662_ _vars27661_))))
                                   (if (gx#stx-pair? ___stx4056040561_)
                                       (let ((_e2843728605_
                                              (gx#syntax-e ___stx4056040561_)))
                                         (let ((_tl2843528612_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2843728605_)))
                                               (_hd2843628609_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2843728605_))))
                                           (if (gx#stx-null? _tl2843528612_)
                                               (___kont4056340564_
                                                _hd2843628609_)
                                               (if (gx#stx-datum?
                                                    _hd2843628609_)
                                                   (let ((_e2844228570_
                                                          (gx#stx-e
                                                           _hd2843628609_)))
                                                     (if (equal? _e2844228570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _tl2843528612_)
                     (let ((_e2844528574_ (gx#syntax-e _tl2843528612_)))
                       (let ((_tl2844328581_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2844528574_)))
                             (_hd2844428578_
                              (let ()
                                (declare (not safe))
                                (##car _e2844528574_))))
                         (if (gx#stx-null? _tl2844328581_)
                             (___kont4056540566_ _hd2844428578_)
                             (___kont4056940570_))))
                     (___kont4056940570_))
                 (if (equal? _e2844228570_ '::)
                     (if (gx#stx-pair? _tl2843528612_)
                         (let ((_e2845328498_ (gx#syntax-e _tl2843528612_)))
                           (let ((_tl2845128505_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2845328498_)))
                                 (_hd2845228502_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2845328498_))))
                             (if (gx#stx-pair? _tl2845128505_)
                                 (let ((_e2845628508_
                                        (gx#syntax-e _tl2845128505_)))
                                   (let ((_tl2845428515_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2845628508_)))
                                         (_hd2845528512_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2845628508_))))
                                     (if (gx#stx-datum? _hd2845528512_)
                                         (let ((_e2845728518_
                                                (gx#stx-e _hd2845528512_)))
                                           (if (equal? _e2845728518_ '=>:)
                                               (if (gx#stx-pair?
                                                    _tl2845428515_)
                                                   (let ((_e2846028522_
                                                          (gx#syntax-e
                                                           _tl2845428515_)))
                                                     (let ((_tl2845828529_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2846028522_)))
                                                           (_hd2845928526_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2846028522_))))
                                                       (if (gx#stx-null?
                                                            _tl2845828529_)
                                                           (___kont4056740568_
                                                            _hd2845928526_)
                                                           (___kont4056940570_))))
                                                   (___kont4056940570_))
                                               (___kont4056940570_)))
                                         (___kont4056940570_))))
                                 (___kont4056940570_))))
                         (___kont4056940570_))
                     (___kont4056940570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4056940570_)))))
                                       (___kont4056940570_))))))
                            (___kont4064540646_
                             (lambda (_L28302_ _L28304_)
                               (let* ((___stx4054440545_ _L28302_)
                                      (_g2832028332_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4054440545_))))
                                 (let ((___kont4054740548_
                                        (lambda (_L28360_ _L28362_)
                                          (let ((__tmp42964
                                                 (lambda (_g2837428376_)
                                                   (let ((__tmp42965
                                                          (cons _L28304_
                                                                _L28360_)))
                                                     (declare (not safe))
                                                     (_loop27372_
                                                      __tmp42965
                                                      _g2837428376_
                                                      _K27662_)))))
                                            (declare (not safe))
                                            (_loop27372_
                                             _L28362_
                                             _vars27661_
                                             __tmp42964))))
                                       (___kont4054940550_
                                        (lambda () (_K27662_ _vars27661_))))
                                   (if (gx#stx-pair? ___stx4054440545_)
                                       (let ((_e2832628350_
                                              (gx#syntax-e ___stx4054440545_)))
                                         (let ((_tl2832428357_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2832628350_)))
                                               (_hd2832528354_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2832628350_))))
                                           (___kont4054740548_
                                            _tl2832428357_
                                            _hd2832528354_)))
                                       (___kont4054940550_))))))
                            (___kont4064740648_
                             (lambda (_L28271_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27372_ _L28271_ _vars27661_ _K27662_))))
                            (___kont4064940650_
                             (lambda (_L28217_ _L28219_)
                               (let ((__tmp42966
                                      (lambda (_g2823428236_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27372_
                                           _L28217_
                                           _g2823428236_
                                           _K27662_)))))
                                 (declare (not safe))
                                 (_loop27372_
                                  _L28219_
                                  _vars27661_
                                  __tmp42966))))
                            (___kont4065140652_
                             (lambda (_L28153_ _L28155_)
                               (let ((__tmp42967
                                      (lambda (_g2817028172_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27372_
                                           _L28153_
                                           _g2817028172_
                                           _K27662_)))))
                                 (declare (not safe))
                                 (_loop27372_
                                  _L28155_
                                  _vars27661_
                                  __tmp42967))))
                            (___kont4065340654_
                             (lambda (_L28098_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27372_ _L28098_ _vars27661_ _K27662_))))
                            (___kont4065540656_
                             (lambda (_L28048_ _L28050_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27374_
                                  _L28048_
                                  _vars27661_
                                  _K27662_))))
                            (___kont4065740658_
                             (lambda (_L28005_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27374_
                                  _L28005_
                                  _vars27661_
                                  _K27662_))))
                            (___kont4065940660_
                             (lambda (_L27948_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27376_
                                  _L27948_
                                  _vars27661_
                                  _K27662_))))
                            (___kont4066140662_
                             (lambda (_L27889_ _L27891_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27372_ _L27889_ _vars27661_ _K27662_))))
                            (___kont4066340664_
                             (lambda (_L27827_)
                               (if (find (lambda (_g2784227844_)
                                           (gx#bound-identifier=?
                                            _g2784227844_
                                            _L27827_))
                                         _vars27661_)
                                   (_K27662_ _vars27661_)
                                   (_K27662_ (cons _L27827_ _vars27661_)))))
                            (___kont4066540666_
                             (lambda () (_K27662_ _vars27661_))))
                        (let* ((___match4079740798_
                                (lambda (_e2773428028_
                                         _hd2773328032_
                                         _tl2773228035_
                                         _e2773728038_
                                         _hd2773628042_
                                         _tl2773528045_)
                                  (let ((_L28048_ _hd2773628042_)
                                        (_L28050_ _hd2773328032_))
                                    (if (or (gx#stx-eq? 'values: _L28050_)
                                            (gx#stx-eq? 'vector: _L28050_))
                                        (___kont4065540656_ _L28048_ _L28050_)
                                        (if (gx#stx-datum? _hd2773328032_)
                                            (let ((_e2774227981_
                                                   (gx#stx-e _hd2773328032_)))
                                              (if (equal? _e2774227981_
                                                          'struct:)
                                                  (___kont4066540666_)
                                                  (if (equal? _e2774227981_
                                                              'class:)
                                                      (___kont4066540666_)
                                                      (if (equal? _e2774227981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (___kont4066540666_)
                  (if (equal? _e2774227981_ 'var:)
                      (___kont4066340664_ _hd2773628042_)
                      (___kont4066540666_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4066540666_))))))
                               (___match4069140692_
                                (lambda (_e2768928292_
                                         _hd2768828296_
                                         _tl2768728299_)
                                  (let ((_L28302_ _tl2768728299_)
                                        (_L28304_ _hd2768828296_))
                                    (if (or (gx#stx-eq? 'and: _L28304_)
                                            (gx#stx-eq? 'or: _L28304_))
                                        (___kont4064540646_ _L28302_ _L28304_)
                                        (if (gx#stx-datum? _hd2768828296_)
                                            (let ((_e2769428257_
                                                   (gx#stx-e _hd2768828296_)))
                                              (if (equal? _e2769428257_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl2768728299_)
                                                      (let ((_e2769728261_
                                                             (gx#syntax-e
                                                              _tl2768728299_)))
                                                        (let ((_tl2769528268_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2769728261_)))
                      (_hd2769628265_
                       (let () (declare (not safe)) (##car _e2769728261_))))
                  (if (gx#stx-null? _tl2769528268_)
                      (___kont4064740648_ _hd2769628265_)
                      (___kont4066540666_))))
              (___kont4066540666_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _e2769428257_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl2768728299_)
                                                          (let ((_e2770628197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2768728299_)))
                    (let ((_tl2770428204_
                           (let () (declare (not safe)) (##cdr _e2770628197_)))
                          (_hd2770528201_
                           (let ()
                             (declare (not safe))
                             (##car _e2770628197_))))
                      (if (gx#stx-pair? _tl2770428204_)
                          (let ((_e2770928207_ (gx#syntax-e _tl2770428204_)))
                            (let ((_tl2770728214_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2770928207_)))
                                  (_hd2770828211_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2770928207_))))
                              (if (gx#stx-null? _tl2770728214_)
                                  (___kont4064940650_
                                   _hd2770828211_
                                   _hd2770528201_)
                                  (___kont4066540666_))))
                          (if (gx#stx-null? _tl2770428204_)
                              (___match4079740798_
                               _e2768928292_
                               _hd2768828296_
                               _tl2768728299_
                               _e2770628197_
                               _hd2770528201_
                               _tl2770428204_)
                              (___kont4066540666_)))))
                  (___kont4066540666_))
              (if (equal? _e2769428257_ 'splice:)
                  (if (gx#stx-pair? _tl2768728299_)
                      (let ((_e2771828133_ (gx#syntax-e _tl2768728299_)))
                        (let ((_tl2771628140_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2771828133_)))
                              (_hd2771728137_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2771828133_))))
                          (if (gx#stx-pair? _tl2771628140_)
                              (let ((_e2772128143_
                                     (gx#syntax-e _tl2771628140_)))
                                (let ((_tl2771928150_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2772128143_)))
                                      (_hd2772028147_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2772128143_))))
                                  (if (gx#stx-null? _tl2771928150_)
                                      (___kont4065140652_
                                       _hd2772028147_
                                       _hd2771728137_)
                                      (___kont4066540666_))))
                              (if (gx#stx-null? _tl2771628140_)
                                  (___match4079740798_
                                   _e2768928292_
                                   _hd2768828296_
                                   _tl2768728299_
                                   _e2771828133_
                                   _hd2771728137_
                                   _tl2771628140_)
                                  (___kont4066540666_)))))
                      (___kont4066540666_))
                  (if (equal? _e2769428257_ 'box:)
                      (if (gx#stx-pair? _tl2768728299_)
                          (let ((_e2772928088_ (gx#syntax-e _tl2768728299_)))
                            (let ((_tl2772728095_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2772928088_)))
                                  (_hd2772828092_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2772928088_))))
                              (if (gx#stx-null? _tl2772728095_)
                                  (___kont4065340654_ _hd2772828092_)
                                  (___kont4066540666_))))
                          (___kont4066540666_))
                      (if (gx#stx-pair? _tl2768728299_)
                          (let ((_e2773728038_ (gx#syntax-e _tl2768728299_)))
                            (let ((_tl2773528045_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2773728038_)))
                                  (_hd2773628042_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2773728038_))))
                              (if (gx#stx-null? _tl2773528045_)
                                  (___match4079740798_
                                   _e2768928292_
                                   _hd2768828296_
                                   _tl2768728299_
                                   _e2773728038_
                                   _hd2773628042_
                                   _tl2773528045_)
                                  (if (equal? _e2769428257_ 'struct:)
                                      (if (gx#stx-pair? _tl2773528045_)
                                          (let ((_e2774827995_
                                                 (gx#syntax-e _tl2773528045_)))
                                            (let ((_tl2774628002_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2774827995_)))
                                                  (_hd2774727999_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2774827995_))))
                                              (if (gx#stx-null? _tl2774628002_)
                                                  (___kont4065740658_
                                                   _hd2774727999_)
                                                  (___kont4066540666_))))
                                          (___kont4066540666_))
                                      (if (equal? _e2769428257_ 'class:)
                                          (if (gx#stx-pair? _tl2773528045_)
                                              (let ((_e2775927938_
                                                     (gx#syntax-e
                                                      _tl2773528045_)))
                                                (let ((_tl2775727945_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2775927938_)))
                                                      (_hd2775827942_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2775927938_))))
                                                  (if (gx#stx-null?
                                                       _tl2775727945_)
                                                      (___kont4065940660_
                                                       _hd2775827942_)
                                                      (___kont4066540666_))))
                                              (___kont4066540666_))
                                          (if (equal? _e2769428257_ 'apply:)
                                              (if (gx#stx-pair? _tl2773528045_)
                                                  (let ((_e2777127879_
                                                         (gx#syntax-e
                                                          _tl2773528045_)))
                                                    (let ((_tl2776927886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2777127879_)))
                                                          (_hd2777027883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2777127879_))))
                                                      (if (gx#stx-null?
                                                           _tl2776927886_)
                                                          (___kont4066140662_
                                                           _hd2777027883_
                                                           _hd2773628042_)
                                                          (___kont4066540666_))))
                                                  (___kont4066540666_))
                                              (___kont4066540666_)))))))
                          (___kont4066540666_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2768728299_)
                                                (let ((_e2773728038_
                                                       (gx#syntax-e
                                                        _tl2768728299_)))
                                                  (let ((_tl2773528045_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2773728038_)))
                                                        (_hd2773628042_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2773728038_))))
                                                    (if (gx#stx-null?
                                                         _tl2773528045_)
                                                        (___match4079740798_
                                                         _e2768928292_
                                                         _hd2768828296_
                                                         _tl2768728299_
                                                         _e2773728038_
                                                         _hd2773628042_
                                                         _tl2773528045_)
                                                        (___kont4066540666_))))
                                                (___kont4066540666_))))))))
                          (if (gx#stx-pair? ___stx4064040641_)
                              (let ((_e2768028391_
                                     (gx#syntax-e ___stx4064040641_)))
                                (let ((_tl2767828398_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2768028391_)))
                                      (_hd2767928395_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2768028391_))))
                                  (if (gx#stx-datum? _hd2767928395_)
                                      (let ((_e2768128401_
                                             (gx#stx-e _hd2767928395_)))
                                        (if (equal? _e2768128401_ '?:)
                                            (if (gx#stx-pair? _tl2767828398_)
                                                (let ((_e2768428405_
                                                       (gx#syntax-e
                                                        _tl2767828398_)))
                                                  (let ((_tl2768228412_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2768428405_)))
                                                        (_hd2768328409_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2768428405_))))
                                                    (___kont4064340644_
                                                     _tl2768228412_)))
                                                (___match4069140692_
                                                 _e2768028391_
                                                 _hd2767928395_
                                                 _tl2767828398_))
                                            (___match4069140692_
                                             _e2768028391_
                                             _hd2767928395_
                                             _tl2767828398_)))
                                      (___match4069140692_
                                       _e2768028391_
                                       _hd2767928395_
                                       _tl2767828398_))))
                              (___kont4066540666_)))))))
                 (_loop-vector27374_
                  (lambda (_body27535_ _vars27537_ _K27538_)
                    (let* ((___stx4089840899_ _body27535_)
                           (_g2754127564_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4089840899_))))
                      (let ((___kont4090140902_
                             (lambda (_L27641_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27375_
                                  _L27641_
                                  _vars27537_
                                  _K27538_))))
                            (___kont4090340904_
                             (lambda (_L27595_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27372_
                                  _L27595_
                                  _vars27537_
                                  _K27538_)))))
                        (if (gx#stx-pair? ___stx4089840899_)
                            (let ((_e2754627617_
                                   (gx#syntax-e ___stx4089840899_)))
                              (let ((_tl2754427624_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2754627617_)))
                                    (_hd2754527621_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2754627617_))))
                                (if (gx#stx-datum? _hd2754527621_)
                                    (let ((_e2754727627_
                                           (gx#stx-e _hd2754527621_)))
                                      (if (equal? _e2754727627_ 'simple:)
                                          (if (gx#stx-pair? _tl2754427624_)
                                              (let ((_e2755027631_
                                                     (gx#syntax-e
                                                      _tl2754427624_)))
                                                (let ((_tl2754827638_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2755027631_)))
                                                      (_hd2754927635_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2755027631_))))
                                                  (if (gx#stx-null?
                                                       _tl2754827638_)
                                                      (___kont4090140902_
                                                       _hd2754927635_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2754127564_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2754127564_)))
                                          (if (equal? _e2754727627_ 'list:)
                                              (if (gx#stx-pair? _tl2754427624_)
                                                  (let ((_e2755827585_
                                                         (gx#syntax-e
                                                          _tl2754427624_)))
                                                    (let ((_tl2755627592_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2755827585_)))
                                                          (_hd2755727589_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2755827585_))))
                                                      (if (gx#stx-null?
                                                           _tl2755627592_)
                                                          (___kont4090340904_
                                                           _hd2755727589_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2754127564_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2754127564_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2754127564_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2754127564_)))))
                            (let () (declare (not safe)) (_g2754127564_)))))))
                 (_loop-list27375_
                  (lambda (_rest27465_ _vars27467_ _K27468_)
                    (let* ((___stx4094840949_ _rest27465_)
                           (_g2747127483_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4094840949_))))
                      (let ((___kont4095140952_
                             (lambda (_L27511_ _L27513_)
                               (let ((__tmp42968
                                      (lambda (_g2752527527_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27375_
                                           _L27511_
                                           _g2752527527_
                                           _K27468_)))))
                                 (declare (not safe))
                                 (_loop27372_
                                  _L27513_
                                  _vars27467_
                                  __tmp42968))))
                            (___kont4095340954_
                             (lambda () (_K27468_ _vars27467_))))
                        (if (gx#stx-pair? ___stx4094840949_)
                            (let ((_e2747727501_
                                   (gx#syntax-e ___stx4094840949_)))
                              (let ((_tl2747527508_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2747727501_)))
                                    (_hd2747627505_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2747727501_))))
                                (___kont4095140952_
                                 _tl2747527508_
                                 _hd2747627505_)))
                            (___kont4095340954_))))))
                 (_loop-class-list27376_
                  (lambda (_rest27378_ _vars27380_ _K27381_)
                    (let* ((___stx4096440965_ _rest27378_)
                           (_g2738427399_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4096440965_))))
                      (let ((___kont4096740968_
                             (lambda (_L27437_ _L27439_)
                               (let ((__tmp42969
                                      (lambda (_g2745527457_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27376_
                                           _L27437_
                                           _g2745527457_
                                           _K27381_)))))
                                 (declare (not safe))
                                 (_loop27372_
                                  _L27439_
                                  _vars27380_
                                  __tmp42969))))
                            (___kont4096940970_
                             (lambda () (_K27381_ _vars27380_))))
                        (if (gx#stx-pair? ___stx4096440965_)
                            (let ((_e2739027417_
                                   (gx#syntax-e ___stx4096440965_)))
                              (let ((_tl2738827424_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2739027417_)))
                                    (_hd2738927421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2739027417_))))
                                (if (gx#stx-pair? _tl2738827424_)
                                    (let ((_e2739327427_
                                           (gx#syntax-e _tl2738827424_)))
                                      (let ((_tl2739127434_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2739327427_)))
                                            (_hd2739227431_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2739327427_))))
                                        (___kont4096740968_
                                         _tl2739127434_
                                         _hd2739227431_)))
                                    (___kont4096940970_))))
                            (___kont4096940970_)))))))
          (let ()
            (declare (not safe))
            (_loop27372_ _ptree27369_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx23952_ _tgt23954_ _ptree23955_ _K23956_ _E23957_)
        (letrec ((_generate123959_
                  (lambda (_tgt25582_ _ptree25584_ _K25585_ _E25586_)
                    (let* ((_g2558825596_
                            (lambda (_g2558925592_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2558925592_)))
                           (_g2558727365_
                            (lambda (_g2558925600_)
                              ((lambda (_L25603_)
                                 (let ()
                                   (let* ((___stx4120041201_ _ptree25584_)
                                          (_g2563025772_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4120041201_))))
                                     (let ((___kont4120341204_
                                            (lambda (_L27080_ _L27082_)
                                              (let* ((___stx4111841119_
                                                      _L27080_)
                                                     (_g2709927134_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4111841119_))))
                                                (let ((___kont4112141122_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L27082_ (cons _L25603_ '())))
                             (cons _K25585_ (cons _E25586_ '()))))))
              (___kont4112341124_
               (lambda (_L27335_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _L27082_ (cons _L25603_ '())))
                             (cons (let ()
                                     (declare (not safe))
                                     (_generate123959_
                                      _tgt25582_
                                      _L27335_
                                      _K25585_
                                      _E25586_))
                                   (cons _E25586_ '()))))))
              (___kont4112541126_
               (lambda (_L27273_)
                 (let* ((_g2728727295_
                         (lambda (_g2728827291_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2728827291_)))
                        (_g2728627314_
                         (lambda (_g2728827299_)
                           ((lambda (_L27302_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _L27302_
                                                        (cons (cons _L27082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L25603_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _L27302_
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (_generate123959_
                               _L27302_
                               _L27273_
                               _K25585_
                               _E25586_))
                            (cons _E25586_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g2728827299_)))
                        (__tmp42970 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2728627314_ __tmp42970))))
              (___kont4112741128_
               (lambda (_L27189_ _L27191_)
                 (let* ((_g2721127219_
                         (lambda (_g2721227215_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2721227215_)))
                        (_g2721027238_
                         (lambda (_g2721227223_)
                           ((lambda (_L27226_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L27082_
                                                        (cons _L25603_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L27226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L27191_ (cons _L25603_ '()))
                                        '()))
                            '())
                      (cons (let ()
                              (declare (not safe))
                              (_generate123959_
                               _L27226_
                               _L27189_
                               _K25585_
                               _E25586_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25586_ '()))))))
                            _g2721227223_)))
                        (__tmp42971 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2721027238_ __tmp42971)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2709627346_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4111841119_)
                                                               (let ((_e2710427325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4111841119_)))
                         (let ((_tl2710227332_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2710427325_)))
                               (_hd2710327329_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2710427325_))))
                           (if (gx#stx-null? _tl2710227332_)
                               (___kont4112341124_ _hd2710327329_)
                               (if (gx#stx-datum? _hd2710327329_)
                                   (let ((_e2710927259_
                                          (gx#stx-e _hd2710327329_)))
                                     (if (equal? _e2710927259_ '=>:)
                                         (if (gx#stx-pair? _tl2710227332_)
                                             (let ((_e2711227263_
                                                    (gx#syntax-e
                                                     _tl2710227332_)))
                                               (let ((_tl2711027270_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2711227263_)))
                                                     (_hd2711127267_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2711227263_))))
                                                 (if (gx#stx-null?
                                                      _tl2711027270_)
                                                     (___kont4112541126_
                                                      _hd2711127267_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2709927134_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2709927134_)))
                                         (if (equal? _e2710927259_ '::)
                                             (if (gx#stx-pair? _tl2710227332_)
                                                 (let ((_e2712127155_
                                                        (gx#syntax-e
                                                         _tl2710227332_)))
                                                   (let ((_tl2711927162_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2712127155_)))
                                                         (_hd2712027159_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2712127155_))))
                                                     (if (gx#stx-pair?
                                                          _tl2711927162_)
                                                         (let ((_e2712427165_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2711927162_)))
                   (let ((_tl2712227172_
                          (let () (declare (not safe)) (##cdr _e2712427165_)))
                         (_hd2712327169_
                          (let () (declare (not safe)) (##car _e2712427165_))))
                     (if (gx#stx-datum? _hd2712327169_)
                         (let ((_e2712527175_ (gx#stx-e _hd2712327169_)))
                           (if (equal? _e2712527175_ '=>:)
                               (if (gx#stx-pair? _tl2712227172_)
                                   (let ((_e2712827179_
                                          (gx#syntax-e _tl2712227172_)))
                                     (let ((_tl2712627186_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2712827179_)))
                                           (_hd2712727183_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2712827179_))))
                                       (if (gx#stx-null? _tl2712627186_)
                                           (___kont4112741128_
                                            _hd2712727183_
                                            _hd2712027159_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2709927134_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2709927134_)))
                               (let () (declare (not safe)) (_g2709927134_))))
                         (let () (declare (not safe)) (_g2709927134_)))))
                 (let () (declare (not safe)) (_g2709927134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2709927134_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2709927134_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2709927134_))))))
                       (let () (declare (not safe)) (_g2709927134_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4111841119_)
                                                        (___kont4112141122_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2709627346_))))))))
                                           (___kont4120541206_
                                            (lambda (_L26977_)
                                              (let* ((___stx4110241103_
                                                      _L26977_)
                                                     (_g2699027002_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4110241103_))))
                                                (let ((___kont4110541106_
                                                       (lambda (_L27030_
                                                                _L27032_)
                                                         (let ((__tmp42972
                                                                (let ((__tmp42973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'and: _L27030_)))
                          (declare (not safe))
                          (_generate123959_
                           _tgt25582_
                           __tmp42973
                           _K25585_
                           _E25586_))))
                   (declare (not safe))
                   (_generate123959_
                    _tgt25582_
                    _L27032_
                    __tmp42972
                    _E25586_))))
              (___kont4110741108_ (lambda () _K25585_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4110241103_)
                                                      (let ((_e2699627020_
                                                             (gx#syntax-e
                                                              ___stx4110241103_)))
                                                        (let ((_tl2699427027_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2699627020_)))
                      (_hd2699527024_
                       (let () (declare (not safe)) (##car _e2699627020_))))
                  (___kont4110541106_ _tl2699427027_ _hd2699527024_)))
              (___kont4110741108_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4120741208_
                                            (lambda (_L26884_)
                                              (let* ((___stx4108641087_
                                                      _L26884_)
                                                     (_g2689726909_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4108641087_))))
                                                (let ((___kont4108941090_
                                                       (lambda (_L26937_
                                                                _L26939_)
                                                         (let ((__tmp42974
                                                                (let ((__tmp42975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'or: _L26937_)))
                          (declare (not safe))
                          (_generate123959_
                           _tgt25582_
                           __tmp42975
                           _K25585_
                           _E25586_))))
                   (declare (not safe))
                   (_generate123959_
                    _tgt25582_
                    _L26939_
                    _K25585_
                    __tmp42974))))
              (___kont4109141092_ (lambda () _E25586_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4108641087_)
                                                      (let ((_e2690326927_
                                                             (gx#syntax-e
                                                              ___stx4108641087_)))
                                                        (let ((_tl2690126934_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2690326927_)))
                      (_hd2690226931_
                       (let () (declare (not safe)) (##car _e2690326927_))))
                  (___kont4108941090_ _tl2690126934_ _hd2690226931_)))
              (___kont4109141092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4120941210_
                                            (lambda (_L26849_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate123959_
                                                 _tgt25582_
                                                 _L26849_
                                                 _E25586_
                                                 _K25585_))))
                                           (___kont4121141212_
                                            (lambda (_L26731_ _L26733_)
                                              (let* ((_g2675026765_
                                                      (lambda (_g2675126761_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2675126761_)))
                                                     (_g2674926814_
                                                      (lambda (_g2675126769_)
                                                        (if (gx#stx-pair?
                                                             _g2675126769_)
                                                            (let ((_e2675626772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2675126769_)))
                      (let ((_hd2675526776_
                             (let ()
                               (declare (not safe))
                               (##car _e2675626772_)))
                            (_tl2675426779_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2675626772_))))
                        (if (gx#stx-pair? _tl2675426779_)
                            (let ((_e2675926782_ (gx#syntax-e _tl2675426779_)))
                              (let ((_hd2675826786_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2675926782_)))
                                    (_tl2675726789_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2675926782_))))
                                (if (gx#stx-null? _tl2675726789_)
                                    ((lambda (_L26792_ _L26794_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _L25603_ '()))
                                                     (cons (let ((_hd-pat26810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _L26733_))
                         (_tl-pat26812_ (gx#stx-e _L26731_)))
                     (if (and (equal? _hd-pat26810_ '(any:))
                              (equal? _tl-pat26812_ '(any:)))
                         _K25585_
                         (if (equal? _tl-pat26812_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _L26794_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _L25603_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_generate123959_
                                                  _L26794_
                                                  _L26733_
                                                  _K25585_
                                                  _E25586_))
                                               '())))
                             (if (equal? _hd-pat26810_ '(any:))
                                 (cons 'let
                                       (cons (cons (cons _L26792_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L25603_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (_generate123959_
                                                      _L26792_
                                                      _L26731_
                                                      _K25585_
                                                      _E25586_))
                                                   '())))
                                 (cons 'let
                                       (cons (cons (cons _L26794_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L25603_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L26792_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L25603_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (let ((__tmp42976
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_generate123959_
                                                             _L26792_
                                                             _L26731_
                                                             _K25585_
                                                             _E25586_))))
                                                     (declare (not safe))
                                                     (_generate123959_
                                                      _L26794_
                                                      _L26733_
                                                      __tmp42976
                                                      _E25586_))
                                                   '())))))))
                   (cons _E25586_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2675826786_
                                     _hd2675526776_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2675026765_ _g2675126769_)))))
                            (let ()
                              (declare (not safe))
                              (_g2675026765_ _g2675126769_)))))
                    (let ()
                      (declare (not safe))
                      (_g2675026765_ _g2675126769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42977
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2674926814_ __tmp42977))))
                                           (___kont4121341214_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _L25603_ '()))
                  (cons _K25585_ (cons _E25586_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4121541216_
                                            (lambda (_L26647_ _L26649_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice23961_
                                                 _tgt25582_
                                                 _L26649_
                                                 _L26647_
                                                 _K25585_
                                                 _E25586_))))
                                           (___kont4121741218_
                                            (lambda (_L26561_)
                                              (let* ((_g2657526583_
                                                      (lambda (_g2657626579_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2657626579_)))
                                                     (_g2657426602_
                                                      (lambda (_g2657626587_)
                                                        ((lambda (_L26590_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _L25603_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _L26590_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _L25603_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_generate123959_
                                                            _L26590_
                                                            _L26561_
                                                            _K25585_
                                                            _E25586_))
                                                         '())))
                                       (cons _E25586_ '()))))))
                 _g2657626587_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42978
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2657426602_ __tmp42978))))
                                           (___kont4121941220_
                                            (lambda (_L26366_)
                                              (let* ((___stx4103641037_
                                                      _L26366_)
                                                     (_g2638126404_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4103641037_))))
                                                (let ((___kont4103941040_
                                                       (lambda (_L26481_)
                                                         (let* ((_g2649526503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2649626499_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2649626499_)))
                        (_g2649426522_
                         (lambda (_g2649626507_)
                           ((lambda (_L26510_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L25603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L26510_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (_generate-simple-vector23962_
                                                     _tgt25582_
                                                     _L26481_
                                                     '0
                                                     _K25585_
                                                     _E25586_))
                                                  (cons _E25586_ '()))))))
                            _g2649626507_)))
                        (__tmp42979 (gx#stx-length _L26481_)))
                   (declare (not safe))
                   (_g2649426522_ __tmp42979))))
              (___kont4104141042_
               (lambda (_L26435_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector23963_
                    _tgt25582_
                    _L26435_
                    'values->list
                    _K25585_
                    _E25586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4103641037_)
                                                      (let ((_e2638626457_
                                                             (gx#syntax-e
                                                              ___stx4103641037_)))
                                                        (let ((_tl2638426464_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2638626457_)))
                      (_hd2638526461_
                       (let () (declare (not safe)) (##car _e2638626457_))))
                  (if (gx#stx-datum? _hd2638526461_)
                      (let ((_e2638726467_ (gx#stx-e _hd2638526461_)))
                        (if (equal? _e2638726467_ 'simple:)
                            (if (gx#stx-pair? _tl2638426464_)
                                (let ((_e2639026471_
                                       (gx#syntax-e _tl2638426464_)))
                                  (let ((_tl2638826478_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2639026471_)))
                                        (_hd2638926475_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2639026471_))))
                                    (if (gx#stx-null? _tl2638826478_)
                                        (___kont4103941040_ _hd2638926475_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2638126404_)))))
                                (let () (declare (not safe)) (_g2638126404_)))
                            (if (equal? _e2638726467_ 'list:)
                                (if (gx#stx-pair? _tl2638426464_)
                                    (let ((_e2639826425_
                                           (gx#syntax-e _tl2638426464_)))
                                      (let ((_tl2639626432_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2639826425_)))
                                            (_hd2639726429_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2639826425_))))
                                        (if (gx#stx-null? _tl2639626432_)
                                            (___kont4104141042_ _hd2639726429_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2638126404_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2638126404_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2638126404_)))))
                      (let () (declare (not safe)) (_g2638126404_)))))
              (let () (declare (not safe)) (_g2638126404_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4122141222_
                                            (lambda (_L26171_)
                                              (let* ((___stx4098640987_
                                                      _L26171_)
                                                     (_g2618626209_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4098640987_))))
                                                (let ((___kont4098940990_
                                                       (lambda (_L26286_)
                                                         (let* ((_g2630026308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2630126304_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2630126304_)))
                        (_g2629926327_
                         (lambda (_g2630126312_)
                           ((lambda (_L26315_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _L25603_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _L25603_ '()))
                                  (cons _L26315_ '())))
                      (cons (let ()
                              (declare (not safe))
                              (_generate-simple-vector23962_
                               _tgt25582_
                               _L26286_
                               '0
                               _K25585_
                               _E25586_))
                            (cons _E25586_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25586_ '()))))))
                            _g2630126312_)))
                        (__tmp42980 (gx#stx-length _L26286_)))
                   (declare (not safe))
                   (_g2629926327_ __tmp42980))))
              (___kont4099140992_
               (lambda (_L26240_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L25603_ '()))
                             (cons (let ()
                                     (declare (not safe))
                                     (_generate-list-vector23963_
                                      _tgt25582_
                                      _L26240_
                                      'vector->list
                                      _K25585_
                                      _E25586_))
                                   (cons _E25586_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4098640987_)
                                                      (let ((_e2619126262_
                                                             (gx#syntax-e
                                                              ___stx4098640987_)))
                                                        (let ((_tl2618926269_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2619126262_)))
                      (_hd2619026266_
                       (let () (declare (not safe)) (##car _e2619126262_))))
                  (if (gx#stx-datum? _hd2619026266_)
                      (let ((_e2619226272_ (gx#stx-e _hd2619026266_)))
                        (if (equal? _e2619226272_ 'simple:)
                            (if (gx#stx-pair? _tl2618926269_)
                                (let ((_e2619526276_
                                       (gx#syntax-e _tl2618926269_)))
                                  (let ((_tl2619326283_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2619526276_)))
                                        (_hd2619426280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2619526276_))))
                                    (if (gx#stx-null? _tl2619326283_)
                                        (___kont4098940990_ _hd2619426280_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2618626209_)))))
                                (let () (declare (not safe)) (_g2618626209_)))
                            (if (equal? _e2619226272_ 'list:)
                                (if (gx#stx-pair? _tl2618926269_)
                                    (let ((_e2620326230_
                                           (gx#syntax-e _tl2618926269_)))
                                      (let ((_tl2620126237_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2620326230_)))
                                            (_hd2620226234_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2620326230_))))
                                        (if (gx#stx-null? _tl2620126237_)
                                            (___kont4099140992_ _hd2620226234_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2618626209_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2618626209_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2618626209_)))))
                      (let () (declare (not safe)) (_g2618626209_)))))
              (let () (declare (not safe)) (_g2618626209_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4122341224_
                                            (lambda (_L26122_ _L26124_)
                                              (let ((__tmp42981
                                                     (gx#stx-e _L26124_)))
                                                (declare (not safe))
                                                (_generate-struct23964_
                                                 __tmp42981
                                                 _tgt25582_
                                                 _L26122_
                                                 _K25585_
                                                 _E25586_))))
                                           (___kont4122541226_
                                            (lambda (_L26063_ _L26065_)
                                              (let ((__tmp42982
                                                     (gx#stx-e _L26065_)))
                                                (declare (not safe))
                                                (_generate-class23965_
                                                 __tmp42982
                                                 _tgt25582_
                                                 _L26063_
                                                 _K25585_
                                                 _E25586_))))
                                           (___kont4122741228_
                                            (lambda (_L25966_)
                                              (let* ((_g2598025988_
                                                      (lambda (_g2598125984_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2598125984_)))
                                                     (_g2597926007_
                                                      (lambda (_g2598125992_)
                                                        ((lambda (_L25995_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _L25995_
                                       (cons _L25603_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _L25966_ '()))
                                                   '())))
                                 (cons _K25585_ (cons _E25586_ '()))))))
                 _g2598125992_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42983
                                                      (let ((_e26011_
                                                             (gx#stx-e
                                                              _L25966_)))
                                                        (if (or (symbol? _e26011_)
                                                                (keyword?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e26011_)
                        (immediate? _e26011_))
                    '##eq?
                    (if (number? _e26011_) 'eqv? 'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2597926007_ __tmp42983))))
                                           (___kont4122941230_
                                            (lambda (_L25886_ _L25888_)
                                              (let* ((_g2590425912_
                                                      (lambda (_g2590525908_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2590525908_)))
                                                     (_g2590325931_
                                                      (lambda (_g2590525916_)
                                                        ((lambda (_L25919_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _L25919_
                                             (cons (cons _L25888_
                                                         (cons _L25603_ '()))
                                                   '()))
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (_generate123959_
                                          _L25919_
                                          _L25886_
                                          _K25585_
                                          _E25586_))
                                       '())))))
                 _g2590525916_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42984
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2590325931_ __tmp42984))))
                                           (___kont4123141232_
                                            (lambda (_L25828_)
                                              (cons 'let
                                                    (cons (cons (cons _L25828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L25603_ '()))
                        '())
                  (cons _K25585_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4123341234_
                                            (lambda () _K25585_)))
                                       (if (gx#stx-pair? ___stx4120041201_)
                                           (let ((_e2563627056_
                                                  (gx#syntax-e
                                                   ___stx4120041201_)))
                                             (let ((_tl2563427063_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2563627056_)))
                                                   (_hd2563527060_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2563627056_))))
                                               (if (gx#stx-datum?
                                                    _hd2563527060_)
                                                   (let ((_e2563727066_
                                                          (gx#stx-e
                                                           _hd2563527060_)))
                                                     (if (equal? _e2563727066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl2563427063_)
                     (let ((_e2564027070_ (gx#syntax-e _tl2563427063_)))
                       (let ((_tl2563827077_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2564027070_)))
                             (_hd2563927074_
                              (let ()
                                (declare (not safe))
                                (##car _e2564027070_))))
                         (___kont4120341204_ _tl2563827077_ _hd2563927074_)))
                     (let () (declare (not safe)) (_g2563025772_)))
                 (if (equal? _e2563727066_ 'and:)
                     (___kont4120541206_ _tl2563427063_)
                     (if (equal? _e2563727066_ 'or:)
                         (___kont4120741208_ _tl2563427063_)
                         (if (equal? _e2563727066_ 'not:)
                             (if (gx#stx-pair? _tl2563427063_)
                                 (let ((_e2565826839_
                                        (gx#syntax-e _tl2563427063_)))
                                   (let ((_tl2565626846_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2565826839_)))
                                         (_hd2565726843_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2565826839_))))
                                     (if (gx#stx-null? _tl2565626846_)
                                         (___kont4120941210_ _hd2565726843_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2563025772_)))))
                                 (let () (declare (not safe)) (_g2563025772_)))
                             (if (equal? _e2563727066_ 'cons:)
                                 (if (gx#stx-pair? _tl2563427063_)
                                     (let ((_e2566726711_
                                            (gx#syntax-e _tl2563427063_)))
                                       (let ((_tl2566526718_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2566726711_)))
                                             (_hd2566626715_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2566726711_))))
                                         (if (gx#stx-pair? _tl2566526718_)
                                             (let ((_e2567026721_
                                                    (gx#syntax-e
                                                     _tl2566526718_)))
                                               (let ((_tl2566826728_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2567026721_)))
                                                     (_hd2566926725_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2567026721_))))
                                                 (if (gx#stx-null?
                                                      _tl2566826728_)
                                                     (___kont4121141212_
                                                      _hd2566926725_
                                                      _hd2566626715_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2563025772_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2563025772_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2563025772_)))
                                 (if (equal? _e2563727066_ 'null:)
                                     (if (gx#stx-null? _tl2563427063_)
                                         (___kont4121341214_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2563025772_)))
                                     (if (equal? _e2563727066_ 'splice:)
                                         (if (gx#stx-pair? _tl2563427063_)
                                             (let ((_e2568326627_
                                                    (gx#syntax-e
                                                     _tl2563427063_)))
                                               (let ((_tl2568126634_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2568326627_)))
                                                     (_hd2568226631_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2568326627_))))
                                                 (if (gx#stx-pair?
                                                      _tl2568126634_)
                                                     (let ((_e2568626637_
                                                            (gx#syntax-e
                                                             _tl2568126634_)))
                                                       (let ((_tl2568426644_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2568626637_)))
                     (_hd2568526641_
                      (let () (declare (not safe)) (##car _e2568626637_))))
                 (if (gx#stx-null? _tl2568426644_)
                     (___kont4121541216_ _hd2568526641_ _hd2568226631_)
                     (let () (declare (not safe)) (_g2563025772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2563025772_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2563025772_)))
                                         (if (equal? _e2563727066_ 'box:)
                                             (if (gx#stx-pair? _tl2563427063_)
                                                 (let ((_e2569426551_
                                                        (gx#syntax-e
                                                         _tl2563427063_)))
                                                   (let ((_tl2569226558_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2569426551_)))
                                                         (_hd2569326555_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2569426551_))))
                                                     (if (gx#stx-null?
                                                          _tl2569226558_)
                                                         (___kont4121741218_
                                                          _hd2569326555_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2563025772_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2563025772_)))
                                             (if (equal? _e2563727066_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl2563427063_)
                                                     (let ((_e2570226356_
                                                            (gx#syntax-e
                                                             _tl2563427063_)))
                                                       (let ((_tl2570026363_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2570226356_)))
                     (_hd2570126360_
                      (let () (declare (not safe)) (##car _e2570226356_))))
                 (if (gx#stx-null? _tl2570026363_)
                     (___kont4121941220_ _hd2570126360_)
                     (let () (declare (not safe)) (_g2563025772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2563025772_)))
                                                 (if (equal? _e2563727066_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl2563427063_)
                                                         (let ((_e2571026161_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2563427063_)))
                   (let ((_tl2570826168_
                          (let () (declare (not safe)) (##cdr _e2571026161_)))
                         (_hd2570926165_
                          (let () (declare (not safe)) (##car _e2571026161_))))
                     (if (gx#stx-null? _tl2570826168_)
                         (___kont4122141222_ _hd2570926165_)
                         (let () (declare (not safe)) (_g2563025772_)))))
                 (let () (declare (not safe)) (_g2563025772_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e2563727066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl2563427063_)
                     (let ((_e2571926102_ (gx#syntax-e _tl2563427063_)))
                       (let ((_tl2571726109_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2571926102_)))
                             (_hd2571826106_
                              (let ()
                                (declare (not safe))
                                (##car _e2571926102_))))
                         (if (gx#stx-pair? _tl2571726109_)
                             (let ((_e2572226112_
                                    (gx#syntax-e _tl2571726109_)))
                               (let ((_tl2572026119_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2572226112_)))
                                     (_hd2572126116_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2572226112_))))
                                 (if (gx#stx-null? _tl2572026119_)
                                     (___kont4122341224_
                                      _hd2572126116_
                                      _hd2571826106_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2563025772_)))))
                             (let () (declare (not safe)) (_g2563025772_)))))
                     (let () (declare (not safe)) (_g2563025772_)))
                 (if (equal? _e2563727066_ 'class:)
                     (if (gx#stx-pair? _tl2563427063_)
                         (let ((_e2573126043_ (gx#syntax-e _tl2563427063_)))
                           (let ((_tl2572926050_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2573126043_)))
                                 (_hd2573026047_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2573126043_))))
                             (if (gx#stx-pair? _tl2572926050_)
                                 (let ((_e2573426053_
                                        (gx#syntax-e _tl2572926050_)))
                                   (let ((_tl2573226060_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2573426053_)))
                                         (_hd2573326057_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2573426053_))))
                                     (if (gx#stx-null? _tl2573226060_)
                                         (___kont4122541226_
                                          _hd2573326057_
                                          _hd2573026047_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2563025772_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2563025772_)))))
                         (let () (declare (not safe)) (_g2563025772_)))
                     (if (equal? _e2563727066_ 'datum:)
                         (if (gx#stx-pair? _tl2563427063_)
                             (let ((_e2574225956_
                                    (gx#syntax-e _tl2563427063_)))
                               (let ((_tl2574025963_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2574225956_)))
                                     (_hd2574125960_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2574225956_))))
                                 (if (gx#stx-null? _tl2574025963_)
                                     (___kont4122741228_ _hd2574125960_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2563025772_)))))
                             (let () (declare (not safe)) (_g2563025772_)))
                         (if (equal? _e2563727066_ 'apply:)
                             (if (gx#stx-pair? _tl2563427063_)
                                 (let ((_e2575125866_
                                        (gx#syntax-e _tl2563427063_)))
                                   (let ((_tl2574925873_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2575125866_)))
                                         (_hd2575025870_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2575125866_))))
                                     (if (gx#stx-pair? _tl2574925873_)
                                         (let ((_e2575425876_
                                                (gx#syntax-e _tl2574925873_)))
                                           (let ((_tl2575225883_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2575425876_)))
                                                 (_hd2575325880_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2575425876_))))
                                             (if (gx#stx-null? _tl2575225883_)
                                                 (___kont4122941230_
                                                  _hd2575325880_
                                                  _hd2575025870_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2563025772_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2563025772_)))))
                                 (let () (declare (not safe)) (_g2563025772_)))
                             (if (equal? _e2563727066_ 'var:)
                                 (if (gx#stx-pair? _tl2563427063_)
                                     (let ((_e2576225818_
                                            (gx#syntax-e _tl2563427063_)))
                                       (let ((_tl2576025825_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2576225818_)))
                                             (_hd2576125822_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2576225818_))))
                                         (if (gx#stx-null? _tl2576025825_)
                                             (___kont4123141232_
                                              _hd2576125822_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2563025772_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2563025772_)))
                                 (if (equal? _e2563727066_ 'any:)
                                     (if (gx#stx-null? _tl2563427063_)
                                         (___kont4123341234_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2563025772_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2563025772_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2563025772_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2563025772_)))))))
                               _g2558925600_))))
                      (declare (not safe))
                      (_g2558727365_ _tgt25582_))))
                 (_generate-splice23961_
                  (lambda (_tgt24954_ _hd24956_ _rest24957_ _K24958_ _E24959_)
                    (let* ((_g2496124978_
                            (lambda (_g2496224974_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2496224974_)))
                           (_g2496025578_
                            (lambda (_g2496224982_)
                              (if (gx#stx-pair/null? _g2496224982_)
                                  (let ((_g42985_
                                         (gx#syntax-split-splice
                                          _g2496224982_
                                          '0)))
                                    (begin
                                      (let ((_g42986_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42985_)
                                                   (##vector-length _g42985_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42986_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42986_)))
                                      (let ((_target2496424985_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42985_ 0)))
                                            (_tl2496624988_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42985_ 1))))
                                        (if (gx#stx-null? _tl2496624988_)
                                            (letrec ((_loop2496724991_
                                                      (lambda (_hd2496524995_
                                                               _var2497124998_)
                                                        (if (gx#stx-pair?
                                                             _hd2496524995_)
                                                            (let ((_e2496825001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2496524995_)))
                      (let ((_lp-hd2496925005_
                             (let ()
                               (declare (not safe))
                               (##car _e2496825001_)))
                            (_lp-tl2497025008_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2496825001_))))
                        (let ((__tmp43004
                               (cons _lp-hd2496925005_ _var2497124998_)))
                          (declare (not safe))
                          (_loop2496724991_ _lp-tl2497025008_ __tmp43004))))
                    (let ((_var2497225011_ (reverse _var2497124998_)))
                      ((lambda (_L25015_)
                         (let ()
                           (let* ((_g2503125048_
                                   (lambda (_g2503225044_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2503225044_)))
                                  (_g2503025566_
                                   (lambda (_g2503225052_)
                                     (if (gx#stx-pair/null? _g2503225052_)
                                         (let ((_g42987_
                                                (gx#syntax-split-splice
                                                 _g2503225052_
                                                 '0)))
                                           (begin
                                             (let ((_g42988_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g42987_)
                                                          (##vector-length
                                                           _g42987_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g42988_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g42988_)))
                                             (let ((_target2503425055_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42987_
                                                       0)))
                                                   (_tl2503625058_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42987_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2503625058_)
                                                   (letrec ((_loop2503725061_
                                                             (lambda (_hd2503525065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2504125068_)
                       (if (gx#stx-pair? _hd2503525065_)
                           (let ((_e2503825071_ (gx#syntax-e _hd2503525065_)))
                             (let ((_lp-hd2503925075_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2503825071_)))
                                   (_lp-tl2504025078_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2503825071_))))
                               (let ((__tmp43002
                                      (cons _lp-hd2503925075_
                                            _var-r2504125068_)))
                                 (declare (not safe))
                                 (_loop2503725061_
                                  _lp-tl2504025078_
                                  __tmp43002))))
                           (let ((_var-r2504225081_
                                  (reverse _var-r2504125068_)))
                             ((lambda (_L25085_)
                                (let ()
                                  (let* ((_g2510225119_
                                          (lambda (_g2510325115_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2510325115_)))
                                         (_g2510125554_
                                          (lambda (_g2510325123_)
                                            (if (gx#stx-pair/null?
                                                 _g2510325123_)
                                                (let ((_g42989_
                                                       (gx#syntax-split-splice
                                                        _g2510325123_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42989_)
                         (##vector-length _g42989_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42990_ 2)))
                  (error "Context expects 2 values" _g42990_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2510525126_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42989_
                                                              0)))
                                                          (_tl2510725129_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42989_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2510725129_)
                                                          (letrec ((_loop2510825132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2510625136_ _init2511225139_)
                              (if (gx#stx-pair? _hd2510625136_)
                                  (let ((_e2510925142_
                                         (gx#syntax-e _hd2510625136_)))
                                    (let ((_lp-hd2511025146_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2510925142_)))
                                          (_lp-tl2511125149_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2510925142_))))
                                      (let ((__tmp43000
                                             (cons _lp-hd2511025146_
                                                   _init2511225139_)))
                                        (declare (not safe))
                                        (_loop2510825132_
                                         _lp-tl2511125149_
                                         __tmp43000))))
                                  (let ((_init2511325152_
                                         (reverse _init2511225139_)))
                                    ((lambda (_L25156_)
                                       (let ()
                                         (let* ((_g2517325181_
                                                 (lambda (_g2517425177_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2517425177_)))
                                                (_g2517225550_
                                                 (lambda (_g2517425185_)
                                                   ((lambda (_L25188_)
                                                      (let ()
                                                        (let* ((_g2520125209_
                                                                (lambda (_g2520225205_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2520225205_)))
                       (_g2520025546_
                        (lambda (_g2520225213_)
                          ((lambda (_L25216_)
                             (let ()
                               (let* ((_g2522925237_
                                       (lambda (_g2523025233_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2523025233_)))
                                      (_g2522825542_
                                       (lambda (_g2523025241_)
                                         ((lambda (_L25244_)
                                            (let ()
                                              (let* ((_g2525725265_
                                                      (lambda (_g2525825261_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2525825261_)))
                                                     (_g2525625538_
                                                      (lambda (_g2525825269_)
                                                        ((lambda (_L25272_)
                                                           (let ()
                                                             (let* ((_g2528525293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2528625289_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2528625289_)))
                            (_g2528425534_
                             (lambda (_g2528625297_)
                               ((lambda (_L25300_)
                                  (let ()
                                    (let* ((_g2531325321_
                                            (lambda (_g2531425317_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2531425317_)))
                                           (_g2531225530_
                                            (lambda (_g2531425325_)
                                              ((lambda (_L25328_)
                                                 (let ()
                                                   (let* ((_g2534125349_
                                                           (lambda (_g2534225345_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2534225345_)))
                                                          (_g2534025526_
                                                           (lambda (_g2534225353_)
                                                             ((lambda (_L25356_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2536925377_
                                  (lambda (_g2537025373_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2537025373_)))
                                 (_g2536825511_
                                  (lambda (_g2537025381_)
                                    ((lambda (_L25384_)
                                       (let ()
                                         (let* ((_g2539725405_
                                                 (lambda (_g2539825401_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2539825401_)))
                                                (_g2539625499_
                                                 (lambda (_g2539825409_)
                                                   ((lambda (_L25412_)
                                                      (let ()
                                                        (let* ((_g2542525433_
                                                                (lambda (_g2542625429_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2542625429_)))
                       (_g2542425495_
                        (lambda (_g2542625437_)
                          ((lambda (_L25440_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _L25216_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _L25328_
                                         (foldr (lambda (_g2546225465_
                                                         _g2546325468_)
                                                  (cons _g2546225465_
                                                        _g2546325468_))
                                                '()
                                                _L25015_))
                                   (cons _L25356_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L25272_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _L25300_
                                               (cons _L25328_
                                                     (foldr (lambda (_g2546025471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2546125474_)
                      (cons _g2546025471_ _g2546125474_))
                    '()
                    _L25085_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _L25440_ '())))
                             '()))
                 (cons (cons _L25244_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L25328_
                                                     (foldr (lambda (_g2545825477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2545925480_)
                      (cons _g2545825477_ _g2545925480_))
                    '()
                    _L25085_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _L25328_ '()))
                         (cons (cons _L25272_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _L25328_ '()))
                                           (cons _L25328_
                                                 (foldr (lambda (_g2545625483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2545725486_)
                  (cons _g2545625483_ _g2545725486_))
                '()
                _L25085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L25412_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L25244_
                                                         (cons _L25188_
                                                               (foldr (lambda (_g2545425489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2545525492_)
                                (cons _g2545425489_ _g2545525492_))
                              '()
                              _L25156_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g2542625437_)))
                       (__tmp42991
                        (let ()
                          (declare (not safe))
                          (_generate123959_
                           _L25300_
                           _hd24956_
                           _L25384_
                           _L25412_))))
                  (declare (not safe))
                  (_g2542425495_ __tmp42991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2539825409_)))
                                                (__tmp42992
                                                 (cons _L25216_
                                                       (cons _L25328_
                                                             (foldr (lambda (_g2550225505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2550325508_)
                              (cons (cons (gx#datum->syntax '#f 'reverse)
                                          (cons _g2550225505_ '()))
                                    _g2550325508_))
                            '()
                            _L25085_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g2539625499_ __tmp42992))))
                                     _g2537025381_)))
                                 (__tmp42993
                                  (cons _L25244_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##cdr)
                                                    (cons _L25328_ '()))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L25085_
                                                 _L25015_)
                                                (foldr (lambda (_g2551425518_
                                                                _g2551525521_
                                                                _g2551625523_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'cons)
                             (cons _g2551525521_ (cons _g2551425518_ '())))
                       _g2551625523_))
               '()
               _L25085_
               _L25015_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (declare (not safe))
                            (_g2536825511_ __tmp42993))))
                      _g2534225353_)))
                  (__tmp42994
                   (let ()
                     (declare (not safe))
                     (_generate123959_
                      _L25328_
                      _rest24957_
                      _K24958_
                      _E24959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2534025526_
                                                      __tmp42994))))
                                               _g2531425325_)))
                                           (__tmp42995 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2531225530_ __tmp42995))))
                                _g2528625297_)))
                            (__tmp42996 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2528425534_ __tmp42996))))
                 _g2525825269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42997
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2525625538_ __tmp42997))))
                                          _g2523025241_)))
                                      (__tmp42998 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2522825542_ __tmp42998))))
                           _g2520225213_)))
                       (__tmp42999 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2520025546_ __tmp42999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2517425185_))))
                                           (declare (not safe))
                                           (_g2517225550_ _tgt24954_))))
                                     _init2511325152_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2510825132_ _target2510525126_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2510225119_ _g2510325123_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2510225119_
                                                   _g2510325123_)))))
                                         (__tmp43001
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_g2555725560_
                                                            _g2555825563_)
                                                     (cons _g2555725560_
                                                           _g2555825563_))
                                                   '()
                                                   _L25015_))
                                           (cons (gx#datum->syntax '#f '@list)
                                                 '()))))
                                    (declare (not safe))
                                    (_g2510125554_ __tmp43001))))
                              _var-r2504225081_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2503725061_
                                                        _target2503425055_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2503125048_
                                                      _g2503225052_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2503125048_ _g2503225052_)))))
                                  (__tmp43003
                                   (gx#gentemps
                                    (foldr (lambda (_g2556925572_
                                                    _g2557025575_)
                                             (cons _g2556925572_
                                                   _g2557025575_))
                                           '()
                                           _L25015_))))
                             (declare (not safe))
                             (_g2503025566_ __tmp43003))))
                       _var2497225011_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2496724991_
                                                 _target2496424985_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2496124978_
                                               _g2496224982_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2496124978_ _g2496224982_)))))
                           (__tmp43005
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd24956_))))
                      (declare (not safe))
                      (_g2496025578_ __tmp43005))))
                 (_generate-simple-vector23962_
                  (lambda (_tgt24796_
                           _body24798_
                           _start24799_
                           _K24800_
                           _E24801_)
                    (let _recur24803_ ((_rest24806_ _body24798_)
                                       (_off24808_ _start24799_))
                      (let* ((___stx4155841559_ _rest24806_)
                             (_g2481124823_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4155841559_))))
                        (let ((___kont4156141562_
                               (lambda (_L24851_ _L24853_)
                                 (let* ((_g2486824887_
                                         (lambda (_g2486924883_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2486924883_)))
                                        (_g2486724946_
                                         (lambda (_g2486924891_)
                                           (if (gx#stx-pair? _g2486924891_)
                                               (let ((_e2487524894_
                                                      (gx#syntax-e
                                                       _g2486924891_)))
                                                 (let ((_hd2487424898_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2487524894_)))
                                                       (_tl2487324901_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2487524894_))))
                                                   (if (gx#stx-pair?
                                                        _tl2487324901_)
                                                       (let ((_e2487824904_
                                                              (gx#syntax-e
                                                               _tl2487324901_)))
                                                         (let ((_hd2487724908_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2487824904_)))
                       (_tl2487624911_
                        (let () (declare (not safe)) (##cdr _e2487824904_))))
                   (if (gx#stx-pair? _tl2487624911_)
                       (let ((_e2488124914_ (gx#syntax-e _tl2487624911_)))
                         (let ((_hd2488024918_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2488124914_)))
                               (_tl2487924921_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2488124914_))))
                           (if (gx#stx-null? _tl2487924921_)
                               ((lambda (_L24924_ _L24926_ _L24927_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _L24927_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L24926_ (cons _L24924_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (let ((__tmp43006
                                                             (let ((__tmp43007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (fx1+ _off24808_)))
                       (declare (not safe))
                       (_recur24803_ _L24851_ __tmp43007))))
                (declare (not safe))
                (_generate123959_ _L24927_ _L24853_ __tmp43006 _E24801_))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _hd2488024918_
                                _hd2487724908_
                                _hd2487424898_)
                               (let ()
                                 (declare (not safe))
                                 (_g2486824887_ _g2486924891_)))))
                       (let ()
                         (declare (not safe))
                         (_g2486824887_ _g2486924891_)))))
               (let () (declare (not safe)) (_g2486824887_ _g2486924891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2486824887_
                                                  _g2486924891_)))))
                                        (__tmp43008
                                         (list (gx#genident 'e)
                                               _tgt24796_
                                               _off24808_)))
                                   (declare (not safe))
                                   (_g2486724946_ __tmp43008))))
                              (___kont4156341564_ (lambda () _K24800_)))
                          (if (gx#stx-pair? ___stx4155841559_)
                              (let ((_e2481724841_
                                     (gx#syntax-e ___stx4155841559_)))
                                (let ((_tl2481524848_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2481724841_)))
                                      (_hd2481624845_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2481724841_))))
                                  (___kont4156141562_
                                   _tl2481524848_
                                   _hd2481624845_)))
                              (___kont4156341564_)))))))
                 (_generate-list-vector23963_
                  (lambda (_tgt24688_
                           _body24690_
                           _->list24691_
                           _K24692_
                           _E24693_)
                    (let* ((_g2469524703_
                            (lambda (_g2469624699_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2469624699_)))
                           (_g2469424792_
                            (lambda (_g2469624707_)
                              ((lambda (_L24710_)
                                 (let ()
                                   (let* ((_g2472224730_
                                           (lambda (_g2472324726_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2472324726_)))
                                          (_g2472124788_
                                           (lambda (_g2472324734_)
                                             ((lambda (_L24737_)
                                                (let ()
                                                  (let* ((_g2475024758_
                                                          (lambda (_g2475124754_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2475124754_)))
                                                         (_g2474924780_
                                                          (lambda (_g2475124762_)
                                                            ((lambda (_L24765_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _L24710_
                                                   (cons _L24765_ '()))
                                             '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (_generate123959_
                                                _L24710_
                                                _body24690_
                                                _K24692_
                                                _E24693_))
                                             '()))))))
                     _g2475124762_)))
                 (__tmp43009
                  (let ((_$e24784_ _->list24691_))
                    (if (eq? 'values->list _$e24784_)
                        (cons (gx#datum->syntax '#f 'values->list)
                              (cons _L24737_ '()))
                        (if (eq? 'vector->list _$e24784_)
                            (cons (gx#datum->syntax '#f '##vector->list)
                                  (cons _L24737_ '()))
                            (if (eq? 'struct->list _$e24784_)
                                (cons (gx#datum->syntax '#f '##cdr)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector->list)
                                                  (cons _L24737_ '()))
                                            '()))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx23952_
                                 _->list24691_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2474924780_
                                                     __tmp43009))))
                                              _g2472324734_))))
                                     (declare (not safe))
                                     (_g2472124788_ _tgt24688_))))
                               _g2469624707_)))
                           (__tmp43010 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2469424792_ __tmp43010))))
                 (_generate-struct23964_
                  (lambda (_info24346_
                           _tgt24348_
                           _body24349_
                           _K24350_
                           _E24351_)
                    (let* ((_rtd24353_
                            (if (let ()
                                  (declare (not safe))
                                  (class-instance?
                                   |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
                                   _info24346_))
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _info24346_
                                   'type-exhibitor))
                                '#f))
                           (_fields24363_
                            (let _lp24356_ ((_rtd24359_ _rtd24353_)
                                            (_k24361_ '0))
                              (if _rtd24359_
                                  (let ((__tmp43012
                                         (let ((__tmp43013
                                                (##structure-ref
                                                 _rtd24359_
                                                 '2
                                                 |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                 '#f)))
                                           (declare (not safe))
                                           (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                            __tmp43013)))
                                        (__tmp43011
                                         (fx+ (length (##structure-ref
                                                       _rtd24359_
                                                       '6
                                                       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
                                                       '#f))
                                              _k24361_)))
                                    (declare (not safe))
                                    (_lp24356_ __tmp43012 __tmp43011))
                                  _k24361_)))
                           (_final?24366_
                            (if _rtd24353_
                                (assgetq 'final:
                                         (##structure-ref
                                          _rtd24353_
                                          '5
                                          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                          '#f))
                                '#f))
                           (_g2436924377_
                            (lambda (_g2437024373_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2437024373_)))
                           (_g2436824684_
                            (lambda (_g2437024381_)
                              ((lambda (_L24384_)
                                 (let ()
                                   (let* ((_g2439924407_
                                           (lambda (_g2440024403_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2440024403_)))
                                          (_g2439824586_
                                           (lambda (_g2440024411_)
                                             ((lambda (_L24414_)
                                                (let ()
                                                  (let ()
                                                    (let* ((___stx4157441575_
                                                            _body24349_)
                                                           (_g2443024453_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               ___stx4157441575_))))
                                                      (let ((___kont4157741578_
                                                             (lambda (_L24532_)
                                                               (let ((_K24546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_generate-simple-vector23962_
                                 _tgt24348_
                                 _L24532_
                                 '1
                                 _K24350_
                                 _E24351_)))
                             (_len24548_ (gx#stx-length _L24532_)))
                         (if (and _rtd24353_ (fx<= _len24548_ _fields24363_))
                             (cons 'if
                                   (cons _L24414_
                                         (cons _K24546_ (cons _E24351_ '()))))
                             (let* ((_g2455024558_
                                     (lambda (_g2455124554_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g2455124554_)))
                                    (_g2454924578_
                                     (lambda (_g2455124562_)
                                       ((lambda (_L24565_)
                                          (let ()
                                            (cons 'if
                                                  (cons _L24414_
                                                        (cons (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx<)
                                        (cons _L24565_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector-length)
                                                          (cons _L24384_ '()))
                                                    '())))
                                  (cons _K24546_ (cons _E24351_ '()))))
                      (cons _E24351_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2455124562_))))
                               (declare (not safe))
                               (_g2454924578_ _len24548_))))))
                    (___kont4157941580_
                     (lambda (_L24484_)
                       (cons 'if
                             (cons _L24414_
                                   (cons (let ()
                                           (declare (not safe))
                                           (_generate-list-vector23963_
                                            _tgt24348_
                                            _L24484_
                                            'struct->list
                                            _K24350_
                                            _E24351_))
                                         (cons _E24351_ '())))))))
                (if (gx#stx-pair? ___stx4157441575_)
                    (let ((_e2443524508_ (gx#syntax-e ___stx4157441575_)))
                      (let ((_tl2443324515_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2443524508_)))
                            (_hd2443424512_
                             (let ()
                               (declare (not safe))
                               (##car _e2443524508_))))
                        (if (gx#stx-datum? _hd2443424512_)
                            (let ((_e2443624518_ (gx#stx-e _hd2443424512_)))
                              (if (equal? _e2443624518_ 'simple:)
                                  (if (gx#stx-pair? _tl2443324515_)
                                      (let ((_e2443924522_
                                             (gx#syntax-e _tl2443324515_)))
                                        (let ((_tl2443724529_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2443924522_)))
                                              (_hd2443824526_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2443924522_))))
                                          (if (gx#stx-null? _tl2443724529_)
                                              (___kont4157741578_
                                               _hd2443824526_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2443024453_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2443024453_)))
                                  (if (equal? _e2443624518_ 'list:)
                                      (if (gx#stx-pair? _tl2443324515_)
                                          (let ((_e2444724474_
                                                 (gx#syntax-e _tl2443324515_)))
                                            (let ((_tl2444524481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2444724474_)))
                                                  (_hd2444624478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2444724474_))))
                                              (if (gx#stx-null? _tl2444524481_)
                                                  (___kont4157941580_
                                                   _hd2444624478_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2443024453_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2443024453_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2443024453_)))))
                            (let () (declare (not safe)) (_g2443024453_)))))
                    (let () (declare (not safe)) (_g2443024453_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2440024411_)))
                                          (__tmp43014
                                           (if (let ()
                                                 (declare (not safe))
                                                 (class-instance?
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                                                  _info24346_))
                                               (let* ((_g2459024598_
                                                       (lambda (_g2459124594_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2459124594_)))
                                                      (_g2458924617_
                                                       (lambda (_g2459124602_)
                                                         ((lambda (_L24605_)
                                                            (let ()
                                                              (cons _L24605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L24384_ '()))))
                  _g2459124602_)))
              (__tmp43016
               (cadddr (let ()
                         (declare (not safe))
                         (unchecked-slot-ref
                          _info24346_
                          'expander-identifiers)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2458924617_ __tmp43016))
                                               (let* ((_g2462124636_
                                                       (lambda (_g2462224632_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2462224632_)))
                                                      (_g2462024680_
                                                       (lambda (_g2462224640_)
                                                         (if (gx#stx-pair?
                                                              _g2462224640_)
                                                             (let ((_e2462724643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2462224640_)))
                       (let ((_hd2462624647_
                              (let ()
                                (declare (not safe))
                                (##car _e2462724643_)))
                             (_tl2462524650_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2462724643_))))
                         (if (gx#stx-pair? _tl2462524650_)
                             (let ((_e2463024653_
                                    (gx#syntax-e _tl2462524650_)))
                               (let ((_hd2462924657_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2463024653_)))
                                     (_tl2462824660_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2463024653_))))
                                 (if (gx#stx-null? _tl2462824660_)
                                     ((lambda (_L24663_ _L24665_)
                                        (let ()
                                          (cons _L24663_
                                                (cons _L24665_
                                                      (cons _L24384_ '())))))
                                      _hd2462924657_
                                      _hd2462624647_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2462124636_ _g2462224640_)))))
                             (let ()
                               (declare (not safe))
                               (_g2462124636_ _g2462224640_)))))
                     (let ()
                       (declare (not safe))
                       (_g2462124636_ _g2462224640_)))))
              (__tmp43015
               (list (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _info24346_ 'runtime-identifier))
                     (if _final?24366_
                         (gx#datum->syntax '#f 'direct-instance?)
                         (gx#datum->syntax '#f 'struct-instance?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2462024680_ __tmp43015)))))
                                     (declare (not safe))
                                     (_g2439824586_ __tmp43014))))
                               _g2437024381_))))
                      (declare (not safe))
                      (_g2436824684_ _tgt24348_))))
                 (_generate-class23965_
                  (lambda (_info23967_
                           _tgt23969_
                           _body23970_
                           _K23971_
                           _E23972_)
                    (letrec* ((_rtd23974_
                               (if (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
                                      _info23967_))
                                   (let ()
                                     (declare (not safe))
                                     (unchecked-slot-ref
                                      _info23967_
                                      'type-exhibitor))
                                   '#f))
                              (_known-slot?23976_
                               (if _rtd23974_
                                   (lambda (_key24340_)
                                     (let ((_slot24343_
                                            (keyword->symbol
                                             (gx#stx-e _key24340_))))
                                       (declare (not safe))
                                       (_rtd-known-slot?23978_
                                        _rtd23974_
                                        _slot24343_)))
                                   false))
                              (_final?23977_
                               (if _rtd23974_
                                   (assgetq 'final:
                                            (##structure-ref
                                             _rtd23974_
                                             '5
                                             |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                             '#f))
                                   '#f))
                              (_rtd-known-slot?23978_
                               (lambda (_rtd24327_ _slot24329_)
                                 (if _rtd24327_
                                     (let ((_$e24331_
                                            (memq _slot24329_
                                                  (##structure-ref
                                                   _rtd24327_
                                                   '6
                                                   |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                                                   '#f))))
                                       (if _$e24331_
                                           _$e24331_
                                           (ormap (lambda (_g2433424336_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_rtd-known-slot?23978_
                                                       _g2433424336_
                                                       _slot24329_)))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (##structure-ref
                                                        _rtd24327_
                                                        '2
                                                        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                        '#f)))))
                                     '#f)))
                              (_recur23979_
                               (lambda (_klass24113_ _rest24115_)
                                 (let* ((___stx4162441625_ _rest24115_)
                                        (_g2411824134_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4162441625_))))
                                   (let ((___kont4162741628_
                                          (lambda (_L24172_ _L24174_ _L24175_)
                                            (let* ((_g2419124199_
                                                    (lambda (_g2419224195_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g2419224195_)))
                                                   (_g2419024319_
                                                    (lambda (_g2419224203_)
                                                      ((lambda (_L24206_)
                                                         (let ()
                                                           (let* ((_g2421824226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2421924222_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2421924222_)))
                          (_g2421724315_
                           (lambda (_g2421924230_)
                             ((lambda (_L24233_)
                                (let ()
                                  (let* ((_g2424624254_
                                          (lambda (_g2424724250_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2424724250_)))
                                         (_g2424524311_
                                          (lambda (_g2424724258_)
                                            ((lambda (_L24261_)
                                               (let ()
                                                 (let* ((_g2427424282_
                                                         (lambda (_g2427524278_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g2427524278_)))
                                                        (_g2427324307_
                                                         (lambda (_g2427524286_)
                                                           ((lambda (_L24289_)
                                                              (let ()
                                                                (let ((_K24302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'let
                                     (cons (cons (cons _L24289_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##vector-ref)
                           (cons _L24206_
                                 (cons (cons (gx#datum->syntax '#f 'fx1+)
                                             (cons _L24261_ '()))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (let ((__tmp43017
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23979_
                                                           _klass24113_
                                                           _L24172_))))
                                                   (declare (not safe))
                                                   (_generate123959_
                                                    _L24289_
                                                    _L24174_
                                                    __tmp43017
                                                    _E23972_))
                                                 '())))))
                          (if (_known-slot?23976_ _L24175_)
                              (cons 'let
                                    (cons (cons (cons _L24261_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L24233_ (cons _L24175_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons _K24302_ '())))
                              (cons 'let
                                    (cons (cons (cons _L24261_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L24233_ (cons _L24175_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons 'if
                                                      (cons _L24261_
                                                            (cons _K24302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E23972_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
                    _g2427524286_)))
                (__tmp43018 (gx#genident 'e)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2427324307_
                                                    __tmp43018))))
                                             _g2424724258_)))
                                         (__tmp43019 (gx#genident 'slot)))
                                    (declare (not safe))
                                    (_g2424524311_ __tmp43019))))
                              _g2421924230_))))
                     (declare (not safe))
                     (_g2421724315_ _klass24113_))))
               _g2419224203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g2419024319_ _tgt23969_))))
                                         (___kont4162941630_
                                          (lambda () _K23971_)))
                                     (if (gx#stx-pair? ___stx4162441625_)
                                         (let ((_e2412524152_
                                                (gx#syntax-e
                                                 ___stx4162441625_)))
                                           (let ((_tl2412324159_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2412524152_)))
                                                 (_hd2412424156_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2412524152_))))
                                             (if (gx#stx-pair? _tl2412324159_)
                                                 (let ((_e2412824162_
                                                        (gx#syntax-e
                                                         _tl2412324159_)))
                                                   (let ((_tl2412624169_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2412824162_)))
                                                         (_hd2412724166_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2412824162_))))
                                                     (___kont4162741628_
                                                      _tl2412624169_
                                                      _hd2412724166_
                                                      _hd2412424156_)))
                                                 (___kont4162941630_))))
                                         (___kont4162941630_)))))))
                      (let* ((_g2398123989_
                              (lambda (_g2398223985_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2398223985_)))
                             (_g2398024109_
                              (lambda (_g2398223993_)
                                ((lambda (_L23996_)
                                   (let ()
                                     (let* ((_g2401124019_
                                             (lambda (_g2401224015_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2401224015_)))
                                            (_g2401024105_
                                             (lambda (_g2401224023_)
                                               ((lambda (_L24026_)
                                                  (let ()
                                                    (let* ((_g2403924047_
                                                            (lambda (_g2404024043_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2404024043_)))
                                                           (_g2403824101_
                                                            (lambda (_g2404024051_)
                                                              ((lambda (_L24054_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2406724075_
                                   (lambda (_g2406824071_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2406824071_)))
                                  (_g2406624097_
                                   (lambda (_g2406824079_)
                                     ((lambda (_L24082_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L24082_
                                                              (cons _L24054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L24026_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L23996_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L24026_ '()))
                                                    '()))
                                        '())
                                  (cons (let ()
                                          (declare (not safe))
                                          (_recur23979_ _L23996_ _body23970_))
                                        '())))
                      (cons _E23972_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2406824079_)))
                                  (__tmp43020
                                   (if _final?23977_
                                       (gx#datum->syntax '#f 'direct-instance?)
                                       (gx#datum->syntax
                                        '#f
                                        'class-instance?))))
                             (declare (not safe))
                             (_g2406624097_ __tmp43020))))
                       _g2404024051_)))
                   (__tmp43021
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-ref _info23967_ 'runtime-identifier))))
              (declare (not safe))
              (_g2403824101_ __tmp43021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2401224023_))))
                                       (declare (not safe))
                                       (_g2401024105_ _tgt23969_))))
                                 _g2398223993_)))
                             (__tmp43022 (gx#genident 'class)))
                        (declare (not safe))
                        (_g2398024109_ __tmp43022))))))
          (let ()
            (declare (not safe))
            (_generate123959_ _tgt23954_ _ptree23955_ _K23956_ _E23957_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx22848_ _tgt-lst22850_ _clauses22851_)
        (letrec ((_parse-body22853_
                  (lambda (_hd-len23774_)
                    (let _lp23777_ ((_rest23780_ _clauses22851_)
                                    (_r23782_ '()))
                      (let* ((___stx4167441675_ _rest23780_)
                             (_g2378523797_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4167441675_))))
                        (let ((___kont4167741678_
                               (lambda (_L23825_ _L23827_)
                                 (let* ((___stx4164641647_ _L23827_)
                                        (_g2384423860_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4164641647_))))
                                   (let ((___kont4164941650_
                                          (lambda (_L23929_)
                                            (if (gx#stx-null? _L23825_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin) _L23929_)
                                 (let ((_$e23940_ (gx#stx-source _L23827_)))
                                   (if _$e23940_
                                       _$e23940_
                                       (gx#stx-source _stx22848_))))
                                '())))
              _r23782_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx22848_
                                                 _L23827_))))
                                         (___kont4165141652_
                                          (lambda (_L23888_ _L23890_)
                                            (let ((__tmp43023
                                                   (cons (cons (gx#genident
                                                                'try-match)
                                                               (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2390223904_)
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                   _g2390223904_
                                   _stx22848_)))
                              _L23890_)
                             (cons (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'begin)
                                          _L23888_)
                                    (let ((_$e23908_ (gx#stx-source _L23827_)))
                                      (if _$e23908_
                                          _$e23908_
                                          (gx#stx-source _stx22848_))))
                                   '())))
                 _r23782_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_lp23777_
                                               _L23825_
                                               __tmp43023))))
                                         (___kont4165341654_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal match clause"
                                             _stx22848_
                                             _L23827_))))
                                     (let* ((___match4167141672_
                                             (lambda (_e2385423878_
                                                      _hd2385323882_
                                                      _tl2385223885_)
                                               (let ((_L23888_ _tl2385223885_)
                                                     (_L23890_ _hd2385323882_))
                                                 (if (and (gx#stx-list?
                                                           _L23890_)
                                                          (fx= (gx#stx-length
                                                                _L23890_)
                                                               _hd-len23774_)
                                                          (gx#stx-list?
                                                           _L23888_)
                                                          (not (gx#stx-null?
                                                                _L23888_)))
                                                     (___kont4165141652_
                                                      _L23888_
                                                      _L23890_)
                                                     (___kont4165341654_)))))
                                            (___match4166541666_
                                             (lambda (_e2384923919_
                                                      _hd2384823923_
                                                      _tl2384723926_)
                                               (let ((_L23929_ _tl2384723926_))
                                                 (if (and (gx#stx-list?
                                                           _L23929_)
                                                          (not (gx#stx-null?
                                                                _L23929_)))
                                                     (___kont4164941650_
                                                      _L23929_)
                                                     (___match4167141672_
                                                      _e2384923919_
                                                      _hd2384823923_
                                                      _tl2384723926_))))))
                                       (if (gx#stx-pair? ___stx4164641647_)
                                           (let ((_e2384923919_
                                                  (gx#syntax-e
                                                   ___stx4164641647_)))
                                             (let ((_tl2384723926_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2384923919_)))
                                                   (_hd2384823923_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2384923919_))))
                                               (if (gx#identifier?
                                                    _hd2384823923_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g43024_|
                                                        _hd2384823923_)
                                                       (___match4166541666_
                                                        _e2384923919_
                                                        _hd2384823923_
                                                        _tl2384723926_)
                                                       (___match4167141672_
                                                        _e2384923919_
                                                        _hd2384823923_
                                                        _tl2384723926_))
                                                   (___match4167141672_
                                                    _e2384923919_
                                                    _hd2384823923_
                                                    _tl2384723926_))))
                                           (___kont4165341654_)))))))
                              (___kont4167941680_ (lambda () _r23782_)))
                          (if (gx#stx-pair? ___stx4167441675_)
                              (let ((_e2379123815_
                                     (gx#syntax-e ___stx4167441675_)))
                                (let ((_tl2378923822_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2379123815_)))
                                      (_hd2379023819_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2379123815_))))
                                  (___kont4167741678_
                                   _tl2378923822_
                                   _hd2379023819_)))
                              (___kont4167941680_)))))))
                 (_generate-body22855_
                  (lambda (_body23559_)
                    (let* ((_g2356223570_
                            (lambda (_g2356323566_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2356323566_)))
                           (_g2356123770_
                            (lambda (_g2356323574_)
                              ((lambda (_L23577_)
                                 (let ()
                                   (let* ((_g2358923606_
                                           (lambda (_g2359023602_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2359023602_)))
                                          (_g2358823766_
                                           (lambda (_g2359023610_)
                                             (if (gx#stx-pair/null?
                                                  _g2359023610_)
                                                 (let ((_g43025_
                                                        (gx#syntax-split-splice
                                                         _g2359023610_
                                                         '0)))
                                                   (begin
                                                     (let ((_g43026_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g43025_)
                          (##vector-length _g43025_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g43026_ 2)))
                   (error "Context expects 2 values" _g43026_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2359223613_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g43025_
                                                               0)))
                                                           (_tl2359423616_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g43025_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2359423616_)
                                                           (letrec ((_loop2359523619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2359323623_ _target2359923626_)
                               (if (gx#stx-pair? _hd2359323623_)
                                   (let ((_e2359623629_
                                          (gx#syntax-e _hd2359323623_)))
                                     (let ((_lp-hd2359723633_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2359623629_)))
                                           (_lp-tl2359823636_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2359623629_))))
                                       (let ((__tmp43031
                                              (cons _lp-hd2359723633_
                                                    _target2359923626_)))
                                         (declare (not safe))
                                         (_loop2359523619_
                                          _lp-tl2359823636_
                                          __tmp43031))))
                                   (let ((_target2360023639_
                                          (reverse _target2359923626_)))
                                     ((lambda (_L23643_)
                                        (let ()
                                          (let* ((_g2366023668_
                                                  (lambda (_g2366123664_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2366123664_)))
                                                 (_g2365923754_
                                                  (lambda (_g2366123672_)
                                                    ((lambda (_L23675_)
                                                       (let ()
                                                         (let* ((_g2368823696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2368923692_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2368923692_)))
                        (_g2368723750_
                         (lambda (_g2368923700_)
                           ((lambda (_L23703_)
                              (let ()
                                (let* ((_g2371623724_
                                        (lambda (_g2371723720_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2371723720_)))
                                       (_g2371523746_
                                        (lambda (_g2371723728_)
                                          ((lambda (_L23731_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match)
                                                             (cons _L23731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g2371723728_)))
                                       (__tmp43027
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _L23577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23675_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L23703_ '())))
                                         (gx#stx-source _stx22848_))))
                                  (declare (not safe))
                                  (_g2371523746_ __tmp43027))))
                            _g2368923700_)))
                        (__tmp43028
                         (let ((__tmp43029 (cons _L23577_ '())))
                           (declare (not safe))
                           (_generate-clauses22856_ _body23559_ __tmp43029))))
                   (declare (not safe))
                   (_g2368723750_ __tmp43028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2366123672_)))
                                                 (__tmp43030
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
                                         (foldr (lambda (_g2375723760_
                                                         _g2375823763_)
                                                  (cons _g2375723760_
                                                        _g2375823763_))
                                                '()
                                                _L23643_)))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _stx22848_))))
                                            (declare (not safe))
                                            (_g2365923754_ __tmp43030))))
                                      _target2360023639_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2359523619_ _target2359223613_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2358923606_ _g2359023610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2358923606_
                                                    _g2359023610_))))))
                                     (declare (not safe))
                                     (_g2358823766_ _tgt-lst22850_))))
                               _g2356323574_)))
                           (__tmp43032 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2356123770_ __tmp43032))))
                 (_generate-clauses22856_
                  (lambda (_rest23211_ _E23213_)
                    (let* ((___stx4169041691_ _rest23211_)
                           (_g2321723233_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4169041691_))))
                      (let ((___kont4169341694_
                             (lambda (_L23467_)
                               (let* ((_g2347823496_
                                       (lambda (_g2347923492_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2347923492_)))
                                      (_g2347723551_
                                       (lambda (_g2347923500_)
                                         (if (gx#stx-pair? _g2347923500_)
                                             (let ((_e2348423503_
                                                    (gx#syntax-e
                                                     _g2347923500_)))
                                               (let ((_hd2348323507_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2348423503_)))
                                                     (_tl2348223510_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2348423503_))))
                                                 (if (gx#stx-pair?
                                                      _tl2348223510_)
                                                     (let ((_e2348723513_
                                                            (gx#syntax-e
                                                             _tl2348223510_)))
                                                       (let ((_hd2348623517_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2348723513_)))
                     (_tl2348523520_
                      (let () (declare (not safe)) (##cdr _e2348723513_))))
                 (if (gx#stx-pair? _tl2348523520_)
                     (let ((_e2349023523_ (gx#syntax-e _tl2348523520_)))
                       (let ((_hd2348923527_
                              (let ()
                                (declare (not safe))
                                (##car _e2349023523_)))
                             (_tl2348823530_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2349023523_))))
                         (if (gx#stx-null? _tl2348823530_)
                             ((lambda (_L23533_ _L23535_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L23535_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate122857_
                                                         _L23535_
                                                         _L23533_
                                                         _E23213_))
                                                      _L23533_)
                                                  '()))))
                              _hd2348923527_
                              _hd2348623517_)
                             (let ()
                               (declare (not safe))
                               (_g2347823496_ _g2347923500_)))))
                     (let ()
                       (declare (not safe))
                       (_g2347823496_ _g2347923500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2347823496_
                                                        _g2347923500_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2347823496_
                                                _g2347923500_))))))
                                 (declare (not safe))
                                 (_g2347723551_ _L23467_))))
                            (___kont4169541696_
                             (lambda (_L23261_ _L23263_)
                               (let* ((_g2327623295_
                                       (lambda (_g2327723291_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2327723291_)))
                                      (_g2327523446_
                                       (lambda (_g2327723299_)
                                         (if (gx#stx-pair? _g2327723299_)
                                             (let ((_e2328323302_
                                                    (gx#syntax-e
                                                     _g2327723299_)))
                                               (let ((_hd2328223306_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2328323302_)))
                                                     (_tl2328123309_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2328323302_))))
                                                 (if (gx#stx-pair?
                                                      _tl2328123309_)
                                                     (let ((_e2328623312_
                                                            (gx#syntax-e
                                                             _tl2328123309_)))
                                                       (let ((_hd2328523316_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2328623312_)))
                     (_tl2328423319_
                      (let () (declare (not safe)) (##cdr _e2328623312_))))
                 (if (gx#stx-pair? _tl2328423319_)
                     (let ((_e2328923322_ (gx#syntax-e _tl2328423319_)))
                       (let ((_hd2328823326_
                              (let ()
                                (declare (not safe))
                                (##car _e2328923322_)))
                             (_tl2328723329_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2328923322_))))
                         (if (gx#stx-null? _tl2328723329_)
                             ((lambda (_L23332_ _L23334_ _L23335_)
                                (if (gx#stx-e _L23334_)
                                    (let* ((_g2335223367_
                                            (lambda (_g2335323363_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2335323363_)))
                                           (_g2335123412_
                                            (lambda (_g2335323371_)
                                              (if (gx#stx-pair? _g2335323371_)
                                                  (let ((_e2335823374_
                                                         (gx#syntax-e
                                                          _g2335323371_)))
                                                    (let ((_hd2335723378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2335823374_)))
                                                          (_tl2335623381_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2335823374_))))
                                                      (if (gx#stx-pair?
                                                           _tl2335623381_)
                                                          (let ((_e2336123384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2335623381_)))
                    (let ((_hd2336023388_
                           (let () (declare (not safe)) (##car _e2336123384_)))
                          (_tl2335923391_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2336123384_))))
                      (if (gx#stx-null? _tl2335923391_)
                          ((lambda (_L23394_ _L23396_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L23335_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L23396_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _L23394_ '())))))
                           _hd2336023388_
                           _hd2335723378_)
                          (let ()
                            (declare (not safe))
                            (_g2335223367_ _g2335323371_)))))
                  (let ()
                    (declare (not safe))
                    (_g2335223367_ _g2335323371_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2335223367_
                                                     _g2335323371_)))))
                                           (__tmp43035
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate122857_
                                                     _L23334_
                                                     _L23332_
                                                     _E23213_))
                                                  (let ((__tmp43036
                                                         (cons _L23335_ '())))
                                                    (declare (not safe))
                                                    (_generate-clauses22856_
                                                     _L23261_
                                                     __tmp43036)))))
                                      (declare (not safe))
                                      (_g2335123412_ __tmp43035))
                                    (let* ((_g2341623424_
                                            (lambda (_g2341723420_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2341723420_)))
                                           (_g2341523442_
                                            (lambda (_g2341723428_)
                                              ((lambda (_L23431_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L23335_
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
                         (cons '() (cons _L23332_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _L23431_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2341723428_)))
                                           (__tmp43033
                                            (let ((__tmp43034
                                                   (cons _L23335_ '())))
                                              (declare (not safe))
                                              (_generate-clauses22856_
                                               _L23261_
                                               __tmp43034))))
                                      (declare (not safe))
                                      (_g2341523442_ __tmp43033))))
                              _hd2328823326_
                              _hd2328523316_
                              _hd2328223306_)
                             (let ()
                               (declare (not safe))
                               (_g2327623295_ _g2327723299_)))))
                     (let ()
                       (declare (not safe))
                       (_g2327623295_ _g2327723299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2327623295_
                                                        _g2327723299_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2327623295_
                                                _g2327723299_))))))
                                 (declare (not safe))
                                 (_g2327523446_ _L23263_))))
                            (___kont4169741698_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E23213_ '()))))))
                        (if (gx#stx-pair? ___stx4169041691_)
                            (let ((_e2322223457_
                                   (gx#syntax-e ___stx4169041691_)))
                              (let ((_tl2322023464_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2322223457_)))
                                    (_hd2322123461_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2322223457_))))
                                (if (gx#stx-null? _tl2322023464_)
                                    (___kont4169341694_ _hd2322123461_)
                                    (___kont4169541696_
                                     _tl2322023464_
                                     _hd2322123461_))))
                            (___kont4169741698_))))))
                 (_generate122857_
                  (lambda (_clause22859_ _body22861_ _E22862_)
                    (let* ((_g2286422888_
                            (lambda (_g2286522884_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2286522884_)))
                           (_g2286323207_
                            (lambda (_g2286522892_)
                              (if (gx#stx-pair? _g2286522892_)
                                  (let ((_e2287022895_
                                         (gx#syntax-e _g2286522892_)))
                                    (let ((_hd2286922899_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2287022895_)))
                                          (_tl2286822902_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2287022895_))))
                                      (if (gx#stx-pair? _tl2286822902_)
                                          (let ((_e2287322905_
                                                 (gx#syntax-e _tl2286822902_)))
                                            (let ((_hd2287222909_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2287322905_)))
                                                  (_tl2287122912_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2287322905_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2287222909_)
                                                  (let ((_g43037_
                                                         (gx#syntax-split-splice
                                                          _hd2287222909_
                                                          '0)))
                                                    (begin
                                                      (let ((_g43038_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g43037_)
                           (##vector-length _g43037_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g43038_ 2)))
                    (error "Context expects 2 values" _g43038_)))
              (let ((_target2287422915_
                     (let () (declare (not safe)) (##vector-ref _g43037_ 0)))
                    (_tl2287622918_
                     (let () (declare (not safe)) (##vector-ref _g43037_ 1))))
                (if (gx#stx-null? _tl2287622918_)
                    (letrec ((_loop2287722921_
                              (lambda (_hd2287522925_ _var2288122928_)
                                (if (gx#stx-pair? _hd2287522925_)
                                    (let ((_e2287822931_
                                           (gx#syntax-e _hd2287522925_)))
                                      (let ((_lp-hd2287922935_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2287822931_)))
                                            (_lp-tl2288022938_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2287822931_))))
                                        (let ((__tmp43042
                                               (cons _lp-hd2287922935_
                                                     _var2288122928_)))
                                          (declare (not safe))
                                          (_loop2287722921_
                                           _lp-tl2288022938_
                                           __tmp43042))))
                                    (let ((_var2288222941_
                                           (reverse _var2288122928_)))
                                      (if (gx#stx-null? _tl2287122912_)
                                          ((lambda (_L22945_ _L22947_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g2296822971_
                                                                _g2296922974_)
                                                         (cons _g2296822971_
                                                               _g2296922974_))
                                                       '()
                                                       _L22945_)
                                                _stx22848_)
                                               (let* ((_g2297722985_
                                                       (lambda (_g2297822981_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2297822981_)))
                                                      (_g2297623079_
                                                       (lambda (_g2297822989_)
                                                         ((lambda (_L22992_)
                                                            (let ()
                                                              (let* ((_g2300523013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2300623009_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2300623009_)))
                             (_g2300423075_
                              (lambda (_g2300623017_)
                                ((lambda (_L23020_)
                                   (let ()
                                     (let* ((_g2303323041_
                                             (lambda (_g2303423037_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2303423037_)))
                                            (_g2303223063_
                                             (lambda (_g2303423045_)
                                               ((lambda (_L23048_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons _L22947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L23048_ '()))
                           (cons _L22992_ '())))
               (gx#stx-source _stx22848_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2303423045_)))
                                            (__tmp43039
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons (foldr (lambda (_g2306623069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2306723072_)
                           (cons _g2306623069_ _g2306723072_))
                         '()
                         _L22945_)
                  (cons _L23020_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx22848_))))
                                       (declare (not safe))
                                       (_g2303223063_ __tmp43039))))
                                 _g2300623017_))))
                        (declare (not safe))
                        (_g2300423075_ _body22861_))))
                  _g2297822989_)))
              (__tmp43040
               (let _recur23083_ ((_rest23086_ _clause22859_)
                                  (_rest-targets23088_ _tgt-lst22850_))
                 (let* ((___stx4171641717_ _rest23086_)
                        (_g2309123103_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4171641717_))))
                   (let ((___kont4171941720_
                          (lambda (_L23139_ _L23141_)
                            (let* ((_g2315623168_
                                    (lambda (_g2315723164_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2315723164_)))
                                   (_g2315523199_
                                    (lambda (_g2315723172_)
                                      (if (gx#stx-pair? _g2315723172_)
                                          (let ((_e2316223175_
                                                 (gx#syntax-e _g2315723172_)))
                                            (let ((_hd2316123179_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2316223175_)))
                                                  (_tl2316023182_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2316223175_))))
                                              ((lambda (_L23185_ _L23187_)
                                                 (let ((__tmp43041
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23083_
                                                           _L23139_
                                                           _L23185_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx22848_
                                                    _L23187_
                                                    _L23141_
                                                    __tmp43041
                                                    _E22862_)))
                                               _tl2316023182_
                                               _hd2316123179_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2315623168_ _g2315723172_))))))
                              (declare (not safe))
                              (_g2315523199_ _rest-targets23088_))))
                         (___kont4172141722_
                          (lambda ()
                            (cons _L22947_
                                  (foldr (lambda (_g2311323116_ _g2311423119_)
                                           (cons _g2311323116_ _g2311423119_))
                                         '()
                                         _L22945_)))))
                     (if (gx#stx-pair? ___stx4171641717_)
                         (let ((_e2309723129_ (gx#syntax-e ___stx4171641717_)))
                           (let ((_tl2309523136_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2309723129_)))
                                 (_hd2309623133_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2309723129_))))
                             (___kont4171941720_
                              _tl2309523136_
                              _hd2309623133_)))
                         (___kont4172141722_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2297623079_ __tmp43040))))
                                           _var2288222941_
                                           _hd2286922899_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2286422888_
                                             _g2286522892_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2287722921_ _target2287422915_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2286422888_ _g2286522892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2286422888_
                                                     _g2286522892_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2286422888_ _g2286522892_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2286422888_ _g2286522892_)))))
                           (__tmp43043
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause22859_)))))
                      (declare (not safe))
                      (_g2286323207_ __tmp43043)))))
          (let ((__tmp43044
                 (let ((__tmp43045 (gx#stx-length _tgt-lst22850_)))
                   (declare (not safe))
                   (_parse-body22853_ __tmp43045))))
            (declare (not safe))
            (_generate-body22855_ __tmp43044)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx22750_ _tgt22752_ _clauses22753_)
        (letrec ((_reclause22755_
                  (lambda (_clause22758_)
                    (let* ((___stx4173241733_ _clause22758_)
                           (_g2276322778_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4173241733_))))
                      (let ((___kont4173541736_ (lambda () _clause22758_))
                            (___kont4173741738_
                             (lambda (_L22806_ _L22808_)
                               (gx#stx-wrap-source
                                (cons (cons _L22808_ '()) _L22806_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4173941740_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx22750_
                                _clause22758_))))
                        (if (gx#stx-pair? ___stx4173241733_)
                            (let ((_e2276722830_
                                   (gx#syntax-e ___stx4173241733_)))
                              (let ((_tl2276522837_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2276722830_)))
                                    (_hd2276622834_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2276722830_))))
                                (if (gx#identifier? _hd2276622834_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g43046_|
                                         _hd2276622834_)
                                        (___kont4173541736_)
                                        (___kont4173741738_
                                         _tl2276522837_
                                         _hd2276622834_))
                                    (___kont4173741738_
                                     _tl2276522837_
                                     _hd2276622834_))))
                            (___kont4173941740_)))))))
          (let ((__tmp43048 (cons _tgt22752_ '()))
                (__tmp43047 (gx#stx-map _reclause22755_ _clauses22753_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx22750_
             __tmp43048
             __tmp43047)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30359_)
        (let* ((___stx4176041761_ _stx30359_)
               (_g3036430393_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4176041761_))))
          (let ((___kont4176341764_
                 (lambda (_L30633_)
                   (let* ((_g3064630654_
                           (lambda (_g3064730650_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3064730650_)))
                          (_g3064530707_
                           (lambda (_g3064730658_)
                             ((lambda (_L30661_)
                                (let ()
                                  (let* ((_g3067330681_
                                          (lambda (_g3067430677_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3067430677_)))
                                         (_g3067230703_
                                          (lambda (_g3067430685_)
                                            ((lambda (_L30688_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L30661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L30688_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3067430685_))))
                                    (_g3067230703_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30661_ _L30633_))
                                      (gx#stx-source _stx30359_))))))
                              _g3064730658_))))
                     (_g3064530707_ (gx#genident 'e)))))
                (___kont4176541766_
                 (lambda (_L30528_)
                   (let* ((_g3054130549_
                           (lambda (_g3054230545_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3054230545_)))
                          (_g3054030602_
                           (lambda (_g3054230553_)
                             ((lambda (_L30556_)
                                (let ()
                                  (let* ((_g3056830576_
                                          (lambda (_g3056930572_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3056930572_)))
                                         (_g3056730598_
                                          (lambda (_g3056930580_)
                                            ((lambda (_L30583_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _L30556_
                                                               (cons _L30583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3056930580_))))
                                    (_g3056730598_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30556_ _L30528_))
                                      (gx#stx-source _stx30359_))))))
                              _g3054230553_))))
                     (_g3054030602_ (gx#genident 'args)))))
                (___kont4176741768_
                 (lambda (_L30420_ _L30422_)
                   (let* ((_g3043630444_
                           (lambda (_g3043730440_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3043730440_)))
                          (_g3043530497_
                           (lambda (_g3043730448_)
                             ((lambda (_L30451_)
                                (let ()
                                  (let* ((_g3046330471_
                                          (lambda (_g3046430467_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3046430467_)))
                                         (_g3046230493_
                                          (lambda (_g3046430475_)
                                            ((lambda (_L30478_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L30451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L30422_ '()))
                             '())
                       (cons _L30478_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3046430475_))))
                                    (_g3046230493_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30359_
                                        _L30451_
                                        _L30420_))))))
                              _g3043730448_))))
                     (_g3043530497_ (gx#genident _L30422_))))))
            (let* ((___match4181341814_
                    (lambda (_e3038430400_
                             _hd3038330404_
                             _tl3038230407_
                             _e3038730410_
                             _hd3038630414_
                             _tl3038530417_)
                      (let ((_L30420_ _tl3038530417_)
                            (_L30422_ _hd3038630414_))
                        (if (gx#stx-list? _L30420_)
                            (___kont4176741768_ _L30420_ _L30422_)
                            (let () (declare (not safe)) (_g3036430393_))))))
                   (___match4180141802_
                    (lambda (_e3037630508_
                             _hd3037530512_
                             _tl3037430515_
                             _e3037930518_
                             _hd3037830522_
                             _tl3037730525_)
                      (let ((_L30528_ _tl3037730525_))
                        (if (gx#stx-list? _L30528_)
                            (___kont4176541766_ _L30528_)
                            (___match4181341814_
                             _e3037630508_
                             _hd3037530512_
                             _tl3037430515_
                             _e3037930518_
                             _hd3037830522_
                             _tl3037730525_)))))
                   (___match4178541786_
                    (lambda (_e3036930613_
                             _hd3036830617_
                             _tl3036730620_
                             _e3037230623_
                             _hd3037130627_
                             _tl3037030630_)
                      (let ((_L30633_ _tl3037030630_))
                        (if (gx#stx-list? _L30633_)
                            (___kont4176341764_ _L30633_)
                            (___match4181341814_
                             _e3036930613_
                             _hd3036830617_
                             _tl3036730620_
                             _e3037230623_
                             _hd3037130627_
                             _tl3037030630_))))))
              (if (gx#stx-pair? ___stx4176041761_)
                  (let ((_e3036930613_ (gx#syntax-e ___stx4176041761_)))
                    (let ((_tl3036730620_
                           (let () (declare (not safe)) (##cdr _e3036930613_)))
                          (_hd3036830617_
                           (let ()
                             (declare (not safe))
                             (##car _e3036930613_))))
                      (if (gx#stx-pair? _tl3036730620_)
                          (let ((_e3037230623_ (gx#syntax-e _tl3036730620_)))
                            (let ((_tl3037030630_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3037230623_)))
                                  (_hd3037130627_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3037230623_))))
                              (if (gx#identifier? _hd3037130627_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g43050_|
                                       _hd3037130627_)
                                      (___match4178541786_
                                       _e3036930613_
                                       _hd3036830617_
                                       _tl3036730620_
                                       _e3037230623_
                                       _hd3037130627_
                                       _tl3037030630_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g43049_|
                                           _hd3037130627_)
                                          (___match4180141802_
                                           _e3036930613_
                                           _hd3036830617_
                                           _tl3036730620_
                                           _e3037230623_
                                           _hd3037130627_
                                           _tl3037030630_)
                                          (___match4181341814_
                                           _e3036930613_
                                           _hd3036830617_
                                           _tl3036730620_
                                           _e3037230623_
                                           _hd3037130627_
                                           _tl3037030630_)))
                                  (___match4181341814_
                                   _e3036930613_
                                   _hd3036830617_
                                   _tl3036730620_
                                   _e3037230623_
                                   _hd3037130627_
                                   _tl3037030630_))))
                          (let () (declare (not safe)) (_g3036430393_)))))
                  (let () (declare (not safe)) (_g3036430393_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30715_)
        (let* ((_g3071830742_
                (lambda (_g3071930738_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3071930738_)))
               (_g3071730954_
                (lambda (_g3071930746_)
                  (if (gx#stx-pair? _g3071930746_)
                      (let ((_e3072430749_ (gx#syntax-e _g3071930746_)))
                        (let ((_hd3072330753_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3072430749_)))
                              (_tl3072230756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3072430749_))))
                          (if (gx#stx-pair? _tl3072230756_)
                              (let ((_e3072730759_
                                     (gx#syntax-e _tl3072230756_)))
                                (let ((_hd3072630763_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3072730759_)))
                                      (_tl3072530766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3072730759_))))
                                  (if (gx#stx-pair/null? _hd3072630763_)
                                      (let ((_g43051_
                                             (gx#syntax-split-splice
                                              _hd3072630763_
                                              '0)))
                                        (begin
                                          (let ((_g43052_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g43051_)
                                                       (##vector-length
                                                        _g43051_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g43052_ 2)))
                                                (error "Context expects 2 values"
                                                       _g43052_)))
                                          (let ((_target3072830769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g43051_ 0)))
                                                (_tl3073030772_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g43051_ 1))))
                                            (if (gx#stx-null? _tl3073030772_)
                                                (letrec ((_loop3073130775_
                                                          (lambda (_hd3072930779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3073530782_)
                    (if (gx#stx-pair? _hd3072930779_)
                        (let ((_e3073230785_ (gx#syntax-e _hd3072930779_)))
                          (let ((_lp-hd3073330789_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3073230785_)))
                                (_lp-tl3073430792_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3073230785_))))
                            (_loop3073130775_
                             _lp-tl3073430792_
                             (cons _lp-hd3073330789_ _e3073530782_))))
                        (let ((_e3073630795_ (reverse _e3073530782_)))
                          ((lambda (_L30799_ _L30801_)
                             (if (gx#stx-list? _L30799_)
                                 (let* ((_g3081930836_
                                         (lambda (_g3082030832_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3082030832_)))
                                        (_g3081830942_
                                         (lambda (_g3082030840_)
                                           (if (gx#stx-pair/null?
                                                _g3082030840_)
                                               (let ((_g43053_
                                                      (gx#syntax-split-splice
                                                       _g3082030840_
                                                       '0)))
                                                 (begin
                                                   (let ((_g43054_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g43053_)
                        (##vector-length _g43053_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g43054_ 2)))
                 (error "Context expects 2 values" _g43054_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3082230843_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g43053_
                                                             0)))
                                                         (_tl3082430846_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g43053_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3082430846_)
                                                         (letrec ((_loop3082530849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3082330853_ _$e3082930856_)
                             (if (gx#stx-pair? _hd3082330853_)
                                 (let ((_e3082630859_
                                        (gx#syntax-e _hd3082330853_)))
                                   (let ((_lp-hd3082730863_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3082630859_)))
                                         (_lp-tl3082830866_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3082630859_))))
                                     (_loop3082530849_
                                      _lp-tl3082830866_
                                      (cons _lp-hd3082730863_
                                            _$e3082930856_))))
                                 (let ((_$e3083030869_
                                        (reverse _$e3082930856_)))
                                   ((lambda (_L30873_)
                                      (let ()
                                        (let* ((_g3088930897_
                                                (lambda (_g3089030893_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3089030893_)))
                                               (_g3088830930_
                                                (lambda (_g3089030901_)
                                                  ((lambda (_L30904_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L30801_
                                _L30873_)
                               (foldr (lambda (_g3091830922_
                                               _g3091930925_
                                               _g3092030927_)
                                        (cons (cons _g3091930925_
                                                    (cons _g3091830922_ '()))
                                              _g3092030927_))
                                      '()
                                      _L30801_
                                      _L30873_))
                             (cons _L30904_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3089030901_))))
                                          (_g3088830930_
                                           (let ((__tmp43055
                                                  (foldr (lambda (_g3093330936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3093430939_)
                   (cons _g3093330936_ _g3093430939_))
                 '()
                 _L30873_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx30715_
                                              __tmp43055
                                              _L30799_))))))
                                    _$e3083030869_))))))
                   (_loop3082530849_ _target3082230843_ '()))
                 (_g3081930836_ _g3082030840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3081930836_
                                                _g3082030840_)))))
                                   (_g3081830942_
                                    (gx#gentemps
                                     (foldr (lambda (_g3094530948_
                                                     _g3094630951_)
                                              (cons _g3094530948_
                                                    _g3094630951_))
                                            '()
                                            _L30801_))))
                                 (_g3071830742_ _g3071930746_)))
                           _tl3072530766_
                           _e3073630795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3073130775_
                                                   _target3072830769_
                                                   '()))
                                                (_g3071830742_
                                                 _g3071930746_)))))
                                      (_g3071830742_ _g3071930746_))))
                              (_g3071830742_ _g3071930746_))))
                      (_g3071830742_ _g3071930746_)))))
          (_g3071730954_ _stx30715_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx30960_)
        (let* ((___stx4181641817_ _$stx30960_)
               (_g3096631049_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4181641817_))))
          (let ((___kont4181941820_
                 (lambda (_L31379_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3139531398_ _g3139631401_)
                                        (cons _g3139531398_ _g3139631401_))
                                      '()
                                      _L31379_)))))
                (___kont4182341824_
                 (lambda (_L31287_ _L31289_ _L31290_ _L31291_)
                   (cons _L31291_
                         (cons (cons (cons _L31290_ (cons _L31289_ '())) '())
                               (foldr (lambda (_g3131331316_ _g3131431319_)
                                        (cons _g3131331316_ _g3131431319_))
                                      '()
                                      _L31287_)))))
                (___kont4182741828_
                 (lambda (_L31160_ _L31162_ _L31163_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_g3118931192_ _g3119031195_)
                                        (cons _g3118931192_ _g3119031195_))
                                      '()
                                      _L31162_)
                               (cons (cons (foldr (lambda (_g3118731198_
                                                           _g3118831201_)
                                                    (cons _g3118731198_
                                                          _g3118831201_))
                                                  '()
                                                  _L31163_)
                                           (foldr (lambda (_g3118531204_
                                                           _g3118631207_)
                                                    (cons _g3118531204_
                                                          _g3118631207_))
                                                  '()
                                                  _L31160_))
                                     '()))))))
            (let* ((___match4190941910_
                    (lambda (_e3101431056_
                             _hd3101331060_
                             _tl3101231063_
                             _e3101731066_
                             _hd3101631070_
                             _tl3101531073_
                             ___splice4182941830_
                             _target3101831076_
                             _tl3102031079_)
                      (letrec ((_loop3102131082_
                                (lambda (_hd3101931086_
                                         _expr3102531089_
                                         _hd3102631091_)
                                  (if (gx#stx-pair? _hd3101931086_)
                                      (let ((_e3102231094_
                                             (gx#syntax-e _hd3101931086_)))
                                        (let ((_lp-tl3102431101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3102231094_)))
                                              (_lp-hd3102331098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3102231094_))))
                                          (if (gx#stx-pair? _lp-hd3102331098_)
                                              (let ((_e3103131104_
                                                     (gx#syntax-e
                                                      _lp-hd3102331098_)))
                                                (let ((_tl3102931111_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3103131104_)))
                                                      (_hd3103031108_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3103131104_))))
                                                  (if (gx#stx-pair?
                                                       _tl3102931111_)
                                                      (let ((_e3103431114_
                                                             (gx#syntax-e
                                                              _tl3102931111_)))
                                                        (let ((_tl3103231121_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3103431114_)))
                      (_hd3103331118_
                       (let () (declare (not safe)) (##car _e3103431114_))))
                  (if (gx#stx-null? _tl3103231121_)
                      (_loop3102131082_
                       _lp-tl3102431101_
                       (cons _hd3103331118_ _expr3102531089_)
                       (cons _hd3103031108_ _hd3102631091_))
                      (let () (declare (not safe)) (_g3096631049_)))))
              (let () (declare (not safe)) (_g3096631049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3096631049_)))))
                                      (let ((_hd3102831127_
                                             (reverse _hd3102631091_))
                                            (_expr3102731124_
                                             (reverse _expr3102531089_)))
                                        (if (gx#stx-pair/null? _tl3101531073_)
                                            (let ((___splice4183141832_
                                                   (gx#syntax-split-splice
                                                    _tl3101531073_
                                                    '0)))
                                              (let ((_tl3103731133_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4183141832_
                                                        '1)))
                                                    (_target3103531130_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4183141832_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3103731133_)
                                                    (letrec ((_loop3103831136_
                                                              (lambda (_hd3103631140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3104231143_)
                        (if (gx#stx-pair? _hd3103631140_)
                            (let ((_e3103931146_ (gx#syntax-e _hd3103631140_)))
                              (let ((_lp-tl3104131153_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3103931146_)))
                                    (_lp-hd3104031150_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3103931146_))))
                                (_loop3103831136_
                                 _lp-tl3104131153_
                                 (cons _lp-hd3104031150_ _body3104231143_))))
                            (let ((_body3104331156_
                                   (reverse _body3104231143_)))
                              (___kont4182741828_
                               _body3104331156_
                               _expr3102731124_
                               _hd3102831127_))))))
              (_loop3103831136_ _target3103531130_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3096631049_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3096631049_))))))))
                        (_loop3102131082_ _target3101831076_ '() '()))))
                   (___match4190141902_
                    (lambda (_e3101431056_
                             _hd3101331060_
                             _tl3101231063_
                             _e3101731066_
                             _hd3101631070_
                             _tl3101531073_)
                      (if (gx#stx-pair/null? _hd3101631070_)
                          (let ((___splice4182941830_
                                 (gx#syntax-split-splice _hd3101631070_ '0)))
                            (let ((_tl3102031079_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4182941830_ '1)))
                                  (_target3101831076_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4182941830_ '0))))
                              (if (gx#stx-null? _tl3102031079_)
                                  (___match4190941910_
                                   _e3101431056_
                                   _hd3101331060_
                                   _tl3101231063_
                                   _e3101731066_
                                   _hd3101631070_
                                   _tl3101531073_
                                   ___splice4182941830_
                                   _target3101831076_
                                   _tl3102031079_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3096631049_)))))
                          (let () (declare (not safe)) (_g3096631049_)))))
                   (___match4188941890_
                    (lambda (_e3099031217_
                             _hd3098931221_
                             _tl3098831224_
                             _e3099331227_
                             _hd3099231231_
                             _tl3099131234_
                             _e3099631237_
                             _hd3099531241_
                             _tl3099431244_
                             _e3099931247_
                             _hd3099831251_
                             _tl3099731254_
                             ___splice4182541826_
                             _target3100031257_
                             _tl3100231260_)
                      (letrec ((_loop3100331263_
                                (lambda (_hd3100131267_ _body3100731270_)
                                  (if (gx#stx-pair? _hd3100131267_)
                                      (let ((_e3100431273_
                                             (gx#syntax-e _hd3100131267_)))
                                        (let ((_lp-tl3100631280_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3100431273_)))
                                              (_lp-hd3100531277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3100431273_))))
                                          (_loop3100331263_
                                           _lp-tl3100631280_
                                           (cons _lp-hd3100531277_
                                                 _body3100731270_))))
                                      (let ((_body3100831283_
                                             (reverse _body3100731270_)))
                                        (let ((_L31287_ _body3100831283_)
                                              (_L31289_ _hd3099831251_)
                                              (_L31290_ _hd3099531241_)
                                              (_L31291_ _hd3098931221_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31290_))
                                              (___kont4182341824_
                                               _L31287_
                                               _L31289_
                                               _L31290_
                                               _L31291_)
                                              (___match4190141902_
                                               _e3099031217_
                                               _hd3098931221_
                                               _tl3098831224_
                                               _e3099331227_
                                               _hd3099231231_
                                               _tl3099131234_))))))))
                        (_loop3100331263_ _target3100031257_ '()))))
                   (___match4185541856_
                    (lambda (_e3097131329_
                             _hd3097031333_
                             _tl3096931336_
                             _e3097431339_
                             _hd3097331343_
                             _tl3097231346_
                             ___splice4182141822_
                             _target3097531349_
                             _tl3097731352_)
                      (letrec ((_loop3097831355_
                                (lambda (_hd3097631359_ _body3098231362_)
                                  (if (gx#stx-pair? _hd3097631359_)
                                      (let ((_e3097931365_
                                             (gx#syntax-e _hd3097631359_)))
                                        (let ((_lp-tl3098131372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3097931365_)))
                                              (_lp-hd3098031369_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3097931365_))))
                                          (_loop3097831355_
                                           _lp-tl3098131372_
                                           (cons _lp-hd3098031369_
                                                 _body3098231362_))))
                                      (let ((_body3098331375_
                                             (reverse _body3098231362_)))
                                        (___kont4181941820_
                                         _body3098331375_))))))
                        (_loop3097831355_ _target3097531349_ '())))))
              (if (gx#stx-pair? ___stx4181641817_)
                  (let ((_e3097131329_ (gx#syntax-e ___stx4181641817_)))
                    (let ((_tl3096931336_
                           (let () (declare (not safe)) (##cdr _e3097131329_)))
                          (_hd3097031333_
                           (let ()
                             (declare (not safe))
                             (##car _e3097131329_))))
                      (if (gx#stx-pair? _tl3096931336_)
                          (let ((_e3097431339_ (gx#syntax-e _tl3096931336_)))
                            (let ((_tl3097231346_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3097431339_)))
                                  (_hd3097331343_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3097431339_))))
                              (if (gx#stx-null? _hd3097331343_)
                                  (if (gx#stx-pair/null? _tl3097231346_)
                                      (let ((___splice4182141822_
                                             (gx#syntax-split-splice
                                              _tl3097231346_
                                              '0)))
                                        (let ((_tl3097731352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4182141822_
                                                  '1)))
                                              (_target3097531349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4182141822_
                                                  '0))))
                                          (if (gx#stx-null? _tl3097731352_)
                                              (___match4185541856_
                                               _e3097131329_
                                               _hd3097031333_
                                               _tl3096931336_
                                               _e3097431339_
                                               _hd3097331343_
                                               _tl3097231346_
                                               ___splice4182141822_
                                               _target3097531349_
                                               _tl3097731352_)
                                              (if (gx#stx-pair/null?
                                                   _hd3097331343_)
                                                  (let ((___splice4182941830_
                                                         (gx#syntax-split-splice
                                                          _hd3097331343_
                                                          '0)))
                                                    (let ((_tl3102031079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4182941830_
                                                              '1)))
                                                          (_target3101831076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4182941830_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3102031079_)
                                                          (___match4190941910_
                                                           _e3097131329_
                                                           _hd3097031333_
                                                           _tl3096931336_
                                                           _e3097431339_
                                                           _hd3097331343_
                                                           _tl3097231346_
                                                           ___splice4182941830_
                                                           _target3101831076_
                                                           _tl3102031079_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3096631049_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3096631049_))))))
                                      (if (gx#stx-pair/null? _hd3097331343_)
                                          (let ((___splice4182941830_
                                                 (gx#syntax-split-splice
                                                  _hd3097331343_
                                                  '0)))
                                            (let ((_tl3102031079_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4182941830_
                                                      '1)))
                                                  (_target3101831076_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4182941830_
                                                      '0))))
                                              (if (gx#stx-null? _tl3102031079_)
                                                  (___match4190941910_
                                                   _e3097131329_
                                                   _hd3097031333_
                                                   _tl3096931336_
                                                   _e3097431339_
                                                   _hd3097331343_
                                                   _tl3097231346_
                                                   ___splice4182941830_
                                                   _target3101831076_
                                                   _tl3102031079_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3096631049_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3096631049_))))
                                  (if (gx#stx-pair? _hd3097331343_)
                                      (let ((_e3099631237_
                                             (gx#syntax-e _hd3097331343_)))
                                        (let ((_tl3099431244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3099631237_)))
                                              (_hd3099531241_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3099631237_))))
                                          (if (gx#stx-pair? _tl3099431244_)
                                              (let ((_e3099931247_
                                                     (gx#syntax-e
                                                      _tl3099431244_)))
                                                (let ((_tl3099731254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3099931247_)))
                                                      (_hd3099831251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3099931247_))))
                                                  (if (gx#stx-null?
                                                       _tl3099731254_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3097231346_)
                                                          (let ((___splice4182541826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3097231346_ '0)))
                    (let ((_tl3100231260_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4182541826_ '1)))
                          (_target3100031257_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4182541826_ '0))))
                      (if (gx#stx-null? _tl3100231260_)
                          (___match4188941890_
                           _e3097131329_
                           _hd3097031333_
                           _tl3096931336_
                           _e3097431339_
                           _hd3097331343_
                           _tl3097231346_
                           _e3099631237_
                           _hd3099531241_
                           _tl3099431244_
                           _e3099931247_
                           _hd3099831251_
                           _tl3099731254_
                           ___splice4182541826_
                           _target3100031257_
                           _tl3100231260_)
                          (if (gx#stx-pair/null? _hd3097331343_)
                              (let ((___splice4182941830_
                                     (gx#syntax-split-splice
                                      _hd3097331343_
                                      '0)))
                                (let ((_tl3102031079_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4182941830_
                                          '1)))
                                      (_target3101831076_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4182941830_
                                          '0))))
                                  (if (gx#stx-null? _tl3102031079_)
                                      (___match4190941910_
                                       _e3097131329_
                                       _hd3097031333_
                                       _tl3096931336_
                                       _e3097431339_
                                       _hd3097331343_
                                       _tl3097231346_
                                       ___splice4182941830_
                                       _target3101831076_
                                       _tl3102031079_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3096631049_)))))
                              (let () (declare (not safe)) (_g3096631049_))))))
                  (if (gx#stx-pair/null? _hd3097331343_)
                      (let ((___splice4182941830_
                             (gx#syntax-split-splice _hd3097331343_ '0)))
                        (let ((_tl3102031079_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4182941830_ '1)))
                              (_target3101831076_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4182941830_ '0))))
                          (if (gx#stx-null? _tl3102031079_)
                              (___match4190941910_
                               _e3097131329_
                               _hd3097031333_
                               _tl3096931336_
                               _e3097431339_
                               _hd3097331343_
                               _tl3097231346_
                               ___splice4182941830_
                               _target3101831076_
                               _tl3102031079_)
                              (let () (declare (not safe)) (_g3096631049_)))))
                      (let () (declare (not safe)) (_g3096631049_))))
              (if (gx#stx-pair/null? _hd3097331343_)
                  (let ((___splice4182941830_
                         (gx#syntax-split-splice _hd3097331343_ '0)))
                    (let ((_tl3102031079_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4182941830_ '1)))
                          (_target3101831076_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4182941830_ '0))))
                      (if (gx#stx-null? _tl3102031079_)
                          (___match4190941910_
                           _e3097131329_
                           _hd3097031333_
                           _tl3096931336_
                           _e3097431339_
                           _hd3097331343_
                           _tl3097231346_
                           ___splice4182941830_
                           _target3101831076_
                           _tl3102031079_)
                          (let () (declare (not safe)) (_g3096631049_)))))
                  (let () (declare (not safe)) (_g3096631049_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3097331343_)
                                                  (let ((___splice4182941830_
                                                         (gx#syntax-split-splice
                                                          _hd3097331343_
                                                          '0)))
                                                    (let ((_tl3102031079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4182941830_
                                                              '1)))
                                                          (_target3101831076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4182941830_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3102031079_)
                                                          (___match4190941910_
                                                           _e3097131329_
                                                           _hd3097031333_
                                                           _tl3096931336_
                                                           _e3097431339_
                                                           _hd3097331343_
                                                           _tl3097231346_
                                                           ___splice4182941830_
                                                           _target3101831076_
                                                           _tl3102031079_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3096631049_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3096631049_))))))
                                      (if (gx#stx-pair/null? _hd3097331343_)
                                          (let ((___splice4182941830_
                                                 (gx#syntax-split-splice
                                                  _hd3097331343_
                                                  '0)))
                                            (let ((_tl3102031079_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4182941830_
                                                      '1)))
                                                  (_target3101831076_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4182941830_
                                                      '0))))
                                              (if (gx#stx-null? _tl3102031079_)
                                                  (___match4190941910_
                                                   _e3097131329_
                                                   _hd3097031333_
                                                   _tl3096931336_
                                                   _e3097431339_
                                                   _hd3097331343_
                                                   _tl3097231346_
                                                   ___splice4182941830_
                                                   _target3101831076_
                                                   _tl3102031079_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3096631049_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3096631049_)))))))
                          (let () (declare (not safe)) (_g3096631049_)))))
                  (let () (declare (not safe)) (_g3096631049_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31412_)
        (let* ((___stx4191241913_ _$stx31412_)
               (_g3141731469_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4191241913_))))
          (let ((___kont4191541916_
                 (lambda (_L31639_ _L31641_ _L31642_ _L31643_ _L31644_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _L31643_ (cons _L31642_ '())) '())
                               (cons (cons _L31644_
                                           (cons _L31641_
                                                 (foldr (lambda (_g3166931672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3167031675_)
                  (cons _g3166931672_ _g3167031675_))
                '()
                _L31639_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4191941920_
                 (lambda (_L31526_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3154331546_ _g3154431549_)
                                        (cons _g3154331546_ _g3154431549_))
                                      '()
                                      _L31526_))))))
            (let* ((___match4198541986_
                    (lambda (_e3145131476_
                             _hd3145031480_
                             _tl3144931483_
                             _e3145431486_
                             _hd3145331490_
                             _tl3145231493_
                             ___splice4192141922_
                             _target3145531496_
                             _tl3145731499_)
                      (letrec ((_loop3145831502_
                                (lambda (_hd3145631506_ _body3146231509_)
                                  (if (gx#stx-pair? _hd3145631506_)
                                      (let ((_e3145931512_
                                             (gx#syntax-e _hd3145631506_)))
                                        (let ((_lp-tl3146131519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3145931512_)))
                                              (_lp-hd3146031516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3145931512_))))
                                          (_loop3145831502_
                                           _lp-tl3146131519_
                                           (cons _lp-hd3146031516_
                                                 _body3146231509_))))
                                      (let ((_body3146331522_
                                             (reverse _body3146231509_)))
                                        (___kont4191941920_
                                         _body3146331522_))))))
                        (_loop3145831502_ _target3145531496_ '()))))
                   (___match4196341964_
                    (lambda (_e3142631559_
                             _hd3142531563_
                             _tl3142431566_
                             _e3142931569_
                             _hd3142831573_
                             _tl3142731576_
                             _e3143231579_
                             _hd3143131583_
                             _tl3143031586_
                             _e3143531589_
                             _hd3143431593_
                             _tl3143331596_
                             _e3143831599_
                             _hd3143731603_
                             _tl3143631606_
                             ___splice4191741918_
                             _target3143931609_
                             _tl3144131612_)
                      (letrec ((_loop3144231615_
                                (lambda (_hd3144031619_ _body3144631622_)
                                  (if (gx#stx-pair? _hd3144031619_)
                                      (let ((_e3144331625_
                                             (gx#syntax-e _hd3144031619_)))
                                        (let ((_lp-tl3144531632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3144331625_)))
                                              (_lp-hd3144431629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3144331625_))))
                                          (_loop3144231615_
                                           _lp-tl3144531632_
                                           (cons _lp-hd3144431629_
                                                 _body3144631622_))))
                                      (let ((_body3144731635_
                                             (reverse _body3144631622_)))
                                        (___kont4191541916_
                                         _body3144731635_
                                         _tl3143031586_
                                         _hd3143731603_
                                         _hd3143431593_
                                         _hd3142531563_))))))
                        (_loop3144231615_ _target3143931609_ '())))))
              (if (gx#stx-pair? ___stx4191241913_)
                  (let ((_e3142631559_ (gx#syntax-e ___stx4191241913_)))
                    (let ((_tl3142431566_
                           (let () (declare (not safe)) (##cdr _e3142631559_)))
                          (_hd3142531563_
                           (let ()
                             (declare (not safe))
                             (##car _e3142631559_))))
                      (if (gx#stx-pair? _tl3142431566_)
                          (let ((_e3142931569_ (gx#syntax-e _tl3142431566_)))
                            (let ((_tl3142731576_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3142931569_)))
                                  (_hd3142831573_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3142931569_))))
                              (if (gx#stx-pair? _hd3142831573_)
                                  (let ((_e3143231579_
                                         (gx#syntax-e _hd3142831573_)))
                                    (let ((_tl3143031586_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3143231579_)))
                                          (_hd3143131583_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3143231579_))))
                                      (if (gx#stx-pair? _hd3143131583_)
                                          (let ((_e3143531589_
                                                 (gx#syntax-e _hd3143131583_)))
                                            (let ((_tl3143331596_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3143531589_)))
                                                  (_hd3143431593_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3143531589_))))
                                              (if (gx#stx-pair? _tl3143331596_)
                                                  (let ((_e3143831599_
                                                         (gx#syntax-e
                                                          _tl3143331596_)))
                                                    (let ((_tl3143631606_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3143831599_)))
                                                          (_hd3143731603_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3143831599_))))
                                                      (if (gx#stx-null?
                                                           _tl3143631606_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3142731576_)
                                                              (let ((___splice4191741918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3142731576_ '0)))
                        (let ((_tl3144131612_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4191741918_ '1)))
                              (_target3143931609_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4191741918_ '0))))
                          (if (gx#stx-null? _tl3144131612_)
                              (___match4196341964_
                               _e3142631559_
                               _hd3142531563_
                               _tl3142431566_
                               _e3142931569_
                               _hd3142831573_
                               _tl3142731576_
                               _e3143231579_
                               _hd3143131583_
                               _tl3143031586_
                               _e3143531589_
                               _hd3143431593_
                               _tl3143331596_
                               _e3143831599_
                               _hd3143731603_
                               _tl3143631606_
                               ___splice4191741918_
                               _target3143931609_
                               _tl3144131612_)
                              (let () (declare (not safe)) (_g3141731469_)))))
                      (let () (declare (not safe)) (_g3141731469_)))
                  (let () (declare (not safe)) (_g3141731469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3141731469_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3141731469_)))))
                                  (if (gx#stx-null? _hd3142831573_)
                                      (if (gx#stx-pair/null? _tl3142731576_)
                                          (let ((___splice4192141922_
                                                 (gx#syntax-split-splice
                                                  _tl3142731576_
                                                  '0)))
                                            (let ((_tl3145731499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4192141922_
                                                      '1)))
                                                  (_target3145531496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4192141922_
                                                      '0))))
                                              (if (gx#stx-null? _tl3145731499_)
                                                  (___match4198541986_
                                                   _e3142631559_
                                                   _hd3142531563_
                                                   _tl3142431566_
                                                   _e3142931569_
                                                   _hd3142831573_
                                                   _tl3142731576_
                                                   ___splice4192141922_
                                                   _target3145531496_
                                                   _tl3145731499_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3141731469_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3141731469_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3141731469_))))))
                          (let () (declare (not safe)) (_g3141731469_)))))
                  (let () (declare (not safe)) (_g3141731469_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31684_)
        (let* ((___stx4198841989_ _$stx31684_)
               (_g3169531841_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4198841989_))))
          (let ((___kont4199141992_
                 (lambda (_L32445_ _L32447_ _L32448_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_g3246932472_ _g3247032475_)
                                  (cons (cons _L32448_
                                              (cons _g3246932472_
                                                    (cons _L32445_ '())))
                                        _g3247032475_))
                                '()
                                _L32447_))))
                (___kont4199541996_
                 (lambda (_L32335_ _L32337_ _L32338_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_g3235932362_ _g3236032365_)
                                  (cons (cons _L32338_
                                              (cons _g3235932362_
                                                    (cons _L32335_ '())))
                                        _g3236032365_))
                                '()
                                _L32337_))))
                (___kont4199942000_
                 (lambda (_L32235_ _L32237_ _L32238_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _L32238_
                                     (cons _L32237_ (cons _L32235_ '())))
                               '()))))
                (___kont4200142002_
                 (lambda (_L32161_ _L32163_)
                   (cons _L32163_ (cons _L32161_ '()))))
                (___kont4200342004_
                 (lambda (_L32109_ _L32111_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _L32111_
                                           (cons _L32109_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (___kont4200542006_
                 (lambda (_L32061_ _L32063_ _L32064_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _L32064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L32063_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L32061_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4200742008_
                 (lambda (_L31992_ _L31994_ _L31995_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31995_
                                                       (cons _L31994_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31992_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4200942010_
                 (lambda (_L31912_ _L31914_ _L31915_ _L31916_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31916_
                                                       (cons _L31915_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31912_
                                                             (cons (cons _L31914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match4216142162_
                    (lambda (_e3178732021_
                             _hd3178632025_
                             _tl3178532028_
                             _e3179032031_
                             _hd3178932035_
                             _tl3178832038_
                             _e3179332041_
                             _hd3179232045_
                             _tl3179132048_)
                      (if (gx#identifier? _hd3179232045_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g43057_|
                               _hd3179232045_)
                              (if (gx#stx-pair? _tl3179132048_)
                                  (let ((_e3179632051_
                                         (gx#syntax-e _tl3179132048_)))
                                    (let ((_tl3179432058_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3179632051_)))
                                          (_hd3179532055_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3179632051_))))
                                      (if (gx#stx-null? _tl3179432058_)
                                          (___kont4200542006_
                                           _hd3179532055_
                                           _hd3178932035_
                                           _hd3178632025_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3169531841_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3169531841_)))
                              (let () (declare (not safe)) (_g3169531841_)))
                          (if (gx#stx-datum? _hd3179232045_)
                              (let ((_e3180931978_ (gx#stx-e _hd3179232045_)))
                                (if (equal? _e3180931978_ '::)
                                    (if (gx#stx-pair? _tl3179132048_)
                                        (let ((_e3181231982_
                                               (gx#syntax-e _tl3179132048_)))
                                          (let ((_tl3181031989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3181231982_)))
                                                (_hd3181131986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3181231982_))))
                                            (if (gx#stx-null? _tl3181031989_)
                                                (___kont4200742008_
                                                 _hd3181131986_
                                                 _hd3178932035_
                                                 _hd3178632025_)
                                                (if (gx#stx-pair?
                                                     _tl3181031989_)
                                                    (let ((_e3183231892_
                                                           (gx#syntax-e
                                                            _tl3181031989_)))
                                                      (let ((_tl3183031899_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3183231892_)))
                    (_hd3183131896_
                     (let () (declare (not safe)) (##car _e3183231892_))))
                (if (gx#identifier? _hd3183131896_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g43056_|
                         _hd3183131896_)
                        (if (gx#stx-pair? _tl3183031899_)
                            (let ((_e3183531902_ (gx#syntax-e _tl3183031899_)))
                              (let ((_tl3183331909_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3183531902_)))
                                    (_hd3183431906_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3183531902_))))
                                (if (gx#stx-null? _tl3183331909_)
                                    (___kont4200942010_
                                     _hd3183431906_
                                     _hd3181131986_
                                     _hd3178932035_
                                     _hd3178632025_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_)))))
                            (let () (declare (not safe)) (_g3169531841_)))
                        (let () (declare (not safe)) (_g3169531841_)))
                    (let () (declare (not safe)) (_g3169531841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3169531841_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3169531841_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_))))
                              (let () (declare (not safe)) (_g3169531841_))))))
                   (___match4214142142_
                    (lambda (_e3177832089_
                             _hd3177732093_
                             _tl3177632096_
                             _e3178132099_
                             _hd3178032103_
                             _tl3177932106_)
                      (if (gx#stx-null? _tl3177932106_)
                          (___kont4200342004_ _hd3178032103_ _hd3177732093_)
                          (if (gx#stx-pair? _tl3177932106_)
                              (let ((_e3179332041_
                                     (gx#syntax-e _tl3177932106_)))
                                (let ((_tl3179132048_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3179332041_)))
                                      (_hd3179232045_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3179332041_))))
                                  (if (gx#identifier? _hd3179232045_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g43057_|
                                           _hd3179232045_)
                                          (if (gx#stx-pair? _tl3179132048_)
                                              (let ((_e3179632051_
                                                     (gx#syntax-e
                                                      _tl3179132048_)))
                                                (let ((_tl3179432058_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3179632051_)))
                                                      (_hd3179532055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3179632051_))))
                                                  (if (gx#stx-null?
                                                       _tl3179432058_)
                                                      (___kont4200542006_
                                                       _hd3179532055_
                                                       _hd3178032103_
                                                       _hd3177732093_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3169531841_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3169531841_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3169531841_)))
                                      (if (gx#stx-datum? _hd3179232045_)
                                          (let ((_e3180931978_
                                                 (gx#stx-e _hd3179232045_)))
                                            (if (equal? _e3180931978_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3179132048_)
                                                    (let ((_e3181231982_
                                                           (gx#syntax-e
                                                            _tl3179132048_)))
                                                      (let ((_tl3181031989_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3181231982_)))
                    (_hd3181131986_
                     (let () (declare (not safe)) (##car _e3181231982_))))
                (if (gx#stx-null? _tl3181031989_)
                    (___kont4200742008_
                     _hd3181131986_
                     _hd3178032103_
                     _hd3177732093_)
                    (if (gx#stx-pair? _tl3181031989_)
                        (let ((_e3183231892_ (gx#syntax-e _tl3181031989_)))
                          (let ((_tl3183031899_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3183231892_)))
                                (_hd3183131896_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3183231892_))))
                            (if (gx#identifier? _hd3183131896_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g43056_|
                                     _hd3183131896_)
                                    (if (gx#stx-pair? _tl3183031899_)
                                        (let ((_e3183531902_
                                               (gx#syntax-e _tl3183031899_)))
                                          (let ((_tl3183331909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3183531902_)))
                                                (_hd3183431906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3183531902_))))
                                            (if (gx#stx-null? _tl3183331909_)
                                                (___kont4200942010_
                                                 _hd3183431906_
                                                 _hd3181131986_
                                                 _hd3178032103_
                                                 _hd3177732093_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3169531841_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3169531841_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3169531841_)))))
                        (let () (declare (not safe)) (_g3169531841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3169531841_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3169531841_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3169531841_))))))
                              (let () (declare (not safe)) (_g3169531841_))))))
                   (___match4207142072_
                    (lambda (_e3172632265_
                             _hd3172532269_
                             _tl3172432272_
                             _e3172932275_
                             _hd3172832279_
                             _tl3172732282_
                             _e3173232285_
                             _hd3173132289_
                             _tl3173032292_
                             ___splice4199741998_
                             _target3173332295_
                             _tl3173532298_)
                      (letrec ((_loop3173632301_
                                (lambda (_hd3173432305_ _pred3174032308_)
                                  (if (gx#stx-pair? _hd3173432305_)
                                      (let ((_e3173732311_
                                             (gx#syntax-e _hd3173432305_)))
                                        (let ((_lp-tl3173932318_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3173732311_)))
                                              (_lp-hd3173832315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3173732311_))))
                                          (_loop3173632301_
                                           _lp-tl3173932318_
                                           (cons _lp-hd3173832315_
                                                 _pred3174032308_))))
                                      (let ((_pred3174132321_
                                             (reverse _pred3174032308_)))
                                        (if (gx#stx-pair? _tl3172732282_)
                                            (let ((_e3174432325_
                                                   (gx#syntax-e
                                                    _tl3172732282_)))
                                              (let ((_tl3174232332_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3174432325_)))
                                                    (_hd3174332329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3174432325_))))
                                                (if (gx#stx-null?
                                                     _tl3174232332_)
                                                    (___kont4199541996_
                                                     _hd3174332329_
                                                     _pred3174132321_
                                                     _hd3172532269_)
                                                    (___match4216142162_
                                                     _e3172632265_
                                                     _hd3172532269_
                                                     _tl3172432272_
                                                     _e3172932275_
                                                     _hd3172832279_
                                                     _tl3172732282_
                                                     _e3174432325_
                                                     _hd3174332329_
                                                     _tl3174232332_))))
                                            (___match4214142142_
                                             _e3172632265_
                                             _hd3172532269_
                                             _tl3172432272_
                                             _e3172932275_
                                             _hd3172832279_
                                             _tl3172732282_)))))))
                        (_loop3173632301_ _target3173332295_ '()))))
                   (___match4204142042_
                    (lambda (_e3170232375_
                             _hd3170132379_
                             _tl3170032382_
                             _e3170532385_
                             _hd3170432389_
                             _tl3170332392_
                             _e3170832395_
                             _hd3170732399_
                             _tl3170632402_
                             ___splice4199341994_
                             _target3170932405_
                             _tl3171132408_)
                      (letrec ((_loop3171232411_
                                (lambda (_hd3171032415_ _pred3171632418_)
                                  (if (gx#stx-pair? _hd3171032415_)
                                      (let ((_e3171332421_
                                             (gx#syntax-e _hd3171032415_)))
                                        (let ((_lp-tl3171532428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3171332421_)))
                                              (_lp-hd3171432425_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3171332421_))))
                                          (_loop3171232411_
                                           _lp-tl3171532428_
                                           (cons _lp-hd3171432425_
                                                 _pred3171632418_))))
                                      (let ((_pred3171732431_
                                             (reverse _pred3171632418_)))
                                        (if (gx#stx-pair? _tl3170332392_)
                                            (let ((_e3172032435_
                                                   (gx#syntax-e
                                                    _tl3170332392_)))
                                              (let ((_tl3171832442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3172032435_)))
                                                    (_hd3171932439_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3172032435_))))
                                                (if (gx#stx-null?
                                                     _tl3171832442_)
                                                    (___kont4199141992_
                                                     _hd3171932439_
                                                     _pred3171732431_
                                                     _hd3170132379_)
                                                    (___match4216142162_
                                                     _e3170232375_
                                                     _hd3170132379_
                                                     _tl3170032382_
                                                     _e3170532385_
                                                     _hd3170432389_
                                                     _tl3170332392_
                                                     _e3172032435_
                                                     _hd3171932439_
                                                     _tl3171832442_))))
                                            (___match4214142142_
                                             _e3170232375_
                                             _hd3170132379_
                                             _tl3170032382_
                                             _e3170532385_
                                             _hd3170432389_
                                             _tl3170332392_)))))))
                        (_loop3171232411_ _target3170932405_ '())))))
              (if (gx#stx-pair? ___stx4198841989_)
                  (let ((_e3170232375_ (gx#syntax-e ___stx4198841989_)))
                    (let ((_tl3170032382_
                           (let () (declare (not safe)) (##cdr _e3170232375_)))
                          (_hd3170132379_
                           (let ()
                             (declare (not safe))
                             (##car _e3170232375_))))
                      (if (gx#stx-pair? _tl3170032382_)
                          (let ((_e3170532385_ (gx#syntax-e _tl3170032382_)))
                            (let ((_tl3170332392_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3170532385_)))
                                  (_hd3170432389_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3170532385_))))
                              (if (gx#stx-pair? _hd3170432389_)
                                  (let ((_e3170832395_
                                         (gx#syntax-e _hd3170432389_)))
                                    (let ((_tl3170632402_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3170832395_)))
                                          (_hd3170732399_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3170832395_))))
                                      (if (gx#identifier? _hd3170732399_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g43060_|
                                               _hd3170732399_)
                                              (if (gx#stx-pair/null?
                                                   _tl3170632402_)
                                                  (let ((___splice4199341994_
                                                         (gx#syntax-split-splice
                                                          _tl3170632402_
                                                          '0)))
                                                    (let ((_tl3171132408_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4199341994_
                                                              '1)))
                                                          (_target3170932405_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4199341994_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3171132408_)
                                                          (___match4204142042_
                                                           _e3170232375_
                                                           _hd3170132379_
                                                           _tl3170032382_
                                                           _e3170532385_
                                                           _hd3170432389_
                                                           _tl3170332392_
                                                           _e3170832395_
                                                           _hd3170732399_
                                                           _tl3170632402_
                                                           ___splice4199341994_
                                                           _target3170932405_
                                                           _tl3171132408_)
                                                          (if (gx#stx-pair?
                                                               _tl3170332392_)
                                                              (let ((_e3177332151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3170332392_)))
                        (let ((_tl3177132158_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3177332151_)))
                              (_hd3177232155_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3177332151_))))
                          (if (gx#stx-null? _tl3177132158_)
                              (___kont4200142002_
                               _hd3177232155_
                               _hd3170432389_)
                              (if (gx#identifier? _hd3177232155_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g43057_|
                                       _hd3177232155_)
                                      (if (gx#stx-pair? _tl3177132158_)
                                          (let ((_e3179632051_
                                                 (gx#syntax-e _tl3177132158_)))
                                            (let ((_tl3179432058_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3179632051_)))
                                                  (_hd3179532055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3179632051_))))
                                              (if (gx#stx-null? _tl3179432058_)
                                                  (___kont4200542006_
                                                   _hd3179532055_
                                                   _hd3170432389_
                                                   _hd3170132379_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3169531841_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3169531841_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3169531841_)))
                                  (if (gx#stx-datum? _hd3177232155_)
                                      (let ((_e3180931978_
                                             (gx#stx-e _hd3177232155_)))
                                        (if (equal? _e3180931978_ '::)
                                            (if (gx#stx-pair? _tl3177132158_)
                                                (let ((_e3181231982_
                                                       (gx#syntax-e
                                                        _tl3177132158_)))
                                                  (let ((_tl3181031989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3181231982_)))
                                                        (_hd3181131986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3181231982_))))
                                                    (if (gx#stx-null?
                                                         _tl3181031989_)
                                                        (___kont4200742008_
                                                         _hd3181131986_
                                                         _hd3170432389_
                                                         _hd3170132379_)
                                                        (if (gx#stx-pair?
                                                             _tl3181031989_)
                                                            (let ((_e3183231892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3181031989_)))
                      (let ((_tl3183031899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3183231892_)))
                            (_hd3183131896_
                             (let ()
                               (declare (not safe))
                               (##car _e3183231892_))))
                        (if (gx#identifier? _hd3183131896_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g43056_|
                                 _hd3183131896_)
                                (if (gx#stx-pair? _tl3183031899_)
                                    (let ((_e3183531902_
                                           (gx#syntax-e _tl3183031899_)))
                                      (let ((_tl3183331909_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3183531902_)))
                                            (_hd3183431906_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3183531902_))))
                                        (if (gx#stx-null? _tl3183331909_)
                                            (___kont4200942010_
                                             _hd3183431906_
                                             _hd3181131986_
                                             _hd3170432389_
                                             _hd3170132379_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3169531841_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_)))
                                (let () (declare (not safe)) (_g3169531841_)))
                            (let () (declare (not safe)) (_g3169531841_)))))
                    (let () (declare (not safe)) (_g3169531841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3169531841_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3169531841_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3169531841_)))))))
                      (if (gx#stx-null? _tl3170332392_)
                          (___kont4200342004_ _hd3170432389_ _hd3170132379_)
                          (let () (declare (not safe)) (_g3169531841_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3170332392_)
                                                      (let ((_e3177332151_
                                                             (gx#syntax-e
                                                              _tl3170332392_)))
                                                        (let ((_tl3177132158_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3177332151_)))
                      (_hd3177232155_
                       (let () (declare (not safe)) (##car _e3177332151_))))
                  (if (gx#stx-null? _tl3177132158_)
                      (___kont4200142002_ _hd3177232155_ _hd3170432389_)
                      (if (gx#identifier? _hd3177232155_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g43057_|
                               _hd3177232155_)
                              (if (gx#stx-pair? _tl3177132158_)
                                  (let ((_e3179632051_
                                         (gx#syntax-e _tl3177132158_)))
                                    (let ((_tl3179432058_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3179632051_)))
                                          (_hd3179532055_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3179632051_))))
                                      (if (gx#stx-null? _tl3179432058_)
                                          (___kont4200542006_
                                           _hd3179532055_
                                           _hd3170432389_
                                           _hd3170132379_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3169531841_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3169531841_)))
                              (let () (declare (not safe)) (_g3169531841_)))
                          (if (gx#stx-datum? _hd3177232155_)
                              (let ((_e3180931978_ (gx#stx-e _hd3177232155_)))
                                (if (equal? _e3180931978_ '::)
                                    (if (gx#stx-pair? _tl3177132158_)
                                        (let ((_e3181231982_
                                               (gx#syntax-e _tl3177132158_)))
                                          (let ((_tl3181031989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3181231982_)))
                                                (_hd3181131986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3181231982_))))
                                            (if (gx#stx-null? _tl3181031989_)
                                                (___kont4200742008_
                                                 _hd3181131986_
                                                 _hd3170432389_
                                                 _hd3170132379_)
                                                (if (gx#stx-pair?
                                                     _tl3181031989_)
                                                    (let ((_e3183231892_
                                                           (gx#syntax-e
                                                            _tl3181031989_)))
                                                      (let ((_tl3183031899_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3183231892_)))
                    (_hd3183131896_
                     (let () (declare (not safe)) (##car _e3183231892_))))
                (if (gx#identifier? _hd3183131896_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g43056_|
                         _hd3183131896_)
                        (if (gx#stx-pair? _tl3183031899_)
                            (let ((_e3183531902_ (gx#syntax-e _tl3183031899_)))
                              (let ((_tl3183331909_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3183531902_)))
                                    (_hd3183431906_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3183531902_))))
                                (if (gx#stx-null? _tl3183331909_)
                                    (___kont4200942010_
                                     _hd3183431906_
                                     _hd3181131986_
                                     _hd3170432389_
                                     _hd3170132379_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_)))))
                            (let () (declare (not safe)) (_g3169531841_)))
                        (let () (declare (not safe)) (_g3169531841_)))
                    (let () (declare (not safe)) (_g3169531841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3169531841_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3169531841_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_))))
                              (let ()
                                (declare (not safe))
                                (_g3169531841_)))))))
              (if (gx#stx-null? _tl3170332392_)
                  (___kont4200342004_ _hd3170432389_ _hd3170132379_)
                  (let () (declare (not safe)) (_g3169531841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g43059_|
                                                   _hd3170732399_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3170632402_)
                                                      (let ((___splice4199741998_
                                                             (gx#syntax-split-splice
                                                              _tl3170632402_
                                                              '0)))
                                                        (let ((_tl3173532298_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4199741998_ '1)))
                      (_target3173332295_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4199741998_ '0))))
                  (if (gx#stx-null? _tl3173532298_)
                      (___match4207142072_
                       _e3170232375_
                       _hd3170132379_
                       _tl3170032382_
                       _e3170532385_
                       _hd3170432389_
                       _tl3170332392_
                       _e3170832395_
                       _hd3170732399_
                       _tl3170632402_
                       ___splice4199741998_
                       _target3173332295_
                       _tl3173532298_)
                      (if (gx#stx-pair? _tl3170332392_)
                          (let ((_e3177332151_ (gx#syntax-e _tl3170332392_)))
                            (let ((_tl3177132158_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3177332151_)))
                                  (_hd3177232155_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3177332151_))))
                              (if (gx#stx-null? _tl3177132158_)
                                  (___kont4200142002_
                                   _hd3177232155_
                                   _hd3170432389_)
                                  (if (gx#identifier? _hd3177232155_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g43057_|
                                           _hd3177232155_)
                                          (if (gx#stx-pair? _tl3177132158_)
                                              (let ((_e3179632051_
                                                     (gx#syntax-e
                                                      _tl3177132158_)))
                                                (let ((_tl3179432058_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3179632051_)))
                                                      (_hd3179532055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3179632051_))))
                                                  (if (gx#stx-null?
                                                       _tl3179432058_)
                                                      (___kont4200542006_
                                                       _hd3179532055_
                                                       _hd3170432389_
                                                       _hd3170132379_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3169531841_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3169531841_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3169531841_)))
                                      (if (gx#stx-datum? _hd3177232155_)
                                          (let ((_e3180931978_
                                                 (gx#stx-e _hd3177232155_)))
                                            (if (equal? _e3180931978_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3177132158_)
                                                    (let ((_e3181231982_
                                                           (gx#syntax-e
                                                            _tl3177132158_)))
                                                      (let ((_tl3181031989_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3181231982_)))
                    (_hd3181131986_
                     (let () (declare (not safe)) (##car _e3181231982_))))
                (if (gx#stx-null? _tl3181031989_)
                    (___kont4200742008_
                     _hd3181131986_
                     _hd3170432389_
                     _hd3170132379_)
                    (if (gx#stx-pair? _tl3181031989_)
                        (let ((_e3183231892_ (gx#syntax-e _tl3181031989_)))
                          (let ((_tl3183031899_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3183231892_)))
                                (_hd3183131896_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3183231892_))))
                            (if (gx#identifier? _hd3183131896_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g43056_|
                                     _hd3183131896_)
                                    (if (gx#stx-pair? _tl3183031899_)
                                        (let ((_e3183531902_
                                               (gx#syntax-e _tl3183031899_)))
                                          (let ((_tl3183331909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3183531902_)))
                                                (_hd3183431906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3183531902_))))
                                            (if (gx#stx-null? _tl3183331909_)
                                                (___kont4200942010_
                                                 _hd3183431906_
                                                 _hd3181131986_
                                                 _hd3170432389_
                                                 _hd3170132379_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3169531841_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3169531841_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3169531841_)))))
                        (let () (declare (not safe)) (_g3169531841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3169531841_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3169531841_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3169531841_)))))))
                          (if (gx#stx-null? _tl3170332392_)
                              (___kont4200342004_
                               _hd3170432389_
                               _hd3170132379_)
                              (let ()
                                (declare (not safe))
                                (_g3169531841_)))))))
              (if (gx#stx-pair? _tl3170332392_)
                  (let ((_e3177332151_ (gx#syntax-e _tl3170332392_)))
                    (let ((_tl3177132158_
                           (let () (declare (not safe)) (##cdr _e3177332151_)))
                          (_hd3177232155_
                           (let ()
                             (declare (not safe))
                             (##car _e3177332151_))))
                      (if (gx#stx-null? _tl3177132158_)
                          (___kont4200142002_ _hd3177232155_ _hd3170432389_)
                          (if (gx#identifier? _hd3177232155_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g43057_|
                                   _hd3177232155_)
                                  (if (gx#stx-pair? _tl3177132158_)
                                      (let ((_e3179632051_
                                             (gx#syntax-e _tl3177132158_)))
                                        (let ((_tl3179432058_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3179632051_)))
                                              (_hd3179532055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3179632051_))))
                                          (if (gx#stx-null? _tl3179432058_)
                                              (___kont4200542006_
                                               _hd3179532055_
                                               _hd3170432389_
                                               _hd3170132379_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3169531841_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3169531841_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3169531841_)))
                              (if (gx#stx-datum? _hd3177232155_)
                                  (let ((_e3180931978_
                                         (gx#stx-e _hd3177232155_)))
                                    (if (equal? _e3180931978_ '::)
                                        (if (gx#stx-pair? _tl3177132158_)
                                            (let ((_e3181231982_
                                                   (gx#syntax-e
                                                    _tl3177132158_)))
                                              (let ((_tl3181031989_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3181231982_)))
                                                    (_hd3181131986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3181231982_))))
                                                (if (gx#stx-null?
                                                     _tl3181031989_)
                                                    (___kont4200742008_
                                                     _hd3181131986_
                                                     _hd3170432389_
                                                     _hd3170132379_)
                                                    (if (gx#stx-pair?
                                                         _tl3181031989_)
                                                        (let ((_e3183231892_
                                                               (gx#syntax-e
                                                                _tl3181031989_)))
                                                          (let ((_tl3183031899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3183231892_)))
                        (_hd3183131896_
                         (let () (declare (not safe)) (##car _e3183231892_))))
                    (if (gx#identifier? _hd3183131896_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g43056_|
                             _hd3183131896_)
                            (if (gx#stx-pair? _tl3183031899_)
                                (let ((_e3183531902_
                                       (gx#syntax-e _tl3183031899_)))
                                  (let ((_tl3183331909_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3183531902_)))
                                        (_hd3183431906_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3183531902_))))
                                    (if (gx#stx-null? _tl3183331909_)
                                        (___kont4200942010_
                                         _hd3183431906_
                                         _hd3181131986_
                                         _hd3170432389_
                                         _hd3170132379_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3169531841_)))))
                                (let () (declare (not safe)) (_g3169531841_)))
                            (let () (declare (not safe)) (_g3169531841_)))
                        (let () (declare (not safe)) (_g3169531841_)))))
                (let () (declare (not safe)) (_g3169531841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3169531841_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3169531841_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3169531841_)))))))
                  (if (gx#stx-null? _tl3170332392_)
                      (___kont4200342004_ _hd3170432389_ _hd3170132379_)
                      (let () (declare (not safe)) (_g3169531841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g43058_|
                                                       _hd3170732399_)
                                                      (if (gx#stx-pair?
                                                           _tl3170632402_)
                                                          (let ((_e3175932215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3170632402_)))
                    (let ((_tl3175732222_
                           (let () (declare (not safe)) (##cdr _e3175932215_)))
                          (_hd3175832219_
                           (let ()
                             (declare (not safe))
                             (##car _e3175932215_))))
                      (if (gx#stx-null? _tl3175732222_)
                          (if (gx#stx-pair? _tl3170332392_)
                              (let ((_e3176232225_
                                     (gx#syntax-e _tl3170332392_)))
                                (let ((_tl3176032232_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3176232225_)))
                                      (_hd3176132229_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3176232225_))))
                                  (if (gx#stx-null? _tl3176032232_)
                                      (___kont4199942000_
                                       _hd3176132229_
                                       _hd3175832219_
                                       _hd3170132379_)
                                      (if (gx#identifier? _hd3176132229_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g43057_|
                                               _hd3176132229_)
                                              (if (gx#stx-pair? _tl3176032232_)
                                                  (let ((_e3179632051_
                                                         (gx#syntax-e
                                                          _tl3176032232_)))
                                                    (let ((_tl3179432058_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3179632051_)))
                                                          (_hd3179532055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3179632051_))))
                                                      (if (gx#stx-null?
                                                           _tl3179432058_)
                                                          (___kont4200542006_
                                                           _hd3179532055_
                                                           _hd3170432389_
                                                           _hd3170132379_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3169531841_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3169531841_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3169531841_)))
                                          (if (gx#stx-datum? _hd3176132229_)
                                              (let ((_e3180931978_
                                                     (gx#stx-e
                                                      _hd3176132229_)))
                                                (if (equal? _e3180931978_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3176032232_)
                                                        (let ((_e3181231982_
                                                               (gx#syntax-e
                                                                _tl3176032232_)))
                                                          (let ((_tl3181031989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3181231982_)))
                        (_hd3181131986_
                         (let () (declare (not safe)) (##car _e3181231982_))))
                    (if (gx#stx-null? _tl3181031989_)
                        (___kont4200742008_
                         _hd3181131986_
                         _hd3170432389_
                         _hd3170132379_)
                        (if (gx#stx-pair? _tl3181031989_)
                            (let ((_e3183231892_ (gx#syntax-e _tl3181031989_)))
                              (let ((_tl3183031899_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3183231892_)))
                                    (_hd3183131896_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3183231892_))))
                                (if (gx#identifier? _hd3183131896_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g43056_|
                                         _hd3183131896_)
                                        (if (gx#stx-pair? _tl3183031899_)
                                            (let ((_e3183531902_
                                                   (gx#syntax-e
                                                    _tl3183031899_)))
                                              (let ((_tl3183331909_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3183531902_)))
                                                    (_hd3183431906_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3183531902_))))
                                                (if (gx#stx-null?
                                                     _tl3183331909_)
                                                    (___kont4200942010_
                                                     _hd3183431906_
                                                     _hd3181131986_
                                                     _hd3170432389_
                                                     _hd3170132379_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3169531841_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3169531841_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3169531841_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_)))))
                            (let () (declare (not safe)) (_g3169531841_))))))
                (let () (declare (not safe)) (_g3169531841_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3169531841_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3169531841_)))))))
                              (if (gx#stx-null? _tl3170332392_)
                                  (___kont4200342004_
                                   _hd3170432389_
                                   _hd3170132379_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3169531841_))))
                          (if (gx#stx-pair? _tl3170332392_)
                              (let ((_e3177332151_
                                     (gx#syntax-e _tl3170332392_)))
                                (let ((_tl3177132158_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3177332151_)))
                                      (_hd3177232155_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3177332151_))))
                                  (if (gx#stx-null? _tl3177132158_)
                                      (___kont4200142002_
                                       _hd3177232155_
                                       _hd3170432389_)
                                      (if (gx#identifier? _hd3177232155_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g43057_|
                                               _hd3177232155_)
                                              (if (gx#stx-pair? _tl3177132158_)
                                                  (let ((_e3179632051_
                                                         (gx#syntax-e
                                                          _tl3177132158_)))
                                                    (let ((_tl3179432058_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3179632051_)))
                                                          (_hd3179532055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3179632051_))))
                                                      (if (gx#stx-null?
                                                           _tl3179432058_)
                                                          (___kont4200542006_
                                                           _hd3179532055_
                                                           _hd3170432389_
                                                           _hd3170132379_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3169531841_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3169531841_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3169531841_)))
                                          (if (gx#stx-datum? _hd3177232155_)
                                              (let ((_e3180931978_
                                                     (gx#stx-e
                                                      _hd3177232155_)))
                                                (if (equal? _e3180931978_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3177132158_)
                                                        (let ((_e3181231982_
                                                               (gx#syntax-e
                                                                _tl3177132158_)))
                                                          (let ((_tl3181031989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3181231982_)))
                        (_hd3181131986_
                         (let () (declare (not safe)) (##car _e3181231982_))))
                    (if (gx#stx-null? _tl3181031989_)
                        (___kont4200742008_
                         _hd3181131986_
                         _hd3170432389_
                         _hd3170132379_)
                        (if (gx#stx-pair? _tl3181031989_)
                            (let ((_e3183231892_ (gx#syntax-e _tl3181031989_)))
                              (let ((_tl3183031899_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3183231892_)))
                                    (_hd3183131896_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3183231892_))))
                                (if (gx#identifier? _hd3183131896_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g43056_|
                                         _hd3183131896_)
                                        (if (gx#stx-pair? _tl3183031899_)
                                            (let ((_e3183531902_
                                                   (gx#syntax-e
                                                    _tl3183031899_)))
                                              (let ((_tl3183331909_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3183531902_)))
                                                    (_hd3183431906_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3183531902_))))
                                                (if (gx#stx-null?
                                                     _tl3183331909_)
                                                    (___kont4200942010_
                                                     _hd3183431906_
                                                     _hd3181131986_
                                                     _hd3170432389_
                                                     _hd3170132379_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3169531841_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3169531841_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3169531841_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_)))))
                            (let () (declare (not safe)) (_g3169531841_))))))
                (let () (declare (not safe)) (_g3169531841_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3169531841_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3169531841_)))))))
                              (if (gx#stx-null? _tl3170332392_)
                                  (___kont4200342004_
                                   _hd3170432389_
                                   _hd3170132379_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3169531841_)))))))
                  (if (gx#stx-pair? _tl3170332392_)
                      (let ((_e3177332151_ (gx#syntax-e _tl3170332392_)))
                        (let ((_tl3177132158_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3177332151_)))
                              (_hd3177232155_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3177332151_))))
                          (if (gx#stx-null? _tl3177132158_)
                              (___kont4200142002_
                               _hd3177232155_
                               _hd3170432389_)
                              (if (gx#identifier? _hd3177232155_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g43057_|
                                       _hd3177232155_)
                                      (if (gx#stx-pair? _tl3177132158_)
                                          (let ((_e3179632051_
                                                 (gx#syntax-e _tl3177132158_)))
                                            (let ((_tl3179432058_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3179632051_)))
                                                  (_hd3179532055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3179632051_))))
                                              (if (gx#stx-null? _tl3179432058_)
                                                  (___kont4200542006_
                                                   _hd3179532055_
                                                   _hd3170432389_
                                                   _hd3170132379_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3169531841_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3169531841_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3169531841_)))
                                  (if (gx#stx-datum? _hd3177232155_)
                                      (let ((_e3180931978_
                                             (gx#stx-e _hd3177232155_)))
                                        (if (equal? _e3180931978_ '::)
                                            (if (gx#stx-pair? _tl3177132158_)
                                                (let ((_e3181231982_
                                                       (gx#syntax-e
                                                        _tl3177132158_)))
                                                  (let ((_tl3181031989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3181231982_)))
                                                        (_hd3181131986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3181231982_))))
                                                    (if (gx#stx-null?
                                                         _tl3181031989_)
                                                        (___kont4200742008_
                                                         _hd3181131986_
                                                         _hd3170432389_
                                                         _hd3170132379_)
                                                        (if (gx#stx-pair?
                                                             _tl3181031989_)
                                                            (let ((_e3183231892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3181031989_)))
                      (let ((_tl3183031899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3183231892_)))
                            (_hd3183131896_
                             (let ()
                               (declare (not safe))
                               (##car _e3183231892_))))
                        (if (gx#identifier? _hd3183131896_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g43056_|
                                 _hd3183131896_)
                                (if (gx#stx-pair? _tl3183031899_)
                                    (let ((_e3183531902_
                                           (gx#syntax-e _tl3183031899_)))
                                      (let ((_tl3183331909_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3183531902_)))
                                            (_hd3183431906_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3183531902_))))
                                        (if (gx#stx-null? _tl3183331909_)
                                            (___kont4200942010_
                                             _hd3183431906_
                                             _hd3181131986_
                                             _hd3170432389_
                                             _hd3170132379_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3169531841_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_)))
                                (let () (declare (not safe)) (_g3169531841_)))
                            (let () (declare (not safe)) (_g3169531841_)))))
                    (let () (declare (not safe)) (_g3169531841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3169531841_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3169531841_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3169531841_)))))))
                      (if (gx#stx-null? _tl3170332392_)
                          (___kont4200342004_ _hd3170432389_ _hd3170132379_)
                          (let () (declare (not safe)) (_g3169531841_)))))
              (if (gx#stx-pair? _tl3170332392_)
                  (let ((_e3177332151_ (gx#syntax-e _tl3170332392_)))
                    (let ((_tl3177132158_
                           (let () (declare (not safe)) (##cdr _e3177332151_)))
                          (_hd3177232155_
                           (let ()
                             (declare (not safe))
                             (##car _e3177332151_))))
                      (if (gx#stx-null? _tl3177132158_)
                          (___kont4200142002_ _hd3177232155_ _hd3170432389_)
                          (if (gx#identifier? _hd3177232155_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g43057_|
                                   _hd3177232155_)
                                  (if (gx#stx-pair? _tl3177132158_)
                                      (let ((_e3179632051_
                                             (gx#syntax-e _tl3177132158_)))
                                        (let ((_tl3179432058_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3179632051_)))
                                              (_hd3179532055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3179632051_))))
                                          (if (gx#stx-null? _tl3179432058_)
                                              (___kont4200542006_
                                               _hd3179532055_
                                               _hd3170432389_
                                               _hd3170132379_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3169531841_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3169531841_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3169531841_)))
                              (if (gx#stx-datum? _hd3177232155_)
                                  (let ((_e3180931978_
                                         (gx#stx-e _hd3177232155_)))
                                    (if (equal? _e3180931978_ '::)
                                        (if (gx#stx-pair? _tl3177132158_)
                                            (let ((_e3181231982_
                                                   (gx#syntax-e
                                                    _tl3177132158_)))
                                              (let ((_tl3181031989_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3181231982_)))
                                                    (_hd3181131986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3181231982_))))
                                                (if (gx#stx-null?
                                                     _tl3181031989_)
                                                    (___kont4200742008_
                                                     _hd3181131986_
                                                     _hd3170432389_
                                                     _hd3170132379_)
                                                    (if (gx#stx-pair?
                                                         _tl3181031989_)
                                                        (let ((_e3183231892_
                                                               (gx#syntax-e
                                                                _tl3181031989_)))
                                                          (let ((_tl3183031899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3183231892_)))
                        (_hd3183131896_
                         (let () (declare (not safe)) (##car _e3183231892_))))
                    (if (gx#identifier? _hd3183131896_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g43056_|
                             _hd3183131896_)
                            (if (gx#stx-pair? _tl3183031899_)
                                (let ((_e3183531902_
                                       (gx#syntax-e _tl3183031899_)))
                                  (let ((_tl3183331909_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3183531902_)))
                                        (_hd3183431906_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3183531902_))))
                                    (if (gx#stx-null? _tl3183331909_)
                                        (___kont4200942010_
                                         _hd3183431906_
                                         _hd3181131986_
                                         _hd3170432389_
                                         _hd3170132379_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3169531841_)))))
                                (let () (declare (not safe)) (_g3169531841_)))
                            (let () (declare (not safe)) (_g3169531841_)))
                        (let () (declare (not safe)) (_g3169531841_)))))
                (let () (declare (not safe)) (_g3169531841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3169531841_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3169531841_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3169531841_)))))))
                  (if (gx#stx-null? _tl3170332392_)
                      (___kont4200342004_ _hd3170432389_ _hd3170132379_)
                      (let () (declare (not safe)) (_g3169531841_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3170332392_)
                                              (let ((_e3177332151_
                                                     (gx#syntax-e
                                                      _tl3170332392_)))
                                                (let ((_tl3177132158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3177332151_)))
                                                      (_hd3177232155_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3177332151_))))
                                                  (if (gx#stx-null?
                                                       _tl3177132158_)
                                                      (___kont4200142002_
                                                       _hd3177232155_
                                                       _hd3170432389_)
                                                      (if (gx#identifier?
                                                           _hd3177232155_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g43057_|
                                                               _hd3177232155_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3177132158_)
                          (let ((_e3179632051_ (gx#syntax-e _tl3177132158_)))
                            (let ((_tl3179432058_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3179632051_)))
                                  (_hd3179532055_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3179632051_))))
                              (if (gx#stx-null? _tl3179432058_)
                                  (___kont4200542006_
                                   _hd3179532055_
                                   _hd3170432389_
                                   _hd3170132379_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3169531841_)))))
                          (let () (declare (not safe)) (_g3169531841_)))
                      (let () (declare (not safe)) (_g3169531841_)))
                  (if (gx#stx-datum? _hd3177232155_)
                      (let ((_e3180931978_ (gx#stx-e _hd3177232155_)))
                        (if (equal? _e3180931978_ '::)
                            (if (gx#stx-pair? _tl3177132158_)
                                (let ((_e3181231982_
                                       (gx#syntax-e _tl3177132158_)))
                                  (let ((_tl3181031989_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3181231982_)))
                                        (_hd3181131986_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3181231982_))))
                                    (if (gx#stx-null? _tl3181031989_)
                                        (___kont4200742008_
                                         _hd3181131986_
                                         _hd3170432389_
                                         _hd3170132379_)
                                        (if (gx#stx-pair? _tl3181031989_)
                                            (let ((_e3183231892_
                                                   (gx#syntax-e
                                                    _tl3181031989_)))
                                              (let ((_tl3183031899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3183231892_)))
                                                    (_hd3183131896_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3183231892_))))
                                                (if (gx#identifier?
                                                     _hd3183131896_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g43056_|
                                                         _hd3183131896_)
                                                        (if (gx#stx-pair?
                                                             _tl3183031899_)
                                                            (let ((_e3183531902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3183031899_)))
                      (let ((_tl3183331909_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3183531902_)))
                            (_hd3183431906_
                             (let ()
                               (declare (not safe))
                               (##car _e3183531902_))))
                        (if (gx#stx-null? _tl3183331909_)
                            (___kont4200942010_
                             _hd3183431906_
                             _hd3181131986_
                             _hd3170432389_
                             _hd3170132379_)
                            (let () (declare (not safe)) (_g3169531841_)))))
                    (let () (declare (not safe)) (_g3169531841_)))
                (let () (declare (not safe)) (_g3169531841_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3169531841_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3169531841_))))))
                                (let () (declare (not safe)) (_g3169531841_)))
                            (let () (declare (not safe)) (_g3169531841_))))
                      (let () (declare (not safe)) (_g3169531841_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3170332392_)
                                                  (___kont4200342004_
                                                   _hd3170432389_
                                                   _hd3170132379_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3169531841_)))))))
                                  (if (gx#stx-pair? _tl3170332392_)
                                      (let ((_e3177332151_
                                             (gx#syntax-e _tl3170332392_)))
                                        (let ((_tl3177132158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3177332151_)))
                                              (_hd3177232155_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3177332151_))))
                                          (if (gx#stx-null? _tl3177132158_)
                                              (___kont4200142002_
                                               _hd3177232155_
                                               _hd3170432389_)
                                              (if (gx#identifier?
                                                   _hd3177232155_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g43057_|
                                                       _hd3177232155_)
                                                      (if (gx#stx-pair?
                                                           _tl3177132158_)
                                                          (let ((_e3179632051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3177132158_)))
                    (let ((_tl3179432058_
                           (let () (declare (not safe)) (##cdr _e3179632051_)))
                          (_hd3179532055_
                           (let ()
                             (declare (not safe))
                             (##car _e3179632051_))))
                      (if (gx#stx-null? _tl3179432058_)
                          (___kont4200542006_
                           _hd3179532055_
                           _hd3170432389_
                           _hd3170132379_)
                          (let () (declare (not safe)) (_g3169531841_)))))
                  (let () (declare (not safe)) (_g3169531841_)))
              (let () (declare (not safe)) (_g3169531841_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3177232155_)
                                                      (let ((_e3180931978_
                                                             (gx#stx-e
                                                              _hd3177232155_)))
                                                        (if (equal? _e3180931978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3177132158_)
                        (let ((_e3181231982_ (gx#syntax-e _tl3177132158_)))
                          (let ((_tl3181031989_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3181231982_)))
                                (_hd3181131986_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3181231982_))))
                            (if (gx#stx-null? _tl3181031989_)
                                (___kont4200742008_
                                 _hd3181131986_
                                 _hd3170432389_
                                 _hd3170132379_)
                                (if (gx#stx-pair? _tl3181031989_)
                                    (let ((_e3183231892_
                                           (gx#syntax-e _tl3181031989_)))
                                      (let ((_tl3183031899_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3183231892_)))
                                            (_hd3183131896_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3183231892_))))
                                        (if (gx#identifier? _hd3183131896_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g43056_|
                                                 _hd3183131896_)
                                                (if (gx#stx-pair?
                                                     _tl3183031899_)
                                                    (let ((_e3183531902_
                                                           (gx#syntax-e
                                                            _tl3183031899_)))
                                                      (let ((_tl3183331909_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3183531902_)))
                    (_hd3183431906_
                     (let () (declare (not safe)) (##car _e3183531902_))))
                (if (gx#stx-null? _tl3183331909_)
                    (___kont4200942010_
                     _hd3183431906_
                     _hd3181131986_
                     _hd3170432389_
                     _hd3170132379_)
                    (let () (declare (not safe)) (_g3169531841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3169531841_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3169531841_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3169531841_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3169531841_))))))
                        (let () (declare (not safe)) (_g3169531841_)))
                    (let () (declare (not safe)) (_g3169531841_))))
              (let () (declare (not safe)) (_g3169531841_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3170332392_)
                                          (___kont4200342004_
                                           _hd3170432389_
                                           _hd3170132379_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3169531841_)))))))
                          (let () (declare (not safe)) (_g3169531841_)))))
                  (let () (declare (not safe)) (_g3169531841_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32484_)
        (let* ((___stx4225642257_ _$stx32484_)
               (_g3248932523_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4225642257_))))
          (let ((___kont4225942260_
                 (lambda (_L32627_ _L32629_ _L32630_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _L32630_
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
                                       (cons _L32629_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _L32627_ '()))
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
                (___kont4226142262_
                 (lambda (_L32560_ _L32562_ _L32563_)
                   (cons _L32563_
                         (cons _L32562_
                               (cons _L32560_
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
                                 (cons '"Bad syntax; no macro definition for defsyntax-for-match"
                                       (cons (gx#datum->syntax '#f '$stx)
                                             '()))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let ((___match4228942290_
                   (lambda (_e3249632587_
                            _hd3249532591_
                            _tl3249432594_
                            _e3249932597_
                            _hd3249832601_
                            _tl3249732604_
                            _e3250232607_
                            _hd3250132611_
                            _tl3250032614_
                            _e3250532617_
                            _hd3250432621_
                            _tl3250332624_)
                     (let ((_L32627_ _hd3250432621_)
                           (_L32629_ _hd3250132611_)
                           (_L32630_ _hd3249832601_))
                       (if (gx#identifier? _L32630_)
                           (___kont4225942260_ _L32627_ _L32629_ _L32630_)
                           (let () (declare (not safe)) (_g3248932523_)))))))
              (if (gx#stx-pair? ___stx4225642257_)
                  (let ((_e3249632587_ (gx#syntax-e ___stx4225642257_)))
                    (let ((_tl3249432594_
                           (let () (declare (not safe)) (##cdr _e3249632587_)))
                          (_hd3249532591_
                           (let ()
                             (declare (not safe))
                             (##car _e3249632587_))))
                      (if (gx#stx-pair? _tl3249432594_)
                          (let ((_e3249932597_ (gx#syntax-e _tl3249432594_)))
                            (let ((_tl3249732604_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3249932597_)))
                                  (_hd3249832601_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3249932597_))))
                              (if (gx#stx-pair? _tl3249732604_)
                                  (let ((_e3250232607_
                                         (gx#syntax-e _tl3249732604_)))
                                    (let ((_tl3250032614_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3250232607_)))
                                          (_hd3250132611_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3250232607_))))
                                      (if (gx#stx-pair? _tl3250032614_)
                                          (let ((_e3250532617_
                                                 (gx#syntax-e _tl3250032614_)))
                                            (let ((_tl3250332624_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3250532617_)))
                                                  (_hd3250432621_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3250532617_))))
                                              (if (gx#stx-null? _tl3250332624_)
                                                  (___match4228942290_
                                                   _e3249632587_
                                                   _hd3249532591_
                                                   _tl3249432594_
                                                   _e3249932597_
                                                   _hd3249832601_
                                                   _tl3249732604_
                                                   _e3250232607_
                                                   _hd3250132611_
                                                   _tl3250032614_
                                                   _e3250532617_
                                                   _hd3250432621_
                                                   _tl3250332624_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3248932523_)))))
                                          (if (gx#stx-null? _tl3250032614_)
                                              (___kont4226142262_
                                               _hd3250132611_
                                               _hd3249832601_
                                               _hd3249532591_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3248932523_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3248932523_)))))
                          (let () (declare (not safe)) (_g3248932523_)))))
                  (let () (declare (not safe)) (_g3248932523_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32652_)
        (let* ((_g3265632671_
                (lambda (_g3265732667_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3265732667_)))
               (_g3265532714_
                (lambda (_g3265732675_)
                  (if (gx#stx-pair? _g3265732675_)
                      (let ((_e3266232678_ (gx#syntax-e _g3265732675_)))
                        (let ((_hd3266132682_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3266232678_)))
                              (_tl3266032685_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3266232678_))))
                          (if (gx#stx-pair? _tl3266032685_)
                              (let ((_e3266532688_
                                     (gx#syntax-e _tl3266032685_)))
                                (let ((_hd3266432692_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3266532688_)))
                                      (_tl3266332695_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3266532688_))))
                                  ((lambda (_L32698_ _L32700_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L32700_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L32698_)
                                                       '()))))
                                   _tl3266332695_
                                   _hd3266432692_)))
                              (_g3265632671_ _g3265732675_))))
                      (_g3265632671_ _g3265732675_)))))
          (_g3265532714_ _$stx32652_))))))
