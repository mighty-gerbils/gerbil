(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g48182_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48183_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48240_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48241_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48242_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48244_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48245_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48246_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48247_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48248_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48249_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48250_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48251_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48252_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48253_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48671_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48755_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48775_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g48776_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48905_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48906_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48907_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48908_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g48909_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/match[1]#match-macro::t|
      (let ((__tmp48166 (list gerbil/core/macro-object#macro-object::t)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#match-macro::t
         'match-macro
         __tmp48166
         '()
         '()
         '#f)))
    (define |gerbil/core/match[1]#match-macro?|
      (let ()
        (declare (not safe))
        (make-class-predicate |gerbil/core/match[1]#match-macro::t|)))
    (define |gerbil/core/match[1]#make-match-macro|
      (lambda _$args43467_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _$args43467_)))
    (define |gerbil/core/match[1]#match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         |gerbil/core/match[1]#match-macro::t|
         'macro)))
    (define |gerbil/core/match[1]#match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         |gerbil/core/match[1]#match-macro::t|
         'macro)))
    (define |gerbil/core/match[1]#&match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         |gerbil/core/match[1]#match-macro::t|
         'macro)))
    (define |gerbil/core/match[1]#&match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         |gerbil/core/match[1]#match-macro::t|
         'macro)))
    (define |gerbil/core/match[1]#syntax-local-match-macro?|
      (lambda (_stx43464_)
        (if (gx#identifier? _stx43464_)
            (let ((__tmp48167 (gx#syntax-local-value _stx43464_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp48167))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_stx41770_ _match-stx41772_)
        (letrec ((_parse141774_
                  (lambda (_hd42127_)
                    (let* ((___stx4595445955_ _hd42127_)
                           (_g4215342295_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4595445955_))))
                      (let ((___kont4595745958_
                             (lambda (_L43227_ _L43229_)
                               (let* ((___stx4587445875_ _L43227_)
                                      (_g4324643279_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4587445875_))))
                                 (let ((___kont4587745878_
                                        (lambda ()
                                          (let ((__tmp48168
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L43229_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp48168))))
                                       (___kont4587945880_
                                        (lambda (_L43420_)
                                          (let ((__tmp48169
                                                 (let ((__tmp48170
                                                        (let ((__tmp48171
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse141774_ _L43420_))))
                  (declare (not safe))
                  (cons __tmp48171 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L43229_
                                                         __tmp48170))))
                                            (declare (not safe))
                                            (cons '?: __tmp48169))))
                                       (___kont4588145882_
                                        (lambda (_L43390_)
                                          (let ((__tmp48172
                                                 (let ((__tmp48173
                                                        (let ((__tmp48174
                                                               (let ((__tmp48175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse141774_ _L43390_))))
                         (declare (not safe))
                         (cons __tmp48175 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp48174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L43229_
                                                         __tmp48173))))
                                            (declare (not safe))
                                            (cons '?: __tmp48172))))
                                       (___kont4588345884_
                                        (lambda (_L43341_ _L43343_)
                                          (let ((__tmp48176
                                                 (let ((__tmp48177
                                                        (let ((__tmp48178
                                                               (let ((__tmp48179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48180
                                     (let ((__tmp48181
                                            (let ()
                                              (declare (not safe))
                                              (_parse141774_ _L43341_))))
                                       (declare (not safe))
                                       (cons __tmp48181 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp48180))))
                         (declare (not safe))
                         (cons _L43343_ __tmp48179))))
                  (declare (not safe))
                  (cons ':: __tmp48178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L43229_
                                                         __tmp48177))))
                                            (declare (not safe))
                                            (cons '?: __tmp48176))))
                                       (___kont4588545886_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error41781_ _hd42127_)))))
                                   (let ((_g4324243431_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4587445875_)
                                                (let ((_e4325143410_
                                                       (gx#syntax-e
                                                        ___stx4587445875_)))
                                                  (let ((_tl4324943417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4325143410_)))
                                                        (_hd4325043414_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4325143410_))))
                                                    (if (gx#stx-null?
                                                         _tl4324943417_)
                                                        (___kont4587945880_
                                                         _hd4325043414_)
                                                        (if (gx#identifier?
                                                             _hd4325043414_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g48183_|
                         _hd4325043414_)
                        (if (gx#stx-pair? _tl4324943417_)
                            (let ((_e4325843380_ (gx#syntax-e _tl4324943417_)))
                              (let ((_tl4325643387_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4325843380_)))
                                    (_hd4325743384_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4325843380_))))
                                (if (gx#stx-null? _tl4325643387_)
                                    (___kont4588145882_ _hd4325743384_)
                                    (___kont4588545886_))))
                            (___kont4588545886_))
                        (___kont4588545886_))
                    (if (gx#stx-datum? _hd4325043414_)
                        (let ((_e4326443307_ (gx#stx-e _hd4325043414_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e4326443307_ '::))
                              (if (gx#stx-pair? _tl4324943417_)
                                  (let ((_e4326743311_
                                         (gx#syntax-e _tl4324943417_)))
                                    (let ((_tl4326543318_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4326743311_)))
                                          (_hd4326643315_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4326743311_))))
                                      (if (gx#stx-pair? _tl4326543318_)
                                          (let ((_e4327043321_
                                                 (gx#syntax-e _tl4326543318_)))
                                            (let ((_tl4326843328_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4327043321_)))
                                                  (_hd4326943325_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4327043321_))))
                                              (if (gx#identifier?
                                                   _hd4326943325_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g48182_|
                                                       _hd4326943325_)
                                                      (if (gx#stx-pair?
                                                           _tl4326843328_)
                                                          (let ((_e4327343331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4326843328_)))
                    (let ((_tl4327143338_
                           (let () (declare (not safe)) (##cdr _e4327343331_)))
                          (_hd4327243335_
                           (let ()
                             (declare (not safe))
                             (##car _e4327343331_))))
                      (if (gx#stx-null? _tl4327143338_)
                          (___kont4588345884_ _hd4327243335_ _hd4326643315_)
                          (___kont4588545886_))))
                  (___kont4588545886_))
              (___kont4588545886_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4588545886_))))
                                          (___kont4588545886_))))
                                  (___kont4588545886_))
                              (___kont4588545886_)))
                        (___kont4588545886_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4588545886_)))))
                                     (if (gx#stx-null? ___stx4587445875_)
                                         (___kont4587745878_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4324243431_))))))))
                            (___kont4595945960_
                             (lambda (_L43132_)
                               (let* ((___stx4585645857_ _L43132_)
                                      (_g4314443155_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4585645857_))))
                                 (let ((___kont4585945860_
                                        (lambda (_L43183_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse141774_ _L43183_))))
                                       (___kont4586145862_
                                        (lambda ()
                                          (let ((__tmp48184
                                                 (gx#stx-map
                                                  _parse141774_
                                                  _L43132_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp48184)))))
                                   (if (gx#stx-pair? ___stx4585645857_)
                                       (let ((_e4314943173_
                                              (gx#syntax-e ___stx4585645857_)))
                                         (let ((_tl4314743180_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4314943173_)))
                                               (_hd4314843177_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4314943173_))))
                                           (if (gx#stx-null? _tl4314743180_)
                                               (___kont4585945860_
                                                _hd4314843177_)
                                               (___kont4586145862_))))
                                       (___kont4586145862_))))))
                            (___kont4596145962_
                             (lambda (_L43047_)
                               (let* ((___stx4583845839_ _L43047_)
                                      (_g4305943070_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4583845839_))))
                                 (let ((___kont4584145842_
                                        (lambda (_L43098_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse141774_ _L43098_))))
                                       (___kont4584345844_
                                        (lambda ()
                                          (let ((__tmp48185
                                                 (gx#stx-map
                                                  _parse141774_
                                                  _L43047_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp48185)))))
                                   (if (gx#stx-pair? ___stx4583845839_)
                                       (let ((_e4306443088_
                                              (gx#syntax-e ___stx4583845839_)))
                                         (let ((_tl4306243095_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4306443088_)))
                                               (_hd4306343092_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4306443088_))))
                                           (if (gx#stx-null? _tl4306243095_)
                                               (___kont4584145842_
                                                _hd4306343092_)
                                               (___kont4584345844_))))
                                       (___kont4584345844_))))))
                            (___kont4596345964_
                             (lambda (_L43017_)
                               (let ((__tmp48186
                                      (let ((__tmp48187
                                             (let ()
                                               (declare (not safe))
                                               (_parse141774_ _L43017_))))
                                        (declare (not safe))
                                        (cons __tmp48187 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp48186))))
                            (___kont4596545966_
                             (lambda (_L42973_ _L42975_)
                               (let ((__tmp48188
                                      (let ((__tmp48191
                                             (let ()
                                               (declare (not safe))
                                               (_parse141774_ _L42975_)))
                                            (__tmp48189
                                             (let ((__tmp48190
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse141774_
                                                       _L42973_))))
                                               (declare (not safe))
                                               (cons __tmp48190 '()))))
                                        (declare (not safe))
                                        (cons __tmp48191 __tmp48189))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp48188))))
                            (___kont4596745968_
                             (lambda (_L42917_ _L42919_ _L42920_)
                               (if (gx#stx-null? _L42917_)
                                   (let ((__tmp48199
                                          (let ((__tmp48202
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse141774_ _L42920_)))
                                                (__tmp48200
                                                 (let ((__tmp48201
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse141774_
                                                           _L42919_))))
                                                   (declare (not safe))
                                                   (cons __tmp48201 '()))))
                                            (declare (not safe))
                                            (cons __tmp48202 __tmp48200))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp48199))
                                   (let ((__tmp48192
                                          (let ((__tmp48198
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse141774_ _L42920_)))
                                                (__tmp48193
                                                 (let ((__tmp48194
                                                        (let ((__tmp48195
                                                               (let ((__tmp48197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp48196
                              (let ()
                                (declare (not safe))
                                (cons _L42919_ _L42917_))))
                         (declare (not safe))
                         (cons __tmp48197 __tmp48196))))
                  (declare (not safe))
                  (_parse141774_ __tmp48195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48194 '()))))
                                            (declare (not safe))
                                            (cons __tmp48198 __tmp48193))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp48192)))))
                            (___kont4596945970_
                             (lambda (_L42869_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list41776_ _L42869_))))
                            (___kont4597145972_
                             (lambda (_L42839_)
                               (let ((__tmp48203
                                      (let ((__tmp48204
                                             (let ()
                                               (declare (not safe))
                                               (_parse141774_ _L42839_))))
                                        (declare (not safe))
                                        (cons __tmp48204 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp48203))))
                            (___kont4597345974_
                             (lambda (_L42802_)
                               (let ((__tmp48205
                                      (let ((__tmp48206
                                             (let ()
                                               (declare (not safe))
                                               (_parse141774_ _L42802_))))
                                        (declare (not safe))
                                        (cons __tmp48206 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp48205))))
                            (___kont4597545976_
                             (lambda (_L42778_)
                               (let ()
                                 (declare (not safe))
                                 (_parse141774_ _L42778_))))
                            (___kont4597745978_
                             (lambda (_L42740_)
                               (let ((__tmp48207
                                      (let ((__tmp48208
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector41777_
                                                _L42740_))))
                                        (declare (not safe))
                                        (cons __tmp48208 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp48207))))
                            (___kont4597945980_
                             (lambda (_L42712_)
                               (let ((__tmp48209
                                      (let ((__tmp48210
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector41777_
                                                _L42712_))))
                                        (declare (not safe))
                                        (cons __tmp48210 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp48209))))
                            (___kont4598145982_
                             (lambda (_L42673_)
                               (let ((__tmp48211
                                      (let ((__tmp48212
                                             (let ((__tmp48213
                                                    (let ((__tmp48214
                                                           (lambda (_g4268642689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4268742692_)
                     (let ()
                       (declare (not safe))
                       (cons _g4268642689_ _g4268742692_)))))
              (declare (not safe))
              (foldr1 __tmp48214 '() _L42673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector41777_
                                                __tmp48213))))
                                        (declare (not safe))
                                        (cons __tmp48212 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp48211))))
                            (___kont4598545986_
                             (lambda (_L42619_ _L42621_)
                               (let ((__tmp48215
                                      (let ((__tmp48218
                                             (gx#syntax-local-value _L42621_))
                                            (__tmp48216
                                             (let ((__tmp48217
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector41777_
                                                       _L42619_))))
                                               (declare (not safe))
                                               (cons __tmp48217 '()))))
                                        (declare (not safe))
                                        (cons __tmp48218 __tmp48216))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp48215))))
                            (___kont4598745988_
                             (lambda (_L42589_ _L42591_)
                               (let ((__tmp48219
                                      (let ((__tmp48222
                                             (gx#syntax-local-value _L42591_))
                                            (__tmp48220
                                             (let ((__tmp48221
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body41779_
                                                       _L42589_))))
                                               (declare (not safe))
                                               (cons __tmp48221 '()))))
                                        (declare (not safe))
                                        (cons __tmp48222 __tmp48220))))
                                 (declare (not safe))
                                 (cons 'class: __tmp48219))))
                            (___kont4598945990_
                             (lambda (_L42549_ _L42551_)
                               (let ((__tmp48223
                                      (let ((__tmp48224
                                             (let ((__tmp48229
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp48225
                                                    (let ((__tmp48226
                                                           (let ((__tmp48228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp48227
                          (let () (declare (not safe)) (cons _L42549_ '()))))
                     (declare (not safe))
                     (cons __tmp48228 __tmp48227))))
              (declare (not safe))
              (cons _L42551_ __tmp48226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48229 __tmp48225))))
                                        (declare (not safe))
                                        (cons __tmp48224 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp48223))))
                            (___kont4599145992_
                             (lambda (_L42509_)
                               (let ((__tmp48230
                                      (let ((__tmp48231 (gx#stx-e _L42509_)))
                                        (declare (not safe))
                                        (cons __tmp48231 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp48230))))
                            (___kont4599345994_
                             (lambda (_L42469_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq41780_ _L42469_))))
                            (___kont4599545996_
                             (lambda (_L42425_ _L42427_)
                               (let ((__tmp48232
                                      (let ((__tmp48233
                                             (let ((__tmp48234
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse141774_
                                                       _L42425_))))
                                               (declare (not safe))
                                               (cons __tmp48234 '()))))
                                        (declare (not safe))
                                        (cons _L42427_ __tmp48233))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp48232))))
                            (___kont4599745998_
                             (lambda (_L42373_)
                               (let ((__tmp48235
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L42373_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd42127_))
                                        (let ((_$e42384_
                                               (gx#stx-source _hd42127_)))
                                          (if _$e42384_
                                              _$e42384_
                                              (gx#stx-source _stx41770_)))))))
                                 (declare (not safe))
                                 (_parse141774_ __tmp48235))))
                            (___kont4599946000_
                             (lambda (_L42347_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4600146002_
                             (lambda (_L42331_)
                               (let ((__tmp48236
                                      (let ()
                                        (declare (not safe))
                                        (cons _L42331_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp48236))))
                            (___kont4600346004_
                             (lambda (_L42313_)
                               (let ((__tmp48237
                                      (let ((__tmp48238 (gx#stx-e _L42313_)))
                                        (declare (not safe))
                                        (cons __tmp48238 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp48237))))
                            (___kont4600546006_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error41781_ _hd42127_)))))
                        (let* ((_g4215142324_
                                (lambda ()
                                  (let ((_L42313_ ___stx4595445955_))
                                    (if (gx#stx-datum? _L42313_)
                                        (___kont4600346004_ _L42313_)
                                        (___kont4600546006_)))))
                               (_g4215042340_
                                (lambda ()
                                  (let ((_L42331_ ___stx4595445955_))
                                    (if (and (gx#identifier? _L42331_)
                                             (let ((__tmp48239
                                                    (gx#ellipsis? _L42331_)))
                                               (declare (not safe))
                                               (not __tmp48239)))
                                        (___kont4600146002_ _L42331_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4215142324_))))))
                               (_g4214942356_
                                (lambda ()
                                  (let ((_L42347_ ___stx4595445955_))
                                    (if (gx#underscore? _L42347_)
                                        (___kont4599946000_ _L42347_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4215042340_))))))
                               (___match4628146282_
                                (lambda (_e4228642363_
                                         _hd4228542367_
                                         _tl4228442370_)
                                  (let ((_L42373_ _hd4228542367_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core/match[1]#syntax-local-match-macro?|
                                           _L42373_))
                                        (___kont4599745998_ _L42373_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4214942356_))))))
                               (___match4621546216_
                                (lambda (_e4225442529_
                                         _hd4225342533_
                                         _tl4225242536_
                                         _e4225742539_
                                         _hd4225642543_
                                         _tl4225542546_)
                                  (let ((_L42549_ _hd4225642543_)
                                        (_L42551_ _hd4225342533_))
                                    (if (and (gx#identifier? _L42551_)
                                             (or (gx#free-identifier=?
                                                  _L42551_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L42551_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L42551_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4598945990_ _L42549_ _L42551_)
                                        (if (gx#identifier? _hd4225342533_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g48241_|
                                                 _hd4225342533_)
                                                (___kont4599145992_
                                                 _hd4225642543_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g48240_|
                                                     _hd4225342533_)
                                                    (___kont4599345994_
                                                     _hd4225642543_)
                                                    (___match4628146282_
                                                     _e4225442529_
                                                     _hd4225342533_
                                                     _tl4225242536_)))
                                            (___match4628146282_
                                             _e4225442529_
                                             _hd4225342533_
                                             _tl4225242536_))))))
                               (___match4620146202_
                                (lambda (_e4224942579_
                                         _hd4224842583_
                                         _tl4224742586_)
                                  (let ((_L42589_ _tl4224742586_)
                                        (_L42591_ _hd4224842583_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _L42591_))
                                        (___kont4598745988_ _L42589_ _L42591_)
                                        (if (gx#stx-pair? _tl4224742586_)
                                            (let ((_e4225742539_
                                                   (gx#syntax-e
                                                    _tl4224742586_)))
                                              (let ((_tl4225542546_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4225742539_)))
                                                    (_hd4225642543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4225742539_))))
                                                (if (gx#stx-null?
                                                     _tl4225542546_)
                                                    (___match4621546216_
                                                     _e4224942579_
                                                     _hd4224842583_
                                                     _tl4224742586_
                                                     _e4225742539_
                                                     _hd4225642543_
                                                     _tl4225542546_)
                                                    (if (gx#identifier?
                                                         _hd4224842583_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g48241_|
                                                             _hd4224842583_)
                                                            (___match4628146282_
                                                             _e4224942579_
                                                             _hd4224842583_
                                                             _tl4224742586_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g48240_|
                         _hd4224842583_)
                        (___match4628146282_
                         _e4224942579_
                         _hd4224842583_
                         _tl4224742586_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g48242_|
                             _hd4224842583_)
                            (if (gx#stx-pair? _tl4225542546_)
                                (let ((_e4228242415_
                                       (gx#syntax-e _tl4225542546_)))
                                  (let ((_tl4228042422_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4228242415_)))
                                        (_hd4228142419_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4228242415_))))
                                    (if (gx#stx-null? _tl4228042422_)
                                        (___kont4599545996_
                                         _hd4228142419_
                                         _hd4225642543_)
                                        (___match4628146282_
                                         _e4224942579_
                                         _hd4224842583_
                                         _tl4224742586_))))
                                (___match4628146282_
                                 _e4224942579_
                                 _hd4224842583_
                                 _tl4224742586_))
                            (___match4628146282_
                             _e4224942579_
                             _hd4224842583_
                             _tl4224742586_))))
                (___match4628146282_
                 _e4224942579_
                 _hd4224842583_
                 _tl4224742586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4628146282_
                                             _e4224942579_
                                             _hd4224842583_
                                             _tl4224742586_))))))
                               (___match4619546196_
                                (lambda (_e4224442609_
                                         _hd4224342613_
                                         _tl4224242616_)
                                  (let ((_L42619_ _tl4224242616_)
                                        (_L42621_ _hd4224342613_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _L42621_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (___kont4598545986_ _L42619_ _L42621_)
                                        (___match4620146202_
                                         _e4224442609_
                                         _hd4224342613_
                                         _tl4224242616_)))))
                               (___match4618946190_
                                (lambda (_e4223042639_
                                         ___splice4598345984_
                                         _target4223142643_
                                         _tl4223342646_)
                                  (letrec ((_loop4223442649_
                                            (lambda (_hd4223242653_
                                                     _body4223842656_)
                                              (if (gx#stx-pair? _hd4223242653_)
                                                  (let ((_e4223542659_
                                                         (gx#syntax-e
                                                          _hd4223242653_)))
                                                    (let ((_lp-tl4223742666_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4223542659_)))
                                                          (_lp-hd4223642663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4223542659_))))
                                                      (let ((__tmp48243
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd4223642663_ _body4223842656_))))
                (declare (not safe))
                (_loop4223442649_ _lp-tl4223742666_ __tmp48243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body4223942669_
                                                         (reverse _body4223842656_)))
                                                    (___kont4598145982_
                                                     _body4223942669_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop4223442649_
                                       _target4223142643_
                                       '())))))
                               (_g4214142695_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4595445955_)
                                      (let ((_e4223042639_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4595445955_))))
                                        (if (gx#stx-pair/null? _e4223042639_)
                                            (let ((___splice4598345984_
                                                   (gx#syntax-split-splice
                                                    _e4223042639_
                                                    '0)))
                                              (let ((_tl4223342646_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4598345984_
                                                        '1)))
                                                    (_target4223142643_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4598345984_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4223342646_)
                                                    (___match4618946190_
                                                     _e4223042639_
                                                     ___splice4598345984_
                                                     _target4223142643_
                                                     _tl4223342646_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4214942356_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4214942356_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4214942356_)))))
                               (_g4213742812_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4595445955_)
                                      (let ((_e4221342798_
                                             (unbox (gx#syntax-e
                                                     ___stx4595445955_))))
                                        (___kont4597345974_ _e4221342798_))
                                      (let ()
                                        (declare (not safe))
                                        (_g4214142695_)))))
                               (___match4604346044_
                                (lambda (_e4217043037_
                                         _hd4216943041_
                                         _tl4216843044_)
                                  (let ((_L43047_ _tl4216843044_))
                                    (if (gx#stx-list? _L43047_)
                                        (___kont4596145962_ _L43047_)
                                        (___match4619546196_
                                         _e4217043037_
                                         _hd4216943041_
                                         _tl4216843044_)))))
                               (___match4603346034_
                                (lambda (_e4216643122_
                                         _hd4216543126_
                                         _tl4216443129_)
                                  (let ((_L43132_ _tl4216443129_))
                                    (if (gx#stx-list? _L43132_)
                                        (___kont4595945960_ _L43132_)
                                        (___match4619546196_
                                         _e4216643122_
                                         _hd4216543126_
                                         _tl4216443129_))))))
                          (if (gx#stx-pair? ___stx4595445955_)
                              (let ((_e4215943207_
                                     (gx#syntax-e ___stx4595445955_)))
                                (let ((_tl4215743214_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4215943207_)))
                                      (_hd4215843211_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4215943207_))))
                                  (if (gx#identifier? _hd4215843211_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g48253_|
                                           _hd4215843211_)
                                          (if (gx#stx-pair? _tl4215743214_)
                                              (let ((_e4216243217_
                                                     (gx#syntax-e
                                                      _tl4215743214_)))
                                                (let ((_tl4216043224_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4216243217_)))
                                                      (_hd4216143221_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4216243217_))))
                                                  (___kont4595745958_
                                                   _tl4216043224_
                                                   _hd4216143221_)))
                                              (___match4619546196_
                                               _e4215943207_
                                               _hd4215843211_
                                               _tl4215743214_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g48252_|
                                               _hd4215843211_)
                                              (___match4603346034_
                                               _e4215943207_
                                               _hd4215843211_
                                               _tl4215743214_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g48251_|
                                                   _hd4215843211_)
                                                  (___match4604346044_
                                                   _e4215943207_
                                                   _hd4215843211_
                                                   _tl4215743214_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g48250_|
                                                       _hd4215843211_)
                                                      (if (gx#stx-pair?
                                                           _tl4215743214_)
                                                          (let ((_e4217743007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4215743214_)))
                    (let ((_tl4217543014_
                           (let () (declare (not safe)) (##cdr _e4217743007_)))
                          (_hd4217643011_
                           (let ()
                             (declare (not safe))
                             (##car _e4217743007_))))
                      (if (gx#stx-null? _tl4217543014_)
                          (___kont4596345964_ _hd4217643011_)
                          (___match4619546196_
                           _e4215943207_
                           _hd4215843211_
                           _tl4215743214_))))
                  (___match4619546196_
                   _e4215943207_
                   _hd4215843211_
                   _tl4215743214_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g48249_|
                   _hd4215843211_)
                  (if (gx#stx-pair? _tl4215743214_)
                      (let ((_e4218542953_ (gx#syntax-e _tl4215743214_)))
                        (let ((_tl4218342960_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4218542953_)))
                              (_hd4218442957_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4218542953_))))
                          (if (gx#stx-pair? _tl4218342960_)
                              (let ((_e4218842963_
                                     (gx#syntax-e _tl4218342960_)))
                                (let ((_tl4218642970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4218842963_)))
                                      (_hd4218742967_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4218842963_))))
                                  (if (gx#stx-null? _tl4218642970_)
                                      (___kont4596545966_
                                       _hd4218742967_
                                       _hd4218442957_)
                                      (___match4619546196_
                                       _e4215943207_
                                       _hd4215843211_
                                       _tl4215743214_))))
                              (___match4619546196_
                               _e4215943207_
                               _hd4215843211_
                               _tl4215743214_))))
                      (___match4619546196_
                       _e4215943207_
                       _hd4215843211_
                       _tl4215743214_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g48248_|
                       _hd4215843211_)
                      (if (gx#stx-pair? _tl4215743214_)
                          (let ((_e4219742897_ (gx#syntax-e _tl4215743214_)))
                            (let ((_tl4219542904_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4219742897_)))
                                  (_hd4219642901_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4219742897_))))
                              (if (gx#stx-pair? _tl4219542904_)
                                  (let ((_e4220042907_
                                         (gx#syntax-e _tl4219542904_)))
                                    (let ((_tl4219842914_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4220042907_)))
                                          (_hd4219942911_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4220042907_))))
                                      (___kont4596745968_
                                       _tl4219842914_
                                       _hd4219942911_
                                       _hd4219642901_)))
                                  (___match4619546196_
                                   _e4215943207_
                                   _hd4215843211_
                                   _tl4215743214_))))
                          (___match4619546196_
                           _e4215943207_
                           _hd4215843211_
                           _tl4215743214_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g48247_|
                           _hd4215843211_)
                          (___kont4596945970_ _tl4215743214_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g48246_|
                               _hd4215843211_)
                              (if (gx#stx-pair? _tl4215743214_)
                                  (let ((_e4221142829_
                                         (gx#syntax-e _tl4215743214_)))
                                    (let ((_tl4220942836_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4221142829_)))
                                          (_hd4221042833_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4221142829_))))
                                      (if (gx#stx-null? _tl4220942836_)
                                          (___kont4597145972_ _hd4221042833_)
                                          (___match4619546196_
                                           _e4215943207_
                                           _hd4215843211_
                                           _tl4215743214_))))
                                  (___match4619546196_
                                   _e4215943207_
                                   _hd4215843211_
                                   _tl4215743214_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g48245_|
                                   _hd4215843211_)
                                  (if (gx#stx-pair? _tl4215743214_)
                                      (let ((_e4222042768_
                                             (gx#syntax-e _tl4215743214_)))
                                        (let ((_tl4221842775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4222042768_)))
                                              (_hd4221942772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4222042768_))))
                                          (if (gx#stx-null? _tl4221842775_)
                                              (___kont4597545976_
                                               _hd4221942772_)
                                              (___kont4597745978_
                                               _tl4215743214_))))
                                      (___kont4597745978_ _tl4215743214_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g48244_|
                                       _hd4215843211_)
                                      (___kont4597945980_ _tl4215743214_)
                                      (___match4619546196_
                                       _e4215943207_
                                       _hd4215843211_
                                       _tl4215743214_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4619546196_
                                       _e4215943207_
                                       _hd4215843211_
                                       _tl4215743214_))))
                              (let ()
                                (declare (not safe))
                                (_g4213742812_))))))))
                 (_parse-list41776_
                  (lambda (_body41956_)
                    (let* ((___stx4628446285_ _body41956_)
                           (_g4196241991_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4628446285_))))
                      (let ((___kont4628746288_
                             (lambda (_L42109_)
                               (let ()
                                 (declare (not safe))
                                 (_parse141774_ _L42109_))))
                            (___kont4628946290_
                             (lambda (_L42061_ _L42063_ _L42064_)
                               (let ((__tmp48254
                                      (let ((__tmp48257
                                             (let ()
                                               (declare (not safe))
                                               (_parse141774_ _L42064_)))
                                            (__tmp48255
                                             (let ((__tmp48256
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list41776_
                                                       _L42061_))))
                                               (declare (not safe))
                                               (cons __tmp48256 '()))))
                                        (declare (not safe))
                                        (cons __tmp48257 __tmp48255))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp48254))))
                            (___kont4629146292_
                             (lambda (_L42019_ _L42021_)
                               (let ((__tmp48258
                                      (let ((__tmp48261
                                             (let ()
                                               (declare (not safe))
                                               (_parse141774_ _L42021_)))
                                            (__tmp48259
                                             (let ((__tmp48260
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list41776_
                                                       _L42019_))))
                                               (declare (not safe))
                                               (cons __tmp48260 '()))))
                                        (declare (not safe))
                                        (cons __tmp48261 __tmp48259))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp48258))))
                            (___kont4629346294_
                             (lambda ()
                               (if (gx#stx-null? _body41956_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp48262
                                              (gx#stx-pair? _body41956_)))
                                         (declare (not safe))
                                         (not __tmp48262))
                                       (let ()
                                         (declare (not safe))
                                         (_parse141774_ _body41956_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error41781_ _body41956_)))))))
                        (let* ((___match4633346334_
                                (lambda (_e4198542009_
                                         _hd4198442013_
                                         _tl4198342016_)
                                  (let ((_L42019_ _tl4198342016_)
                                        (_L42021_ _hd4198442013_))
                                    (if (let ((__tmp48263
                                               (gx#ellipsis? _L42021_)))
                                          (declare (not safe))
                                          (not __tmp48263))
                                        (___kont4629146292_ _L42019_ _L42021_)
                                        (___kont4629346294_)))))
                               (___match4632746328_
                                (lambda (_e4197742041_
                                         _hd4197642045_
                                         _tl4197542048_
                                         _e4198042051_
                                         _hd4197942055_
                                         _tl4197842058_)
                                  (let ((_L42061_ _tl4197842058_)
                                        (_L42063_ _hd4197942055_)
                                        (_L42064_ _hd4197642045_))
                                    (if (gx#ellipsis? _L42063_)
                                        (___kont4628946290_
                                         _L42061_
                                         _L42063_
                                         _L42064_)
                                        (___match4633346334_
                                         _e4197742041_
                                         _hd4197642045_
                                         _tl4197542048_))))))
                          (if (gx#stx-pair? ___stx4628446285_)
                              (let ((_e4196742085_
                                     (gx#syntax-e ___stx4628446285_)))
                                (let ((_tl4196542092_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4196742085_)))
                                      (_hd4196642089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4196742085_))))
                                  (if (gx#stx-datum? _hd4196642089_)
                                      (let ((_e4196842095_
                                             (gx#stx-e _hd4196642089_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4196842095_ '::))
                                            (if (gx#stx-pair? _tl4196542092_)
                                                (let ((_e4197142099_
                                                       (gx#syntax-e
                                                        _tl4196542092_)))
                                                  (let ((_tl4196942106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4197142099_)))
                                                        (_hd4197042103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4197142099_))))
                                                    (if (gx#stx-null?
                                                         _tl4196942106_)
                                                        (___kont4628746288_
                                                         _hd4197042103_)
                                                        (___match4632746328_
                                                         _e4196742085_
                                                         _hd4196642089_
                                                         _tl4196542092_
                                                         _e4197142099_
                                                         _hd4197042103_
                                                         _tl4196942106_))))
                                                (___match4633346334_
                                                 _e4196742085_
                                                 _hd4196642089_
                                                 _tl4196542092_))
                                            (if (gx#stx-pair? _tl4196542092_)
                                                (let ((_e4198042051_
                                                       (gx#syntax-e
                                                        _tl4196542092_)))
                                                  (let ((_tl4197842058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4198042051_)))
                                                        (_hd4197942055_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4198042051_))))
                                                    (___match4632746328_
                                                     _e4196742085_
                                                     _hd4196642089_
                                                     _tl4196542092_
                                                     _e4198042051_
                                                     _hd4197942055_
                                                     _tl4197842058_)))
                                                (___match4633346334_
                                                 _e4196742085_
                                                 _hd4196642089_
                                                 _tl4196542092_))))
                                      (if (gx#stx-pair? _tl4196542092_)
                                          (let ((_e4198042051_
                                                 (gx#syntax-e _tl4196542092_)))
                                            (let ((_tl4197842058_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4198042051_)))
                                                  (_hd4197942055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4198042051_))))
                                              (___match4632746328_
                                               _e4196742085_
                                               _hd4196642089_
                                               _tl4196542092_
                                               _e4198042051_
                                               _hd4197942055_
                                               _tl4197842058_)))
                                          (___match4633346334_
                                           _e4196742085_
                                           _hd4196642089_
                                           _tl4196542092_)))))
                              (___kont4629346294_)))))))
                 (_parse-vector41777_
                  (lambda (_body41953_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?41778_ _body41953_))
                        (let ((__tmp48266
                               (let ((__tmp48267
                                      (gx#stx-map _parse141774_ _body41953_)))
                                 (declare (not safe))
                                 (cons __tmp48267 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp48266))
                        (let ((__tmp48264
                               (let ((__tmp48265
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list41776_ _body41953_))))
                                 (declare (not safe))
                                 (cons __tmp48265 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp48264)))))
                 (_simple-vector?41778_
                  (lambda (_body41890_)
                    (let* ((___stx4633646337_ _body41890_)
                           (_g4189441906_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4633646337_))))
                      (let ((___kont4633946340_
                             (lambda (_L41934_ _L41936_)
                               (if (let ((__tmp48268 (gx#ellipsis? _L41936_)))
                                     (declare (not safe))
                                     (not __tmp48268))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?41778_ _L41934_))
                                   '#f)))
                            (___kont4634146342_
                             (lambda () (gx#stx-null? _body41890_))))
                        (if (gx#stx-pair? ___stx4633646337_)
                            (let ((_e4190041924_
                                   (gx#syntax-e ___stx4633646337_)))
                              (let ((_tl4189841931_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4190041924_)))
                                    (_hd4189941928_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4190041924_))))
                                (___kont4633946340_
                                 _tl4189841931_
                                 _hd4189941928_)))
                            (___kont4634146342_))))))
                 (_parse-class-body41779_
                  (lambda (_body41799_)
                    (let _recur41802_ ((_rest41805_ _body41799_))
                      (let* ((___stx4635246353_ _rest41805_)
                             (_g4180941825_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4635246353_))))
                        (let ((___kont4635546356_
                               (lambda (_L41863_ _L41865_ _L41866_)
                                 (let ((__tmp48269
                                        (let ((__tmp48271
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse141774_ _L41865_)))
                                              (__tmp48270
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur41802_ _L41863_))))
                                          (declare (not safe))
                                          (cons __tmp48271 __tmp48270))))
                                   (declare (not safe))
                                   (cons _L41866_ __tmp48269))))
                              (___kont4635746358_
                               (lambda ()
                                 (if (gx#stx-null? _rest41805_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error41781_ _rest41805_))))))
                          (let ((___match4637146372_
                                 (lambda (_e4181641843_
                                          _hd4181541847_
                                          _tl4181441850_
                                          _e4181941853_
                                          _hd4181841857_
                                          _tl4181741860_)
                                   (let ((_L41863_ _tl4181741860_)
                                         (_L41865_ _hd4181841857_)
                                         (_L41866_ _hd4181541847_))
                                     (if (gx#stx-keyword? _L41866_)
                                         (___kont4635546356_
                                          _L41863_
                                          _L41865_
                                          _L41866_)
                                         (___kont4635746358_))))))
                            (if (gx#stx-pair? ___stx4635246353_)
                                (let ((_e4181641843_
                                       (gx#syntax-e ___stx4635246353_)))
                                  (let ((_tl4181441850_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4181641843_)))
                                        (_hd4181541847_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4181641843_))))
                                    (if (gx#stx-pair? _tl4181441850_)
                                        (let ((_e4181941853_
                                               (gx#syntax-e _tl4181441850_)))
                                          (let ((_tl4181741860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4181941853_)))
                                                (_hd4181841857_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4181941853_))))
                                            (___match4637146372_
                                             _e4181641843_
                                             _hd4181541847_
                                             _tl4181441850_
                                             _e4181941853_
                                             _hd4181841857_
                                             _tl4181741860_)))
                                        (___kont4635746358_))))
                                (___kont4635746358_))))))))
                 (_parse-qq41780_
                  (lambda (_hd41786_)
                    (let ((_g4178841795_
                           (lambda (_g4178941791_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4178941791_))))
                      (declare (not safe))
                      (_g4178841795_ _hd41786_))))
                 (_parse-error41781_
                  (lambda (_hd41783_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx41772_
                               (let ((__tmp48273
                                      (let ((__tmp48274
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd41783_ '()))))
                                        (declare (not safe))
                                        (cons _stx41770_ __tmp48274))))
                                 (declare (not safe))
                                 (cons _match-stx41772_ __tmp48273))
                               (let ((__tmp48272
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd41783_ '()))))
                                 (declare (not safe))
                                 (cons _stx41770_ __tmp48272)))))))
          (let () (declare (not safe)) (_parse141774_ _stx41770_)))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_stx43454_)
        (let ((_match-stx43457_ '#f))
          (declare (not safe))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _stx43454_
           _match-stx43457_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g48276_
        (let ((_g48275_ (let () (declare (not safe)) (##length _g48276_))))
          (cond ((let () (declare (not safe)) (##fx= _g48275_ 1))
                 (apply (lambda (_stx43454_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__0|
                             _stx43454_)))
                        _g48276_))
                ((let () (declare (not safe)) (##fx= _g48275_ 2))
                 (apply (lambda (_stx43460_ _match-stx43462_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__%|
                             _stx43460_
                             _match-stx43462_)))
                        _g48276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g48276_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_stx41755_)
        (call/cc (lambda (_E41758_)
                   (with-exception-handler
                    (let ((_E!41761_ (current-exception-handler)))
                      (lambda (_e41764_)
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               _e41764_
                               'gerbil/runtime/syntax#SyntaxError::t))
                            (_E41758_ '#f)
                            (_E!41761_ _e41764_))))
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/match[1]#parse-match-pattern__0|
                         _stx41755_))
                      '#t))))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_ptree40490_)
        (letrec ((_loop40493_
                  (lambda (_ptree40780_ _vars40782_ _K40783_)
                    (let* ((___stx4647046471_ _ptree40780_)
                           (_g4079640906_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4647046471_))))
                      (let ((___kont4647346474_
                             (lambda (_L41536_)
                               (let* ((___stx4639046391_ _L41536_)
                                      (_g4155341587_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4639046391_))))
                                 (let ((___kont4639346394_
                                        (lambda (_L41736_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop40493_
                                             _L41736_
                                             _vars40782_
                                             _K40783_))))
                                       (___kont4639546396_
                                        (lambda (_L41705_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop40493_
                                             _L41705_
                                             _vars40782_
                                             _K40783_))))
                                       (___kont4639746398_
                                        (lambda (_L41653_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop40493_
                                             _L41653_
                                             _vars40782_
                                             _K40783_))))
                                       (___kont4639946400_
                                        (lambda () (_K40783_ _vars40782_))))
                                   (if (gx#stx-pair? ___stx4639046391_)
                                       (let ((_e4155841726_
                                              (gx#syntax-e ___stx4639046391_)))
                                         (let ((_tl4155641733_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4155841726_)))
                                               (_hd4155741730_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4155841726_))))
                                           (if (gx#stx-null? _tl4155641733_)
                                               (___kont4639346394_
                                                _hd4155741730_)
                                               (if (gx#stx-datum?
                                                    _hd4155741730_)
                                                   (let ((_e4156341691_
                                                          (gx#stx-e
                                                           _hd4155741730_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e4156341691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl4155641733_)
                     (let ((_e4156641695_ (gx#syntax-e _tl4155641733_)))
                       (let ((_tl4156441702_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4156641695_)))
                             (_hd4156541699_
                              (let ()
                                (declare (not safe))
                                (##car _e4156641695_))))
                         (if (gx#stx-null? _tl4156441702_)
                             (___kont4639546396_ _hd4156541699_)
                             (___kont4639946400_))))
                     (___kont4639946400_))
                 (if (let () (declare (not safe)) (equal? _e4156341691_ '::))
                     (if (gx#stx-pair? _tl4155641733_)
                         (let ((_e4157441619_ (gx#syntax-e _tl4155641733_)))
                           (let ((_tl4157241626_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4157441619_)))
                                 (_hd4157341623_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4157441619_))))
                             (if (gx#stx-pair? _tl4157241626_)
                                 (let ((_e4157741629_
                                        (gx#syntax-e _tl4157241626_)))
                                   (let ((_tl4157541636_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4157741629_)))
                                         (_hd4157641633_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4157741629_))))
                                     (if (gx#stx-datum? _hd4157641633_)
                                         (let ((_e4157841639_
                                                (gx#stx-e _hd4157641633_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e4157841639_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl4157541636_)
                                                   (let ((_e4158141643_
                                                          (gx#syntax-e
                                                           _tl4157541636_)))
                                                     (let ((_tl4157941650_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4158141643_)))
                                                           (_hd4158041647_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4158141643_))))
                                                       (if (gx#stx-null?
                                                            _tl4157941650_)
                                                           (___kont4639746398_
                                                            _hd4158041647_)
                                                           (___kont4639946400_))))
                                                   (___kont4639946400_))
                                               (___kont4639946400_)))
                                         (___kont4639946400_))))
                                 (___kont4639946400_))))
                         (___kont4639946400_))
                     (___kont4639946400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4639946400_)))))
                                       (___kont4639946400_))))))
                            (___kont4647546476_
                             (lambda (_L41423_ _L41425_)
                               (let* ((___stx4637446375_ _L41423_)
                                      (_g4144141453_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4637446375_))))
                                 (let ((___kont4637746378_
                                        (lambda (_L41481_ _L41483_)
                                          (let ((__tmp48277
                                                 (lambda (_g4149541497_)
                                                   (let ((__tmp48278
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L41425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L41481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop40493_
                                                      __tmp48278
                                                      _g4149541497_
                                                      _K40783_)))))
                                            (declare (not safe))
                                            (_loop40493_
                                             _L41483_
                                             _vars40782_
                                             __tmp48277))))
                                       (___kont4637946380_
                                        (lambda () (_K40783_ _vars40782_))))
                                   (if (gx#stx-pair? ___stx4637446375_)
                                       (let ((_e4144741471_
                                              (gx#syntax-e ___stx4637446375_)))
                                         (let ((_tl4144541478_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4144741471_)))
                                               (_hd4144641475_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4144741471_))))
                                           (___kont4637746378_
                                            _tl4144541478_
                                            _hd4144641475_)))
                                       (___kont4637946380_))))))
                            (___kont4647746478_
                             (lambda (_L41392_)
                               (let ()
                                 (declare (not safe))
                                 (_loop40493_ _L41392_ _vars40782_ _K40783_))))
                            (___kont4647946480_
                             (lambda (_L41338_ _L41340_)
                               (let ((__tmp48279
                                      (lambda (_g4135541357_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop40493_
                                           _L41338_
                                           _g4135541357_
                                           _K40783_)))))
                                 (declare (not safe))
                                 (_loop40493_
                                  _L41340_
                                  _vars40782_
                                  __tmp48279))))
                            (___kont4648146482_
                             (lambda (_L41274_ _L41276_)
                               (let ((__tmp48280
                                      (lambda (_g4129141293_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop40493_
                                           _L41274_
                                           _g4129141293_
                                           _K40783_)))))
                                 (declare (not safe))
                                 (_loop40493_
                                  _L41276_
                                  _vars40782_
                                  __tmp48280))))
                            (___kont4648346484_
                             (lambda (_L41219_)
                               (let ()
                                 (declare (not safe))
                                 (_loop40493_ _L41219_ _vars40782_ _K40783_))))
                            (___kont4648546486_
                             (lambda (_L41169_ _L41171_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector40495_
                                  _L41169_
                                  _vars40782_
                                  _K40783_))))
                            (___kont4648746488_
                             (lambda (_L41126_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector40495_
                                  _L41126_
                                  _vars40782_
                                  _K40783_))))
                            (___kont4648946490_
                             (lambda (_L41069_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list40497_
                                  _L41069_
                                  _vars40782_
                                  _K40783_))))
                            (___kont4649146492_
                             (lambda (_L41010_ _L41012_)
                               (let ()
                                 (declare (not safe))
                                 (_loop40493_ _L41010_ _vars40782_ _K40783_))))
                            (___kont4649346494_
                             (lambda (_L40948_)
                               (if (let ((__tmp48281
                                          (lambda (_g4096340965_)
                                            (gx#bound-identifier=?
                                             _g4096340965_
                                             _L40948_))))
                                     (declare (not safe))
                                     (find __tmp48281 _vars40782_))
                                   (_K40783_ _vars40782_)
                                   (_K40783_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L40948_ _vars40782_))))))
                            (___kont4649546496_
                             (lambda () (_K40783_ _vars40782_))))
                        (let* ((___match4662746628_
                                (lambda (_e4085541149_
                                         _hd4085441153_
                                         _tl4085341156_
                                         _e4085841159_
                                         _hd4085741163_
                                         _tl4085641166_)
                                  (let ((_L41169_ _hd4085741163_)
                                        (_L41171_ _hd4085441153_))
                                    (if (or (gx#stx-eq? 'values: _L41171_)
                                            (gx#stx-eq? 'vector: _L41171_))
                                        (___kont4648546486_ _L41169_ _L41171_)
                                        (if (gx#stx-datum? _hd4085441153_)
                                            (let ((_e4086341102_
                                                   (gx#stx-e _hd4085441153_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e4086341102_
                                                            'struct:))
                                                  (___kont4649546496_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e4086341102_
                                                                'class:))
                                                      (___kont4649546496_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e4086341102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4649546496_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e4086341102_ 'var:))
                      (___kont4649346494_ _hd4085741163_)
                      (___kont4649546496_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4649546496_))))))
                               (___match4652146522_
                                (lambda (_e4081041413_
                                         _hd4080941417_
                                         _tl4080841420_)
                                  (let ((_L41423_ _tl4080841420_)
                                        (_L41425_ _hd4080941417_))
                                    (if (or (gx#stx-eq? 'and: _L41425_)
                                            (gx#stx-eq? 'or: _L41425_))
                                        (___kont4647546476_ _L41423_ _L41425_)
                                        (if (gx#stx-datum? _hd4080941417_)
                                            (let ((_e4081541378_
                                                   (gx#stx-e _hd4080941417_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e4081541378_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl4080841420_)
                                                      (let ((_e4081841382_
                                                             (gx#syntax-e
                                                              _tl4080841420_)))
                                                        (let ((_tl4081641389_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4081841382_)))
                      (_hd4081741386_
                       (let () (declare (not safe)) (##car _e4081841382_))))
                  (if (gx#stx-null? _tl4081641389_)
                      (___kont4647746478_ _hd4081741386_)
                      (___kont4649546496_))))
              (___kont4649546496_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e4081541378_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl4080841420_)
                                                          (let ((_e4082741318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4080841420_)))
                    (let ((_tl4082541325_
                           (let () (declare (not safe)) (##cdr _e4082741318_)))
                          (_hd4082641322_
                           (let ()
                             (declare (not safe))
                             (##car _e4082741318_))))
                      (if (gx#stx-pair? _tl4082541325_)
                          (let ((_e4083041328_ (gx#syntax-e _tl4082541325_)))
                            (let ((_tl4082841335_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4083041328_)))
                                  (_hd4082941332_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4083041328_))))
                              (if (gx#stx-null? _tl4082841335_)
                                  (___kont4647946480_
                                   _hd4082941332_
                                   _hd4082641322_)
                                  (___kont4649546496_))))
                          (if (gx#stx-null? _tl4082541325_)
                              (___match4662746628_
                               _e4081041413_
                               _hd4080941417_
                               _tl4080841420_
                               _e4082741318_
                               _hd4082641322_
                               _tl4082541325_)
                              (___kont4649546496_)))))
                  (___kont4649546496_))
              (if (let () (declare (not safe)) (equal? _e4081541378_ 'splice:))
                  (if (gx#stx-pair? _tl4080841420_)
                      (let ((_e4083941254_ (gx#syntax-e _tl4080841420_)))
                        (let ((_tl4083741261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4083941254_)))
                              (_hd4083841258_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4083941254_))))
                          (if (gx#stx-pair? _tl4083741261_)
                              (let ((_e4084241264_
                                     (gx#syntax-e _tl4083741261_)))
                                (let ((_tl4084041271_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4084241264_)))
                                      (_hd4084141268_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4084241264_))))
                                  (if (gx#stx-null? _tl4084041271_)
                                      (___kont4648146482_
                                       _hd4084141268_
                                       _hd4083841258_)
                                      (___kont4649546496_))))
                              (if (gx#stx-null? _tl4083741261_)
                                  (___match4662746628_
                                   _e4081041413_
                                   _hd4080941417_
                                   _tl4080841420_
                                   _e4083941254_
                                   _hd4083841258_
                                   _tl4083741261_)
                                  (___kont4649546496_)))))
                      (___kont4649546496_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e4081541378_ 'box:))
                      (if (gx#stx-pair? _tl4080841420_)
                          (let ((_e4085041209_ (gx#syntax-e _tl4080841420_)))
                            (let ((_tl4084841216_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4085041209_)))
                                  (_hd4084941213_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4085041209_))))
                              (if (gx#stx-null? _tl4084841216_)
                                  (___kont4648346484_ _hd4084941213_)
                                  (___kont4649546496_))))
                          (___kont4649546496_))
                      (if (gx#stx-pair? _tl4080841420_)
                          (let ((_e4085841159_ (gx#syntax-e _tl4080841420_)))
                            (let ((_tl4085641166_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4085841159_)))
                                  (_hd4085741163_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4085841159_))))
                              (if (gx#stx-null? _tl4085641166_)
                                  (___match4662746628_
                                   _e4081041413_
                                   _hd4080941417_
                                   _tl4080841420_
                                   _e4085841159_
                                   _hd4085741163_
                                   _tl4085641166_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e4081541378_ 'struct:))
                                      (if (gx#stx-pair? _tl4085641166_)
                                          (let ((_e4086941116_
                                                 (gx#syntax-e _tl4085641166_)))
                                            (let ((_tl4086741123_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4086941116_)))
                                                  (_hd4086841120_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4086941116_))))
                                              (if (gx#stx-null? _tl4086741123_)
                                                  (___kont4648746488_
                                                   _hd4086841120_)
                                                  (___kont4649546496_))))
                                          (___kont4649546496_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e4081541378_ 'class:))
                                          (if (gx#stx-pair? _tl4085641166_)
                                              (let ((_e4088041059_
                                                     (gx#syntax-e
                                                      _tl4085641166_)))
                                                (let ((_tl4087841066_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4088041059_)))
                                                      (_hd4087941063_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4088041059_))))
                                                  (if (gx#stx-null?
                                                       _tl4087841066_)
                                                      (___kont4648946490_
                                                       _hd4087941063_)
                                                      (___kont4649546496_))))
                                              (___kont4649546496_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e4081541378_ 'apply:))
                                              (if (gx#stx-pair? _tl4085641166_)
                                                  (let ((_e4089241000_
                                                         (gx#syntax-e
                                                          _tl4085641166_)))
                                                    (let ((_tl4089041007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4089241000_)))
                                                          (_hd4089141004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4089241000_))))
                                                      (if (gx#stx-null?
                                                           _tl4089041007_)
                                                          (___kont4649146492_
                                                           _hd4089141004_
                                                           _hd4085741163_)
                                                          (___kont4649546496_))))
                                                  (___kont4649546496_))
                                              (___kont4649546496_)))))))
                          (___kont4649546496_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl4080841420_)
                                                (let ((_e4085841159_
                                                       (gx#syntax-e
                                                        _tl4080841420_)))
                                                  (let ((_tl4085641166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4085841159_)))
                                                        (_hd4085741163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4085841159_))))
                                                    (if (gx#stx-null?
                                                         _tl4085641166_)
                                                        (___match4662746628_
                                                         _e4081041413_
                                                         _hd4080941417_
                                                         _tl4080841420_
                                                         _e4085841159_
                                                         _hd4085741163_
                                                         _tl4085641166_)
                                                        (___kont4649546496_))))
                                                (___kont4649546496_))))))))
                          (if (gx#stx-pair? ___stx4647046471_)
                              (let ((_e4080141512_
                                     (gx#syntax-e ___stx4647046471_)))
                                (let ((_tl4079941519_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4080141512_)))
                                      (_hd4080041516_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4080141512_))))
                                  (if (gx#stx-datum? _hd4080041516_)
                                      (let ((_e4080241522_
                                             (gx#stx-e _hd4080041516_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4080241522_ '?:))
                                            (if (gx#stx-pair? _tl4079941519_)
                                                (let ((_e4080541526_
                                                       (gx#syntax-e
                                                        _tl4079941519_)))
                                                  (let ((_tl4080341533_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4080541526_)))
                                                        (_hd4080441530_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4080541526_))))
                                                    (___kont4647346474_
                                                     _tl4080341533_)))
                                                (___match4652146522_
                                                 _e4080141512_
                                                 _hd4080041516_
                                                 _tl4079941519_))
                                            (___match4652146522_
                                             _e4080141512_
                                             _hd4080041516_
                                             _tl4079941519_)))
                                      (___match4652146522_
                                       _e4080141512_
                                       _hd4080041516_
                                       _tl4079941519_))))
                              (___kont4649546496_)))))))
                 (_loop-vector40495_
                  (lambda (_body40656_ _vars40658_ _K40659_)
                    (let* ((___stx4672846729_ _body40656_)
                           (_g4066240685_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4672846729_))))
                      (let ((___kont4673146732_
                             (lambda (_L40762_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list40496_
                                  _L40762_
                                  _vars40658_
                                  _K40659_))))
                            (___kont4673346734_
                             (lambda (_L40716_)
                               (let ()
                                 (declare (not safe))
                                 (_loop40493_
                                  _L40716_
                                  _vars40658_
                                  _K40659_)))))
                        (if (gx#stx-pair? ___stx4672846729_)
                            (let ((_e4066740738_
                                   (gx#syntax-e ___stx4672846729_)))
                              (let ((_tl4066540745_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4066740738_)))
                                    (_hd4066640742_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4066740738_))))
                                (if (gx#stx-datum? _hd4066640742_)
                                    (let ((_e4066840748_
                                           (gx#stx-e _hd4066640742_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e4066840748_ 'simple:))
                                          (if (gx#stx-pair? _tl4066540745_)
                                              (let ((_e4067140752_
                                                     (gx#syntax-e
                                                      _tl4066540745_)))
                                                (let ((_tl4066940759_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4067140752_)))
                                                      (_hd4067040756_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4067140752_))))
                                                  (if (gx#stx-null?
                                                       _tl4066940759_)
                                                      (___kont4673146732_
                                                       _hd4067040756_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4066240685_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4066240685_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e4066840748_ 'list:))
                                              (if (gx#stx-pair? _tl4066540745_)
                                                  (let ((_e4067940706_
                                                         (gx#syntax-e
                                                          _tl4066540745_)))
                                                    (let ((_tl4067740713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4067940706_)))
                                                          (_hd4067840710_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4067940706_))))
                                                      (if (gx#stx-null?
                                                           _tl4067740713_)
                                                          (___kont4673346734_
                                                           _hd4067840710_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4066240685_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4066240685_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4066240685_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4066240685_)))))
                            (let () (declare (not safe)) (_g4066240685_)))))))
                 (_loop-list40496_
                  (lambda (_rest40586_ _vars40588_ _K40589_)
                    (let* ((___stx4677846779_ _rest40586_)
                           (_g4059240604_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4677846779_))))
                      (let ((___kont4678146782_
                             (lambda (_L40632_ _L40634_)
                               (let ((__tmp48282
                                      (lambda (_g4064640648_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list40496_
                                           _L40632_
                                           _g4064640648_
                                           _K40589_)))))
                                 (declare (not safe))
                                 (_loop40493_
                                  _L40634_
                                  _vars40588_
                                  __tmp48282))))
                            (___kont4678346784_
                             (lambda () (_K40589_ _vars40588_))))
                        (if (gx#stx-pair? ___stx4677846779_)
                            (let ((_e4059840622_
                                   (gx#syntax-e ___stx4677846779_)))
                              (let ((_tl4059640629_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4059840622_)))
                                    (_hd4059740626_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4059840622_))))
                                (___kont4678146782_
                                 _tl4059640629_
                                 _hd4059740626_)))
                            (___kont4678346784_))))))
                 (_loop-class-list40497_
                  (lambda (_rest40499_ _vars40501_ _K40502_)
                    (let* ((___stx4679446795_ _rest40499_)
                           (_g4050540520_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4679446795_))))
                      (let ((___kont4679746798_
                             (lambda (_L40558_ _L40560_)
                               (let ((__tmp48283
                                      (lambda (_g4057640578_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list40497_
                                           _L40558_
                                           _g4057640578_
                                           _K40502_)))))
                                 (declare (not safe))
                                 (_loop40493_
                                  _L40560_
                                  _vars40501_
                                  __tmp48283))))
                            (___kont4679946800_
                             (lambda () (_K40502_ _vars40501_))))
                        (if (gx#stx-pair? ___stx4679446795_)
                            (let ((_e4051140538_
                                   (gx#syntax-e ___stx4679446795_)))
                              (let ((_tl4050940545_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4051140538_)))
                                    (_hd4051040542_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4051140538_))))
                                (if (gx#stx-pair? _tl4050940545_)
                                    (let ((_e4051440548_
                                           (gx#syntax-e _tl4050940545_)))
                                      (let ((_tl4051240555_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4051440548_)))
                                            (_hd4051340552_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4051440548_))))
                                        (___kont4679746798_
                                         _tl4051240555_
                                         _hd4051340552_)))
                                    (___kont4679946800_))))
                            (___kont4679946800_)))))))
          (let ()
            (declare (not safe))
            (_loop40493_ _ptree40490_ '() values)))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_stx37451_ _tgt37453_ _ptree37454_ _K37455_ _E37456_)
        (letrec ((_generate137458_
                  (lambda (_tgt38703_ _ptree38705_ _K38706_ _E38707_)
                    (let* ((_g3870938717_
                            (lambda (_g3871038713_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3871038713_)))
                           (_g3870840486_
                            (lambda (_g3871038721_)
                              ((lambda (_L38724_)
                                 (let ()
                                   (let* ((___stx4703047031_ _ptree38705_)
                                          (_g3875138893_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4703047031_))))
                                     (let ((___kont4703347034_
                                            (lambda (_L40201_ _L40203_)
                                              (let* ((___stx4694846949_
                                                      _L40201_)
                                                     (_g4022040255_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4694846949_))))
                                                (let ((___kont4695146952_
                                                       (lambda ()
                                                         (let ((__tmp48284
                                                                (let ((__tmp48287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp48290 (gx#datum->syntax '#f '?))
                                     (__tmp48288
                                      (let ((__tmp48289
                                             (let ()
                                               (declare (not safe))
                                               (cons _L38724_ '()))))
                                        (declare (not safe))
                                        (cons _L40203_ __tmp48289))))
                                 (declare (not safe))
                                 (cons __tmp48290 __tmp48288)))
                              (__tmp48285
                               (let ((__tmp48286
                                      (let ()
                                        (declare (not safe))
                                        (cons _E38707_ '()))))
                                 (declare (not safe))
                                 (cons _K38706_ __tmp48286))))
                          (declare (not safe))
                          (cons __tmp48287 __tmp48285))))
                   (declare (not safe))
                   (cons 'if __tmp48284))))
              (___kont4695346954_
               (lambda (_L40456_)
                 (let ((__tmp48291
                        (let ((__tmp48295
                               (let ((__tmp48298 (gx#datum->syntax '#f '?))
                                     (__tmp48296
                                      (let ((__tmp48297
                                             (let ()
                                               (declare (not safe))
                                               (cons _L38724_ '()))))
                                        (declare (not safe))
                                        (cons _L40203_ __tmp48297))))
                                 (declare (not safe))
                                 (cons __tmp48298 __tmp48296)))
                              (__tmp48292
                               (let ((__tmp48294
                                      (let ()
                                        (declare (not safe))
                                        (_generate137458_
                                         _tgt38703_
                                         _L40456_
                                         _K38706_
                                         _E38707_)))
                                     (__tmp48293
                                      (let ()
                                        (declare (not safe))
                                        (cons _E38707_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48294 __tmp48293))))
                          (declare (not safe))
                          (cons __tmp48295 __tmp48292))))
                   (declare (not safe))
                   (cons 'if __tmp48291))))
              (___kont4695546956_
               (lambda (_L40394_)
                 (let* ((_g4040840416_
                         (lambda (_g4040940412_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4040940412_)))
                        (_g4040740435_
                         (lambda (_g4040940420_)
                           ((lambda (_L40423_)
                              (let ()
                                (let ((__tmp48299
                                       (let ((__tmp48306
                                              (let ((__tmp48307
                                                     (let ((__tmp48308
                                                            (let ((__tmp48309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48310
                                  (let ()
                                    (declare (not safe))
                                    (cons _L38724_ '()))))
                             (declare (not safe))
                             (cons _L40203_ __tmp48310))))
                      (declare (not safe))
                      (cons __tmp48309 '()))))
               (declare (not safe))
               (cons _L40423_ __tmp48308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48307 '())))
                                             (__tmp48300
                                              (let ((__tmp48301
                                                     (let ((__tmp48302
                                                            (let ((__tmp48303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48305
                                  (let ()
                                    (declare (not safe))
                                    (_generate137458_
                                     _L40423_
                                     _L40394_
                                     _K38706_
                                     _E38707_)))
                                 (__tmp48304
                                  (let ()
                                    (declare (not safe))
                                    (cons _E38707_ '()))))
                             (declare (not safe))
                             (cons __tmp48305 __tmp48304))))
                      (declare (not safe))
                      (cons _L40423_ __tmp48303))))
               (declare (not safe))
               (cons 'if __tmp48302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48301 '()))))
                                         (declare (not safe))
                                         (cons __tmp48306 __tmp48300))))
                                  (declare (not safe))
                                  (cons 'let __tmp48299))))
                            _g4040940420_)))
                        (__tmp48311 (gx#genident 'e)))
                   (declare (not safe))
                   (_g4040740435_ __tmp48311))))
              (___kont4695746958_
               (lambda (_L40310_ _L40312_)
                 (let* ((_g4033240340_
                         (lambda (_g4033340336_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4033340336_)))
                        (_g4033140359_
                         (lambda (_g4033340344_)
                           ((lambda (_L40347_)
                              (let ()
                                (let ((__tmp48312
                                       (let ((__tmp48324
                                              (let ((__tmp48327
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp48325
                                                     (let ((__tmp48326
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L38724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L40203_ __tmp48326))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48327 __tmp48325)))
                                             (__tmp48313
                                              (let ((__tmp48315
                                                     (let ((__tmp48316
                                                            (let ((__tmp48319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48320
                                  (let ((__tmp48321
                                         (let ((__tmp48322
                                                (let ((__tmp48323
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L38724_ '()))))
                                                  (declare (not safe))
                                                  (cons _L40312_ __tmp48323))))
                                           (declare (not safe))
                                           (cons __tmp48322 '()))))
                                    (declare (not safe))
                                    (cons _L40347_ __tmp48321))))
                             (declare (not safe))
                             (cons __tmp48320 '())))
                          (__tmp48317
                           (let ((__tmp48318
                                  (let ()
                                    (declare (not safe))
                                    (_generate137458_
                                     _L40347_
                                     _L40310_
                                     _K38706_
                                     _E38707_))))
                             (declare (not safe))
                             (cons __tmp48318 '()))))
                      (declare (not safe))
                      (cons __tmp48319 __tmp48317))))
               (declare (not safe))
               (cons 'let __tmp48316)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp48314
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E38707_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48315 __tmp48314))))
                                         (declare (not safe))
                                         (cons __tmp48324 __tmp48313))))
                                  (declare (not safe))
                                  (cons 'if __tmp48312))))
                            _g4033340344_)))
                        (__tmp48328 (gx#genident 'e)))
                   (declare (not safe))
                   (_g4033140359_ __tmp48328)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g4021740467_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4694846949_)
                                                               (let ((_e4022540446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4694846949_)))
                         (let ((_tl4022340453_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4022540446_)))
                               (_hd4022440450_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4022540446_))))
                           (if (gx#stx-null? _tl4022340453_)
                               (___kont4695346954_ _hd4022440450_)
                               (if (gx#stx-datum? _hd4022440450_)
                                   (let ((_e4023040380_
                                          (gx#stx-e _hd4022440450_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e4023040380_ '=>:))
                                         (if (gx#stx-pair? _tl4022340453_)
                                             (let ((_e4023340384_
                                                    (gx#syntax-e
                                                     _tl4022340453_)))
                                               (let ((_tl4023140391_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4023340384_)))
                                                     (_hd4023240388_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4023340384_))))
                                                 (if (gx#stx-null?
                                                      _tl4023140391_)
                                                     (___kont4695546956_
                                                      _hd4023240388_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g4022040255_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g4022040255_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e4023040380_ '::))
                                             (if (gx#stx-pair? _tl4022340453_)
                                                 (let ((_e4024240276_
                                                        (gx#syntax-e
                                                         _tl4022340453_)))
                                                   (let ((_tl4024040283_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4024240276_)))
                                                         (_hd4024140280_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4024240276_))))
                                                     (if (gx#stx-pair?
                                                          _tl4024040283_)
                                                         (let ((_e4024540286_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4024040283_)))
                   (let ((_tl4024340293_
                          (let () (declare (not safe)) (##cdr _e4024540286_)))
                         (_hd4024440290_
                          (let () (declare (not safe)) (##car _e4024540286_))))
                     (if (gx#stx-datum? _hd4024440290_)
                         (let ((_e4024640296_ (gx#stx-e _hd4024440290_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e4024640296_ '=>:))
                               (if (gx#stx-pair? _tl4024340293_)
                                   (let ((_e4024940300_
                                          (gx#syntax-e _tl4024340293_)))
                                     (let ((_tl4024740307_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4024940300_)))
                                           (_hd4024840304_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4024940300_))))
                                       (if (gx#stx-null? _tl4024740307_)
                                           (___kont4695746958_
                                            _hd4024840304_
                                            _hd4024140280_)
                                           (let ()
                                             (declare (not safe))
                                             (_g4022040255_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4022040255_)))
                               (let () (declare (not safe)) (_g4022040255_))))
                         (let () (declare (not safe)) (_g4022040255_)))))
                 (let () (declare (not safe)) (_g4022040255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g4022040255_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g4022040255_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4022040255_))))))
                       (let () (declare (not safe)) (_g4022040255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4694846949_)
                                                        (___kont4695146952_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g4021740467_))))))))
                                           (___kont4703547036_
                                            (lambda (_L40098_)
                                              (let* ((___stx4693246933_
                                                      _L40098_)
                                                     (_g4011140123_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4693246933_))))
                                                (let ((___kont4693546936_
                                                       (lambda (_L40151_
                                                                _L40153_)
                                                         (let ((__tmp48329
                                                                (let ((__tmp48330
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L40151_))))
                          (declare (not safe))
                          (_generate137458_
                           _tgt38703_
                           __tmp48330
                           _K38706_
                           _E38707_))))
                   (declare (not safe))
                   (_generate137458_
                    _tgt38703_
                    _L40153_
                    __tmp48329
                    _E38707_))))
              (___kont4693746938_ (lambda () _K38706_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4693246933_)
                                                      (let ((_e4011740141_
                                                             (gx#syntax-e
                                                              ___stx4693246933_)))
                                                        (let ((_tl4011540148_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4011740141_)))
                      (_hd4011640145_
                       (let () (declare (not safe)) (##car _e4011740141_))))
                  (___kont4693546936_ _tl4011540148_ _hd4011640145_)))
              (___kont4693746938_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4703747038_
                                            (lambda (_L40005_)
                                              (let* ((___stx4691646917_
                                                      _L40005_)
                                                     (_g4001840030_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4691646917_))))
                                                (let ((___kont4691946920_
                                                       (lambda (_L40058_
                                                                _L40060_)
                                                         (let ((__tmp48331
                                                                (let ((__tmp48332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L40058_))))
                          (declare (not safe))
                          (_generate137458_
                           _tgt38703_
                           __tmp48332
                           _K38706_
                           _E38707_))))
                   (declare (not safe))
                   (_generate137458_
                    _tgt38703_
                    _L40060_
                    _K38706_
                    __tmp48331))))
              (___kont4692146922_ (lambda () _E38707_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4691646917_)
                                                      (let ((_e4002440048_
                                                             (gx#syntax-e
                                                              ___stx4691646917_)))
                                                        (let ((_tl4002240055_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4002440048_)))
                      (_hd4002340052_
                       (let () (declare (not safe)) (##car _e4002440048_))))
                  (___kont4691946920_ _tl4002240055_ _hd4002340052_)))
              (___kont4692146922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4703947040_
                                            (lambda (_L39970_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate137458_
                                                 _tgt38703_
                                                 _L39970_
                                                 _E38707_
                                                 _K38706_))))
                                           (___kont4704147042_
                                            (lambda (_L39852_ _L39854_)
                                              (let* ((_g3987139886_
                                                      (lambda (_g3987239882_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3987239882_)))
                                                     (_g3987039935_
                                                      (lambda (_g3987239890_)
                                                        (if (gx#stx-pair?
                                                             _g3987239890_)
                                                            (let ((_e3987739893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g3987239890_)))
                      (let ((_hd3987639897_
                             (let ()
                               (declare (not safe))
                               (##car _e3987739893_)))
                            (_tl3987539900_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3987739893_))))
                        (if (gx#stx-pair? _tl3987539900_)
                            (let ((_e3988039903_ (gx#syntax-e _tl3987539900_)))
                              (let ((_hd3987939907_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3988039903_)))
                                    (_tl3987839910_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3988039903_))))
                                (if (gx#stx-null? _tl3987839910_)
                                    ((lambda (_L39913_ _L39915_)
                                       (let ()
                                         (let ((__tmp48333
                                                (let ((__tmp48371
                                                       (let ((__tmp48373
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp48372
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L38724_ '()))))
                 (declare (not safe))
                 (cons __tmp48373 __tmp48372)))
              (__tmp48334
               (let ((__tmp48336
                      (let ((_hd-pat39931_ (gx#stx-e _L39854_))
                            (_tl-pat39933_ (gx#stx-e _L39852_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat39931_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat39933_ '(any:))))
                            _K38706_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat39933_ '(any:)))
                                (let ((__tmp48362
                                       (let ((__tmp48365
                                              (let ((__tmp48366
                                                     (let ((__tmp48367
                                                            (let ((__tmp48368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48370 (gx#datum->syntax '#f '##car))
                                 (__tmp48369
                                  (let ()
                                    (declare (not safe))
                                    (cons _L38724_ '()))))
                             (declare (not safe))
                             (cons __tmp48370 __tmp48369))))
                      (declare (not safe))
                      (cons __tmp48368 '()))))
               (declare (not safe))
               (cons _L39915_ __tmp48367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48366 '())))
                                             (__tmp48363
                                              (let ((__tmp48364
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate137458_
                                                        _L39915_
                                                        _L39854_
                                                        _K38706_
                                                        _E38707_))))
                                                (declare (not safe))
                                                (cons __tmp48364 '()))))
                                         (declare (not safe))
                                         (cons __tmp48365 __tmp48363))))
                                  (declare (not safe))
                                  (cons 'let __tmp48362))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat39931_ '(any:)))
                                    (let ((__tmp48353
                                           (let ((__tmp48356
                                                  (let ((__tmp48357
                                                         (let ((__tmp48358
                                                                (let ((__tmp48359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp48361 (gx#datum->syntax '#f '##cdr))
                                     (__tmp48360
                                      (let ()
                                        (declare (not safe))
                                        (cons _L38724_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48361 __tmp48360))))
                          (declare (not safe))
                          (cons __tmp48359 '()))))
                   (declare (not safe))
                   (cons _L39913_ __tmp48358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48357 '())))
                                                 (__tmp48354
                                                  (let ((__tmp48355
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate137458_
                                                            _L39913_
                                                            _L39852_
                                                            _K38706_
                                                            _E38707_))))
                                                    (declare (not safe))
                                                    (cons __tmp48355 '()))))
                                             (declare (not safe))
                                             (cons __tmp48356 __tmp48354))))
                                      (declare (not safe))
                                      (cons 'let __tmp48353))
                                    (let ((__tmp48337
                                           (let ((__tmp48341
                                                  (let ((__tmp48348
                                                         (let ((__tmp48349
                                                                (let ((__tmp48350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp48352 (gx#datum->syntax '#f '##car))
                                     (__tmp48351
                                      (let ()
                                        (declare (not safe))
                                        (cons _L38724_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48352 __tmp48351))))
                          (declare (not safe))
                          (cons __tmp48350 '()))))
                   (declare (not safe))
                   (cons _L39915_ __tmp48349)))
                (__tmp48342
                 (let ((__tmp48343
                        (let ((__tmp48344
                               (let ((__tmp48345
                                      (let ((__tmp48347
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp48346
                                             (let ()
                                               (declare (not safe))
                                               (cons _L38724_ '()))))
                                        (declare (not safe))
                                        (cons __tmp48347 __tmp48346))))
                                 (declare (not safe))
                                 (cons __tmp48345 '()))))
                          (declare (not safe))
                          (cons _L39913_ __tmp48344))))
                   (declare (not safe))
                   (cons __tmp48343 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48348
                                                          __tmp48342)))
                                                 (__tmp48338
                                                  (let ((__tmp48339
                                                         (let ((__tmp48340
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate137458_
                           _L39913_
                           _L39852_
                           _K38706_
                           _E38707_))))
                   (declare (not safe))
                   (_generate137458_ _L39915_ _L39854_ __tmp48340 _E38707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48339 '()))))
                                             (declare (not safe))
                                             (cons __tmp48341 __tmp48338))))
                                      (declare (not safe))
                                      (cons 'let __tmp48337)))))))
                     (__tmp48335
                      (let () (declare (not safe)) (cons _E38707_ '()))))
                 (declare (not safe))
                 (cons __tmp48336 __tmp48335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48371
                                                        __tmp48334))))
                                           (declare (not safe))
                                           (cons 'if __tmp48333))))
                                     _hd3987939907_
                                     _hd3987639897_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3987139886_ _g3987239890_)))))
                            (let ()
                              (declare (not safe))
                              (_g3987139886_ _g3987239890_)))))
                    (let ()
                      (declare (not safe))
                      (_g3987139886_ _g3987239890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48374
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g3987039935_ __tmp48374))))
                                           (___kont4704347044_
                                            (lambda ()
                                              (let ((__tmp48375
                                                     (let ((__tmp48378
                                                            (let ((__tmp48380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp48379
                           (let () (declare (not safe)) (cons _L38724_ '()))))
                      (declare (not safe))
                      (cons __tmp48380 __tmp48379)))
                   (__tmp48376
                    (let ((__tmp48377
                           (let () (declare (not safe)) (cons _E38707_ '()))))
                      (declare (not safe))
                      (cons _K38706_ __tmp48377))))
               (declare (not safe))
               (cons __tmp48378 __tmp48376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp48375))))
                                           (___kont4704547046_
                                            (lambda (_L39768_ _L39770_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice37460_
                                                 _tgt38703_
                                                 _L39770_
                                                 _L39768_
                                                 _K38706_
                                                 _E38707_))))
                                           (___kont4704747048_
                                            (lambda (_L39682_)
                                              (let* ((_g3969639704_
                                                      (lambda (_g3969739700_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3969739700_)))
                                                     (_g3969539723_
                                                      (lambda (_g3969739708_)
                                                        ((lambda (_L39711_)
                                                           (let ()
                                                             (let ((__tmp48381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48394
                                   (let ((__tmp48396
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp48395
                                          (let ()
                                            (declare (not safe))
                                            (cons _L38724_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48396 __tmp48395)))
                                  (__tmp48382
                                   (let ((__tmp48384
                                          (let ((__tmp48385
                                                 (let ((__tmp48388
                                                        (let ((__tmp48389
                                                               (let ((__tmp48390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48391
                                     (let ((__tmp48393
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp48392
                                            (let ()
                                              (declare (not safe))
                                              (cons _L38724_ '()))))
                                       (declare (not safe))
                                       (cons __tmp48393 __tmp48392))))
                                (declare (not safe))
                                (cons __tmp48391 '()))))
                         (declare (not safe))
                         (cons _L39711_ __tmp48390))))
                  (declare (not safe))
                  (cons __tmp48389 '())))
               (__tmp48386
                (let ((__tmp48387
                       (let ()
                         (declare (not safe))
                         (_generate137458_
                          _L39711_
                          _L39682_
                          _K38706_
                          _E38707_))))
                  (declare (not safe))
                  (cons __tmp48387 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48388
                                                         __tmp48386))))
                                            (declare (not safe))
                                            (cons 'let __tmp48385)))
                                         (__tmp48383
                                          (let ()
                                            (declare (not safe))
                                            (cons _E38707_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48384 __tmp48383))))
                              (declare (not safe))
                              (cons __tmp48394 __tmp48382))))
                       (declare (not safe))
                       (cons 'if __tmp48381))))
                 _g3969739708_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48397
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3969539723_ __tmp48397))))
                                           (___kont4704947050_
                                            (lambda (_L39487_)
                                              (let* ((___stx4686646867_
                                                      _L39487_)
                                                     (_g3950239525_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4686646867_))))
                                                (let ((___kont4686946870_
                                                       (lambda (_L39602_)
                                                         (let* ((_g3961639624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3961739620_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3961739620_)))
                        (_g3961539643_
                         (lambda (_g3961739628_)
                           ((lambda (_L39631_)
                              (let ()
                                (let ((__tmp48398
                                       (let ((__tmp48402
                                              (let ((__tmp48408
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp48403
                                                     (let ((__tmp48405
                                                            (let ((__tmp48407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp48406
                           (let () (declare (not safe)) (cons _L38724_ '()))))
                      (declare (not safe))
                      (cons __tmp48407 __tmp48406)))
                   (__tmp48404
                    (let () (declare (not safe)) (cons _L39631_ '()))))
               (declare (not safe))
               (cons __tmp48405 __tmp48404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48408 __tmp48403)))
                                             (__tmp48399
                                              (let ((__tmp48401
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector37461_
                                                        _tgt38703_
                                                        _L39602_
                                                        '0
                                                        _K38706_
                                                        _E38707_)))
                                                    (__tmp48400
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E38707_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48401 __tmp48400))))
                                         (declare (not safe))
                                         (cons __tmp48402 __tmp48399))))
                                  (declare (not safe))
                                  (cons 'if __tmp48398))))
                            _g3961739628_)))
                        (__tmp48409 (gx#stx-length _L39602_)))
                   (declare (not safe))
                   (_g3961539643_ __tmp48409))))
              (___kont4687146872_
               (lambda (_L39556_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector37462_
                    _tgt38703_
                    _L39556_
                    'values->list
                    _K38706_
                    _E38707_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4686646867_)
                                                      (let ((_e3950739578_
                                                             (gx#syntax-e
                                                              ___stx4686646867_)))
                                                        (let ((_tl3950539585_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3950739578_)))
                      (_hd3950639582_
                       (let () (declare (not safe)) (##car _e3950739578_))))
                  (if (gx#stx-datum? _hd3950639582_)
                      (let ((_e3950839588_ (gx#stx-e _hd3950639582_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3950839588_ 'simple:))
                            (if (gx#stx-pair? _tl3950539585_)
                                (let ((_e3951139592_
                                       (gx#syntax-e _tl3950539585_)))
                                  (let ((_tl3950939599_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3951139592_)))
                                        (_hd3951039596_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3951139592_))))
                                    (if (gx#stx-null? _tl3950939599_)
                                        (___kont4686946870_ _hd3951039596_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3950239525_)))))
                                (let () (declare (not safe)) (_g3950239525_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e3950839588_ 'list:))
                                (if (gx#stx-pair? _tl3950539585_)
                                    (let ((_e3951939546_
                                           (gx#syntax-e _tl3950539585_)))
                                      (let ((_tl3951739553_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3951939546_)))
                                            (_hd3951839550_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3951939546_))))
                                        (if (gx#stx-null? _tl3951739553_)
                                            (___kont4687146872_ _hd3951839550_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3950239525_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3950239525_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3950239525_)))))
                      (let () (declare (not safe)) (_g3950239525_)))))
              (let () (declare (not safe)) (_g3950239525_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4705147052_
                                            (lambda (_L39292_)
                                              (let* ((___stx4681646817_
                                                      _L39292_)
                                                     (_g3930739330_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4681646817_))))
                                                (let ((___kont4681946820_
                                                       (lambda (_L39407_)
                                                         (let* ((_g3942139429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3942239425_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3942239425_)))
                        (_g3942039448_
                         (lambda (_g3942239433_)
                           ((lambda (_L39436_)
                              (let ()
                                (let ((__tmp48410
                                       (let ((__tmp48425
                                              (let ((__tmp48427
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp48426
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L38724_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48427 __tmp48426)))
                                             (__tmp48411
                                              (let ((__tmp48413
                                                     (let ((__tmp48414
                                                            (let ((__tmp48418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48424 (gx#datum->syntax '#f '##fx=))
                                 (__tmp48419
                                  (let ((__tmp48421
                                         (let ((__tmp48423
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp48422
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L38724_ '()))))
                                           (declare (not safe))
                                           (cons __tmp48423 __tmp48422)))
                                        (__tmp48420
                                         (let ()
                                           (declare (not safe))
                                           (cons _L39436_ '()))))
                                    (declare (not safe))
                                    (cons __tmp48421 __tmp48420))))
                             (declare (not safe))
                             (cons __tmp48424 __tmp48419)))
                          (__tmp48415
                           (let ((__tmp48417
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector37461_
                                     _tgt38703_
                                     _L39407_
                                     '0
                                     _K38706_
                                     _E38707_)))
                                 (__tmp48416
                                  (let ()
                                    (declare (not safe))
                                    (cons _E38707_ '()))))
                             (declare (not safe))
                             (cons __tmp48417 __tmp48416))))
                      (declare (not safe))
                      (cons __tmp48418 __tmp48415))))
               (declare (not safe))
               (cons 'if __tmp48414)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp48412
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E38707_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48413 __tmp48412))))
                                         (declare (not safe))
                                         (cons __tmp48425 __tmp48411))))
                                  (declare (not safe))
                                  (cons 'if __tmp48410))))
                            _g3942239433_)))
                        (__tmp48428 (gx#stx-length _L39407_)))
                   (declare (not safe))
                   (_g3942039448_ __tmp48428))))
              (___kont4682146822_
               (lambda (_L39361_)
                 (let ((__tmp48429
                        (let ((__tmp48433
                               (let ((__tmp48435
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp48434
                                      (let ()
                                        (declare (not safe))
                                        (cons _L38724_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48435 __tmp48434)))
                              (__tmp48430
                               (let ((__tmp48432
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector37462_
                                         _tgt38703_
                                         _L39361_
                                         'vector->list
                                         _K38706_
                                         _E38707_)))
                                     (__tmp48431
                                      (let ()
                                        (declare (not safe))
                                        (cons _E38707_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48432 __tmp48431))))
                          (declare (not safe))
                          (cons __tmp48433 __tmp48430))))
                   (declare (not safe))
                   (cons 'if __tmp48429)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4681646817_)
                                                      (let ((_e3931239383_
                                                             (gx#syntax-e
                                                              ___stx4681646817_)))
                                                        (let ((_tl3931039390_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3931239383_)))
                      (_hd3931139387_
                       (let () (declare (not safe)) (##car _e3931239383_))))
                  (if (gx#stx-datum? _hd3931139387_)
                      (let ((_e3931339393_ (gx#stx-e _hd3931139387_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3931339393_ 'simple:))
                            (if (gx#stx-pair? _tl3931039390_)
                                (let ((_e3931639397_
                                       (gx#syntax-e _tl3931039390_)))
                                  (let ((_tl3931439404_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3931639397_)))
                                        (_hd3931539401_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3931639397_))))
                                    (if (gx#stx-null? _tl3931439404_)
                                        (___kont4681946820_ _hd3931539401_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3930739330_)))))
                                (let () (declare (not safe)) (_g3930739330_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e3931339393_ 'list:))
                                (if (gx#stx-pair? _tl3931039390_)
                                    (let ((_e3932439351_
                                           (gx#syntax-e _tl3931039390_)))
                                      (let ((_tl3932239358_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3932439351_)))
                                            (_hd3932339355_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3932439351_))))
                                        (if (gx#stx-null? _tl3932239358_)
                                            (___kont4682146822_ _hd3932339355_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3930739330_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3930739330_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3930739330_)))))
                      (let () (declare (not safe)) (_g3930739330_)))))
              (let () (declare (not safe)) (_g3930739330_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4705347054_
                                            (lambda (_L39243_ _L39245_)
                                              (let ((__tmp48436
                                                     (gx#stx-e _L39245_)))
                                                (declare (not safe))
                                                (_generate-struct37463_
                                                 __tmp48436
                                                 _tgt38703_
                                                 _L39243_
                                                 _K38706_
                                                 _E38707_))))
                                           (___kont4705547056_
                                            (lambda (_L39184_ _L39186_)
                                              (let ((__tmp48437
                                                     (gx#stx-e _L39186_)))
                                                (declare (not safe))
                                                (_generate-class37466_
                                                 __tmp48437
                                                 _tgt38703_
                                                 _L39184_
                                                 _K38706_
                                                 _E38707_))))
                                           (___kont4705747058_
                                            (lambda (_L39087_)
                                              (let* ((_g3910139109_
                                                      (lambda (_g3910239105_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3910239105_)))
                                                     (_g3910039128_
                                                      (lambda (_g3910239113_)
                                                        ((lambda (_L39116_)
                                                           (let ()
                                                             (let ((__tmp48438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48441
                                   (let ((__tmp48442
                                          (let ((__tmp48443
                                                 (let ((__tmp48444
                                                        (let ((__tmp48446
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48445
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L39087_ '()))))
                  (declare (not safe))
                  (cons __tmp48446 __tmp48445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48444 '()))))
                                            (declare (not safe))
                                            (cons _L38724_ __tmp48443))))
                                     (declare (not safe))
                                     (cons _L39116_ __tmp48442)))
                                  (__tmp48439
                                   (let ((__tmp48440
                                          (let ()
                                            (declare (not safe))
                                            (cons _E38707_ '()))))
                                     (declare (not safe))
                                     (cons _K38706_ __tmp48440))))
                              (declare (not safe))
                              (cons __tmp48441 __tmp48439))))
                       (declare (not safe))
                       (cons 'if __tmp48438))))
                 _g3910239113_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48447
                                                      (let ((_e39132_
                                                             (gx#stx-e
                                                              _L39087_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e39132_))
                        (keyword? _e39132_)
                        (let () (declare (not safe)) (immediate? _e39132_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e39132_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g3910039128_ __tmp48447))))
                                           (___kont4705947060_
                                            (lambda (_L39007_ _L39009_)
                                              (let* ((_g3902539033_
                                                      (lambda (_g3902639029_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3902639029_)))
                                                     (_g3902439052_
                                                      (lambda (_g3902639037_)
                                                        ((lambda (_L39040_)
                                                           (let ()
                                                             (let ((__tmp48448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48451
                                   (let ((__tmp48452
                                          (let ((__tmp48453
                                                 (let ((__tmp48454
                                                        (let ((__tmp48455
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L38724_ '()))))
                  (declare (not safe))
                  (cons _L39009_ __tmp48455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48454 '()))))
                                            (declare (not safe))
                                            (cons _L39040_ __tmp48453))))
                                     (declare (not safe))
                                     (cons __tmp48452 '())))
                                  (__tmp48449
                                   (let ((__tmp48450
                                          (let ()
                                            (declare (not safe))
                                            (_generate137458_
                                             _L39040_
                                             _L39007_
                                             _K38706_
                                             _E38707_))))
                                     (declare (not safe))
                                     (cons __tmp48450 '()))))
                              (declare (not safe))
                              (cons __tmp48451 __tmp48449))))
                       (declare (not safe))
                       (cons 'let __tmp48448))))
                 _g3902639037_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48456
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3902439052_ __tmp48456))))
                                           (___kont4706147062_
                                            (lambda (_L38949_)
                                              (let ((__tmp48457
                                                     (let ((__tmp48459
                                                            (let ((__tmp48460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48461
                                  (let ()
                                    (declare (not safe))
                                    (cons _L38724_ '()))))
                             (declare (not safe))
                             (cons _L38949_ __tmp48461))))
                      (declare (not safe))
                      (cons __tmp48460 '())))
                   (__tmp48458
                    (let () (declare (not safe)) (cons _K38706_ '()))))
               (declare (not safe))
               (cons __tmp48459 __tmp48458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp48457))))
                                           (___kont4706347064_
                                            (lambda () _K38706_)))
                                       (if (gx#stx-pair? ___stx4703047031_)
                                           (let ((_e3875740177_
                                                  (gx#syntax-e
                                                   ___stx4703047031_)))
                                             (let ((_tl3875540184_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3875740177_)))
                                                   (_hd3875640181_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3875740177_))))
                                               (if (gx#stx-datum?
                                                    _hd3875640181_)
                                                   (let ((_e3875840187_
                                                          (gx#stx-e
                                                           _hd3875640181_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3875840187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl3875540184_)
                     (let ((_e3876140191_ (gx#syntax-e _tl3875540184_)))
                       (let ((_tl3875940198_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3876140191_)))
                             (_hd3876040195_
                              (let ()
                                (declare (not safe))
                                (##car _e3876140191_))))
                         (___kont4703347034_ _tl3875940198_ _hd3876040195_)))
                     (let () (declare (not safe)) (_g3875138893_)))
                 (if (let () (declare (not safe)) (equal? _e3875840187_ 'and:))
                     (___kont4703547036_ _tl3875540184_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e3875840187_ 'or:))
                         (___kont4703747038_ _tl3875540184_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e3875840187_ 'not:))
                             (if (gx#stx-pair? _tl3875540184_)
                                 (let ((_e3877939960_
                                        (gx#syntax-e _tl3875540184_)))
                                   (let ((_tl3877739967_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3877939960_)))
                                         (_hd3877839964_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3877939960_))))
                                     (if (gx#stx-null? _tl3877739967_)
                                         (___kont4703947040_ _hd3877839964_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3875138893_)))))
                                 (let () (declare (not safe)) (_g3875138893_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e3875840187_ 'cons:))
                                 (if (gx#stx-pair? _tl3875540184_)
                                     (let ((_e3878839832_
                                            (gx#syntax-e _tl3875540184_)))
                                       (let ((_tl3878639839_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3878839832_)))
                                             (_hd3878739836_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3878839832_))))
                                         (if (gx#stx-pair? _tl3878639839_)
                                             (let ((_e3879139842_
                                                    (gx#syntax-e
                                                     _tl3878639839_)))
                                               (let ((_tl3878939849_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3879139842_)))
                                                     (_hd3879039846_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3879139842_))))
                                                 (if (gx#stx-null?
                                                      _tl3878939849_)
                                                     (___kont4704147042_
                                                      _hd3879039846_
                                                      _hd3878739836_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3875138893_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3875138893_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3875138893_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e3875840187_ 'null:))
                                     (if (gx#stx-null? _tl3875540184_)
                                         (___kont4704347044_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3875138893_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3875840187_ 'splice:))
                                         (if (gx#stx-pair? _tl3875540184_)
                                             (let ((_e3880439748_
                                                    (gx#syntax-e
                                                     _tl3875540184_)))
                                               (let ((_tl3880239755_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3880439748_)))
                                                     (_hd3880339752_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3880439748_))))
                                                 (if (gx#stx-pair?
                                                      _tl3880239755_)
                                                     (let ((_e3880739758_
                                                            (gx#syntax-e
                                                             _tl3880239755_)))
                                                       (let ((_tl3880539765_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3880739758_)))
                     (_hd3880639762_
                      (let () (declare (not safe)) (##car _e3880739758_))))
                 (if (gx#stx-null? _tl3880539765_)
                     (___kont4704547046_ _hd3880639762_ _hd3880339752_)
                     (let () (declare (not safe)) (_g3875138893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3875138893_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3875138893_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e3875840187_ 'box:))
                                             (if (gx#stx-pair? _tl3875540184_)
                                                 (let ((_e3881539672_
                                                        (gx#syntax-e
                                                         _tl3875540184_)))
                                                   (let ((_tl3881339679_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3881539672_)))
                                                         (_hd3881439676_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3881539672_))))
                                                     (if (gx#stx-null?
                                                          _tl3881339679_)
                                                         (___kont4704747048_
                                                          _hd3881439676_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3875138893_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3875138893_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e3875840187_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl3875540184_)
                                                     (let ((_e3882339477_
                                                            (gx#syntax-e
                                                             _tl3875540184_)))
                                                       (let ((_tl3882139484_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3882339477_)))
                     (_hd3882239481_
                      (let () (declare (not safe)) (##car _e3882339477_))))
                 (if (gx#stx-null? _tl3882139484_)
                     (___kont4704947050_ _hd3882239481_)
                     (let () (declare (not safe)) (_g3875138893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3875138893_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e3875840187_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl3875540184_)
                                                         (let ((_e3883139282_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3875540184_)))
                   (let ((_tl3882939289_
                          (let () (declare (not safe)) (##cdr _e3883139282_)))
                         (_hd3883039286_
                          (let () (declare (not safe)) (##car _e3883139282_))))
                     (if (gx#stx-null? _tl3882939289_)
                         (___kont4705147052_ _hd3883039286_)
                         (let () (declare (not safe)) (_g3875138893_)))))
                 (let () (declare (not safe)) (_g3875138893_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3875840187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl3875540184_)
                     (let ((_e3884039223_ (gx#syntax-e _tl3875540184_)))
                       (let ((_tl3883839230_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3884039223_)))
                             (_hd3883939227_
                              (let ()
                                (declare (not safe))
                                (##car _e3884039223_))))
                         (if (gx#stx-pair? _tl3883839230_)
                             (let ((_e3884339233_
                                    (gx#syntax-e _tl3883839230_)))
                               (let ((_tl3884139240_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3884339233_)))
                                     (_hd3884239237_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3884339233_))))
                                 (if (gx#stx-null? _tl3884139240_)
                                     (___kont4705347054_
                                      _hd3884239237_
                                      _hd3883939227_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3875138893_)))))
                             (let () (declare (not safe)) (_g3875138893_)))))
                     (let () (declare (not safe)) (_g3875138893_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e3875840187_ 'class:))
                     (if (gx#stx-pair? _tl3875540184_)
                         (let ((_e3885239164_ (gx#syntax-e _tl3875540184_)))
                           (let ((_tl3885039171_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3885239164_)))
                                 (_hd3885139168_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3885239164_))))
                             (if (gx#stx-pair? _tl3885039171_)
                                 (let ((_e3885539174_
                                        (gx#syntax-e _tl3885039171_)))
                                   (let ((_tl3885339181_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3885539174_)))
                                         (_hd3885439178_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3885539174_))))
                                     (if (gx#stx-null? _tl3885339181_)
                                         (___kont4705547056_
                                          _hd3885439178_
                                          _hd3885139168_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3875138893_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g3875138893_)))))
                         (let () (declare (not safe)) (_g3875138893_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e3875840187_ 'datum:))
                         (if (gx#stx-pair? _tl3875540184_)
                             (let ((_e3886339077_
                                    (gx#syntax-e _tl3875540184_)))
                               (let ((_tl3886139084_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3886339077_)))
                                     (_hd3886239081_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3886339077_))))
                                 (if (gx#stx-null? _tl3886139084_)
                                     (___kont4705747058_ _hd3886239081_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3875138893_)))))
                             (let () (declare (not safe)) (_g3875138893_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e3875840187_ 'apply:))
                             (if (gx#stx-pair? _tl3875540184_)
                                 (let ((_e3887238987_
                                        (gx#syntax-e _tl3875540184_)))
                                   (let ((_tl3887038994_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3887238987_)))
                                         (_hd3887138991_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3887238987_))))
                                     (if (gx#stx-pair? _tl3887038994_)
                                         (let ((_e3887538997_
                                                (gx#syntax-e _tl3887038994_)))
                                           (let ((_tl3887339004_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e3887538997_)))
                                                 (_hd3887439001_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e3887538997_))))
                                             (if (gx#stx-null? _tl3887339004_)
                                                 (___kont4705947060_
                                                  _hd3887439001_
                                                  _hd3887138991_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3875138893_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3875138893_)))))
                                 (let () (declare (not safe)) (_g3875138893_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e3875840187_ 'var:))
                                 (if (gx#stx-pair? _tl3875540184_)
                                     (let ((_e3888338939_
                                            (gx#syntax-e _tl3875540184_)))
                                       (let ((_tl3888138946_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3888338939_)))
                                             (_hd3888238943_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3888338939_))))
                                         (if (gx#stx-null? _tl3888138946_)
                                             (___kont4706147062_
                                              _hd3888238943_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3875138893_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3875138893_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e3875840187_ 'any:))
                                     (if (gx#stx-null? _tl3875540184_)
                                         (___kont4706347064_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3875138893_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g3875138893_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3875138893_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g3875138893_)))))))
                               _g3871038721_))))
                      (declare (not safe))
                      (_g3870840486_ _tgt38703_))))
                 (_generate-splice37460_
                  (lambda (_tgt38075_ _hd38077_ _rest38078_ _K38079_ _E38080_)
                    (let* ((_g3808238099_
                            (lambda (_g3808338095_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3808338095_)))
                           (_g3808138699_
                            (lambda (_g3808338103_)
                              (if (gx#stx-pair/null? _g3808338103_)
                                  (let ((_g48462_
                                         (gx#syntax-split-splice
                                          _g3808338103_
                                          '0)))
                                    (begin
                                      (let ((_g48463_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g48462_)
                                                   (##vector-length _g48462_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g48463_ 2)))
                                            (error "Context expects 2 values"
                                                   _g48463_)))
                                      (let ((_target3808538106_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g48462_ 0)))
                                            (_tl3808738109_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g48462_ 1))))
                                        (if (gx#stx-null? _tl3808738109_)
                                            (letrec ((_loop3808838112_
                                                      (lambda (_hd3808638116_
                                                               _var3809238119_)
                                                        (if (gx#stx-pair?
                                                             _hd3808638116_)
                                                            (let ((_e3808938122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd3808638116_)))
                      (let ((_lp-hd3809038126_
                             (let ()
                               (declare (not safe))
                               (##car _e3808938122_)))
                            (_lp-tl3809138129_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3808938122_))))
                        (let ((__tmp48579
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3809038126_ _var3809238119_))))
                          (declare (not safe))
                          (_loop3808838112_ _lp-tl3809138129_ __tmp48579))))
                    (let ((_var3809338132_ (reverse _var3809238119_)))
                      ((lambda (_L38136_)
                         (let ()
                           (let* ((_g3815238169_
                                   (lambda (_g3815338165_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3815338165_)))
                                  (_g3815138687_
                                   (lambda (_g3815338173_)
                                     (if (gx#stx-pair/null? _g3815338173_)
                                         (let ((_g48464_
                                                (gx#syntax-split-splice
                                                 _g3815338173_
                                                 '0)))
                                           (begin
                                             (let ((_g48465_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g48464_)
                                                          (##vector-length
                                                           _g48464_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g48465_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g48465_)))
                                             (let ((_target3815538176_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g48464_
                                                       0)))
                                                   (_tl3815738179_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g48464_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl3815738179_)
                                                   (letrec ((_loop3815838182_
                                                             (lambda (_hd3815638186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r3816238189_)
                       (if (gx#stx-pair? _hd3815638186_)
                           (let ((_e3815938192_ (gx#syntax-e _hd3815638186_)))
                             (let ((_lp-hd3816038196_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3815938192_)))
                                   (_lp-tl3816138199_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3815938192_))))
                               (let ((__tmp48576
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3816038196_
                                              _var-r3816238189_))))
                                 (declare (not safe))
                                 (_loop3815838182_
                                  _lp-tl3816138199_
                                  __tmp48576))))
                           (let ((_var-r3816338202_
                                  (reverse _var-r3816238189_)))
                             ((lambda (_L38206_)
                                (let ()
                                  (let* ((_g3822338240_
                                          (lambda (_g3822438236_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3822438236_)))
                                         (_g3822238675_
                                          (lambda (_g3822438244_)
                                            (if (gx#stx-pair/null?
                                                 _g3822438244_)
                                                (let ((_g48466_
                                                       (gx#syntax-split-splice
                                                        _g3822438244_
                                                        '0)))
                                                  (begin
                                                    (let ((_g48467_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g48466_)
                         (##vector-length _g48466_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g48467_ 2)))
                  (error "Context expects 2 values" _g48467_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3822638247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g48466_
                                                              0)))
                                                          (_tl3822838250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g48466_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl3822838250_)
                                                          (letrec ((_loop3822938253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3822738257_ _init3823338260_)
                              (if (gx#stx-pair? _hd3822738257_)
                                  (let ((_e3823038263_
                                         (gx#syntax-e _hd3822738257_)))
                                    (let ((_lp-hd3823138267_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3823038263_)))
                                          (_lp-tl3823238270_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3823038263_))))
                                      (let ((__tmp48547
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3823138267_
                                                     _init3823338260_))))
                                        (declare (not safe))
                                        (_loop3822938253_
                                         _lp-tl3823238270_
                                         __tmp48547))))
                                  (let ((_init3823438273_
                                         (reverse _init3823338260_)))
                                    ((lambda (_L38277_)
                                       (let ()
                                         (let* ((_g3829438302_
                                                 (lambda (_g3829538298_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3829538298_)))
                                                (_g3829338671_
                                                 (lambda (_g3829538306_)
                                                   ((lambda (_L38309_)
                                                      (let ()
                                                        (let* ((_g3832238330_
                                                                (lambda (_g3832338326_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3832338326_)))
                       (_g3832138667_
                        (lambda (_g3832338334_)
                          ((lambda (_L38337_)
                             (let ()
                               (let* ((_g3835038358_
                                       (lambda (_g3835138354_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3835138354_)))
                                      (_g3834938663_
                                       (lambda (_g3835138362_)
                                         ((lambda (_L38365_)
                                            (let ()
                                              (let* ((_g3837838386_
                                                      (lambda (_g3837938382_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3837938382_)))
                                                     (_g3837738659_
                                                      (lambda (_g3837938390_)
                                                        ((lambda (_L38393_)
                                                           (let ()
                                                             (let* ((_g3840638414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3840738410_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3840738410_)))
                            (_g3840538655_
                             (lambda (_g3840738418_)
                               ((lambda (_L38421_)
                                  (let ()
                                    (let* ((_g3843438442_
                                            (lambda (_g3843538438_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3843538438_)))
                                           (_g3843338651_
                                            (lambda (_g3843538446_)
                                              ((lambda (_L38449_)
                                                 (let ()
                                                   (let* ((_g3846238470_
                                                           (lambda (_g3846338466_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g3846338466_)))
                                                          (_g3846138647_
                                                           (lambda (_g3846338474_)
                                                             ((lambda (_L38477_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g3849038498_
                                  (lambda (_g3849138494_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g3849138494_)))
                                 (_g3848938632_
                                  (lambda (_g3849138502_)
                                    ((lambda (_L38505_)
                                       (let ()
                                         (let* ((_g3851838526_
                                                 (lambda (_g3851938522_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3851938522_)))
                                                (_g3851738620_
                                                 (lambda (_g3851938530_)
                                                   ((lambda (_L38533_)
                                                      (let ()
                                                        (let* ((_g3854638554_
                                                                (lambda (_g3854738550_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3854738550_)))
                       (_g3854538616_
                        (lambda (_g3854738558_)
                          ((lambda (_L38561_)
                             (let ()
                               (let ()
                                 (let ((__tmp48521
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp48468
                                        (let ((__tmp48474
                                               (let ((__tmp48512
                                                      (let ((__tmp48513
                                                             (let ((__tmp48514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48520 (gx#datum->syntax '#f 'lambda))
                                  (__tmp48515
                                   (let ((__tmp48517
                                          (let ((__tmp48518
                                                 (let ((__tmp48519
                                                        (lambda (_g3858338586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3858438589_)
                  (let ()
                    (declare (not safe))
                    (cons _g3858338586_ _g3858438589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp48519
                                                           '()
                                                           _L38136_))))
                                            (declare (not safe))
                                            (cons _L38449_ __tmp48518)))
                                         (__tmp48516
                                          (let ()
                                            (declare (not safe))
                                            (cons _L38477_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48517 __tmp48516))))
                              (declare (not safe))
                              (cons __tmp48520 __tmp48515))))
                       (declare (not safe))
                       (cons __tmp48514 '()))))
                (declare (not safe))
                (cons _L38337_ __tmp48513)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48475
                                                      (let ((__tmp48502
                                                             (let ((__tmp48503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48504
                                   (let ((__tmp48511
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp48505
                                          (let ((__tmp48507
                                                 (let ((__tmp48508
                                                        (let ((__tmp48509
                                                               (let ((__tmp48510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3858138592_ _g3858238595_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3858138592_ _g3858238595_)))))
                         (declare (not safe))
                         (foldr1 __tmp48510 '() _L38206_))))
                  (declare (not safe))
                  (cons _L38449_ __tmp48509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L38421_ __tmp48508)))
                                                (__tmp48506
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L38561_ '()))))
                                            (declare (not safe))
                                            (cons __tmp48507 __tmp48506))))
                                     (declare (not safe))
                                     (cons __tmp48511 __tmp48505))))
                              (declare (not safe))
                              (cons __tmp48504 '()))))
                       (declare (not safe))
                       (cons _L38393_ __tmp48503)))
                    (__tmp48476
                     (let ((__tmp48477
                            (let ((__tmp48478
                                   (let ((__tmp48479
                                          (let ((__tmp48501
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp48480
                                                 (let ((__tmp48498
                                                        (let ((__tmp48499
                                                               (let ((__tmp48500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3857938598_ _g3858038601_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3857938598_ _g3858038601_)))))
                         (declare (not safe))
                         (foldr1 __tmp48500 '() _L38206_))))
                  (declare (not safe))
                  (cons _L38449_ __tmp48499)))
               (__tmp48481
                (let ((__tmp48482
                       (let ((__tmp48497 (gx#datum->syntax '#f 'if))
                             (__tmp48483
                              (let ((__tmp48494
                                     (let ((__tmp48496
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp48495
                                            (let ()
                                              (declare (not safe))
                                              (cons _L38449_ '()))))
                                       (declare (not safe))
                                       (cons __tmp48496 __tmp48495)))
                                    (__tmp48484
                                     (let ((__tmp48486
                                            (let ((__tmp48487
                                                   (let ((__tmp48491
                                                          (let ((__tmp48493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp48492
                         (let () (declare (not safe)) (cons _L38449_ '()))))
                    (declare (not safe))
                    (cons __tmp48493 __tmp48492)))
                 (__tmp48488
                  (let ((__tmp48489
                         (let ((__tmp48490
                                (lambda (_g3857738604_ _g3857838607_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g3857738604_ _g3857838607_)))))
                           (declare (not safe))
                           (foldr1 __tmp48490 '() _L38206_))))
                    (declare (not safe))
                    (cons _L38449_ __tmp48489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48491
                                                           __tmp48488))))
                                              (declare (not safe))
                                              (cons _L38393_ __tmp48487)))
                                           (__tmp48485
                                            (let ()
                                              (declare (not safe))
                                              (cons _L38533_ '()))))
                                       (declare (not safe))
                                       (cons __tmp48486 __tmp48485))))
                                (declare (not safe))
                                (cons __tmp48494 __tmp48484))))
                         (declare (not safe))
                         (cons __tmp48497 __tmp48483))))
                  (declare (not safe))
                  (cons __tmp48482 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48498
                                                         __tmp48481))))
                                            (declare (not safe))
                                            (cons __tmp48501 __tmp48480))))
                                     (declare (not safe))
                                     (cons __tmp48479 '()))))
                              (declare (not safe))
                              (cons _L38365_ __tmp48478))))
                       (declare (not safe))
                       (cons __tmp48477 '()))))
                (declare (not safe))
                (cons __tmp48502 __tmp48476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48512 __tmp48475)))
                                              (__tmp48469
                                               (let ((__tmp48470
                                                      (let ((__tmp48471
                                                             (let ((__tmp48472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48473
                                   (lambda (_g3857538610_ _g3857638613_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g3857538610_ _g3857638613_)))))
                              (declare (not safe))
                              (foldr1 __tmp48473 '() _L38277_))))
                       (declare (not safe))
                       (cons _L38309_ __tmp48472))))
                (declare (not safe))
                (cons _L38365_ __tmp48471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48470 '()))))
                                          (declare (not safe))
                                          (cons __tmp48474 __tmp48469))))
                                   (declare (not safe))
                                   (cons __tmp48521 __tmp48468)))))
                           _g3854738558_)))
                       (__tmp48522
                        (let ()
                          (declare (not safe))
                          (_generate137458_
                           _L38421_
                           _hd38077_
                           _L38505_
                           _L38533_))))
                  (declare (not safe))
                  (_g3854538616_ __tmp48522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3851938530_)))
                                                (__tmp48523
                                                 (let ((__tmp48524
                                                        (let ((__tmp48525
                                                               (let ((__tmp48526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3862338626_ _g3862438629_)
                                (let ((__tmp48527
                                       (let ((__tmp48529
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp48528
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3862338626_ '()))))
                                         (declare (not safe))
                                         (cons __tmp48529 __tmp48528))))
                                  (declare (not safe))
                                  (cons __tmp48527 _g3862438629_)))))
                         (declare (not safe))
                         (foldr1 __tmp48526 '() _L38206_))))
                  (declare (not safe))
                  (cons _L38449_ __tmp48525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L38337_
                                                         __tmp48524))))
                                           (declare (not safe))
                                           (_g3851738620_ __tmp48523))))
                                     _g3849138502_)))
                                 (__tmp48530
                                  (let ((__tmp48531
                                         (let ((__tmp48538
                                                (let ((__tmp48540
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp48539
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L38449_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp48540
                                                        __tmp48539)))
                                               (__tmp48532
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L38206_
                                                   _L38136_)
                                                  (let ((__tmp48533
                                                         (lambda (_g3863538639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3863638642_
                          _g3863738644_)
                   (let ((__tmp48534
                          (let ((__tmp48537 (gx#datum->syntax '#f 'cons))
                                (__tmp48535
                                 (let ((__tmp48536
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3863538639_ '()))))
                                   (declare (not safe))
                                   (cons _g3863638642_ __tmp48536))))
                            (declare (not safe))
                            (cons __tmp48537 __tmp48535))))
                     (declare (not safe))
                     (cons __tmp48534 _g3863738644_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr2 __tmp48533
                                                            '()
                                                            _L38206_
                                                            _L38136_)))))
                                           (declare (not safe))
                                           (cons __tmp48538 __tmp48532))))
                                    (declare (not safe))
                                    (cons _L38365_ __tmp48531))))
                            (declare (not safe))
                            (_g3848938632_ __tmp48530))))
                      _g3846338474_)))
                  (__tmp48541
                   (let ()
                     (declare (not safe))
                     (_generate137458_
                      _L38449_
                      _rest38078_
                      _K38079_
                      _E38080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g3846138647_
                                                      __tmp48541))))
                                               _g3843538446_)))
                                           (__tmp48542 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g3843338651_ __tmp48542))))
                                _g3840738418_)))
                            (__tmp48543 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g3840538655_ __tmp48543))))
                 _g3837938390_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48544
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g3837738659_ __tmp48544))))
                                          _g3835138362_)))
                                      (__tmp48545 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g3834938663_ __tmp48545))))
                           _g3832338334_)))
                       (__tmp48546 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g3832138667_ __tmp48546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3829538306_))))
                                           (declare (not safe))
                                           (_g3829338671_ _tgt38075_))))
                                     _init3823438273_))))))
                    (let ()
                      (declare (not safe))
                      (_loop3822938253_ _target3822638247_ '())))
                  (let ()
                    (declare (not safe))
                    (_g3822338240_ _g3822438244_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3822338240_
                                                   _g3822438244_)))))
                                         (__tmp48548
                                          (make-list
                                           (gx#stx-length
                                            (let ((__tmp48549
                                                   (lambda (_g3867838681_
                                                            _g3867938684_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g3867838681_
                                                             _g3867938684_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp48549
                                                      '()
                                                      _L38136_)))
                                           (let ((__tmp48575
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp48575 '())))))
                                    (declare (not safe))
                                    (_g3822238675_ __tmp48548))))
                              _var-r3816338202_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop3815838182_
                                                        _target3815538176_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3815238169_
                                                      _g3815338173_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3815238169_ _g3815338173_)))))
                                  (__tmp48577
                                   (gx#gentemps
                                    (let ((__tmp48578
                                           (lambda (_g3869038693_
                                                    _g3869138696_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g3869038693_
                                                     _g3869138696_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp48578 '() _L38136_)))))
                             (declare (not safe))
                             (_g3815138687_ __tmp48577))))
                       _var3809338132_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop3808838112_
                                                 _target3808538106_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g3808238099_
                                               _g3808338103_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3808238099_ _g3808338103_)))))
                           (__tmp48580
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/match[1]#match-pattern-vars|
                               _hd38077_))))
                      (declare (not safe))
                      (_g3808138699_ __tmp48580))))
                 (_generate-simple-vector37461_
                  (lambda (_tgt37917_
                           _body37919_
                           _start37920_
                           _K37921_
                           _E37922_)
                    (let _recur37924_ ((_rest37927_ _body37919_)
                                       (_off37929_ _start37920_))
                      (let* ((___stx4738847389_ _rest37927_)
                             (_g3793237944_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4738847389_))))
                        (let ((___kont4739147392_
                               (lambda (_L37972_ _L37974_)
                                 (let* ((_g3798938008_
                                         (lambda (_g3799038004_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3799038004_)))
                                        (_g3798838067_
                                         (lambda (_g3799038012_)
                                           (if (gx#stx-pair? _g3799038012_)
                                               (let ((_e3799638015_
                                                      (gx#syntax-e
                                                       _g3799038012_)))
                                                 (let ((_hd3799538019_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3799638015_)))
                                                       (_tl3799438022_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3799638015_))))
                                                   (if (gx#stx-pair?
                                                        _tl3799438022_)
                                                       (let ((_e3799938025_
                                                              (gx#syntax-e
                                                               _tl3799438022_)))
                                                         (let ((_hd3799838029_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3799938025_)))
                       (_tl3799738032_
                        (let () (declare (not safe)) (##cdr _e3799938025_))))
                   (if (gx#stx-pair? _tl3799738032_)
                       (let ((_e3800238035_ (gx#syntax-e _tl3799738032_)))
                         (let ((_hd3800138039_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3800238035_)))
                               (_tl3800038042_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3800238035_))))
                           (if (gx#stx-null? _tl3800038042_)
                               ((lambda (_L38045_ _L38047_ _L38048_)
                                  (let ()
                                    (let ((__tmp48581
                                           (let ((__tmp48586
                                                  (let ((__tmp48587
                                                         (let ((__tmp48588
                                                                (let ((__tmp48589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp48592
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp48590
                                      (let ((__tmp48591
                                             (let ()
                                               (declare (not safe))
                                               (cons _L38045_ '()))))
                                        (declare (not safe))
                                        (cons _L38047_ __tmp48591))))
                                 (declare (not safe))
                                 (cons __tmp48592 __tmp48590))))
                          (declare (not safe))
                          (cons __tmp48589 '()))))
                   (declare (not safe))
                   (cons _L38048_ __tmp48588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48587 '())))
                                                 (__tmp48582
                                                  (let ((__tmp48583
                                                         (let ((__tmp48584
                                                                (let ((__tmp48585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off37929_ '1))))
                          (declare (not safe))
                          (_recur37924_ _L37972_ __tmp48585))))
                   (declare (not safe))
                   (_generate137458_ _L38048_ _L37974_ __tmp48584 _E37922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48583 '()))))
                                             (declare (not safe))
                                             (cons __tmp48586 __tmp48582))))
                                      (declare (not safe))
                                      (cons 'let __tmp48581))))
                                _hd3800138039_
                                _hd3799838029_
                                _hd3799538019_)
                               (let ()
                                 (declare (not safe))
                                 (_g3798938008_ _g3799038012_)))))
                       (let ()
                         (declare (not safe))
                         (_g3798938008_ _g3799038012_)))))
               (let () (declare (not safe)) (_g3798938008_ _g3799038012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3798938008_
                                                  _g3799038012_)))))
                                        (__tmp48593
                                         (list (gx#genident 'e)
                                               _tgt37917_
                                               _off37929_)))
                                   (declare (not safe))
                                   (_g3798838067_ __tmp48593))))
                              (___kont4739347394_ (lambda () _K37921_)))
                          (if (gx#stx-pair? ___stx4738847389_)
                              (let ((_e3793837962_
                                     (gx#syntax-e ___stx4738847389_)))
                                (let ((_tl3793637969_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3793837962_)))
                                      (_hd3793737966_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3793837962_))))
                                  (___kont4739147392_
                                   _tl3793637969_
                                   _hd3793737966_)))
                              (___kont4739347394_)))))))
                 (_generate-list-vector37462_
                  (lambda (_tgt37809_
                           _body37811_
                           _->list37812_
                           _K37813_
                           _E37814_)
                    (let* ((_g3781637824_
                            (lambda (_g3781737820_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3781737820_)))
                           (_g3781537913_
                            (lambda (_g3781737828_)
                              ((lambda (_L37831_)
                                 (let ()
                                   (let* ((_g3784337851_
                                           (lambda (_g3784437847_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3784437847_)))
                                          (_g3784237909_
                                           (lambda (_g3784437855_)
                                             ((lambda (_L37858_)
                                                (let ()
                                                  (let* ((_g3787137879_
                                                          (lambda (_g3787237875_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g3787237875_)))
                                                         (_g3787037901_
                                                          (lambda (_g3787237883_)
                                                            ((lambda (_L37886_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp48594
                                  (let ((__tmp48597
                                         (let ((__tmp48598
                                                (let ((__tmp48599
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L37886_ '()))))
                                                  (declare (not safe))
                                                  (cons _L37831_ __tmp48599))))
                                           (declare (not safe))
                                           (cons __tmp48598 '())))
                                        (__tmp48595
                                         (let ((__tmp48596
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate137458_
                                                   _L37831_
                                                   _body37811_
                                                   _K37813_
                                                   _E37814_))))
                                           (declare (not safe))
                                           (cons __tmp48596 '()))))
                                    (declare (not safe))
                                    (cons __tmp48597 __tmp48595))))
                             (declare (not safe))
                             (cons 'let __tmp48594)))))
                     _g3787237883_)))
                 (__tmp48600
                  (let ((_$e37905_ _->list37812_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e37905_))
                        (let ((__tmp48609 (gx#datum->syntax '#f 'values->list))
                              (__tmp48608
                               (let ()
                                 (declare (not safe))
                                 (cons _L37858_ '()))))
                          (declare (not safe))
                          (cons __tmp48609 __tmp48608))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e37905_))
                            (let ((__tmp48607
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp48606
                                   (let ()
                                     (declare (not safe))
                                     (cons _L37858_ '()))))
                              (declare (not safe))
                              (cons __tmp48607 __tmp48606))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e37905_))
                                (let ((__tmp48605
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp48601
                                       (let ((__tmp48602
                                              (let ((__tmp48604
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp48603
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L37858_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48604 __tmp48603))))
                                         (declare (not safe))
                                         (cons __tmp48602 '()))))
                                  (declare (not safe))
                                  (cons __tmp48605 __tmp48601))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx37451_
                                 _->list37812_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g3787037901_
                                                     __tmp48600))))
                                              _g3784437855_))))
                                     (declare (not safe))
                                     (_g3784237909_ _tgt37809_))))
                               _g3781737828_)))
                           (__tmp48610 (gx#genident 'e)))
                      (declare (not safe))
                      (_g3781537913_ __tmp48610))))
                 (_generate-struct37463_
                  (lambda (_info37680_
                           _tgt37682_
                           _body37683_
                           _K37684_
                           _E37685_)
                    (let* ((___stx4740447405_ _body37683_)
                           (_g3768837711_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4740447405_))))
                      (let ((___kont4740747408_
                             (lambda (_L37788_)
                               (let* ((_fields37802_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors37465_
                                          _info37680_)))
                                      (__tmp48611
                                       (let ((__tmp48615
                                              (let ((__tmp48617
                                                     (let ((__obj48158
                                                            _info37680_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj48158
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj48158
                                                              '12
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop~MOP-2#class-type-info::t
                                                            __obj48158
                                                            'predicate))))
                                                    (__tmp48616
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt37682_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48617 __tmp48616)))
                                             (__tmp48612
                                              (let ((__tmp48614
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body37464_
                                                        _info37680_
                                                        _tgt37682_
                                                        _L37788_
                                                        _K37684_
                                                        _E37685_)))
                                                    (__tmp48613
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E37685_ '()))))
                                                (declare (not safe))
                                                (cons __tmp48614 __tmp48613))))
                                         (declare (not safe))
                                         (cons __tmp48615 __tmp48612))))
                                 (declare (not safe))
                                 (cons 'if __tmp48611))))
                            (___kont4740947410_
                             (lambda (_L37742_)
                               (let ((__tmp48618
                                      (let ((__tmp48622
                                             (let ((__tmp48624
                                                    (let ((__obj48159
                                                           _info37680_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj48159
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj48159
                                                             '12
                                                             gerbil/core/mop~MOP-2#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj48159
                                                           'predicate))))
                                                   (__tmp48623
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt37682_ '()))))
                                               (declare (not safe))
                                               (cons __tmp48624 __tmp48623)))
                                            (__tmp48619
                                             (let ((__tmp48621
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector37462_
                                                       _tgt37682_
                                                       _L37742_
                                                       'struct->list
                                                       _K37684_
                                                       _E37685_)))
                                                   (__tmp48620
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E37685_ '()))))
                                               (declare (not safe))
                                               (cons __tmp48621 __tmp48620))))
                                        (declare (not safe))
                                        (cons __tmp48622 __tmp48619))))
                                 (declare (not safe))
                                 (cons 'if __tmp48618)))))
                        (if (gx#stx-pair? ___stx4740447405_)
                            (let ((_e3769337764_
                                   (gx#syntax-e ___stx4740447405_)))
                              (let ((_tl3769137771_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3769337764_)))
                                    (_hd3769237768_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3769337764_))))
                                (if (gx#stx-datum? _hd3769237768_)
                                    (let ((_e3769437774_
                                           (gx#stx-e _hd3769237768_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3769437774_ 'simple:))
                                          (if (gx#stx-pair? _tl3769137771_)
                                              (let ((_e3769737778_
                                                     (gx#syntax-e
                                                      _tl3769137771_)))
                                                (let ((_tl3769537785_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3769737778_)))
                                                      (_hd3769637782_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3769737778_))))
                                                  (if (gx#stx-null?
                                                       _tl3769537785_)
                                                      (___kont4740747408_
                                                       _hd3769637782_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3768837711_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3768837711_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3769437774_ 'list:))
                                              (if (gx#stx-pair? _tl3769137771_)
                                                  (let ((_e3770537732_
                                                         (gx#syntax-e
                                                          _tl3769137771_)))
                                                    (let ((_tl3770337739_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3770537732_)))
                                                          (_hd3770437736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3770537732_))))
                                                      (if (gx#stx-null?
                                                           _tl3770337739_)
                                                          (___kont4740947410_
                                                           _hd3770437736_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3768837711_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3768837711_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3768837711_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3768837711_)))))
                            (let () (declare (not safe)) (_g3768837711_)))))))
                 (_generate-simple-struct-body37464_
                  (lambda (_info37600_
                           _tgt37602_
                           _body37603_
                           _K37604_
                           _E37605_)
                    (let _recur37607_ ((_rest37610_ _body37603_)
                                       (_fields37612_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors37465_
                                           _info37600_))))
                      (let* ((___stx4745447455_ _rest37610_)
                             (_g3761537627_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4745447455_))))
                        (let ((___kont4745747458_
                               (lambda (_L37655_ _L37657_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields37612_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx37451_
                                      _info37600_
                                      (let ((__obj48160 _info37600_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj48160
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj48160
                                               '2
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj48160
                                             'name))))
                                     (let ((_$tgt37672_ (gx#genident 'e))
                                           (_getf37674_ (car _fields37612_)))
                                       (let ((__tmp48625
                                              (let ((__tmp48630
                                                     (let ((__tmp48631
                                                            (let ((__tmp48632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48633
                                  (let ((__tmp48634
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt37602_ '()))))
                                    (declare (not safe))
                                    (cons _getf37674_ __tmp48634))))
                             (declare (not safe))
                             (cons __tmp48633 '()))))
                      (declare (not safe))
                      (cons _$tgt37672_ __tmp48632))))
               (declare (not safe))
               (cons __tmp48631 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp48626
                                                     (let ((__tmp48627
                                                            (let ((__tmp48628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48629 (cdr _fields37612_)))
                             (declare (not safe))
                             (_recur37607_ _L37655_ __tmp48629))))
                      (declare (not safe))
                      (_generate137458_
                       _$tgt37672_
                       _L37657_
                       __tmp48628
                       _E37605_))))
               (declare (not safe))
               (cons __tmp48627 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48630 __tmp48626))))
                                         (declare (not safe))
                                         (cons 'let __tmp48625))))))
                              (___kont4745947460_ (lambda () _K37604_)))
                          (if (gx#stx-pair? ___stx4745447455_)
                              (let ((_e3762137645_
                                     (gx#syntax-e ___stx4745447455_)))
                                (let ((_tl3761937652_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3762137645_)))
                                      (_hd3762037649_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3762137645_))))
                                  (___kont4745747458_
                                   _tl3761937652_
                                   _hd3762037649_)))
                              (___kont4745947460_)))))))
                 (_struct-field-accessors37465_
                  (lambda (_info37581_)
                    (let _recur37584_ ((_next37587_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info37581_ '()))))
                      (if (let () (declare (not safe)) (null? _next37587_))
                          '()
                          (let ((_ti37590_ (car _next37587_)))
                            (append (let ((__tmp48635
                                           (map gx#syntax-local-value
                                                (let ((__obj48161 _ti37590_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj48161
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj48161
                                                         '3
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core/mop~MOP-2#class-type-info::t
                                                       __obj48161
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur37584_ __tmp48635))
                                    (map (lambda (_slot37593_)
                                           (let ((_$e37596_
                                                  (let ((__tmp48636
                                                         (let ((__obj48162
                                                                _ti37590_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj48162
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj48162
                          '15
                          gerbil/core/mop~MOP-2#class-type-info::t
                          '#f))
                       (class-slot-ref
                        gerbil/core/mop~MOP-2#class-type-info::t
                        __obj48162
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (assgetq__0
                                                     _slot37593_
                                                     __tmp48636))))
                                             (if _$e37596_
                                                 _$e37596_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx37451_
                                                  _info37581_
                                                  _slot37593_))))
                                         (let ((__obj48163 _ti37590_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj48163
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj48163
                                                  '4
                                                  gerbil/core/mop~MOP-2#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj48163
                                                'slots))))))))))
                 (_generate-class37466_
                  (lambda (_info37574_
                           _tgt37576_
                           _body37577_
                           _K37578_
                           _E37579_)
                    (let ((__tmp48637
                           (let ((__tmp48641
                                  (let ((__tmp48643
                                         (let ((__obj48164 _info37574_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj48164
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj48164
                                                  '12
                                                  gerbil/core/mop~MOP-2#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj48164
                                                'predicate))))
                                        (__tmp48642
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt37576_ '()))))
                                    (declare (not safe))
                                    (cons __tmp48643 __tmp48642)))
                                 (__tmp48638
                                  (let ((__tmp48640
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body37467_
                                            _info37574_
                                            _tgt37576_
                                            _body37577_
                                            _K37578_
                                            _E37579_)))
                                        (__tmp48639
                                         (let ()
                                           (declare (not safe))
                                           (cons _E37579_ '()))))
                                    (declare (not safe))
                                    (cons __tmp48640 __tmp48639))))
                             (declare (not safe))
                             (cons __tmp48641 __tmp48638))))
                      (declare (not safe))
                      (cons 'if __tmp48637))))
                 (_generate-class-body37467_
                  (lambda (_info37469_
                           _tgt37471_
                           _body37472_
                           _K37473_
                           _E37474_)
                    (let _recur37476_ ((_rest37479_ _body37472_))
                      (let* ((___stx4747047471_ _rest37479_)
                             (_g3748337499_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4747047471_))))
                        (let ((___kont4747347474_
                               (lambda (_L37537_ _L37539_ _L37540_)
                                 (let ((_$e37560_
                                        (let ((__tmp48645
                                               (string->symbol
                                                (keyword->string
                                                 (gx#stx-e _L37540_))))
                                              (__tmp48644
                                               (let ((__obj48165 _info37469_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj48165
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj48165
                                                        '15
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj48165
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (assgetq__0 __tmp48645 __tmp48644))))
                                   (if _$e37560_
                                       ((lambda (_getf37564_)
                                          (let* ((_$tgt37567_ (gx#genident 'e))
                                                 (__tmp48646
                                                  (let ((__tmp48650
                                                         (let ((__tmp48651
                                                                (let ((__tmp48652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp48653
                                      (let ((__tmp48654
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt37471_ '()))))
                                        (declare (not safe))
                                        (cons _getf37564_ __tmp48654))))
                                 (declare (not safe))
                                 (cons __tmp48653 '()))))
                          (declare (not safe))
                          (cons _$tgt37567_ __tmp48652))))
                   (declare (not safe))
                   (cons __tmp48651 '())))
                (__tmp48647
                 (let ((__tmp48648
                        (let ((__tmp48649
                               (let ()
                                 (declare (not safe))
                                 (_recur37476_ _L37537_))))
                          (declare (not safe))
                          (_generate137458_
                           _$tgt37567_
                           _L37539_
                           __tmp48649
                           _E37474_))))
                   (declare (not safe))
                   (cons __tmp48648 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48650
                                                          __tmp48647))))
                                            (declare (not safe))
                                            (cons 'let __tmp48646)))
                                        _$e37560_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx37451_
                                        _info37469_
                                        _L37540_)))))
                              (___kont4747547476_ (lambda () _K37473_)))
                          (if (gx#stx-pair? ___stx4747047471_)
                              (let ((_e3749037517_
                                     (gx#syntax-e ___stx4747047471_)))
                                (let ((_tl3748837524_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3749037517_)))
                                      (_hd3748937521_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3749037517_))))
                                  (if (gx#stx-pair? _tl3748837524_)
                                      (let ((_e3749337527_
                                             (gx#syntax-e _tl3748837524_)))
                                        (let ((_tl3749137534_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3749337527_)))
                                              (_hd3749237531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3749337527_))))
                                          (___kont4747347474_
                                           _tl3749137534_
                                           _hd3749237531_
                                           _hd3748937521_)))
                                      (___kont4747547476_))))
                              (___kont4747547476_))))))))
          (let ()
            (declare (not safe))
            (_generate137458_ _tgt37453_ _ptree37454_ _K37455_ _E37456_)))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_stx36347_ _tgt-lst36349_ _clauses36350_)
        (letrec ((_parse-body36352_
                  (lambda (_hd-len37273_)
                    (let _lp37276_ ((_rest37279_ _clauses36350_)
                                    (_r37281_ '()))
                      (let* ((___stx4752047521_ _rest37279_)
                             (_g3728437296_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4752047521_))))
                        (let ((___kont4752347524_
                               (lambda (_L37324_ _L37326_)
                                 (let* ((___stx4749247493_ _L37326_)
                                        (_g3734337359_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4749247493_))))
                                   (let ((___kont4749547496_
                                          (lambda (_L37428_)
                                            (if (gx#stx-null? _L37324_)
                                                (let ((__tmp48655
                                                       (let ((__tmp48660
                                                              (gx#genident
                                                               'else))
                                                             (__tmp48656
                                                              (let ((__tmp48657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp48658
                                    (gx#stx-wrap-source
                                     (let ((__tmp48659
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp48659 _L37428_))
                                     (let ((_$e37439_
                                            (gx#stx-source _L37326_)))
                                       (if _$e37439_
                                           _$e37439_
                                           (gx#stx-source _stx36347_))))))
                               (declare (not safe))
                               (cons __tmp48658 '()))))
                        (declare (not safe))
                        (cons '#f __tmp48657))))
                 (declare (not safe))
                 (cons __tmp48660 __tmp48656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48655 _r37281_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx36347_
                                                 _L37326_))))
                                         (___kont4749747498_
                                          (lambda (_L37387_ _L37389_)
                                            (let ((__tmp48661
                                                   (let ((__tmp48662
                                                          (let ((__tmp48668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp48663
                         (let ((__tmp48667
                                (gx#stx-map
                                 (lambda (_g3740137403_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/match[1]#parse-match-pattern__%|
                                      _g3740137403_
                                      _stx36347_)))
                                 _L37389_))
                               (__tmp48664
                                (let ((__tmp48665
                                       (gx#stx-wrap-source
                                        (let ((__tmp48666
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp48666 _L37387_))
                                        (let ((_$e37407_
                                               (gx#stx-source _L37326_)))
                                          (if _$e37407_
                                              _$e37407_
                                              (gx#stx-source _stx36347_))))))
                                  (declare (not safe))
                                  (cons __tmp48665 '()))))
                           (declare (not safe))
                           (cons __tmp48667 __tmp48664))))
                    (declare (not safe))
                    (cons __tmp48668 __tmp48663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48662
                                                           _r37281_))))
                                              (declare (not safe))
                                              (_lp37276_
                                               _L37324_
                                               __tmp48661))))
                                         (___kont4749947500_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx36347_
                                             _L37326_))))
                                     (let* ((___match4751747518_
                                             (lambda (_e3735337377_
                                                      _hd3735237381_
                                                      _tl3735137384_)
                                               (let ((_L37387_ _tl3735137384_)
                                                     (_L37389_ _hd3735237381_))
                                                 (if (and (gx#stx-list?
                                                           _L37389_)
                                                          (fx= (gx#stx-length
                                                                _L37389_)
                                                               _hd-len37273_)
                                                          (gx#stx-list?
                                                           _L37387_)
                                                          (let ((__tmp48669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L37387_)))
                    (declare (not safe))
                    (not __tmp48669)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4749747498_
                                                      _L37387_
                                                      _L37389_)
                                                     (___kont4749947500_)))))
                                            (___match4751147512_
                                             (lambda (_e3734837418_
                                                      _hd3734737422_
                                                      _tl3734637425_)
                                               (let ((_L37428_ _tl3734637425_))
                                                 (if (and (gx#stx-list?
                                                           _L37428_)
                                                          (let ((__tmp48670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L37428_)))
                    (declare (not safe))
                    (not __tmp48670)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4749547496_
                                                      _L37428_)
                                                     (___match4751747518_
                                                      _e3734837418_
                                                      _hd3734737422_
                                                      _tl3734637425_))))))
                                       (if (gx#stx-pair? ___stx4749247493_)
                                           (let ((_e3734837418_
                                                  (gx#syntax-e
                                                   ___stx4749247493_)))
                                             (let ((_tl3734637425_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3734837418_)))
                                                   (_hd3734737422_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3734837418_))))
                                               (if (gx#identifier?
                                                    _hd3734737422_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g48671_|
                                                        _hd3734737422_)
                                                       (___match4751147512_
                                                        _e3734837418_
                                                        _hd3734737422_
                                                        _tl3734637425_)
                                                       (___match4751747518_
                                                        _e3734837418_
                                                        _hd3734737422_
                                                        _tl3734637425_))
                                                   (___match4751747518_
                                                    _e3734837418_
                                                    _hd3734737422_
                                                    _tl3734637425_))))
                                           (___kont4749947500_)))))))
                              (___kont4752547526_ (lambda () _r37281_)))
                          (if (gx#stx-pair? ___stx4752047521_)
                              (let ((_e3729037314_
                                     (gx#syntax-e ___stx4752047521_)))
                                (let ((_tl3728837321_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3729037314_)))
                                      (_hd3728937318_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3729037314_))))
                                  (___kont4752347524_
                                   _tl3728837321_
                                   _hd3728937318_)))
                              (___kont4752547526_)))))))
                 (_generate-body36354_
                  (lambda (_body37058_)
                    (let* ((_g3706137069_
                            (lambda (_g3706237065_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3706237065_)))
                           (_g3706037269_
                            (lambda (_g3706237073_)
                              ((lambda (_L37076_)
                                 (let ()
                                   (let* ((_g3708837105_
                                           (lambda (_g3708937101_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3708937101_)))
                                          (_g3708737265_
                                           (lambda (_g3708937109_)
                                             (if (gx#stx-pair/null?
                                                  _g3708937109_)
                                                 (let ((_g48672_
                                                        (gx#syntax-split-splice
                                                         _g3708937109_
                                                         '0)))
                                                   (begin
                                                     (let ((_g48673_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g48672_)
                          (##vector-length _g48672_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g48673_ 2)))
                   (error "Context expects 2 values" _g48673_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3709137112_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g48672_
                                                               0)))
                                                           (_tl3709337115_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g48672_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl3709337115_)
                                                           (letrec ((_loop3709437118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3709237122_ _target3709837125_)
                               (if (gx#stx-pair? _hd3709237122_)
                                   (let ((_e3709537128_
                                          (gx#syntax-e _hd3709237122_)))
                                     (let ((_lp-hd3709637132_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3709537128_)))
                                           (_lp-tl3709737135_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3709537128_))))
                                       (let ((__tmp48696
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd3709637132_
                                                      _target3709837125_))))
                                         (declare (not safe))
                                         (_loop3709437118_
                                          _lp-tl3709737135_
                                          __tmp48696))))
                                   (let ((_target3709937138_
                                          (reverse _target3709837125_)))
                                     ((lambda (_L37142_)
                                        (let ()
                                          (let* ((_g3715937167_
                                                  (lambda (_g3716037163_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3716037163_)))
                                                 (_g3715837253_
                                                  (lambda (_g3716037171_)
                                                    ((lambda (_L37174_)
                                                       (let ()
                                                         (let* ((_g3718737195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3718837191_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3718837191_)))
                        (_g3718637249_
                         (lambda (_g3718837199_)
                           ((lambda (_L37202_)
                              (let ()
                                (let* ((_g3721537223_
                                        (lambda (_g3721637219_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3721637219_)))
                                       (_g3721437245_
                                        (lambda (_g3721637227_)
                                          ((lambda (_L37230_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp48677
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp48674
                                                        (let ((__tmp48676
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp48675
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L37230_ '()))))
                  (declare (not safe))
                  (cons __tmp48676 __tmp48675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48677
                                                         __tmp48674)))))
                                           _g3721637227_)))
                                       (__tmp48678
                                        (gx#stx-wrap-source
                                         (let ((__tmp48684
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp48679
                                                (let ((__tmp48681
                                                       (let ((__tmp48682
                                                              (let ((__tmp48683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L37174_ '()))))
                        (declare (not safe))
                        (cons _L37076_ __tmp48683))))
                 (declare (not safe))
                 (cons __tmp48682 '())))
              (__tmp48680 (let () (declare (not safe)) (cons _L37202_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48681
                                                        __tmp48680))))
                                           (declare (not safe))
                                           (cons __tmp48684 __tmp48679))
                                         (gx#stx-source _stx36347_))))
                                  (declare (not safe))
                                  (_g3721437245_ __tmp48678))))
                            _g3718837199_)))
                        (__tmp48685
                         (let ((__tmp48686
                                (let ()
                                  (declare (not safe))
                                  (cons _L37076_ '()))))
                           (declare (not safe))
                           (_generate-clauses36355_ _body37058_ __tmp48686))))
                   (declare (not safe))
                   (_g3718637249_ __tmp48685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3716037171_)))
                                                 (__tmp48687
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp48695
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp48688
                                                          (let ((__tmp48689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48690
                                (let ((__tmp48694
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp48691
                                       (let ((__tmp48692
                                              (let ((__tmp48693
                                                     (lambda (_g3725637259_
                                                              _g3725737262_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g3725637259_
                                                               _g3725737262_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp48693
                                                        '()
                                                        _L37142_))))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp48692))))
                                  (declare (not safe))
                                  (cons __tmp48694 __tmp48691))))
                           (declare (not safe))
                           (cons __tmp48690 '()))))
                    (declare (not safe))
                    (cons '() __tmp48689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48695
                                                           __tmp48688))
                                                   (gx#stx-source
                                                    _stx36347_))))
                                            (declare (not safe))
                                            (_g3715837253_ __tmp48687))))
                                      _target3709937138_))))))
                     (let ()
                       (declare (not safe))
                       (_loop3709437118_ _target3709137112_ '())))
                   (let ()
                     (declare (not safe))
                     (_g3708837105_ _g3708937109_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3708837105_
                                                    _g3708937109_))))))
                                     (declare (not safe))
                                     (_g3708737265_ _tgt-lst36349_))))
                               _g3706237073_)))
                           (__tmp48697 (gx#genident 'E)))
                      (declare (not safe))
                      (_g3706037269_ __tmp48697))))
                 (_generate-clauses36355_
                  (lambda (_rest36710_ _E36712_)
                    (let* ((___stx4753647537_ _rest36710_)
                           (_g3671636732_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4753647537_))))
                      (let ((___kont4753947540_
                             (lambda (_L36966_)
                               (let* ((_g3697736995_
                                       (lambda (_g3697836991_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3697836991_)))
                                      (_g3697637050_
                                       (lambda (_g3697836999_)
                                         (if (gx#stx-pair? _g3697836999_)
                                             (let ((_e3698337002_
                                                    (gx#syntax-e
                                                     _g3697836999_)))
                                               (let ((_hd3698237006_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3698337002_)))
                                                     (_tl3698137009_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3698337002_))))
                                                 (if (gx#stx-pair?
                                                      _tl3698137009_)
                                                     (let ((_e3698637012_
                                                            (gx#syntax-e
                                                             _tl3698137009_)))
                                                       (let ((_hd3698537016_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3698637012_)))
                     (_tl3698437019_
                      (let () (declare (not safe)) (##cdr _e3698637012_))))
                 (if (gx#stx-pair? _tl3698437019_)
                     (let ((_e3698937022_ (gx#syntax-e _tl3698437019_)))
                       (let ((_hd3698837026_
                              (let ()
                                (declare (not safe))
                                (##car _e3698937022_)))
                             (_tl3698737029_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3698937022_))))
                         (if (gx#stx-null? _tl3698737029_)
                             ((lambda (_L37032_ _L37034_)
                                (let ((__tmp48698
                                       (let ((__tmp48699
                                              (let ((__tmp48700
                                                     (if (gx#stx-e _L37034_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate136356_
                                                            _L37034_
                                                            _L37032_
                                                            _E36712_))
                                                         _L37032_)))
                                                (declare (not safe))
                                                (cons __tmp48700 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp48699))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp48698)))
                              _hd3698837026_
                              _hd3698537016_)
                             (let ()
                               (declare (not safe))
                               (_g3697736995_ _g3697836999_)))))
                     (let ()
                       (declare (not safe))
                       (_g3697736995_ _g3697836999_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3697736995_
                                                        _g3697836999_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3697736995_
                                                _g3697836999_))))))
                                 (declare (not safe))
                                 (_g3697637050_ _L36966_))))
                            (___kont4754147542_
                             (lambda (_L36760_ _L36762_)
                               (let* ((_g3677536794_
                                       (lambda (_g3677636790_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3677636790_)))
                                      (_g3677436945_
                                       (lambda (_g3677636798_)
                                         (if (gx#stx-pair? _g3677636798_)
                                             (let ((_e3678236801_
                                                    (gx#syntax-e
                                                     _g3677636798_)))
                                               (let ((_hd3678136805_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3678236801_)))
                                                     (_tl3678036808_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3678236801_))))
                                                 (if (gx#stx-pair?
                                                      _tl3678036808_)
                                                     (let ((_e3678536811_
                                                            (gx#syntax-e
                                                             _tl3678036808_)))
                                                       (let ((_hd3678436815_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3678536811_)))
                     (_tl3678336818_
                      (let () (declare (not safe)) (##cdr _e3678536811_))))
                 (if (gx#stx-pair? _tl3678336818_)
                     (let ((_e3678836821_ (gx#syntax-e _tl3678336818_)))
                       (let ((_hd3678736825_
                              (let ()
                                (declare (not safe))
                                (##car _e3678836821_)))
                             (_tl3678636828_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3678836821_))))
                         (if (gx#stx-null? _tl3678636828_)
                             ((lambda (_L36831_ _L36833_ _L36834_)
                                (if (gx#stx-e _L36833_)
                                    (let* ((_g3685136866_
                                            (lambda (_g3685236862_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3685236862_)))
                                           (_g3685036911_
                                            (lambda (_g3685236870_)
                                              (if (gx#stx-pair? _g3685236870_)
                                                  (let ((_e3685736873_
                                                         (gx#syntax-e
                                                          _g3685236870_)))
                                                    (let ((_hd3685636877_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3685736873_)))
                                                          (_tl3685536880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3685736873_))))
                                                      (if (gx#stx-pair?
                                                           _tl3685536880_)
                                                          (let ((_e3686036883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3685536880_)))
                    (let ((_hd3685936887_
                           (let () (declare (not safe)) (##car _e3686036883_)))
                          (_tl3685836890_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3686036883_))))
                      (if (gx#stx-null? _tl3685836890_)
                          ((lambda (_L36893_ _L36895_)
                             (let ()
                               (let ((__tmp48727 (gx#datum->syntax '#f 'let))
                                     (__tmp48718
                                      (let ((__tmp48720
                                             (let ((__tmp48721
                                                    (let ((__tmp48722
                                                           (let ((__tmp48723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48726 (gx#datum->syntax '#f 'lambda))
                                (__tmp48724
                                 (let ((__tmp48725
                                        (let ()
                                          (declare (not safe))
                                          (cons _L36895_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp48725))))
                            (declare (not safe))
                            (cons __tmp48726 __tmp48724))))
                     (declare (not safe))
                     (cons __tmp48723 '()))))
              (declare (not safe))
              (cons _L36834_ __tmp48722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48721 '())))
                                            (__tmp48719
                                             (let ()
                                               (declare (not safe))
                                               (cons _L36893_ '()))))
                                        (declare (not safe))
                                        (cons __tmp48720 __tmp48719))))
                                 (declare (not safe))
                                 (cons __tmp48727 __tmp48718))))
                           _hd3685936887_
                           _hd3685636877_)
                          (let ()
                            (declare (not safe))
                            (_g3685136866_ _g3685236870_)))))
                  (let ()
                    (declare (not safe))
                    (_g3685136866_ _g3685236870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3685136866_
                                                     _g3685236870_)))))
                                           (__tmp48728
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate136356_
                                                     _L36833_
                                                     _L36831_
                                                     _E36712_))
                                                  (let ((__tmp48729
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L36834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses36355_
                                                     _L36760_
                                                     __tmp48729)))))
                                      (declare (not safe))
                                      (_g3685036911_ __tmp48728))
                                    (let* ((_g3691536923_
                                            (lambda (_g3691636919_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3691636919_)))
                                           (_g3691436941_
                                            (lambda (_g3691636927_)
                                              ((lambda (_L36930_)
                                                 (let ()
                                                   (let ((__tmp48715
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp48701
                                                          (let ((__tmp48703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48704
                                (let ((__tmp48705
                                       (let ((__tmp48706
                                              (let ((__tmp48714
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp48707
                                                     (let ((__tmp48713
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp48708
                                                            (let ((__tmp48709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48712 (gx#datum->syntax '#f 'lambda))
                                 (__tmp48710
                                  (let ((__tmp48711
                                         (let ()
                                           (declare (not safe))
                                           (cons _L36831_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp48711))))
                             (declare (not safe))
                             (cons __tmp48712 __tmp48710))))
                      (declare (not safe))
                      (cons __tmp48709 '()))))
               (declare (not safe))
               (cons __tmp48713 __tmp48708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48714 __tmp48707))))
                                         (declare (not safe))
                                         (cons __tmp48706 '()))))
                                  (declare (not safe))
                                  (cons _L36834_ __tmp48705))))
                           (declare (not safe))
                           (cons __tmp48704 '())))
                        (__tmp48702
                         (let () (declare (not safe)) (cons _L36930_ '()))))
                    (declare (not safe))
                    (cons __tmp48703 __tmp48702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48715
                                                           __tmp48701))))
                                               _g3691636927_)))
                                           (__tmp48716
                                            (let ((__tmp48717
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L36834_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses36355_
                                               _L36760_
                                               __tmp48717))))
                                      (declare (not safe))
                                      (_g3691436941_ __tmp48716))))
                              _hd3678736825_
                              _hd3678436815_
                              _hd3678136805_)
                             (let ()
                               (declare (not safe))
                               (_g3677536794_ _g3677636798_)))))
                     (let ()
                       (declare (not safe))
                       (_g3677536794_ _g3677636798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3677536794_
                                                        _g3677636798_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3677536794_
                                                _g3677636798_))))))
                                 (declare (not safe))
                                 (_g3677436945_ _L36762_))))
                            (___kont4754347544_
                             (lambda ()
                               (let ((__tmp48730
                                      (let ((__tmp48731
                                             (let ()
                                               (declare (not safe))
                                               (cons _E36712_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp48731))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp48730)))))
                        (if (gx#stx-pair? ___stx4753647537_)
                            (let ((_e3672136956_
                                   (gx#syntax-e ___stx4753647537_)))
                              (let ((_tl3671936963_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3672136956_)))
                                    (_hd3672036960_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3672136956_))))
                                (if (gx#stx-null? _tl3671936963_)
                                    (___kont4753947540_ _hd3672036960_)
                                    (___kont4754147542_
                                     _tl3671936963_
                                     _hd3672036960_))))
                            (___kont4754347544_))))))
                 (_generate136356_
                  (lambda (_clause36358_ _body36360_ _E36361_)
                    (let* ((_g3636336387_
                            (lambda (_g3636436383_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3636436383_)))
                           (_g3636236706_
                            (lambda (_g3636436391_)
                              (if (gx#stx-pair? _g3636436391_)
                                  (let ((_e3636936394_
                                         (gx#syntax-e _g3636436391_)))
                                    (let ((_hd3636836398_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3636936394_)))
                                          (_tl3636736401_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3636936394_))))
                                      (if (gx#stx-pair? _tl3636736401_)
                                          (let ((_e3637236404_
                                                 (gx#syntax-e _tl3636736401_)))
                                            (let ((_hd3637136408_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3637236404_)))
                                                  (_tl3637036411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3637236404_))))
                                              (if (gx#stx-pair/null?
                                                   _hd3637136408_)
                                                  (let ((_g48732_
                                                         (gx#syntax-split-splice
                                                          _hd3637136408_
                                                          '0)))
                                                    (begin
                                                      (let ((_g48733_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g48732_)
                           (##vector-length _g48732_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g48733_ 2)))
                    (error "Context expects 2 values" _g48733_)))
              (let ((_target3637336414_
                     (let () (declare (not safe)) (##vector-ref _g48732_ 0)))
                    (_tl3637536417_
                     (let () (declare (not safe)) (##vector-ref _g48732_ 1))))
                (if (gx#stx-null? _tl3637536417_)
                    (letrec ((_loop3637636420_
                              (lambda (_hd3637436424_ _var3638036427_)
                                (if (gx#stx-pair? _hd3637436424_)
                                    (let ((_e3637736430_
                                           (gx#syntax-e _hd3637436424_)))
                                      (let ((_lp-hd3637836434_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3637736430_)))
                                            (_lp-tl3637936437_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3637736430_))))
                                        (let ((__tmp48750
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd3637836434_
                                                       _var3638036427_))))
                                          (declare (not safe))
                                          (_loop3637636420_
                                           _lp-tl3637936437_
                                           __tmp48750))))
                                    (let ((_var3638136440_
                                           (reverse _var3638036427_)))
                                      (if (gx#stx-null? _tl3637036411_)
                                          ((lambda (_L36444_ _L36446_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp48734
                                                       (lambda (_g3646736470_
                                                                _g3646836473_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g3646736470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3646836473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp48734
                                                          '()
                                                          _L36444_))
                                                _stx36347_)
                                               (let* ((_g3647636484_
                                                       (lambda (_g3647736480_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3647736480_)))
                                                      (_g3647536578_
                                                       (lambda (_g3647736488_)
                                                         ((lambda (_L36491_)
                                                            (let ()
                                                              (let* ((_g3650436512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3650536508_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3650536508_)))
                             (_g3650336574_
                              (lambda (_g3650536516_)
                                ((lambda (_L36519_)
                                   (let ()
                                     (let* ((_g3653236540_
                                             (lambda (_g3653336536_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3653336536_)))
                                            (_g3653136562_
                                             (lambda (_g3653336544_)
                                               ((lambda (_L36547_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp48739
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp48735
                                                              (let ((__tmp48737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp48738
                                    (let ()
                                      (declare (not safe))
                                      (cons _L36547_ '()))))
                               (declare (not safe))
                               (cons _L36446_ __tmp48738)))
                            (__tmp48736
                             (let ()
                               (declare (not safe))
                               (cons _L36491_ '()))))
                        (declare (not safe))
                        (cons __tmp48737 __tmp48736))))
                 (declare (not safe))
                 (cons __tmp48739 __tmp48735))
               (gx#stx-source _stx36347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3653336544_)))
                                            (__tmp48740
                                             (gx#stx-wrap-source
                                              (let ((__tmp48745
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp48741
                                                     (let ((__tmp48743
                                                            (let ((__tmp48744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g3656536568_ _g3656636571_)
                             (let ()
                               (declare (not safe))
                               (cons _g3656536568_ _g3656636571_)))))
                      (declare (not safe))
                      (foldr1 __tmp48744 '() _L36444_)))
                   (__tmp48742
                    (let () (declare (not safe)) (cons _L36519_ '()))))
               (declare (not safe))
               (cons __tmp48743 __tmp48742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48745 __tmp48741))
                                              (gx#stx-source _stx36347_))))
                                       (declare (not safe))
                                       (_g3653136562_ __tmp48740))))
                                 _g3650536516_))))
                        (declare (not safe))
                        (_g3650336574_ _body36360_))))
                  _g3647736488_)))
              (__tmp48746
               (let _recur36582_ ((_rest36585_ _clause36358_)
                                  (_rest-targets36587_ _tgt-lst36349_))
                 (let* ((___stx4756247563_ _rest36585_)
                        (_g3659036602_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4756247563_))))
                   (let ((___kont4756547566_
                          (lambda (_L36638_ _L36640_)
                            (let* ((_g3665536667_
                                    (lambda (_g3665636663_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g3665636663_)))
                                   (_g3665436698_
                                    (lambda (_g3665636671_)
                                      (if (gx#stx-pair? _g3665636671_)
                                          (let ((_e3666136674_
                                                 (gx#syntax-e _g3665636671_)))
                                            (let ((_hd3666036678_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3666136674_)))
                                                  (_tl3665936681_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3666136674_))))
                                              ((lambda (_L36684_ _L36686_)
                                                 (let ((__tmp48747
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur36582_
                                                           _L36638_
                                                           _L36684_))))
                                                   (declare (not safe))
                                                   (|gerbil/core/match[1]#generate-match1|
                                                    _stx36347_
                                                    _L36686_
                                                    _L36640_
                                                    __tmp48747
                                                    _E36361_)))
                                               _tl3665936681_
                                               _hd3666036678_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3665536667_ _g3665636671_))))))
                              (declare (not safe))
                              (_g3665436698_ _rest-targets36587_))))
                         (___kont4756747568_
                          (lambda ()
                            (let ((__tmp48748
                                   (let ((__tmp48749
                                          (lambda (_g3661236615_ _g3661336618_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3661236615_
                                                    _g3661336618_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp48749 '() _L36444_))))
                              (declare (not safe))
                              (cons _L36446_ __tmp48748)))))
                     (if (gx#stx-pair? ___stx4756247563_)
                         (let ((_e3659636628_ (gx#syntax-e ___stx4756247563_)))
                           (let ((_tl3659436635_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3659636628_)))
                                 (_hd3659536632_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3659636628_))))
                             (___kont4756547566_
                              _tl3659436635_
                              _hd3659536632_)))
                         (___kont4756747568_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g3647536578_ __tmp48746))))
                                           _var3638136440_
                                           _hd3636836398_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3636336387_
                                             _g3636436391_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop3637636420_ _target3637336414_ '())))
                    (let ()
                      (declare (not safe))
                      (_g3636336387_ _g3636436391_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3636336387_
                                                     _g3636436391_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3636336387_ _g3636436391_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3636336387_ _g3636436391_)))))
                           (__tmp48751
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core/match[1]#match-pattern-vars|
                                              _clause36358_)))))
                      (declare (not safe))
                      (_g3636236706_ __tmp48751)))))
          (let ((__tmp48752
                 (let ((__tmp48753 (gx#stx-length _tgt-lst36349_)))
                   (declare (not safe))
                   (_parse-body36352_ __tmp48753))))
            (declare (not safe))
            (_generate-body36354_ __tmp48752)))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_stx36249_ _tgt36251_ _clauses36252_)
        (letrec ((_reclause36254_
                  (lambda (_clause36257_)
                    (let* ((___stx4757847579_ _clause36257_)
                           (_g3626236277_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4757847579_))))
                      (let ((___kont4758147582_ (lambda () _clause36257_))
                            (___kont4758347584_
                             (lambda (_L36305_ _L36307_)
                               (gx#stx-wrap-source
                                (let ((__tmp48754
                                       (let ()
                                         (declare (not safe))
                                         (cons _L36307_ '()))))
                                  (declare (not safe))
                                  (cons __tmp48754 _L36305_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4758547586_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx36249_
                                _clause36257_))))
                        (if (gx#stx-pair? ___stx4757847579_)
                            (let ((_e3626636329_
                                   (gx#syntax-e ___stx4757847579_)))
                              (let ((_tl3626436336_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3626636329_)))
                                    (_hd3626536333_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3626636329_))))
                                (if (gx#identifier? _hd3626536333_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g48755_|
                                         _hd3626536333_)
                                        (___kont4758147582_)
                                        (___kont4758347584_
                                         _tl3626436336_
                                         _hd3626536333_))
                                    (___kont4758347584_
                                     _tl3626436336_
                                     _hd3626536333_))))
                            (___kont4758547586_)))))))
          (let ((__tmp48757
                 (let () (declare (not safe)) (cons _tgt36251_ '())))
                (__tmp48756 (gx#stx-map _reclause36254_ _clauses36252_)))
            (declare (not safe))
            (|gerbil/core/match[1]#generate-match*|
             _stx36249_
             __tmp48757
             __tmp48756)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_stx43479_)
        (let* ((___stx4760647607_ _stx43479_)
               (_g4348443513_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4760647607_))))
          (let ((___kont4760947610_
                 (lambda (_L43753_)
                   (let* ((_g4376643774_
                           (lambda (_g4376743770_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4376743770_)))
                          (_g4376543827_
                           (lambda (_g4376743778_)
                             ((lambda (_L43781_)
                                (let ()
                                  (let* ((_g4379343801_
                                          (lambda (_g4379443797_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4379443797_)))
                                         (_g4379243823_
                                          (lambda (_g4379443805_)
                                            ((lambda (_L43808_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp48761
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp48758
                                                          (let ((__tmp48760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L43781_ '())))
                        (__tmp48759
                         (let () (declare (not safe)) (cons _L43808_ '()))))
                    (declare (not safe))
                    (cons __tmp48760 __tmp48759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48761
                                                           __tmp48758)))))
                                             _g4379443805_))))
                                    (_g4379243823_
                                     (gx#stx-wrap-source
                                      (let ((__tmp48763
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp48762
                                             (let ()
                                               (declare (not safe))
                                               (cons _L43781_ _L43753_))))
                                        (declare (not safe))
                                        (cons __tmp48763 __tmp48762))
                                      (gx#stx-source _stx43479_))))))
                              _g4376743778_))))
                     (_g4376543827_ (gx#genident 'e)))))
                (___kont4761147612_
                 (lambda (_L43648_)
                   (let* ((_g4366143669_
                           (lambda (_g4366243665_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4366243665_)))
                          (_g4366043722_
                           (lambda (_g4366243673_)
                             ((lambda (_L43676_)
                                (let ()
                                  (let* ((_g4368843696_
                                          (lambda (_g4368943692_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4368943692_)))
                                         (_g4368743718_
                                          (lambda (_g4368943700_)
                                            ((lambda (_L43703_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp48766
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp48764
                                                          (let ((__tmp48765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L43703_ '()))))
                    (declare (not safe))
                    (cons _L43676_ __tmp48765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48766
                                                           __tmp48764)))))
                                             _g4368943700_))))
                                    (_g4368743718_
                                     (gx#stx-wrap-source
                                      (let ((__tmp48768
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp48767
                                             (let ()
                                               (declare (not safe))
                                               (cons _L43676_ _L43648_))))
                                        (declare (not safe))
                                        (cons __tmp48768 __tmp48767))
                                      (gx#stx-source _stx43479_))))))
                              _g4366243673_))))
                     (_g4366043722_ (gx#genident 'args)))))
                (___kont4761347614_
                 (lambda (_L43540_ _L43542_)
                   (let* ((_g4355643564_
                           (lambda (_g4355743560_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4355743560_)))
                          (_g4355543617_
                           (lambda (_g4355743568_)
                             ((lambda (_L43571_)
                                (let ()
                                  (let* ((_g4358343591_
                                          (lambda (_g4358443587_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4358443587_)))
                                         (_g4358243613_
                                          (lambda (_g4358443595_)
                                            ((lambda (_L43598_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp48774
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp48769
                                                          (let ((__tmp48771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48772
                                (let ((__tmp48773
                                       (let ()
                                         (declare (not safe))
                                         (cons _L43542_ '()))))
                                  (declare (not safe))
                                  (cons _L43571_ __tmp48773))))
                           (declare (not safe))
                           (cons __tmp48772 '())))
                        (__tmp48770
                         (let () (declare (not safe)) (cons _L43598_ '()))))
                    (declare (not safe))
                    (cons __tmp48771 __tmp48770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48774
                                                           __tmp48769)))))
                                             _g4358443595_))))
                                    (_g4358243613_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/match[1]#generate-match|
                                        _stx43479_
                                        _L43571_
                                        _L43540_))))))
                              _g4355743568_))))
                     (_g4355543617_ (gx#genident _L43542_))))))
            (let* ((___match4765947660_
                    (lambda (_e4350443520_
                             _hd4350343524_
                             _tl4350243527_
                             _e4350743530_
                             _hd4350643534_
                             _tl4350543537_)
                      (let ((_L43540_ _tl4350543537_)
                            (_L43542_ _hd4350643534_))
                        (if (gx#stx-list? _L43540_)
                            (___kont4761347614_ _L43540_ _L43542_)
                            (let () (declare (not safe)) (_g4348443513_))))))
                   (___match4764747648_
                    (lambda (_e4349643628_
                             _hd4349543632_
                             _tl4349443635_
                             _e4349943638_
                             _hd4349843642_
                             _tl4349743645_)
                      (let ((_L43648_ _tl4349743645_))
                        (if (gx#stx-list? _L43648_)
                            (___kont4761147612_ _L43648_)
                            (___match4765947660_
                             _e4349643628_
                             _hd4349543632_
                             _tl4349443635_
                             _e4349943638_
                             _hd4349843642_
                             _tl4349743645_)))))
                   (___match4763147632_
                    (lambda (_e4348943733_
                             _hd4348843737_
                             _tl4348743740_
                             _e4349243743_
                             _hd4349143747_
                             _tl4349043750_)
                      (let ((_L43753_ _tl4349043750_))
                        (if (gx#stx-list? _L43753_)
                            (___kont4760947610_ _L43753_)
                            (___match4765947660_
                             _e4348943733_
                             _hd4348843737_
                             _tl4348743740_
                             _e4349243743_
                             _hd4349143747_
                             _tl4349043750_))))))
              (if (gx#stx-pair? ___stx4760647607_)
                  (let ((_e4348943733_ (gx#syntax-e ___stx4760647607_)))
                    (let ((_tl4348743740_
                           (let () (declare (not safe)) (##cdr _e4348943733_)))
                          (_hd4348843737_
                           (let ()
                             (declare (not safe))
                             (##car _e4348943733_))))
                      (if (gx#stx-pair? _tl4348743740_)
                          (let ((_e4349243743_ (gx#syntax-e _tl4348743740_)))
                            (let ((_tl4349043750_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4349243743_)))
                                  (_hd4349143747_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4349243743_))))
                              (if (gx#identifier? _hd4349143747_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g48776_|
                                       _hd4349143747_)
                                      (___match4763147632_
                                       _e4348943733_
                                       _hd4348843737_
                                       _tl4348743740_
                                       _e4349243743_
                                       _hd4349143747_
                                       _tl4349043750_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g48775_|
                                           _hd4349143747_)
                                          (___match4764747648_
                                           _e4348943733_
                                           _hd4348843737_
                                           _tl4348743740_
                                           _e4349243743_
                                           _hd4349143747_
                                           _tl4349043750_)
                                          (___match4765947660_
                                           _e4348943733_
                                           _hd4348843737_
                                           _tl4348743740_
                                           _e4349243743_
                                           _hd4349143747_
                                           _tl4349043750_)))
                                  (___match4765947660_
                                   _e4348943733_
                                   _hd4348843737_
                                   _tl4348743740_
                                   _e4349243743_
                                   _hd4349143747_
                                   _tl4349043750_))))
                          (let () (declare (not safe)) (_g4348443513_)))))
                  (let () (declare (not safe)) (_g4348443513_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_stx43835_)
        (let* ((_g4383843862_
                (lambda (_g4383943858_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4383943858_)))
               (_g4383744074_
                (lambda (_g4383943866_)
                  (if (gx#stx-pair? _g4383943866_)
                      (let ((_e4384443869_ (gx#syntax-e _g4383943866_)))
                        (let ((_hd4384343873_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4384443869_)))
                              (_tl4384243876_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4384443869_))))
                          (if (gx#stx-pair? _tl4384243876_)
                              (let ((_e4384743879_
                                     (gx#syntax-e _tl4384243876_)))
                                (let ((_hd4384643883_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4384743879_)))
                                      (_tl4384543886_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4384743879_))))
                                  (if (gx#stx-pair/null? _hd4384643883_)
                                      (let ((_g48777_
                                             (gx#syntax-split-splice
                                              _hd4384643883_
                                              '0)))
                                        (begin
                                          (let ((_g48778_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48777_)
                                                       (##vector-length
                                                        _g48777_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48778_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48778_)))
                                          (let ((_target4384843889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48777_ 0)))
                                                (_tl4385043892_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48777_ 1))))
                                            (if (gx#stx-null? _tl4385043892_)
                                                (letrec ((_loop4385143895_
                                                          (lambda (_hd4384943899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e4385543902_)
                    (if (gx#stx-pair? _hd4384943899_)
                        (let ((_e4385243905_ (gx#syntax-e _hd4384943899_)))
                          (let ((_lp-hd4385343909_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4385243905_)))
                                (_lp-tl4385443912_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4385243905_))))
                            (_loop4385143895_
                             _lp-tl4385443912_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd4385343909_ _e4385543902_)))))
                        (let ((_e4385643915_ (reverse _e4385543902_)))
                          ((lambda (_L43919_ _L43921_)
                             (if (gx#stx-list? _L43919_)
                                 (let* ((_g4393943956_
                                         (lambda (_g4394043952_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g4394043952_)))
                                        (_g4393844062_
                                         (lambda (_g4394043960_)
                                           (if (gx#stx-pair/null?
                                                _g4394043960_)
                                               (let ((_g48779_
                                                      (gx#syntax-split-splice
                                                       _g4394043960_
                                                       '0)))
                                                 (begin
                                                   (let ((_g48780_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g48779_)
                        (##vector-length _g48779_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g48780_ 2)))
                 (error "Context expects 2 values" _g48780_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target4394243963_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g48779_
                                                             0)))
                                                         (_tl4394443966_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g48779_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl4394443966_)
                                                         (letrec ((_loop4394543969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd4394343973_ _$e4394943976_)
                             (if (gx#stx-pair? _hd4394343973_)
                                 (let ((_e4394643979_
                                        (gx#syntax-e _hd4394343973_)))
                                   (let ((_lp-hd4394743983_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4394643979_)))
                                         (_lp-tl4394843986_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4394643979_))))
                                     (_loop4394543969_
                                      _lp-tl4394843986_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd4394743983_
                                              _$e4394943976_)))))
                                 (let ((_$e4395043989_
                                        (reverse _$e4394943976_)))
                                   ((lambda (_L43993_)
                                      (let ()
                                        (let* ((_g4400944017_
                                                (lambda (_g4401044013_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g4401044013_)))
                                               (_g4400844050_
                                                (lambda (_g4401044021_)
                                                  ((lambda (_L44024_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp48787
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp48781
                        (let ((__tmp48783
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L43921_
                                  _L43993_)
                                 (let ((__tmp48784
                                        (lambda (_g4403844042_
                                                 _g4403944045_
                                                 _g4404044047_)
                                          (let ((__tmp48785
                                                 (let ((__tmp48786
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4403844042_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4403944045_
                                                         __tmp48786))))
                                            (declare (not safe))
                                            (cons __tmp48785 _g4404044047_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp48784 '() _L43921_ _L43993_))))
                              (__tmp48782
                               (let ()
                                 (declare (not safe))
                                 (cons _L44024_ '()))))
                          (declare (not safe))
                          (cons __tmp48783 __tmp48782))))
                   (declare (not safe))
                   (cons __tmp48787 __tmp48781)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4401044021_))))
                                          (_g4400844050_
                                           (let ((__tmp48788
                                                  (let ((__tmp48789
                                                         (lambda (_g4405344056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4405444059_)
                   (let ()
                     (declare (not safe))
                     (cons _g4405344056_ _g4405444059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp48789
                                                            '()
                                                            _L43993_))))
                                             (declare (not safe))
                                             (|gerbil/core/match[1]#generate-match*|
                                              _stx43835_
                                              __tmp48788
                                              _L43919_))))))
                                    _$e4395043989_))))))
                   (_loop4394543969_ _target4394243963_ '()))
                 (_g4393943956_ _g4394043960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4393943956_
                                                _g4394043960_)))))
                                   (_g4393844062_
                                    (gx#gentemps
                                     (let ((__tmp48790
                                            (lambda (_g4406544068_
                                                     _g4406644071_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g4406544068_
                                                      _g4406644071_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp48790 '() _L43921_)))))
                                 (_g4383843862_ _g4383943866_)))
                           _tl4384543886_
                           _e4385643915_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop4385143895_
                                                   _target4384843889_
                                                   '()))
                                                (_g4383843862_
                                                 _g4383943866_)))))
                                      (_g4383843862_ _g4383943866_))))
                              (_g4383843862_ _g4383943866_))))
                      (_g4383843862_ _g4383943866_)))))
          (_g4383744074_ _stx43835_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_$stx44080_)
        (let* ((___stx4766247663_ _$stx44080_)
               (_g4408644169_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4766247663_))))
          (let ((___kont4766547666_
                 (lambda (_L44499_)
                   (let ((__tmp48794 (gx#datum->syntax '#f 'let))
                         (__tmp48791
                          (let ((__tmp48792
                                 (let ((__tmp48793
                                        (lambda (_g4451544518_ _g4451644521_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4451544518_
                                                  _g4451644521_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp48793 '() _L44499_))))
                            (declare (not safe))
                            (cons '() __tmp48792))))
                     (declare (not safe))
                     (cons __tmp48794 __tmp48791))))
                (___kont4766947670_
                 (lambda (_L44407_ _L44409_ _L44410_ _L44411_)
                   (let ((__tmp48795
                          (let ((__tmp48798
                                 (let ((__tmp48799
                                        (let ((__tmp48800
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L44409_ '()))))
                                          (declare (not safe))
                                          (cons _L44410_ __tmp48800))))
                                   (declare (not safe))
                                   (cons __tmp48799 '())))
                                (__tmp48796
                                 (let ((__tmp48797
                                        (lambda (_g4443344436_ _g4443444439_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4443344436_
                                                  _g4443444439_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp48797 '() _L44407_))))
                            (declare (not safe))
                            (cons __tmp48798 __tmp48796))))
                     (declare (not safe))
                     (cons _L44411_ __tmp48795))))
                (___kont4767347674_
                 (lambda (_L44280_ _L44282_ _L44283_)
                   (let ((__tmp48810 (gx#datum->syntax '#f 'match*))
                         (__tmp48801
                          (let ((__tmp48808
                                 (let ((__tmp48809
                                        (lambda (_g4430944312_ _g4431044315_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4430944312_
                                                  _g4431044315_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp48809 '() _L44282_)))
                                (__tmp48802
                                 (let ((__tmp48803
                                        (let ((__tmp48806
                                               (let ((__tmp48807
                                                      (lambda (_g4430744318_
                                                               _g4430844321_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4430744318_
                                                                _g4430844321_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp48807
                                                         '()
                                                         _L44283_)))
                                              (__tmp48804
                                               (let ((__tmp48805
                                                      (lambda (_g4430544324_
                                                               _g4430644327_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4430544324_
                                                                _g4430644327_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp48805
                                                         '()
                                                         _L44280_))))
                                          (declare (not safe))
                                          (cons __tmp48806 __tmp48804))))
                                   (declare (not safe))
                                   (cons __tmp48803 '()))))
                            (declare (not safe))
                            (cons __tmp48808 __tmp48802))))
                     (declare (not safe))
                     (cons __tmp48810 __tmp48801)))))
            (let* ((___match4775547756_
                    (lambda (_e4413444176_
                             _hd4413344180_
                             _tl4413244183_
                             _e4413744186_
                             _hd4413644190_
                             _tl4413544193_
                             ___splice4767547676_
                             _target4413844196_
                             _tl4414044199_)
                      (letrec ((_loop4414144202_
                                (lambda (_hd4413944206_
                                         _expr4414544209_
                                         _hd4414644211_)
                                  (if (gx#stx-pair? _hd4413944206_)
                                      (let ((_e4414244214_
                                             (gx#syntax-e _hd4413944206_)))
                                        (let ((_lp-tl4414444221_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4414244214_)))
                                              (_lp-hd4414344218_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4414244214_))))
                                          (if (gx#stx-pair? _lp-hd4414344218_)
                                              (let ((_e4415144224_
                                                     (gx#syntax-e
                                                      _lp-hd4414344218_)))
                                                (let ((_tl4414944231_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4415144224_)))
                                                      (_hd4415044228_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4415144224_))))
                                                  (if (gx#stx-pair?
                                                       _tl4414944231_)
                                                      (let ((_e4415444234_
                                                             (gx#syntax-e
                                                              _tl4414944231_)))
                                                        (let ((_tl4415244241_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4415444234_)))
                      (_hd4415344238_
                       (let () (declare (not safe)) (##car _e4415444234_))))
                  (if (gx#stx-null? _tl4415244241_)
                      (_loop4414144202_
                       _lp-tl4414444221_
                       (let ()
                         (declare (not safe))
                         (cons _hd4415344238_ _expr4414544209_))
                       (let ()
                         (declare (not safe))
                         (cons _hd4415044228_ _hd4414644211_)))
                      (let () (declare (not safe)) (_g4408644169_)))))
              (let () (declare (not safe)) (_g4408644169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g4408644169_)))))
                                      (let ((_hd4414844247_
                                             (reverse _hd4414644211_))
                                            (_expr4414744244_
                                             (reverse _expr4414544209_)))
                                        (if (gx#stx-pair/null? _tl4413544193_)
                                            (let ((___splice4767747678_
                                                   (gx#syntax-split-splice
                                                    _tl4413544193_
                                                    '0)))
                                              (let ((_tl4415744253_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4767747678_
                                                        '1)))
                                                    (_target4415544250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4767747678_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4415744253_)
                                                    (letrec ((_loop4415844256_
                                                              (lambda (_hd4415644260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body4416244263_)
                        (if (gx#stx-pair? _hd4415644260_)
                            (let ((_e4415944266_ (gx#syntax-e _hd4415644260_)))
                              (let ((_lp-tl4416144273_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4415944266_)))
                                    (_lp-hd4416044270_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4415944266_))))
                                (_loop4415844256_
                                 _lp-tl4416144273_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd4416044270_
                                         _body4416244263_)))))
                            (let ((_body4416344276_
                                   (reverse _body4416244263_)))
                              (___kont4767347674_
                               _body4416344276_
                               _expr4414744244_
                               _hd4414844247_))))))
              (_loop4415844256_ _target4415544250_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4408644169_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4408644169_))))))))
                        (_loop4414144202_ _target4413844196_ '() '()))))
                   (___match4774747748_
                    (lambda (_e4413444176_
                             _hd4413344180_
                             _tl4413244183_
                             _e4413744186_
                             _hd4413644190_
                             _tl4413544193_)
                      (if (gx#stx-pair/null? _hd4413644190_)
                          (let ((___splice4767547676_
                                 (gx#syntax-split-splice _hd4413644190_ '0)))
                            (let ((_tl4414044199_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4767547676_ '1)))
                                  (_target4413844196_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4767547676_ '0))))
                              (if (gx#stx-null? _tl4414044199_)
                                  (___match4775547756_
                                   _e4413444176_
                                   _hd4413344180_
                                   _tl4413244183_
                                   _e4413744186_
                                   _hd4413644190_
                                   _tl4413544193_
                                   ___splice4767547676_
                                   _target4413844196_
                                   _tl4414044199_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4408644169_)))))
                          (let () (declare (not safe)) (_g4408644169_)))))
                   (___match4773547736_
                    (lambda (_e4411044337_
                             _hd4410944341_
                             _tl4410844344_
                             _e4411344347_
                             _hd4411244351_
                             _tl4411144354_
                             _e4411644357_
                             _hd4411544361_
                             _tl4411444364_
                             _e4411944367_
                             _hd4411844371_
                             _tl4411744374_
                             ___splice4767147672_
                             _target4412044377_
                             _tl4412244380_)
                      (letrec ((_loop4412344383_
                                (lambda (_hd4412144387_ _body4412744390_)
                                  (if (gx#stx-pair? _hd4412144387_)
                                      (let ((_e4412444393_
                                             (gx#syntax-e _hd4412144387_)))
                                        (let ((_lp-tl4412644400_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4412444393_)))
                                              (_lp-hd4412544397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4412444393_))))
                                          (_loop4412344383_
                                           _lp-tl4412644400_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4412544397_
                                                   _body4412744390_)))))
                                      (let ((_body4412844403_
                                             (reverse _body4412744390_)))
                                        (let ((_L44407_ _body4412844403_)
                                              (_L44409_ _hd4411844371_)
                                              (_L44410_ _hd4411544361_)
                                              (_L44411_ _hd4410944341_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/match[1]#match-pattern?|
                                                 _L44410_))
                                              (___kont4766947670_
                                               _L44407_
                                               _L44409_
                                               _L44410_
                                               _L44411_)
                                              (___match4774747748_
                                               _e4411044337_
                                               _hd4410944341_
                                               _tl4410844344_
                                               _e4411344347_
                                               _hd4411244351_
                                               _tl4411144354_))))))))
                        (_loop4412344383_ _target4412044377_ '()))))
                   (___match4770147702_
                    (lambda (_e4409144449_
                             _hd4409044453_
                             _tl4408944456_
                             _e4409444459_
                             _hd4409344463_
                             _tl4409244466_
                             ___splice4766747668_
                             _target4409544469_
                             _tl4409744472_)
                      (letrec ((_loop4409844475_
                                (lambda (_hd4409644479_ _body4410244482_)
                                  (if (gx#stx-pair? _hd4409644479_)
                                      (let ((_e4409944485_
                                             (gx#syntax-e _hd4409644479_)))
                                        (let ((_lp-tl4410144492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4409944485_)))
                                              (_lp-hd4410044489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4409944485_))))
                                          (_loop4409844475_
                                           _lp-tl4410144492_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4410044489_
                                                   _body4410244482_)))))
                                      (let ((_body4410344495_
                                             (reverse _body4410244482_)))
                                        (___kont4766547666_
                                         _body4410344495_))))))
                        (_loop4409844475_ _target4409544469_ '())))))
              (if (gx#stx-pair? ___stx4766247663_)
                  (let ((_e4409144449_ (gx#syntax-e ___stx4766247663_)))
                    (let ((_tl4408944456_
                           (let () (declare (not safe)) (##cdr _e4409144449_)))
                          (_hd4409044453_
                           (let ()
                             (declare (not safe))
                             (##car _e4409144449_))))
                      (if (gx#stx-pair? _tl4408944456_)
                          (let ((_e4409444459_ (gx#syntax-e _tl4408944456_)))
                            (let ((_tl4409244466_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4409444459_)))
                                  (_hd4409344463_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4409444459_))))
                              (if (gx#stx-null? _hd4409344463_)
                                  (if (gx#stx-pair/null? _tl4409244466_)
                                      (let ((___splice4766747668_
                                             (gx#syntax-split-splice
                                              _tl4409244466_
                                              '0)))
                                        (let ((_tl4409744472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4766747668_
                                                  '1)))
                                              (_target4409544469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4766747668_
                                                  '0))))
                                          (if (gx#stx-null? _tl4409744472_)
                                              (___match4770147702_
                                               _e4409144449_
                                               _hd4409044453_
                                               _tl4408944456_
                                               _e4409444459_
                                               _hd4409344463_
                                               _tl4409244466_
                                               ___splice4766747668_
                                               _target4409544469_
                                               _tl4409744472_)
                                              (if (gx#stx-pair/null?
                                                   _hd4409344463_)
                                                  (let ((___splice4767547676_
                                                         (gx#syntax-split-splice
                                                          _hd4409344463_
                                                          '0)))
                                                    (let ((_tl4414044199_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4767547676_
                                                              '1)))
                                                          (_target4413844196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4767547676_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4414044199_)
                                                          (___match4775547756_
                                                           _e4409144449_
                                                           _hd4409044453_
                                                           _tl4408944456_
                                                           _e4409444459_
                                                           _hd4409344463_
                                                           _tl4409244466_
                                                           ___splice4767547676_
                                                           _target4413844196_
                                                           _tl4414044199_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4408644169_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4408644169_))))))
                                      (if (gx#stx-pair/null? _hd4409344463_)
                                          (let ((___splice4767547676_
                                                 (gx#syntax-split-splice
                                                  _hd4409344463_
                                                  '0)))
                                            (let ((_tl4414044199_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4767547676_
                                                      '1)))
                                                  (_target4413844196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4767547676_
                                                      '0))))
                                              (if (gx#stx-null? _tl4414044199_)
                                                  (___match4775547756_
                                                   _e4409144449_
                                                   _hd4409044453_
                                                   _tl4408944456_
                                                   _e4409444459_
                                                   _hd4409344463_
                                                   _tl4409244466_
                                                   ___splice4767547676_
                                                   _target4413844196_
                                                   _tl4414044199_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4408644169_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4408644169_))))
                                  (if (gx#stx-pair? _hd4409344463_)
                                      (let ((_e4411644357_
                                             (gx#syntax-e _hd4409344463_)))
                                        (let ((_tl4411444364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4411644357_)))
                                              (_hd4411544361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4411644357_))))
                                          (if (gx#stx-pair? _tl4411444364_)
                                              (let ((_e4411944367_
                                                     (gx#syntax-e
                                                      _tl4411444364_)))
                                                (let ((_tl4411744374_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4411944367_)))
                                                      (_hd4411844371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4411944367_))))
                                                  (if (gx#stx-null?
                                                       _tl4411744374_)
                                                      (if (gx#stx-pair/null?
                                                           _tl4409244466_)
                                                          (let ((___splice4767147672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl4409244466_ '0)))
                    (let ((_tl4412244380_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4767147672_ '1)))
                          (_target4412044377_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4767147672_ '0))))
                      (if (gx#stx-null? _tl4412244380_)
                          (___match4773547736_
                           _e4409144449_
                           _hd4409044453_
                           _tl4408944456_
                           _e4409444459_
                           _hd4409344463_
                           _tl4409244466_
                           _e4411644357_
                           _hd4411544361_
                           _tl4411444364_
                           _e4411944367_
                           _hd4411844371_
                           _tl4411744374_
                           ___splice4767147672_
                           _target4412044377_
                           _tl4412244380_)
                          (if (gx#stx-pair/null? _hd4409344463_)
                              (let ((___splice4767547676_
                                     (gx#syntax-split-splice
                                      _hd4409344463_
                                      '0)))
                                (let ((_tl4414044199_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4767547676_
                                          '1)))
                                      (_target4413844196_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4767547676_
                                          '0))))
                                  (if (gx#stx-null? _tl4414044199_)
                                      (___match4775547756_
                                       _e4409144449_
                                       _hd4409044453_
                                       _tl4408944456_
                                       _e4409444459_
                                       _hd4409344463_
                                       _tl4409244466_
                                       ___splice4767547676_
                                       _target4413844196_
                                       _tl4414044199_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4408644169_)))))
                              (let () (declare (not safe)) (_g4408644169_))))))
                  (if (gx#stx-pair/null? _hd4409344463_)
                      (let ((___splice4767547676_
                             (gx#syntax-split-splice _hd4409344463_ '0)))
                        (let ((_tl4414044199_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4767547676_ '1)))
                              (_target4413844196_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4767547676_ '0))))
                          (if (gx#stx-null? _tl4414044199_)
                              (___match4775547756_
                               _e4409144449_
                               _hd4409044453_
                               _tl4408944456_
                               _e4409444459_
                               _hd4409344463_
                               _tl4409244466_
                               ___splice4767547676_
                               _target4413844196_
                               _tl4414044199_)
                              (let () (declare (not safe)) (_g4408644169_)))))
                      (let () (declare (not safe)) (_g4408644169_))))
              (if (gx#stx-pair/null? _hd4409344463_)
                  (let ((___splice4767547676_
                         (gx#syntax-split-splice _hd4409344463_ '0)))
                    (let ((_tl4414044199_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4767547676_ '1)))
                          (_target4413844196_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4767547676_ '0))))
                      (if (gx#stx-null? _tl4414044199_)
                          (___match4775547756_
                           _e4409144449_
                           _hd4409044453_
                           _tl4408944456_
                           _e4409444459_
                           _hd4409344463_
                           _tl4409244466_
                           ___splice4767547676_
                           _target4413844196_
                           _tl4414044199_)
                          (let () (declare (not safe)) (_g4408644169_)))))
                  (let () (declare (not safe)) (_g4408644169_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4409344463_)
                                                  (let ((___splice4767547676_
                                                         (gx#syntax-split-splice
                                                          _hd4409344463_
                                                          '0)))
                                                    (let ((_tl4414044199_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4767547676_
                                                              '1)))
                                                          (_target4413844196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4767547676_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4414044199_)
                                                          (___match4775547756_
                                                           _e4409144449_
                                                           _hd4409044453_
                                                           _tl4408944456_
                                                           _e4409444459_
                                                           _hd4409344463_
                                                           _tl4409244466_
                                                           ___splice4767547676_
                                                           _target4413844196_
                                                           _tl4414044199_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4408644169_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4408644169_))))))
                                      (if (gx#stx-pair/null? _hd4409344463_)
                                          (let ((___splice4767547676_
                                                 (gx#syntax-split-splice
                                                  _hd4409344463_
                                                  '0)))
                                            (let ((_tl4414044199_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4767547676_
                                                      '1)))
                                                  (_target4413844196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4767547676_
                                                      '0))))
                                              (if (gx#stx-null? _tl4414044199_)
                                                  (___match4775547756_
                                                   _e4409144449_
                                                   _hd4409044453_
                                                   _tl4408944456_
                                                   _e4409444459_
                                                   _hd4409344463_
                                                   _tl4409244466_
                                                   ___splice4767547676_
                                                   _target4413844196_
                                                   _tl4414044199_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4408644169_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4408644169_)))))))
                          (let () (declare (not safe)) (_g4408644169_)))))
                  (let () (declare (not safe)) (_g4408644169_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_$stx44532_)
        (let* ((___stx4775847759_ _$stx44532_)
               (_g4453744589_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4775847759_))))
          (let ((___kont4776147762_
                 (lambda (_L44759_ _L44761_ _L44762_ _L44763_ _L44764_)
                   (let ((__tmp48820 (gx#datum->syntax '#f 'with))
                         (__tmp48811
                          (let ((__tmp48817
                                 (let ((__tmp48818
                                        (let ((__tmp48819
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L44762_ '()))))
                                          (declare (not safe))
                                          (cons _L44763_ __tmp48819))))
                                   (declare (not safe))
                                   (cons __tmp48818 '())))
                                (__tmp48812
                                 (let ((__tmp48813
                                        (let ((__tmp48814
                                               (let ((__tmp48815
                                                      (let ((__tmp48816
                                                             (lambda (_g4478944792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4479044795_)
                       (let ()
                         (declare (not safe))
                         (cons _g4478944792_ _g4479044795_)))))
                (declare (not safe))
                (foldr1 __tmp48816 '() _L44759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L44761_ __tmp48815))))
                                          (declare (not safe))
                                          (cons _L44764_ __tmp48814))))
                                   (declare (not safe))
                                   (cons __tmp48813 '()))))
                            (declare (not safe))
                            (cons __tmp48817 __tmp48812))))
                     (declare (not safe))
                     (cons __tmp48820 __tmp48811))))
                (___kont4776547766_
                 (lambda (_L44646_)
                   (let ((__tmp48824 (gx#datum->syntax '#f 'let))
                         (__tmp48821
                          (let ((__tmp48822
                                 (let ((__tmp48823
                                        (lambda (_g4466344666_ _g4466444669_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4466344666_
                                                  _g4466444669_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp48823 '() _L44646_))))
                            (declare (not safe))
                            (cons '() __tmp48822))))
                     (declare (not safe))
                     (cons __tmp48824 __tmp48821)))))
            (let* ((___match4783147832_
                    (lambda (_e4457144596_
                             _hd4457044600_
                             _tl4456944603_
                             _e4457444606_
                             _hd4457344610_
                             _tl4457244613_
                             ___splice4776747768_
                             _target4457544616_
                             _tl4457744619_)
                      (letrec ((_loop4457844622_
                                (lambda (_hd4457644626_ _body4458244629_)
                                  (if (gx#stx-pair? _hd4457644626_)
                                      (let ((_e4457944632_
                                             (gx#syntax-e _hd4457644626_)))
                                        (let ((_lp-tl4458144639_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4457944632_)))
                                              (_lp-hd4458044636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4457944632_))))
                                          (_loop4457844622_
                                           _lp-tl4458144639_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4458044636_
                                                   _body4458244629_)))))
                                      (let ((_body4458344642_
                                             (reverse _body4458244629_)))
                                        (___kont4776547766_
                                         _body4458344642_))))))
                        (_loop4457844622_ _target4457544616_ '()))))
                   (___match4780947810_
                    (lambda (_e4454644679_
                             _hd4454544683_
                             _tl4454444686_
                             _e4454944689_
                             _hd4454844693_
                             _tl4454744696_
                             _e4455244699_
                             _hd4455144703_
                             _tl4455044706_
                             _e4455544709_
                             _hd4455444713_
                             _tl4455344716_
                             _e4455844719_
                             _hd4455744723_
                             _tl4455644726_
                             ___splice4776347764_
                             _target4455944729_
                             _tl4456144732_)
                      (letrec ((_loop4456244735_
                                (lambda (_hd4456044739_ _body4456644742_)
                                  (if (gx#stx-pair? _hd4456044739_)
                                      (let ((_e4456344745_
                                             (gx#syntax-e _hd4456044739_)))
                                        (let ((_lp-tl4456544752_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4456344745_)))
                                              (_lp-hd4456444749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4456344745_))))
                                          (_loop4456244735_
                                           _lp-tl4456544752_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4456444749_
                                                   _body4456644742_)))))
                                      (let ((_body4456744755_
                                             (reverse _body4456644742_)))
                                        (___kont4776147762_
                                         _body4456744755_
                                         _tl4455044706_
                                         _hd4455744723_
                                         _hd4455444713_
                                         _hd4454544683_))))))
                        (_loop4456244735_ _target4455944729_ '())))))
              (if (gx#stx-pair? ___stx4775847759_)
                  (let ((_e4454644679_ (gx#syntax-e ___stx4775847759_)))
                    (let ((_tl4454444686_
                           (let () (declare (not safe)) (##cdr _e4454644679_)))
                          (_hd4454544683_
                           (let ()
                             (declare (not safe))
                             (##car _e4454644679_))))
                      (if (gx#stx-pair? _tl4454444686_)
                          (let ((_e4454944689_ (gx#syntax-e _tl4454444686_)))
                            (let ((_tl4454744696_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4454944689_)))
                                  (_hd4454844693_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4454944689_))))
                              (if (gx#stx-pair? _hd4454844693_)
                                  (let ((_e4455244699_
                                         (gx#syntax-e _hd4454844693_)))
                                    (let ((_tl4455044706_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4455244699_)))
                                          (_hd4455144703_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4455244699_))))
                                      (if (gx#stx-pair? _hd4455144703_)
                                          (let ((_e4455544709_
                                                 (gx#syntax-e _hd4455144703_)))
                                            (let ((_tl4455344716_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4455544709_)))
                                                  (_hd4455444713_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4455544709_))))
                                              (if (gx#stx-pair? _tl4455344716_)
                                                  (let ((_e4455844719_
                                                         (gx#syntax-e
                                                          _tl4455344716_)))
                                                    (let ((_tl4455644726_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4455844719_)))
                                                          (_hd4455744723_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4455844719_))))
                                                      (if (gx#stx-null?
                                                           _tl4455644726_)
                                                          (if (gx#stx-pair/null?
                                                               _tl4454744696_)
                                                              (let ((___splice4776347764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl4454744696_ '0)))
                        (let ((_tl4456144732_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4776347764_ '1)))
                              (_target4455944729_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4776347764_ '0))))
                          (if (gx#stx-null? _tl4456144732_)
                              (___match4780947810_
                               _e4454644679_
                               _hd4454544683_
                               _tl4454444686_
                               _e4454944689_
                               _hd4454844693_
                               _tl4454744696_
                               _e4455244699_
                               _hd4455144703_
                               _tl4455044706_
                               _e4455544709_
                               _hd4455444713_
                               _tl4455344716_
                               _e4455844719_
                               _hd4455744723_
                               _tl4455644726_
                               ___splice4776347764_
                               _target4455944729_
                               _tl4456144732_)
                              (let () (declare (not safe)) (_g4453744589_)))))
                      (let () (declare (not safe)) (_g4453744589_)))
                  (let () (declare (not safe)) (_g4453744589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4453744589_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4453744589_)))))
                                  (if (gx#stx-null? _hd4454844693_)
                                      (if (gx#stx-pair/null? _tl4454744696_)
                                          (let ((___splice4776747768_
                                                 (gx#syntax-split-splice
                                                  _tl4454744696_
                                                  '0)))
                                            (let ((_tl4457744619_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4776747768_
                                                      '1)))
                                                  (_target4457544616_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4776747768_
                                                      '0))))
                                              (if (gx#stx-null? _tl4457744619_)
                                                  (___match4783147832_
                                                   _e4454644679_
                                                   _hd4454544683_
                                                   _tl4454444686_
                                                   _e4454944689_
                                                   _hd4454844693_
                                                   _tl4454744696_
                                                   ___splice4776747768_
                                                   _target4457544616_
                                                   _tl4457744619_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4453744589_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4453744589_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4453744589_))))))
                          (let () (declare (not safe)) (_g4453744589_)))))
                  (let () (declare (not safe)) (_g4453744589_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_$stx44804_)
        (let* ((___stx4783447835_ _$stx44804_)
               (_g4481544961_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4783447835_))))
          (let ((___kont4783747838_
                 (lambda (_L45565_ _L45567_ _L45568_)
                   (let ((__tmp48830 (gx#datum->syntax '#f 'and))
                         (__tmp48825
                          (let ((__tmp48826
                                 (lambda (_g4558945592_ _g4559045595_)
                                   (let ((__tmp48827
                                          (let ((__tmp48828
                                                 (let ((__tmp48829
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L45565_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4558945592_
                                                         __tmp48829))))
                                            (declare (not safe))
                                            (cons _L45568_ __tmp48828))))
                                     (declare (not safe))
                                     (cons __tmp48827 _g4559045595_)))))
                            (declare (not safe))
                            (foldr1 __tmp48826 '() _L45567_))))
                     (declare (not safe))
                     (cons __tmp48830 __tmp48825))))
                (___kont4784147842_
                 (lambda (_L45455_ _L45457_ _L45458_)
                   (let ((__tmp48836 (gx#datum->syntax '#f 'or))
                         (__tmp48831
                          (let ((__tmp48832
                                 (lambda (_g4547945482_ _g4548045485_)
                                   (let ((__tmp48833
                                          (let ((__tmp48834
                                                 (let ((__tmp48835
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L45455_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4547945482_
                                                         __tmp48835))))
                                            (declare (not safe))
                                            (cons _L45458_ __tmp48834))))
                                     (declare (not safe))
                                     (cons __tmp48833 _g4548045485_)))))
                            (declare (not safe))
                            (foldr1 __tmp48832 '() _L45457_))))
                     (declare (not safe))
                     (cons __tmp48836 __tmp48831))))
                (___kont4784547846_
                 (lambda (_L45355_ _L45357_ _L45358_)
                   (let ((__tmp48841 (gx#datum->syntax '#f 'not))
                         (__tmp48837
                          (let ((__tmp48838
                                 (let ((__tmp48839
                                        (let ((__tmp48840
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L45355_ '()))))
                                          (declare (not safe))
                                          (cons _L45357_ __tmp48840))))
                                   (declare (not safe))
                                   (cons _L45358_ __tmp48839))))
                            (declare (not safe))
                            (cons __tmp48838 '()))))
                     (declare (not safe))
                     (cons __tmp48841 __tmp48837))))
                (___kont4784747848_
                 (lambda (_L45281_ _L45283_)
                   (let ((__tmp48842
                          (let () (declare (not safe)) (cons _L45281_ '()))))
                     (declare (not safe))
                     (cons _L45283_ __tmp48842))))
                (___kont4784947850_
                 (lambda (_L45229_ _L45231_)
                   (let ((__tmp48851 (gx#datum->syntax '#f 'lambda))
                         (__tmp48843
                          (let ((__tmp48849
                                 (let ((__tmp48850
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp48850 '())))
                                (__tmp48844
                                 (let ((__tmp48845
                                        (let ((__tmp48846
                                               (let ((__tmp48847
                                                      (let ((__tmp48848
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp48848
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L45229_ __tmp48847))))
                                          (declare (not safe))
                                          (cons _L45231_ __tmp48846))))
                                   (declare (not safe))
                                   (cons __tmp48845 '()))))
                            (declare (not safe))
                            (cons __tmp48849 __tmp48844))))
                     (declare (not safe))
                     (cons __tmp48851 __tmp48843))))
                (___kont4785147852_
                 (lambda (_L45181_ _L45183_ _L45184_)
                   (let ((__tmp48870 (gx#datum->syntax '#f 'lambda))
                         (__tmp48852
                          (let ((__tmp48868
                                 (let ((__tmp48869
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp48869 '())))
                                (__tmp48853
                                 (let ((__tmp48854
                                        (let ((__tmp48867
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp48855
                                               (let ((__tmp48860
                                                      (let ((__tmp48866
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp48861
                                                             (let ((__tmp48862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48863
                                   (let ((__tmp48864
                                          (let ((__tmp48865
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp48865 '()))))
                                     (declare (not safe))
                                     (cons _L45183_ __tmp48864))))
                              (declare (not safe))
                              (cons _L45184_ __tmp48863))))
                       (declare (not safe))
                       (cons __tmp48862 '()))))
                (declare (not safe))
                (cons __tmp48866 __tmp48861)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48856
                                                      (let ((__tmp48857
                                                             (let ((__tmp48858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48859 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp48859 '()))))
                       (declare (not safe))
                       (cons _L45181_ __tmp48858))))
                (declare (not safe))
                (cons __tmp48857 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48860
                                                       __tmp48856))))
                                          (declare (not safe))
                                          (cons __tmp48867 __tmp48855))))
                                   (declare (not safe))
                                   (cons __tmp48854 '()))))
                            (declare (not safe))
                            (cons __tmp48868 __tmp48853))))
                     (declare (not safe))
                     (cons __tmp48870 __tmp48852))))
                (___kont4785347854_
                 (lambda (_L45112_ _L45114_ _L45115_)
                   (let ((__tmp48886 (gx#datum->syntax '#f 'lambda))
                         (__tmp48871
                          (let ((__tmp48884
                                 (let ((__tmp48885
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp48885 '())))
                                (__tmp48872
                                 (let ((__tmp48873
                                        (let ((__tmp48883
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp48874
                                               (let ((__tmp48879
                                                      (let ((__tmp48880
                                                             (let ((__tmp48881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48882 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp48882 '()))))
                       (declare (not safe))
                       (cons _L45114_ __tmp48881))))
                (declare (not safe))
                (cons _L45115_ __tmp48880)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48875
                                                      (let ((__tmp48876
                                                             (let ((__tmp48877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48878 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp48878 '()))))
                       (declare (not safe))
                       (cons _L45112_ __tmp48877))))
                (declare (not safe))
                (cons __tmp48876 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48879
                                                       __tmp48875))))
                                          (declare (not safe))
                                          (cons __tmp48883 __tmp48874))))
                                   (declare (not safe))
                                   (cons __tmp48873 '()))))
                            (declare (not safe))
                            (cons __tmp48884 __tmp48872))))
                     (declare (not safe))
                     (cons __tmp48886 __tmp48871))))
                (___kont4785547856_
                 (lambda (_L45032_ _L45034_ _L45035_ _L45036_)
                   (let ((__tmp48904 (gx#datum->syntax '#f 'lambda))
                         (__tmp48887
                          (let ((__tmp48902
                                 (let ((__tmp48903
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp48903 '())))
                                (__tmp48888
                                 (let ((__tmp48889
                                        (let ((__tmp48901
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp48890
                                               (let ((__tmp48897
                                                      (let ((__tmp48898
                                                             (let ((__tmp48899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48900 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp48900 '()))))
                       (declare (not safe))
                       (cons _L45035_ __tmp48899))))
                (declare (not safe))
                (cons _L45036_ __tmp48898)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48891
                                                      (let ((__tmp48892
                                                             (let ((__tmp48893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48894
                                   (let ((__tmp48895
                                          (let ((__tmp48896
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp48896 '()))))
                                     (declare (not safe))
                                     (cons _L45034_ __tmp48895))))
                              (declare (not safe))
                              (cons __tmp48894 '()))))
                       (declare (not safe))
                       (cons _L45032_ __tmp48893))))
                (declare (not safe))
                (cons __tmp48892 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48897
                                                       __tmp48891))))
                                          (declare (not safe))
                                          (cons __tmp48901 __tmp48890))))
                                   (declare (not safe))
                                   (cons __tmp48889 '()))))
                            (declare (not safe))
                            (cons __tmp48902 __tmp48888))))
                     (declare (not safe))
                     (cons __tmp48904 __tmp48887)))))
            (let* ((___match4800748008_
                    (lambda (_e4490745141_
                             _hd4490645145_
                             _tl4490545148_
                             _e4491045151_
                             _hd4490945155_
                             _tl4490845158_
                             _e4491345161_
                             _hd4491245165_
                             _tl4491145168_)
                      (if (gx#identifier? _hd4491245165_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g48906_|
                               _hd4491245165_)
                              (if (gx#stx-pair? _tl4491145168_)
                                  (let ((_e4491645171_
                                         (gx#syntax-e _tl4491145168_)))
                                    (let ((_tl4491445178_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4491645171_)))
                                          (_hd4491545175_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4491645171_))))
                                      (if (gx#stx-null? _tl4491445178_)
                                          (___kont4785147852_
                                           _hd4491545175_
                                           _hd4490945155_
                                           _hd4490645145_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4481544961_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4481544961_)))
                              (let () (declare (not safe)) (_g4481544961_)))
                          (if (gx#stx-datum? _hd4491245165_)
                              (let ((_e4492945098_ (gx#stx-e _hd4491245165_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e4492945098_ '::))
                                    (if (gx#stx-pair? _tl4491145168_)
                                        (let ((_e4493245102_
                                               (gx#syntax-e _tl4491145168_)))
                                          (let ((_tl4493045109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4493245102_)))
                                                (_hd4493145106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4493245102_))))
                                            (if (gx#stx-null? _tl4493045109_)
                                                (___kont4785347854_
                                                 _hd4493145106_
                                                 _hd4490945155_
                                                 _hd4490645145_)
                                                (if (gx#stx-pair?
                                                     _tl4493045109_)
                                                    (let ((_e4495245012_
                                                           (gx#syntax-e
                                                            _tl4493045109_)))
                                                      (let ((_tl4495045019_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4495245012_)))
                    (_hd4495145016_
                     (let () (declare (not safe)) (##car _e4495245012_))))
                (if (gx#identifier? _hd4495145016_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g48905_|
                         _hd4495145016_)
                        (if (gx#stx-pair? _tl4495045019_)
                            (let ((_e4495545022_ (gx#syntax-e _tl4495045019_)))
                              (let ((_tl4495345029_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4495545022_)))
                                    (_hd4495445026_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4495545022_))))
                                (if (gx#stx-null? _tl4495345029_)
                                    (___kont4785547856_
                                     _hd4495445026_
                                     _hd4493145106_
                                     _hd4490945155_
                                     _hd4490645145_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_)))))
                            (let () (declare (not safe)) (_g4481544961_)))
                        (let () (declare (not safe)) (_g4481544961_)))
                    (let () (declare (not safe)) (_g4481544961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4481544961_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4481544961_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_))))
                              (let () (declare (not safe)) (_g4481544961_))))))
                   (___match4798747988_
                    (lambda (_e4489845209_
                             _hd4489745213_
                             _tl4489645216_
                             _e4490145219_
                             _hd4490045223_
                             _tl4489945226_)
                      (if (gx#stx-null? _tl4489945226_)
                          (___kont4784947850_ _hd4490045223_ _hd4489745213_)
                          (if (gx#stx-pair? _tl4489945226_)
                              (let ((_e4491345161_
                                     (gx#syntax-e _tl4489945226_)))
                                (let ((_tl4491145168_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4491345161_)))
                                      (_hd4491245165_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4491345161_))))
                                  (if (gx#identifier? _hd4491245165_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g48906_|
                                           _hd4491245165_)
                                          (if (gx#stx-pair? _tl4491145168_)
                                              (let ((_e4491645171_
                                                     (gx#syntax-e
                                                      _tl4491145168_)))
                                                (let ((_tl4491445178_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4491645171_)))
                                                      (_hd4491545175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4491645171_))))
                                                  (if (gx#stx-null?
                                                       _tl4491445178_)
                                                      (___kont4785147852_
                                                       _hd4491545175_
                                                       _hd4490045223_
                                                       _hd4489745213_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4481544961_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4481544961_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4481544961_)))
                                      (if (gx#stx-datum? _hd4491245165_)
                                          (let ((_e4492945098_
                                                 (gx#stx-e _hd4491245165_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e4492945098_ '::))
                                                (if (gx#stx-pair?
                                                     _tl4491145168_)
                                                    (let ((_e4493245102_
                                                           (gx#syntax-e
                                                            _tl4491145168_)))
                                                      (let ((_tl4493045109_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4493245102_)))
                    (_hd4493145106_
                     (let () (declare (not safe)) (##car _e4493245102_))))
                (if (gx#stx-null? _tl4493045109_)
                    (___kont4785347854_
                     _hd4493145106_
                     _hd4490045223_
                     _hd4489745213_)
                    (if (gx#stx-pair? _tl4493045109_)
                        (let ((_e4495245012_ (gx#syntax-e _tl4493045109_)))
                          (let ((_tl4495045019_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4495245012_)))
                                (_hd4495145016_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4495245012_))))
                            (if (gx#identifier? _hd4495145016_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g48905_|
                                     _hd4495145016_)
                                    (if (gx#stx-pair? _tl4495045019_)
                                        (let ((_e4495545022_
                                               (gx#syntax-e _tl4495045019_)))
                                          (let ((_tl4495345029_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4495545022_)))
                                                (_hd4495445026_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4495545022_))))
                                            (if (gx#stx-null? _tl4495345029_)
                                                (___kont4785547856_
                                                 _hd4495445026_
                                                 _hd4493145106_
                                                 _hd4490045223_
                                                 _hd4489745213_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4481544961_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4481544961_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4481544961_)))))
                        (let () (declare (not safe)) (_g4481544961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4481544961_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4481544961_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4481544961_))))))
                              (let () (declare (not safe)) (_g4481544961_))))))
                   (___match4791747918_
                    (lambda (_e4484645385_
                             _hd4484545389_
                             _tl4484445392_
                             _e4484945395_
                             _hd4484845399_
                             _tl4484745402_
                             _e4485245405_
                             _hd4485145409_
                             _tl4485045412_
                             ___splice4784347844_
                             _target4485345415_
                             _tl4485545418_)
                      (letrec ((_loop4485645421_
                                (lambda (_hd4485445425_ _pred4486045428_)
                                  (if (gx#stx-pair? _hd4485445425_)
                                      (let ((_e4485745431_
                                             (gx#syntax-e _hd4485445425_)))
                                        (let ((_lp-tl4485945438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4485745431_)))
                                              (_lp-hd4485845435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4485745431_))))
                                          (_loop4485645421_
                                           _lp-tl4485945438_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4485845435_
                                                   _pred4486045428_)))))
                                      (let ((_pred4486145441_
                                             (reverse _pred4486045428_)))
                                        (if (gx#stx-pair? _tl4484745402_)
                                            (let ((_e4486445445_
                                                   (gx#syntax-e
                                                    _tl4484745402_)))
                                              (let ((_tl4486245452_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4486445445_)))
                                                    (_hd4486345449_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4486445445_))))
                                                (if (gx#stx-null?
                                                     _tl4486245452_)
                                                    (___kont4784147842_
                                                     _hd4486345449_
                                                     _pred4486145441_
                                                     _hd4484545389_)
                                                    (___match4800748008_
                                                     _e4484645385_
                                                     _hd4484545389_
                                                     _tl4484445392_
                                                     _e4484945395_
                                                     _hd4484845399_
                                                     _tl4484745402_
                                                     _e4486445445_
                                                     _hd4486345449_
                                                     _tl4486245452_))))
                                            (___match4798747988_
                                             _e4484645385_
                                             _hd4484545389_
                                             _tl4484445392_
                                             _e4484945395_
                                             _hd4484845399_
                                             _tl4484745402_)))))))
                        (_loop4485645421_ _target4485345415_ '()))))
                   (___match4788747888_
                    (lambda (_e4482245495_
                             _hd4482145499_
                             _tl4482045502_
                             _e4482545505_
                             _hd4482445509_
                             _tl4482345512_
                             _e4482845515_
                             _hd4482745519_
                             _tl4482645522_
                             ___splice4783947840_
                             _target4482945525_
                             _tl4483145528_)
                      (letrec ((_loop4483245531_
                                (lambda (_hd4483045535_ _pred4483645538_)
                                  (if (gx#stx-pair? _hd4483045535_)
                                      (let ((_e4483345541_
                                             (gx#syntax-e _hd4483045535_)))
                                        (let ((_lp-tl4483545548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4483345541_)))
                                              (_lp-hd4483445545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4483345541_))))
                                          (_loop4483245531_
                                           _lp-tl4483545548_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4483445545_
                                                   _pred4483645538_)))))
                                      (let ((_pred4483745551_
                                             (reverse _pred4483645538_)))
                                        (if (gx#stx-pair? _tl4482345512_)
                                            (let ((_e4484045555_
                                                   (gx#syntax-e
                                                    _tl4482345512_)))
                                              (let ((_tl4483845562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4484045555_)))
                                                    (_hd4483945559_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4484045555_))))
                                                (if (gx#stx-null?
                                                     _tl4483845562_)
                                                    (___kont4783747838_
                                                     _hd4483945559_
                                                     _pred4483745551_
                                                     _hd4482145499_)
                                                    (___match4800748008_
                                                     _e4482245495_
                                                     _hd4482145499_
                                                     _tl4482045502_
                                                     _e4482545505_
                                                     _hd4482445509_
                                                     _tl4482345512_
                                                     _e4484045555_
                                                     _hd4483945559_
                                                     _tl4483845562_))))
                                            (___match4798747988_
                                             _e4482245495_
                                             _hd4482145499_
                                             _tl4482045502_
                                             _e4482545505_
                                             _hd4482445509_
                                             _tl4482345512_)))))))
                        (_loop4483245531_ _target4482945525_ '())))))
              (if (gx#stx-pair? ___stx4783447835_)
                  (let ((_e4482245495_ (gx#syntax-e ___stx4783447835_)))
                    (let ((_tl4482045502_
                           (let () (declare (not safe)) (##cdr _e4482245495_)))
                          (_hd4482145499_
                           (let ()
                             (declare (not safe))
                             (##car _e4482245495_))))
                      (if (gx#stx-pair? _tl4482045502_)
                          (let ((_e4482545505_ (gx#syntax-e _tl4482045502_)))
                            (let ((_tl4482345512_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4482545505_)))
                                  (_hd4482445509_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4482545505_))))
                              (if (gx#stx-pair? _hd4482445509_)
                                  (let ((_e4482845515_
                                         (gx#syntax-e _hd4482445509_)))
                                    (let ((_tl4482645522_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4482845515_)))
                                          (_hd4482745519_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4482845515_))))
                                      (if (gx#identifier? _hd4482745519_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g48909_|
                                               _hd4482745519_)
                                              (if (gx#stx-pair/null?
                                                   _tl4482645522_)
                                                  (let ((___splice4783947840_
                                                         (gx#syntax-split-splice
                                                          _tl4482645522_
                                                          '0)))
                                                    (let ((_tl4483145528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4783947840_
                                                              '1)))
                                                          (_target4482945525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4783947840_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4483145528_)
                                                          (___match4788747888_
                                                           _e4482245495_
                                                           _hd4482145499_
                                                           _tl4482045502_
                                                           _e4482545505_
                                                           _hd4482445509_
                                                           _tl4482345512_
                                                           _e4482845515_
                                                           _hd4482745519_
                                                           _tl4482645522_
                                                           ___splice4783947840_
                                                           _target4482945525_
                                                           _tl4483145528_)
                                                          (if (gx#stx-pair?
                                                               _tl4482345512_)
                                                              (let ((_e4489345271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl4482345512_)))
                        (let ((_tl4489145278_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4489345271_)))
                              (_hd4489245275_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4489345271_))))
                          (if (gx#stx-null? _tl4489145278_)
                              (___kont4784747848_
                               _hd4489245275_
                               _hd4482445509_)
                              (if (gx#identifier? _hd4489245275_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g48906_|
                                       _hd4489245275_)
                                      (if (gx#stx-pair? _tl4489145278_)
                                          (let ((_e4491645171_
                                                 (gx#syntax-e _tl4489145278_)))
                                            (let ((_tl4491445178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4491645171_)))
                                                  (_hd4491545175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4491645171_))))
                                              (if (gx#stx-null? _tl4491445178_)
                                                  (___kont4785147852_
                                                   _hd4491545175_
                                                   _hd4482445509_
                                                   _hd4482145499_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4481544961_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4481544961_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4481544961_)))
                                  (if (gx#stx-datum? _hd4489245275_)
                                      (let ((_e4492945098_
                                             (gx#stx-e _hd4489245275_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4492945098_ '::))
                                            (if (gx#stx-pair? _tl4489145278_)
                                                (let ((_e4493245102_
                                                       (gx#syntax-e
                                                        _tl4489145278_)))
                                                  (let ((_tl4493045109_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4493245102_)))
                                                        (_hd4493145106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4493245102_))))
                                                    (if (gx#stx-null?
                                                         _tl4493045109_)
                                                        (___kont4785347854_
                                                         _hd4493145106_
                                                         _hd4482445509_
                                                         _hd4482145499_)
                                                        (if (gx#stx-pair?
                                                             _tl4493045109_)
                                                            (let ((_e4495245012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4493045109_)))
                      (let ((_tl4495045019_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4495245012_)))
                            (_hd4495145016_
                             (let ()
                               (declare (not safe))
                               (##car _e4495245012_))))
                        (if (gx#identifier? _hd4495145016_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g48905_|
                                 _hd4495145016_)
                                (if (gx#stx-pair? _tl4495045019_)
                                    (let ((_e4495545022_
                                           (gx#syntax-e _tl4495045019_)))
                                      (let ((_tl4495345029_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4495545022_)))
                                            (_hd4495445026_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4495545022_))))
                                        (if (gx#stx-null? _tl4495345029_)
                                            (___kont4785547856_
                                             _hd4495445026_
                                             _hd4493145106_
                                             _hd4482445509_
                                             _hd4482145499_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4481544961_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_)))
                                (let () (declare (not safe)) (_g4481544961_)))
                            (let () (declare (not safe)) (_g4481544961_)))))
                    (let () (declare (not safe)) (_g4481544961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4481544961_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4481544961_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4481544961_)))))))
                      (if (gx#stx-null? _tl4482345512_)
                          (___kont4784947850_ _hd4482445509_ _hd4482145499_)
                          (let () (declare (not safe)) (_g4481544961_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl4482345512_)
                                                      (let ((_e4489345271_
                                                             (gx#syntax-e
                                                              _tl4482345512_)))
                                                        (let ((_tl4489145278_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4489345271_)))
                      (_hd4489245275_
                       (let () (declare (not safe)) (##car _e4489345271_))))
                  (if (gx#stx-null? _tl4489145278_)
                      (___kont4784747848_ _hd4489245275_ _hd4482445509_)
                      (if (gx#identifier? _hd4489245275_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g48906_|
                               _hd4489245275_)
                              (if (gx#stx-pair? _tl4489145278_)
                                  (let ((_e4491645171_
                                         (gx#syntax-e _tl4489145278_)))
                                    (let ((_tl4491445178_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4491645171_)))
                                          (_hd4491545175_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4491645171_))))
                                      (if (gx#stx-null? _tl4491445178_)
                                          (___kont4785147852_
                                           _hd4491545175_
                                           _hd4482445509_
                                           _hd4482145499_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4481544961_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4481544961_)))
                              (let () (declare (not safe)) (_g4481544961_)))
                          (if (gx#stx-datum? _hd4489245275_)
                              (let ((_e4492945098_ (gx#stx-e _hd4489245275_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e4492945098_ '::))
                                    (if (gx#stx-pair? _tl4489145278_)
                                        (let ((_e4493245102_
                                               (gx#syntax-e _tl4489145278_)))
                                          (let ((_tl4493045109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4493245102_)))
                                                (_hd4493145106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4493245102_))))
                                            (if (gx#stx-null? _tl4493045109_)
                                                (___kont4785347854_
                                                 _hd4493145106_
                                                 _hd4482445509_
                                                 _hd4482145499_)
                                                (if (gx#stx-pair?
                                                     _tl4493045109_)
                                                    (let ((_e4495245012_
                                                           (gx#syntax-e
                                                            _tl4493045109_)))
                                                      (let ((_tl4495045019_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4495245012_)))
                    (_hd4495145016_
                     (let () (declare (not safe)) (##car _e4495245012_))))
                (if (gx#identifier? _hd4495145016_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g48905_|
                         _hd4495145016_)
                        (if (gx#stx-pair? _tl4495045019_)
                            (let ((_e4495545022_ (gx#syntax-e _tl4495045019_)))
                              (let ((_tl4495345029_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4495545022_)))
                                    (_hd4495445026_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4495545022_))))
                                (if (gx#stx-null? _tl4495345029_)
                                    (___kont4785547856_
                                     _hd4495445026_
                                     _hd4493145106_
                                     _hd4482445509_
                                     _hd4482145499_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_)))))
                            (let () (declare (not safe)) (_g4481544961_)))
                        (let () (declare (not safe)) (_g4481544961_)))
                    (let () (declare (not safe)) (_g4481544961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4481544961_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4481544961_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_))))
                              (let ()
                                (declare (not safe))
                                (_g4481544961_)))))))
              (if (gx#stx-null? _tl4482345512_)
                  (___kont4784947850_ _hd4482445509_ _hd4482145499_)
                  (let () (declare (not safe)) (_g4481544961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g48908_|
                                                   _hd4482745519_)
                                                  (if (gx#stx-pair/null?
                                                       _tl4482645522_)
                                                      (let ((___splice4784347844_
                                                             (gx#syntax-split-splice
                                                              _tl4482645522_
                                                              '0)))
                                                        (let ((_tl4485545418_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4784347844_ '1)))
                      (_target4485345415_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4784347844_ '0))))
                  (if (gx#stx-null? _tl4485545418_)
                      (___match4791747918_
                       _e4482245495_
                       _hd4482145499_
                       _tl4482045502_
                       _e4482545505_
                       _hd4482445509_
                       _tl4482345512_
                       _e4482845515_
                       _hd4482745519_
                       _tl4482645522_
                       ___splice4784347844_
                       _target4485345415_
                       _tl4485545418_)
                      (if (gx#stx-pair? _tl4482345512_)
                          (let ((_e4489345271_ (gx#syntax-e _tl4482345512_)))
                            (let ((_tl4489145278_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4489345271_)))
                                  (_hd4489245275_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4489345271_))))
                              (if (gx#stx-null? _tl4489145278_)
                                  (___kont4784747848_
                                   _hd4489245275_
                                   _hd4482445509_)
                                  (if (gx#identifier? _hd4489245275_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g48906_|
                                           _hd4489245275_)
                                          (if (gx#stx-pair? _tl4489145278_)
                                              (let ((_e4491645171_
                                                     (gx#syntax-e
                                                      _tl4489145278_)))
                                                (let ((_tl4491445178_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4491645171_)))
                                                      (_hd4491545175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4491645171_))))
                                                  (if (gx#stx-null?
                                                       _tl4491445178_)
                                                      (___kont4785147852_
                                                       _hd4491545175_
                                                       _hd4482445509_
                                                       _hd4482145499_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4481544961_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4481544961_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4481544961_)))
                                      (if (gx#stx-datum? _hd4489245275_)
                                          (let ((_e4492945098_
                                                 (gx#stx-e _hd4489245275_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e4492945098_ '::))
                                                (if (gx#stx-pair?
                                                     _tl4489145278_)
                                                    (let ((_e4493245102_
                                                           (gx#syntax-e
                                                            _tl4489145278_)))
                                                      (let ((_tl4493045109_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4493245102_)))
                    (_hd4493145106_
                     (let () (declare (not safe)) (##car _e4493245102_))))
                (if (gx#stx-null? _tl4493045109_)
                    (___kont4785347854_
                     _hd4493145106_
                     _hd4482445509_
                     _hd4482145499_)
                    (if (gx#stx-pair? _tl4493045109_)
                        (let ((_e4495245012_ (gx#syntax-e _tl4493045109_)))
                          (let ((_tl4495045019_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4495245012_)))
                                (_hd4495145016_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4495245012_))))
                            (if (gx#identifier? _hd4495145016_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g48905_|
                                     _hd4495145016_)
                                    (if (gx#stx-pair? _tl4495045019_)
                                        (let ((_e4495545022_
                                               (gx#syntax-e _tl4495045019_)))
                                          (let ((_tl4495345029_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4495545022_)))
                                                (_hd4495445026_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4495545022_))))
                                            (if (gx#stx-null? _tl4495345029_)
                                                (___kont4785547856_
                                                 _hd4495445026_
                                                 _hd4493145106_
                                                 _hd4482445509_
                                                 _hd4482145499_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4481544961_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4481544961_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4481544961_)))))
                        (let () (declare (not safe)) (_g4481544961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4481544961_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4481544961_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4481544961_)))))))
                          (if (gx#stx-null? _tl4482345512_)
                              (___kont4784947850_
                               _hd4482445509_
                               _hd4482145499_)
                              (let ()
                                (declare (not safe))
                                (_g4481544961_)))))))
              (if (gx#stx-pair? _tl4482345512_)
                  (let ((_e4489345271_ (gx#syntax-e _tl4482345512_)))
                    (let ((_tl4489145278_
                           (let () (declare (not safe)) (##cdr _e4489345271_)))
                          (_hd4489245275_
                           (let ()
                             (declare (not safe))
                             (##car _e4489345271_))))
                      (if (gx#stx-null? _tl4489145278_)
                          (___kont4784747848_ _hd4489245275_ _hd4482445509_)
                          (if (gx#identifier? _hd4489245275_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g48906_|
                                   _hd4489245275_)
                                  (if (gx#stx-pair? _tl4489145278_)
                                      (let ((_e4491645171_
                                             (gx#syntax-e _tl4489145278_)))
                                        (let ((_tl4491445178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4491645171_)))
                                              (_hd4491545175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4491645171_))))
                                          (if (gx#stx-null? _tl4491445178_)
                                              (___kont4785147852_
                                               _hd4491545175_
                                               _hd4482445509_
                                               _hd4482145499_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4481544961_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4481544961_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g4481544961_)))
                              (if (gx#stx-datum? _hd4489245275_)
                                  (let ((_e4492945098_
                                         (gx#stx-e _hd4489245275_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e4492945098_ '::))
                                        (if (gx#stx-pair? _tl4489145278_)
                                            (let ((_e4493245102_
                                                   (gx#syntax-e
                                                    _tl4489145278_)))
                                              (let ((_tl4493045109_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4493245102_)))
                                                    (_hd4493145106_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4493245102_))))
                                                (if (gx#stx-null?
                                                     _tl4493045109_)
                                                    (___kont4785347854_
                                                     _hd4493145106_
                                                     _hd4482445509_
                                                     _hd4482145499_)
                                                    (if (gx#stx-pair?
                                                         _tl4493045109_)
                                                        (let ((_e4495245012_
                                                               (gx#syntax-e
                                                                _tl4493045109_)))
                                                          (let ((_tl4495045019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4495245012_)))
                        (_hd4495145016_
                         (let () (declare (not safe)) (##car _e4495245012_))))
                    (if (gx#identifier? _hd4495145016_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g48905_|
                             _hd4495145016_)
                            (if (gx#stx-pair? _tl4495045019_)
                                (let ((_e4495545022_
                                       (gx#syntax-e _tl4495045019_)))
                                  (let ((_tl4495345029_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4495545022_)))
                                        (_hd4495445026_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4495545022_))))
                                    (if (gx#stx-null? _tl4495345029_)
                                        (___kont4785547856_
                                         _hd4495445026_
                                         _hd4493145106_
                                         _hd4482445509_
                                         _hd4482145499_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4481544961_)))))
                                (let () (declare (not safe)) (_g4481544961_)))
                            (let () (declare (not safe)) (_g4481544961_)))
                        (let () (declare (not safe)) (_g4481544961_)))))
                (let () (declare (not safe)) (_g4481544961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g4481544961_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4481544961_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4481544961_)))))))
                  (if (gx#stx-null? _tl4482345512_)
                      (___kont4784947850_ _hd4482445509_ _hd4482145499_)
                      (let () (declare (not safe)) (_g4481544961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g48907_|
                                                       _hd4482745519_)
                                                      (if (gx#stx-pair?
                                                           _tl4482645522_)
                                                          (let ((_e4487945335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4482645522_)))
                    (let ((_tl4487745342_
                           (let () (declare (not safe)) (##cdr _e4487945335_)))
                          (_hd4487845339_
                           (let ()
                             (declare (not safe))
                             (##car _e4487945335_))))
                      (if (gx#stx-null? _tl4487745342_)
                          (if (gx#stx-pair? _tl4482345512_)
                              (let ((_e4488245345_
                                     (gx#syntax-e _tl4482345512_)))
                                (let ((_tl4488045352_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4488245345_)))
                                      (_hd4488145349_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4488245345_))))
                                  (if (gx#stx-null? _tl4488045352_)
                                      (___kont4784547846_
                                       _hd4488145349_
                                       _hd4487845339_
                                       _hd4482145499_)
                                      (if (gx#identifier? _hd4488145349_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g48906_|
                                               _hd4488145349_)
                                              (if (gx#stx-pair? _tl4488045352_)
                                                  (let ((_e4491645171_
                                                         (gx#syntax-e
                                                          _tl4488045352_)))
                                                    (let ((_tl4491445178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4491645171_)))
                                                          (_hd4491545175_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4491645171_))))
                                                      (if (gx#stx-null?
                                                           _tl4491445178_)
                                                          (___kont4785147852_
                                                           _hd4491545175_
                                                           _hd4482445509_
                                                           _hd4482145499_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4481544961_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4481544961_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4481544961_)))
                                          (if (gx#stx-datum? _hd4488145349_)
                                              (let ((_e4492945098_
                                                     (gx#stx-e
                                                      _hd4488145349_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e4492945098_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl4488045352_)
                                                        (let ((_e4493245102_
                                                               (gx#syntax-e
                                                                _tl4488045352_)))
                                                          (let ((_tl4493045109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4493245102_)))
                        (_hd4493145106_
                         (let () (declare (not safe)) (##car _e4493245102_))))
                    (if (gx#stx-null? _tl4493045109_)
                        (___kont4785347854_
                         _hd4493145106_
                         _hd4482445509_
                         _hd4482145499_)
                        (if (gx#stx-pair? _tl4493045109_)
                            (let ((_e4495245012_ (gx#syntax-e _tl4493045109_)))
                              (let ((_tl4495045019_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4495245012_)))
                                    (_hd4495145016_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4495245012_))))
                                (if (gx#identifier? _hd4495145016_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g48905_|
                                         _hd4495145016_)
                                        (if (gx#stx-pair? _tl4495045019_)
                                            (let ((_e4495545022_
                                                   (gx#syntax-e
                                                    _tl4495045019_)))
                                              (let ((_tl4495345029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4495545022_)))
                                                    (_hd4495445026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4495545022_))))
                                                (if (gx#stx-null?
                                                     _tl4495345029_)
                                                    (___kont4785547856_
                                                     _hd4495445026_
                                                     _hd4493145106_
                                                     _hd4482445509_
                                                     _hd4482145499_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4481544961_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4481544961_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4481544961_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_)))))
                            (let () (declare (not safe)) (_g4481544961_))))))
                (let () (declare (not safe)) (_g4481544961_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4481544961_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4481544961_)))))))
                              (if (gx#stx-null? _tl4482345512_)
                                  (___kont4784947850_
                                   _hd4482445509_
                                   _hd4482145499_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4481544961_))))
                          (if (gx#stx-pair? _tl4482345512_)
                              (let ((_e4489345271_
                                     (gx#syntax-e _tl4482345512_)))
                                (let ((_tl4489145278_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4489345271_)))
                                      (_hd4489245275_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4489345271_))))
                                  (if (gx#stx-null? _tl4489145278_)
                                      (___kont4784747848_
                                       _hd4489245275_
                                       _hd4482445509_)
                                      (if (gx#identifier? _hd4489245275_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g48906_|
                                               _hd4489245275_)
                                              (if (gx#stx-pair? _tl4489145278_)
                                                  (let ((_e4491645171_
                                                         (gx#syntax-e
                                                          _tl4489145278_)))
                                                    (let ((_tl4491445178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4491645171_)))
                                                          (_hd4491545175_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4491645171_))))
                                                      (if (gx#stx-null?
                                                           _tl4491445178_)
                                                          (___kont4785147852_
                                                           _hd4491545175_
                                                           _hd4482445509_
                                                           _hd4482145499_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4481544961_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4481544961_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4481544961_)))
                                          (if (gx#stx-datum? _hd4489245275_)
                                              (let ((_e4492945098_
                                                     (gx#stx-e
                                                      _hd4489245275_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e4492945098_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl4489145278_)
                                                        (let ((_e4493245102_
                                                               (gx#syntax-e
                                                                _tl4489145278_)))
                                                          (let ((_tl4493045109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4493245102_)))
                        (_hd4493145106_
                         (let () (declare (not safe)) (##car _e4493245102_))))
                    (if (gx#stx-null? _tl4493045109_)
                        (___kont4785347854_
                         _hd4493145106_
                         _hd4482445509_
                         _hd4482145499_)
                        (if (gx#stx-pair? _tl4493045109_)
                            (let ((_e4495245012_ (gx#syntax-e _tl4493045109_)))
                              (let ((_tl4495045019_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4495245012_)))
                                    (_hd4495145016_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4495245012_))))
                                (if (gx#identifier? _hd4495145016_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g48905_|
                                         _hd4495145016_)
                                        (if (gx#stx-pair? _tl4495045019_)
                                            (let ((_e4495545022_
                                                   (gx#syntax-e
                                                    _tl4495045019_)))
                                              (let ((_tl4495345029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4495545022_)))
                                                    (_hd4495445026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4495545022_))))
                                                (if (gx#stx-null?
                                                     _tl4495345029_)
                                                    (___kont4785547856_
                                                     _hd4495445026_
                                                     _hd4493145106_
                                                     _hd4482445509_
                                                     _hd4482145499_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4481544961_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4481544961_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4481544961_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_)))))
                            (let () (declare (not safe)) (_g4481544961_))))))
                (let () (declare (not safe)) (_g4481544961_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4481544961_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4481544961_)))))))
                              (if (gx#stx-null? _tl4482345512_)
                                  (___kont4784947850_
                                   _hd4482445509_
                                   _hd4482145499_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4481544961_)))))))
                  (if (gx#stx-pair? _tl4482345512_)
                      (let ((_e4489345271_ (gx#syntax-e _tl4482345512_)))
                        (let ((_tl4489145278_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4489345271_)))
                              (_hd4489245275_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4489345271_))))
                          (if (gx#stx-null? _tl4489145278_)
                              (___kont4784747848_
                               _hd4489245275_
                               _hd4482445509_)
                              (if (gx#identifier? _hd4489245275_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g48906_|
                                       _hd4489245275_)
                                      (if (gx#stx-pair? _tl4489145278_)
                                          (let ((_e4491645171_
                                                 (gx#syntax-e _tl4489145278_)))
                                            (let ((_tl4491445178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4491645171_)))
                                                  (_hd4491545175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4491645171_))))
                                              (if (gx#stx-null? _tl4491445178_)
                                                  (___kont4785147852_
                                                   _hd4491545175_
                                                   _hd4482445509_
                                                   _hd4482145499_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4481544961_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4481544961_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4481544961_)))
                                  (if (gx#stx-datum? _hd4489245275_)
                                      (let ((_e4492945098_
                                             (gx#stx-e _hd4489245275_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4492945098_ '::))
                                            (if (gx#stx-pair? _tl4489145278_)
                                                (let ((_e4493245102_
                                                       (gx#syntax-e
                                                        _tl4489145278_)))
                                                  (let ((_tl4493045109_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4493245102_)))
                                                        (_hd4493145106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4493245102_))))
                                                    (if (gx#stx-null?
                                                         _tl4493045109_)
                                                        (___kont4785347854_
                                                         _hd4493145106_
                                                         _hd4482445509_
                                                         _hd4482145499_)
                                                        (if (gx#stx-pair?
                                                             _tl4493045109_)
                                                            (let ((_e4495245012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4493045109_)))
                      (let ((_tl4495045019_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4495245012_)))
                            (_hd4495145016_
                             (let ()
                               (declare (not safe))
                               (##car _e4495245012_))))
                        (if (gx#identifier? _hd4495145016_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g48905_|
                                 _hd4495145016_)
                                (if (gx#stx-pair? _tl4495045019_)
                                    (let ((_e4495545022_
                                           (gx#syntax-e _tl4495045019_)))
                                      (let ((_tl4495345029_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4495545022_)))
                                            (_hd4495445026_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4495545022_))))
                                        (if (gx#stx-null? _tl4495345029_)
                                            (___kont4785547856_
                                             _hd4495445026_
                                             _hd4493145106_
                                             _hd4482445509_
                                             _hd4482145499_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4481544961_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_)))
                                (let () (declare (not safe)) (_g4481544961_)))
                            (let () (declare (not safe)) (_g4481544961_)))))
                    (let () (declare (not safe)) (_g4481544961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4481544961_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4481544961_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4481544961_)))))))
                      (if (gx#stx-null? _tl4482345512_)
                          (___kont4784947850_ _hd4482445509_ _hd4482145499_)
                          (let () (declare (not safe)) (_g4481544961_)))))
              (if (gx#stx-pair? _tl4482345512_)
                  (let ((_e4489345271_ (gx#syntax-e _tl4482345512_)))
                    (let ((_tl4489145278_
                           (let () (declare (not safe)) (##cdr _e4489345271_)))
                          (_hd4489245275_
                           (let ()
                             (declare (not safe))
                             (##car _e4489345271_))))
                      (if (gx#stx-null? _tl4489145278_)
                          (___kont4784747848_ _hd4489245275_ _hd4482445509_)
                          (if (gx#identifier? _hd4489245275_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g48906_|
                                   _hd4489245275_)
                                  (if (gx#stx-pair? _tl4489145278_)
                                      (let ((_e4491645171_
                                             (gx#syntax-e _tl4489145278_)))
                                        (let ((_tl4491445178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4491645171_)))
                                              (_hd4491545175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4491645171_))))
                                          (if (gx#stx-null? _tl4491445178_)
                                              (___kont4785147852_
                                               _hd4491545175_
                                               _hd4482445509_
                                               _hd4482145499_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4481544961_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4481544961_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g4481544961_)))
                              (if (gx#stx-datum? _hd4489245275_)
                                  (let ((_e4492945098_
                                         (gx#stx-e _hd4489245275_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e4492945098_ '::))
                                        (if (gx#stx-pair? _tl4489145278_)
                                            (let ((_e4493245102_
                                                   (gx#syntax-e
                                                    _tl4489145278_)))
                                              (let ((_tl4493045109_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4493245102_)))
                                                    (_hd4493145106_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4493245102_))))
                                                (if (gx#stx-null?
                                                     _tl4493045109_)
                                                    (___kont4785347854_
                                                     _hd4493145106_
                                                     _hd4482445509_
                                                     _hd4482145499_)
                                                    (if (gx#stx-pair?
                                                         _tl4493045109_)
                                                        (let ((_e4495245012_
                                                               (gx#syntax-e
                                                                _tl4493045109_)))
                                                          (let ((_tl4495045019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4495245012_)))
                        (_hd4495145016_
                         (let () (declare (not safe)) (##car _e4495245012_))))
                    (if (gx#identifier? _hd4495145016_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g48905_|
                             _hd4495145016_)
                            (if (gx#stx-pair? _tl4495045019_)
                                (let ((_e4495545022_
                                       (gx#syntax-e _tl4495045019_)))
                                  (let ((_tl4495345029_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4495545022_)))
                                        (_hd4495445026_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4495545022_))))
                                    (if (gx#stx-null? _tl4495345029_)
                                        (___kont4785547856_
                                         _hd4495445026_
                                         _hd4493145106_
                                         _hd4482445509_
                                         _hd4482145499_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4481544961_)))))
                                (let () (declare (not safe)) (_g4481544961_)))
                            (let () (declare (not safe)) (_g4481544961_)))
                        (let () (declare (not safe)) (_g4481544961_)))))
                (let () (declare (not safe)) (_g4481544961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g4481544961_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4481544961_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4481544961_)))))))
                  (if (gx#stx-null? _tl4482345512_)
                      (___kont4784947850_ _hd4482445509_ _hd4482145499_)
                      (let () (declare (not safe)) (_g4481544961_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl4482345512_)
                                              (let ((_e4489345271_
                                                     (gx#syntax-e
                                                      _tl4482345512_)))
                                                (let ((_tl4489145278_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4489345271_)))
                                                      (_hd4489245275_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4489345271_))))
                                                  (if (gx#stx-null?
                                                       _tl4489145278_)
                                                      (___kont4784747848_
                                                       _hd4489245275_
                                                       _hd4482445509_)
                                                      (if (gx#identifier?
                                                           _hd4489245275_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g48906_|
                                                               _hd4489245275_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4489145278_)
                          (let ((_e4491645171_ (gx#syntax-e _tl4489145278_)))
                            (let ((_tl4491445178_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4491645171_)))
                                  (_hd4491545175_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4491645171_))))
                              (if (gx#stx-null? _tl4491445178_)
                                  (___kont4785147852_
                                   _hd4491545175_
                                   _hd4482445509_
                                   _hd4482145499_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4481544961_)))))
                          (let () (declare (not safe)) (_g4481544961_)))
                      (let () (declare (not safe)) (_g4481544961_)))
                  (if (gx#stx-datum? _hd4489245275_)
                      (let ((_e4492945098_ (gx#stx-e _hd4489245275_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e4492945098_ '::))
                            (if (gx#stx-pair? _tl4489145278_)
                                (let ((_e4493245102_
                                       (gx#syntax-e _tl4489145278_)))
                                  (let ((_tl4493045109_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4493245102_)))
                                        (_hd4493145106_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4493245102_))))
                                    (if (gx#stx-null? _tl4493045109_)
                                        (___kont4785347854_
                                         _hd4493145106_
                                         _hd4482445509_
                                         _hd4482145499_)
                                        (if (gx#stx-pair? _tl4493045109_)
                                            (let ((_e4495245012_
                                                   (gx#syntax-e
                                                    _tl4493045109_)))
                                              (let ((_tl4495045019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4495245012_)))
                                                    (_hd4495145016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4495245012_))))
                                                (if (gx#identifier?
                                                     _hd4495145016_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g48905_|
                                                         _hd4495145016_)
                                                        (if (gx#stx-pair?
                                                             _tl4495045019_)
                                                            (let ((_e4495545022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4495045019_)))
                      (let ((_tl4495345029_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4495545022_)))
                            (_hd4495445026_
                             (let ()
                               (declare (not safe))
                               (##car _e4495545022_))))
                        (if (gx#stx-null? _tl4495345029_)
                            (___kont4785547856_
                             _hd4495445026_
                             _hd4493145106_
                             _hd4482445509_
                             _hd4482145499_)
                            (let () (declare (not safe)) (_g4481544961_)))))
                    (let () (declare (not safe)) (_g4481544961_)))
                (let () (declare (not safe)) (_g4481544961_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4481544961_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4481544961_))))))
                                (let () (declare (not safe)) (_g4481544961_)))
                            (let () (declare (not safe)) (_g4481544961_))))
                      (let () (declare (not safe)) (_g4481544961_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl4482345512_)
                                                  (___kont4784947850_
                                                   _hd4482445509_
                                                   _hd4482145499_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4481544961_)))))))
                                  (if (gx#stx-pair? _tl4482345512_)
                                      (let ((_e4489345271_
                                             (gx#syntax-e _tl4482345512_)))
                                        (let ((_tl4489145278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4489345271_)))
                                              (_hd4489245275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4489345271_))))
                                          (if (gx#stx-null? _tl4489145278_)
                                              (___kont4784747848_
                                               _hd4489245275_
                                               _hd4482445509_)
                                              (if (gx#identifier?
                                                   _hd4489245275_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g48906_|
                                                       _hd4489245275_)
                                                      (if (gx#stx-pair?
                                                           _tl4489145278_)
                                                          (let ((_e4491645171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4489145278_)))
                    (let ((_tl4491445178_
                           (let () (declare (not safe)) (##cdr _e4491645171_)))
                          (_hd4491545175_
                           (let ()
                             (declare (not safe))
                             (##car _e4491645171_))))
                      (if (gx#stx-null? _tl4491445178_)
                          (___kont4785147852_
                           _hd4491545175_
                           _hd4482445509_
                           _hd4482145499_)
                          (let () (declare (not safe)) (_g4481544961_)))))
                  (let () (declare (not safe)) (_g4481544961_)))
              (let () (declare (not safe)) (_g4481544961_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd4489245275_)
                                                      (let ((_e4492945098_
                                                             (gx#stx-e
                                                              _hd4489245275_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e4492945098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl4489145278_)
                        (let ((_e4493245102_ (gx#syntax-e _tl4489145278_)))
                          (let ((_tl4493045109_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4493245102_)))
                                (_hd4493145106_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4493245102_))))
                            (if (gx#stx-null? _tl4493045109_)
                                (___kont4785347854_
                                 _hd4493145106_
                                 _hd4482445509_
                                 _hd4482145499_)
                                (if (gx#stx-pair? _tl4493045109_)
                                    (let ((_e4495245012_
                                           (gx#syntax-e _tl4493045109_)))
                                      (let ((_tl4495045019_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4495245012_)))
                                            (_hd4495145016_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4495245012_))))
                                        (if (gx#identifier? _hd4495145016_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g48905_|
                                                 _hd4495145016_)
                                                (if (gx#stx-pair?
                                                     _tl4495045019_)
                                                    (let ((_e4495545022_
                                                           (gx#syntax-e
                                                            _tl4495045019_)))
                                                      (let ((_tl4495345029_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4495545022_)))
                    (_hd4495445026_
                     (let () (declare (not safe)) (##car _e4495545022_))))
                (if (gx#stx-null? _tl4495345029_)
                    (___kont4785547856_
                     _hd4495445026_
                     _hd4493145106_
                     _hd4482445509_
                     _hd4482145499_)
                    (let () (declare (not safe)) (_g4481544961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4481544961_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4481544961_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4481544961_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4481544961_))))))
                        (let () (declare (not safe)) (_g4481544961_)))
                    (let () (declare (not safe)) (_g4481544961_))))
              (let () (declare (not safe)) (_g4481544961_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl4482345512_)
                                          (___kont4784947850_
                                           _hd4482445509_
                                           _hd4482145499_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4481544961_)))))))
                          (let () (declare (not safe)) (_g4481544961_)))))
                  (let () (declare (not safe)) (_g4481544961_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_$stx45604_)
        (let* ((___stx4810248103_ _$stx45604_)
               (_g4560945643_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4810248103_))))
          (let ((___kont4810548106_
                 (lambda (_L45747_ _L45749_ _L45750_)
                   (let ((__tmp48971 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp48910
                          (let ((__tmp48911
                                 (let ((__tmp48912
                                        (let ((__tmp48970
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp48913
                                               (let ((__tmp48914
                                                      (let ((__tmp48915
                                                             (let ((__tmp48969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp48916
                            (let ((__tmp48961
                                   (let ((__tmp48966
                                          (let ((__tmp48968
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp48967
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L45749_ '()))))
                                            (declare (not safe))
                                            (cons __tmp48968 __tmp48967)))
                                         (__tmp48962
                                          (let ((__tmp48963
                                                 (let ((__tmp48965
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp48964
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L45747_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48965
                                                         __tmp48964))))
                                            (declare (not safe))
                                            (cons __tmp48963 '()))))
                                     (declare (not safe))
                                     (cons __tmp48966 __tmp48962)))
                                  (__tmp48917
                                   (let ((__tmp48918
                                          (let ((__tmp48960
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp48919
                                                 (let ((__tmp48958
                                                        (let ((__tmp48959
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp48959
                                                                '())))
                                                       (__tmp48920
                                                        (let ((__tmp48921
                                                               (let ((__tmp48957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp48922
                              (let ((__tmp48956 (gx#datum->syntax '#f '$stx))
                                    (__tmp48923
                                     (let ((__tmp48924
                                            (let ((__tmp48935
                                                   (let ((__tmp48954
                                                          (let ((__tmp48955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp48955)))
                 (__tmp48936
                  (let ((__tmp48937
                         (let ((__tmp48953
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp48938
                                (let ((__tmp48952
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp48939
                                       (let ((__tmp48940
                                              (let ((__tmp48951
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp48941
                                                     (let ((__tmp48947
                                                            (let ((__tmp48950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp48948
                           (let ((__tmp48949 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp48949 '()))))
                      (declare (not safe))
                      (cons __tmp48950 __tmp48948)))
                   (__tmp48942
                    (let ((__tmp48943
                           (let ((__tmp48946
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp48944
                                  (let ((__tmp48945
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp48945 '()))))
                             (declare (not safe))
                             (cons __tmp48946 __tmp48944))))
                      (declare (not safe))
                      (cons __tmp48943 '()))))
               (declare (not safe))
               (cons __tmp48947 __tmp48942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48951 __tmp48941))))
                                         (declare (not safe))
                                         (cons __tmp48940 '()))))
                                  (declare (not safe))
                                  (cons __tmp48952 __tmp48939))))
                           (declare (not safe))
                           (cons __tmp48953 __tmp48938))))
                    (declare (not safe))
                    (cons __tmp48937 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48954
                                                           __tmp48936)))
                                                  (__tmp48925
                                                   (let ((__tmp48926
                                                          (let ((__tmp48934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp48927
                         (let ((__tmp48928
                                (let ((__tmp48933
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp48929
                                       (let ((__tmp48932
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp48930
                                              (let ((__tmp48931
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp48931 '()))))
                                         (declare (not safe))
                                         (cons __tmp48932 __tmp48930))))
                                  (declare (not safe))
                                  (cons __tmp48933 __tmp48929))))
                           (declare (not safe))
                           (cons __tmp48928 '()))))
                    (declare (not safe))
                    (cons __tmp48934 __tmp48927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48926 '()))))
                                              (declare (not safe))
                                              (cons __tmp48935 __tmp48925))))
                                       (declare (not safe))
                                       (cons '() __tmp48924))))
                                (declare (not safe))
                                (cons __tmp48956 __tmp48923))))
                         (declare (not safe))
                         (cons __tmp48957 __tmp48922))))
                  (declare (not safe))
                  (cons __tmp48921 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48958
                                                         __tmp48920))))
                                            (declare (not safe))
                                            (cons __tmp48960 __tmp48919))))
                                     (declare (not safe))
                                     (cons __tmp48918 '()))))
                              (declare (not safe))
                              (cons __tmp48961 __tmp48917))))
                       (declare (not safe))
                       (cons __tmp48969 __tmp48916))))
                (declare (not safe))
                (cons __tmp48915 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp48914))))
                                          (declare (not safe))
                                          (cons __tmp48970 __tmp48913))))
                                   (declare (not safe))
                                   (cons __tmp48912 '()))))
                            (declare (not safe))
                            (cons _L45750_ __tmp48911))))
                     (declare (not safe))
                     (cons __tmp48971 __tmp48910))))
                (___kont4810748108_
                 (lambda (_L45680_ _L45682_ _L45683_)
                   (let ((__tmp48972
                          (let ((__tmp48973
                                 (let ((__tmp48974
                                        (let ((__tmp48975
                                               (let ((__tmp48986
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp48976
                                                      (let ((__tmp48984
                                                             (let ((__tmp48985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp48985 '())))
                    (__tmp48977
                     (let ((__tmp48978
                            (let ((__tmp48983
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp48979
                                   (let ((__tmp48980
                                          (let ((__tmp48981
                                                 (let ((__tmp48982
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp48982 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp48981))))
                                     (declare (not safe))
                                     (cons '#f __tmp48980))))
                              (declare (not safe))
                              (cons __tmp48983 __tmp48979))))
                       (declare (not safe))
                       (cons __tmp48978 '()))))
                (declare (not safe))
                (cons __tmp48984 __tmp48977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48986
                                                       __tmp48976))))
                                          (declare (not safe))
                                          (cons __tmp48975 '()))))
                                   (declare (not safe))
                                   (cons _L45680_ __tmp48974))))
                            (declare (not safe))
                            (cons _L45682_ __tmp48973))))
                     (declare (not safe))
                     (cons _L45683_ __tmp48972)))))
            (let ((___match4813548136_
                   (lambda (_e4561645707_
                            _hd4561545711_
                            _tl4561445714_
                            _e4561945717_
                            _hd4561845721_
                            _tl4561745724_
                            _e4562245727_
                            _hd4562145731_
                            _tl4562045734_
                            _e4562545737_
                            _hd4562445741_
                            _tl4562345744_)
                     (let ((_L45747_ _hd4562445741_)
                           (_L45749_ _hd4562145731_)
                           (_L45750_ _hd4561845721_))
                       (if (gx#identifier? _L45750_)
                           (___kont4810548106_ _L45747_ _L45749_ _L45750_)
                           (let () (declare (not safe)) (_g4560945643_)))))))
              (if (gx#stx-pair? ___stx4810248103_)
                  (let ((_e4561645707_ (gx#syntax-e ___stx4810248103_)))
                    (let ((_tl4561445714_
                           (let () (declare (not safe)) (##cdr _e4561645707_)))
                          (_hd4561545711_
                           (let ()
                             (declare (not safe))
                             (##car _e4561645707_))))
                      (if (gx#stx-pair? _tl4561445714_)
                          (let ((_e4561945717_ (gx#syntax-e _tl4561445714_)))
                            (let ((_tl4561745724_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4561945717_)))
                                  (_hd4561845721_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4561945717_))))
                              (if (gx#stx-pair? _tl4561745724_)
                                  (let ((_e4562245727_
                                         (gx#syntax-e _tl4561745724_)))
                                    (let ((_tl4562045734_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4562245727_)))
                                          (_hd4562145731_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4562245727_))))
                                      (if (gx#stx-pair? _tl4562045734_)
                                          (let ((_e4562545737_
                                                 (gx#syntax-e _tl4562045734_)))
                                            (let ((_tl4562345744_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4562545737_)))
                                                  (_hd4562445741_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4562545737_))))
                                              (if (gx#stx-null? _tl4562345744_)
                                                  (___match4813548136_
                                                   _e4561645707_
                                                   _hd4561545711_
                                                   _tl4561445714_
                                                   _e4561945717_
                                                   _hd4561845721_
                                                   _tl4561745724_
                                                   _e4562245727_
                                                   _hd4562145731_
                                                   _tl4562045734_
                                                   _e4562545737_
                                                   _hd4562445741_
                                                   _tl4562345744_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4560945643_)))))
                                          (if (gx#stx-null? _tl4562045734_)
                                              (___kont4810748108_
                                               _hd4562145731_
                                               _hd4561845721_
                                               _hd4561545711_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4560945643_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4560945643_)))))
                          (let () (declare (not safe)) (_g4560945643_)))))
                  (let () (declare (not safe)) (_g4560945643_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_$stx45772_)
        (let* ((_g4577645791_
                (lambda (_g4577745787_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4577745787_)))
               (_g4577545834_
                (lambda (_g4577745795_)
                  (if (gx#stx-pair? _g4577745795_)
                      (let ((_e4578245798_ (gx#syntax-e _g4577745795_)))
                        (let ((_hd4578145802_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4578245798_)))
                              (_tl4578045805_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4578245798_))))
                          (if (gx#stx-pair? _tl4578045805_)
                              (let ((_e4578545808_
                                     (gx#syntax-e _tl4578045805_)))
                                (let ((_hd4578445812_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4578545808_)))
                                      (_tl4578345815_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4578545808_))))
                                  ((lambda (_L45818_ _L45820_)
                                     (let ((__tmp48991
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp48987
                                            (let ((__tmp48988
                                                   (let ((__tmp48989
                                                          (let ((__tmp48990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp48990 _L45818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48989 '()))))
                                              (declare (not safe))
                                              (cons _L45820_ __tmp48988))))
                                       (declare (not safe))
                                       (cons __tmp48991 __tmp48987)))
                                   _tl4578345815_
                                   _hd4578445812_)))
                              (_g4577645791_ _g4577745795_))))
                      (_g4577645791_ _g4577745795_)))))
          (_g4577545834_ _$stx45772_))))))
