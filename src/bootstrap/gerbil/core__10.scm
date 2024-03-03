(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g52204_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52205_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52262_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52263_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52264_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52266_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52267_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52268_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52269_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52270_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52271_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52272_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52273_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52274_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52275_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52670_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52754_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52774_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g52775_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52904_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52905_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52906_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52907_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g52908_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (let ((__tmp52188 (list gerbil/core$<macro-object>#macro-object::t)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#match-macro::t
         'match-macro
         __tmp52188
         '()
         '()
         '#f)))
    (define |gerbil/core$<match>[1]#match-macro?|
      (let ()
        (declare (not safe))
        (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|)))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30641_
        (apply make-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30641_)))
    (define |gerbil/core$<match>[1]#match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#&match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#&match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30638_)
        (if (gx#identifier? _stx30638_)
            (let ((__tmp52189 (gx#syntax-local-value _stx30638_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp52189))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28944_ _match-stx28946_)
        (letrec ((_parse128948_
                  (lambda (_hd29301_)
                    (let* ((___stx4698246983_ _hd29301_)
                           (_g2932729469_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4698246983_))))
                      (let ((___kont4698546986_
                             (lambda (_L30401_ _L30403_)
                               (let* ((___stx4690246903_ _L30401_)
                                      (_g3042030453_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4690246903_))))
                                 (let ((___kont4690546906_
                                        (lambda ()
                                          (let ((__tmp52190
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30403_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp52190))))
                                       (___kont4690746908_
                                        (lambda (_L30594_)
                                          (let ((__tmp52191
                                                 (let ((__tmp52192
                                                        (let ((__tmp52193
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse128948_ _L30594_))))
                  (declare (not safe))
                  (cons __tmp52193 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp52192))))
                                            (declare (not safe))
                                            (cons '?: __tmp52191))))
                                       (___kont4690946910_
                                        (lambda (_L30564_)
                                          (let ((__tmp52194
                                                 (let ((__tmp52195
                                                        (let ((__tmp52196
                                                               (let ((__tmp52197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse128948_ _L30564_))))
                         (declare (not safe))
                         (cons __tmp52197 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp52196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp52195))))
                                            (declare (not safe))
                                            (cons '?: __tmp52194))))
                                       (___kont4691146912_
                                        (lambda (_L30515_ _L30517_)
                                          (let ((__tmp52198
                                                 (let ((__tmp52199
                                                        (let ((__tmp52200
                                                               (let ((__tmp52201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp52202
                                     (let ((__tmp52203
                                            (let ()
                                              (declare (not safe))
                                              (_parse128948_ _L30515_))))
                                       (declare (not safe))
                                       (cons __tmp52203 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp52202))))
                         (declare (not safe))
                         (cons _L30517_ __tmp52201))))
                  (declare (not safe))
                  (cons ':: __tmp52200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp52199))))
                                            (declare (not safe))
                                            (cons '?: __tmp52198))))
                                       (___kont4691346914_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28955_ _hd29301_)))))
                                   (let ((_g3041630605_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4690246903_)
                                                (let ((_e3042530584_
                                                       (gx#syntax-e
                                                        ___stx4690246903_)))
                                                  (let ((_tl3042330591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3042530584_)))
                                                        (_hd3042430588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3042530584_))))
                                                    (if (gx#stx-null?
                                                         _tl3042330591_)
                                                        (___kont4690746908_
                                                         _hd3042430588_)
                                                        (if (gx#identifier?
                                                             _hd3042430588_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g52205_|
                         _hd3042430588_)
                        (if (gx#stx-pair? _tl3042330591_)
                            (let ((_e3043230554_ (gx#syntax-e _tl3042330591_)))
                              (let ((_tl3043030561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3043230554_)))
                                    (_hd3043130558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3043230554_))))
                                (if (gx#stx-null? _tl3043030561_)
                                    (___kont4690946910_ _hd3043130558_)
                                    (___kont4691346914_))))
                            (___kont4691346914_))
                        (___kont4691346914_))
                    (if (gx#stx-datum? _hd3042430588_)
                        (let ((_e3043830481_ (gx#stx-e _hd3042430588_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e3043830481_ '::))
                              (if (gx#stx-pair? _tl3042330591_)
                                  (let ((_e3044130485_
                                         (gx#syntax-e _tl3042330591_)))
                                    (let ((_tl3043930492_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3044130485_)))
                                          (_hd3044030489_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3044130485_))))
                                      (if (gx#stx-pair? _tl3043930492_)
                                          (let ((_e3044430495_
                                                 (gx#syntax-e _tl3043930492_)))
                                            (let ((_tl3044230502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3044430495_)))
                                                  (_hd3044330499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3044430495_))))
                                              (if (gx#identifier?
                                                   _hd3044330499_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g52204_|
                                                       _hd3044330499_)
                                                      (if (gx#stx-pair?
                                                           _tl3044230502_)
                                                          (let ((_e3044730505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3044230502_)))
                    (let ((_tl3044530512_
                           (let () (declare (not safe)) (##cdr _e3044730505_)))
                          (_hd3044630509_
                           (let ()
                             (declare (not safe))
                             (##car _e3044730505_))))
                      (if (gx#stx-null? _tl3044530512_)
                          (___kont4691146912_ _hd3044630509_ _hd3044030489_)
                          (___kont4691346914_))))
                  (___kont4691346914_))
              (___kont4691346914_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4691346914_))))
                                          (___kont4691346914_))))
                                  (___kont4691346914_))
                              (___kont4691346914_)))
                        (___kont4691346914_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4691346914_)))))
                                     (if (gx#stx-null? ___stx4690246903_)
                                         (___kont4690546906_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3041630605_))))))))
                            (___kont4698746988_
                             (lambda (_L30306_)
                               (let* ((___stx4688446885_ _L30306_)
                                      (_g3031830329_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4688446885_))))
                                 (let ((___kont4688746888_
                                        (lambda (_L30357_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128948_ _L30357_))))
                                       (___kont4688946890_
                                        (lambda ()
                                          (let ((__tmp52206
                                                 (gx#stx-map
                                                  _parse128948_
                                                  _L30306_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp52206)))))
                                   (if (gx#stx-pair? ___stx4688446885_)
                                       (let ((_e3032330347_
                                              (gx#syntax-e ___stx4688446885_)))
                                         (let ((_tl3032130354_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3032330347_)))
                                               (_hd3032230351_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3032330347_))))
                                           (if (gx#stx-null? _tl3032130354_)
                                               (___kont4688746888_
                                                _hd3032230351_)
                                               (___kont4688946890_))))
                                       (___kont4688946890_))))))
                            (___kont4698946990_
                             (lambda (_L30221_)
                               (let* ((___stx4686646867_ _L30221_)
                                      (_g3023330244_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4686646867_))))
                                 (let ((___kont4686946870_
                                        (lambda (_L30272_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128948_ _L30272_))))
                                       (___kont4687146872_
                                        (lambda ()
                                          (let ((__tmp52207
                                                 (gx#stx-map
                                                  _parse128948_
                                                  _L30221_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp52207)))))
                                   (if (gx#stx-pair? ___stx4686646867_)
                                       (let ((_e3023830262_
                                              (gx#syntax-e ___stx4686646867_)))
                                         (let ((_tl3023630269_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3023830262_)))
                                               (_hd3023730266_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3023830262_))))
                                           (if (gx#stx-null? _tl3023630269_)
                                               (___kont4686946870_
                                                _hd3023730266_)
                                               (___kont4687146872_))))
                                       (___kont4687146872_))))))
                            (___kont4699146992_
                             (lambda (_L30191_)
                               (let ((__tmp52208
                                      (let ((__tmp52209
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30191_))))
                                        (declare (not safe))
                                        (cons __tmp52209 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp52208))))
                            (___kont4699346994_
                             (lambda (_L30147_ _L30149_)
                               (let ((__tmp52210
                                      (let ((__tmp52213
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30149_)))
                                            (__tmp52211
                                             (let ((__tmp52212
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128948_
                                                       _L30147_))))
                                               (declare (not safe))
                                               (cons __tmp52212 '()))))
                                        (declare (not safe))
                                        (cons __tmp52213 __tmp52211))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp52210))))
                            (___kont4699546996_
                             (lambda (_L30091_ _L30093_ _L30094_)
                               (if (gx#stx-null? _L30091_)
                                   (let ((__tmp52221
                                          (let ((__tmp52224
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128948_ _L30094_)))
                                                (__tmp52222
                                                 (let ((__tmp52223
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse128948_
                                                           _L30093_))))
                                                   (declare (not safe))
                                                   (cons __tmp52223 '()))))
                                            (declare (not safe))
                                            (cons __tmp52224 __tmp52222))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp52221))
                                   (let ((__tmp52214
                                          (let ((__tmp52220
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128948_ _L30094_)))
                                                (__tmp52215
                                                 (let ((__tmp52216
                                                        (let ((__tmp52217
                                                               (let ((__tmp52219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp52218
                              (let ()
                                (declare (not safe))
                                (cons _L30093_ _L30091_))))
                         (declare (not safe))
                         (cons __tmp52219 __tmp52218))))
                  (declare (not safe))
                  (_parse128948_ __tmp52217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp52216 '()))))
                                            (declare (not safe))
                                            (cons __tmp52220 __tmp52215))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp52214)))))
                            (___kont4699746998_
                             (lambda (_L30043_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28950_ _L30043_))))
                            (___kont4699947000_
                             (lambda (_L30013_)
                               (let ((__tmp52225
                                      (let ((__tmp52226
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30013_))))
                                        (declare (not safe))
                                        (cons __tmp52226 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp52225))))
                            (___kont4700147002_
                             (lambda (_L29976_)
                               (let ((__tmp52227
                                      (let ((__tmp52228
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29976_))))
                                        (declare (not safe))
                                        (cons __tmp52228 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp52227))))
                            (___kont4700347004_
                             (lambda (_L29952_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128948_ _L29952_))))
                            (___kont4700547006_
                             (lambda (_L29914_)
                               (let ((__tmp52229
                                      (let ((__tmp52230
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                _L29914_))))
                                        (declare (not safe))
                                        (cons __tmp52230 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp52229))))
                            (___kont4700747008_
                             (lambda (_L29886_)
                               (let ((__tmp52231
                                      (let ((__tmp52232
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                _L29886_))))
                                        (declare (not safe))
                                        (cons __tmp52232 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp52231))))
                            (___kont4700947010_
                             (lambda (_L29847_)
                               (let ((__tmp52233
                                      (let ((__tmp52234
                                             (let ((__tmp52235
                                                    (let ((__tmp52236
                                                           (lambda (_g2986029863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2986129866_)
                     (let ()
                       (declare (not safe))
                       (cons _g2986029863_ _g2986129866_)))))
              (declare (not safe))
              (foldr1 __tmp52236 '() _L29847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                __tmp52235))))
                                        (declare (not safe))
                                        (cons __tmp52234 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp52233))))
                            (___kont4701347014_
                             (lambda (_L29793_ _L29795_)
                               (let ((__tmp52237
                                      (let ((__tmp52240
                                             (gx#syntax-local-value _L29795_))
                                            (__tmp52238
                                             (let ((__tmp52239
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector28951_
                                                       _L29793_))))
                                               (declare (not safe))
                                               (cons __tmp52239 '()))))
                                        (declare (not safe))
                                        (cons __tmp52240 __tmp52238))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp52237))))
                            (___kont4701547016_
                             (lambda (_L29763_ _L29765_)
                               (let ((__tmp52241
                                      (let ((__tmp52244
                                             (gx#syntax-local-value _L29765_))
                                            (__tmp52242
                                             (let ((__tmp52243
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body28953_
                                                       _L29763_))))
                                               (declare (not safe))
                                               (cons __tmp52243 '()))))
                                        (declare (not safe))
                                        (cons __tmp52244 __tmp52242))))
                                 (declare (not safe))
                                 (cons 'class: __tmp52241))))
                            (___kont4701747018_
                             (lambda (_L29723_ _L29725_)
                               (let ((__tmp52245
                                      (let ((__tmp52246
                                             (let ((__tmp52251
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp52247
                                                    (let ((__tmp52248
                                                           (let ((__tmp52250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp52249
                          (let () (declare (not safe)) (cons _L29723_ '()))))
                     (declare (not safe))
                     (cons __tmp52250 __tmp52249))))
              (declare (not safe))
              (cons _L29725_ __tmp52248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp52251 __tmp52247))))
                                        (declare (not safe))
                                        (cons __tmp52246 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp52245))))
                            (___kont4701947020_
                             (lambda (_L29683_)
                               (let ((__tmp52252
                                      (let ((__tmp52253 (gx#stx-e _L29683_)))
                                        (declare (not safe))
                                        (cons __tmp52253 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp52252))))
                            (___kont4702147022_
                             (lambda (_L29643_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28954_ _L29643_))))
                            (___kont4702347024_
                             (lambda (_L29599_ _L29601_)
                               (let ((__tmp52254
                                      (let ((__tmp52255
                                             (let ((__tmp52256
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128948_
                                                       _L29599_))))
                                               (declare (not safe))
                                               (cons __tmp52256 '()))))
                                        (declare (not safe))
                                        (cons _L29601_ __tmp52255))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp52254))))
                            (___kont4702547026_
                             (lambda (_L29547_)
                               (let ((__tmp52257
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
                                 (_parse128948_ __tmp52257))))
                            (___kont4702747028_
                             (lambda (_L29521_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4702947030_
                             (lambda (_L29505_)
                               (let ((__tmp52258
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29505_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp52258))))
                            (___kont4703147032_
                             (lambda (_L29487_)
                               (let ((__tmp52259
                                      (let ((__tmp52260 (gx#stx-e _L29487_)))
                                        (declare (not safe))
                                        (cons __tmp52260 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp52259))))
                            (___kont4703347034_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28955_ _hd29301_)))))
                        (let* ((_g2932529498_
                                (lambda ()
                                  (let ((_L29487_ ___stx4698246983_))
                                    (if (gx#stx-datum? _L29487_)
                                        (___kont4703147032_ _L29487_)
                                        (___kont4703347034_)))))
                               (_g2932429514_
                                (lambda ()
                                  (let ((_L29505_ ___stx4698246983_))
                                    (if (and (gx#identifier? _L29505_)
                                             (let ((__tmp52261
                                                    (gx#ellipsis? _L29505_)))
                                               (declare (not safe))
                                               (not __tmp52261)))
                                        (___kont4702947030_ _L29505_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932529498_))))))
                               (_g2932329530_
                                (lambda ()
                                  (let ((_L29521_ ___stx4698246983_))
                                    (if (gx#underscore? _L29521_)
                                        (___kont4702747028_ _L29521_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932429514_))))))
                               (___match4730947310_
                                (lambda (_e2946029537_
                                         _hd2945929541_
                                         _tl2945829544_)
                                  (let ((_L29547_ _hd2945929541_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29547_))
                                        (___kont4702547026_ _L29547_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932329530_))))))
                               (___match4724347244_
                                (lambda (_e2942829703_
                                         _hd2942729707_
                                         _tl2942629710_
                                         _e2943129713_
                                         _hd2943029717_
                                         _tl2942929720_)
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
                                        (___kont4701747018_ _L29723_ _L29725_)
                                        (if (gx#identifier? _hd2942729707_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g52263_|
                                                 _hd2942729707_)
                                                (___kont4701947020_
                                                 _hd2943029717_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g52262_|
                                                     _hd2942729707_)
                                                    (___kont4702147022_
                                                     _hd2943029717_)
                                                    (___match4730947310_
                                                     _e2942829703_
                                                     _hd2942729707_
                                                     _tl2942629710_)))
                                            (___match4730947310_
                                             _e2942829703_
                                             _hd2942729707_
                                             _tl2942629710_))))))
                               (___match4722947230_
                                (lambda (_e2942329753_
                                         _hd2942229757_
                                         _tl2942129760_)
                                  (let ((_L29763_ _tl2942129760_)
                                        (_L29765_ _hd2942229757_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29765_))
                                        (___kont4701547016_ _L29763_ _L29765_)
                                        (if (gx#stx-pair? _tl2942129760_)
                                            (let ((_e2943129713_
                                                   (gx#syntax-e
                                                    _tl2942129760_)))
                                              (let ((_tl2942929720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2943129713_)))
                                                    (_hd2943029717_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2943129713_))))
                                                (if (gx#stx-null?
                                                     _tl2942929720_)
                                                    (___match4724347244_
                                                     _e2942329753_
                                                     _hd2942229757_
                                                     _tl2942129760_
                                                     _e2943129713_
                                                     _hd2943029717_
                                                     _tl2942929720_)
                                                    (if (gx#identifier?
                                                         _hd2942229757_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g52263_|
                                                             _hd2942229757_)
                                                            (___match4730947310_
                                                             _e2942329753_
                                                             _hd2942229757_
                                                             _tl2942129760_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g52262_|
                         _hd2942229757_)
                        (___match4730947310_
                         _e2942329753_
                         _hd2942229757_
                         _tl2942129760_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g52264_|
                             _hd2942229757_)
                            (if (gx#stx-pair? _tl2942929720_)
                                (let ((_e2945629589_
                                       (gx#syntax-e _tl2942929720_)))
                                  (let ((_tl2945429596_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2945629589_)))
                                        (_hd2945529593_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2945629589_))))
                                    (if (gx#stx-null? _tl2945429596_)
                                        (___kont4702347024_
                                         _hd2945529593_
                                         _hd2943029717_)
                                        (___match4730947310_
                                         _e2942329753_
                                         _hd2942229757_
                                         _tl2942129760_))))
                                (___match4730947310_
                                 _e2942329753_
                                 _hd2942229757_
                                 _tl2942129760_))
                            (___match4730947310_
                             _e2942329753_
                             _hd2942229757_
                             _tl2942129760_))))
                (___match4730947310_
                 _e2942329753_
                 _hd2942229757_
                 _tl2942129760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4730947310_
                                             _e2942329753_
                                             _hd2942229757_
                                             _tl2942129760_))))))
                               (___match4722347224_
                                (lambda (_e2941829783_
                                         _hd2941729787_
                                         _tl2941629790_)
                                  (let ((_L29793_ _tl2941629790_)
                                        (_L29795_ _hd2941729787_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                           _L29795_
                                           gerbil/core$<MOP>$<MOP:2>#!class-type-struct?))
                                        (___kont4701347014_ _L29793_ _L29795_)
                                        (___match4722947230_
                                         _e2941829783_
                                         _hd2941729787_
                                         _tl2941629790_)))))
                               (___match4721747218_
                                (lambda (_e2940429813_
                                         ___splice4701147012_
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
                                                      (let ((__tmp52265
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2941029837_ _body2941229830_))))
                (declare (not safe))
                (_loop2940829823_ _lp-tl2941129840_ __tmp52265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2941329843_
                                                         (reverse _body2941229830_)))
                                                    (___kont4700947010_
                                                     _body2941329843_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2940829823_
                                       _target2940529817_
                                       '())))))
                               (_g2931529869_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4698246983_)
                                      (let ((_e2940429813_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4698246983_))))
                                        (if (gx#stx-pair/null? _e2940429813_)
                                            (let ((___splice4701147012_
                                                   (gx#syntax-split-splice
                                                    _e2940429813_
                                                    '0)))
                                              (let ((_tl2940729820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4701147012_
                                                        '1)))
                                                    (_target2940529817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4701147012_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2940729820_)
                                                    (___match4721747218_
                                                     _e2940429813_
                                                     ___splice4701147012_
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
                                  (if (gx#stx-box? ___stx4698246983_)
                                      (let ((_e2938729972_
                                             (unbox (gx#syntax-e
                                                     ___stx4698246983_))))
                                        (___kont4700147002_ _e2938729972_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2931529869_)))))
                               (___match4707147072_
                                (lambda (_e2934430211_
                                         _hd2934330215_
                                         _tl2934230218_)
                                  (let ((_L30221_ _tl2934230218_))
                                    (if (gx#stx-list? _L30221_)
                                        (___kont4698946990_ _L30221_)
                                        (___match4722347224_
                                         _e2934430211_
                                         _hd2934330215_
                                         _tl2934230218_)))))
                               (___match4706147062_
                                (lambda (_e2934030296_
                                         _hd2933930300_
                                         _tl2933830303_)
                                  (let ((_L30306_ _tl2933830303_))
                                    (if (gx#stx-list? _L30306_)
                                        (___kont4698746988_ _L30306_)
                                        (___match4722347224_
                                         _e2934030296_
                                         _hd2933930300_
                                         _tl2933830303_))))))
                          (if (gx#stx-pair? ___stx4698246983_)
                              (let ((_e2933330381_
                                     (gx#syntax-e ___stx4698246983_)))
                                (let ((_tl2933130388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2933330381_)))
                                      (_hd2933230385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2933330381_))))
                                  (if (gx#identifier? _hd2933230385_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g52275_|
                                           _hd2933230385_)
                                          (if (gx#stx-pair? _tl2933130388_)
                                              (let ((_e2933630391_
                                                     (gx#syntax-e
                                                      _tl2933130388_)))
                                                (let ((_tl2933430398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2933630391_)))
                                                      (_hd2933530395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2933630391_))))
                                                  (___kont4698546986_
                                                   _tl2933430398_
                                                   _hd2933530395_)))
                                              (___match4722347224_
                                               _e2933330381_
                                               _hd2933230385_
                                               _tl2933130388_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g52274_|
                                               _hd2933230385_)
                                              (___match4706147062_
                                               _e2933330381_
                                               _hd2933230385_
                                               _tl2933130388_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g52273_|
                                                   _hd2933230385_)
                                                  (___match4707147072_
                                                   _e2933330381_
                                                   _hd2933230385_
                                                   _tl2933130388_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g52272_|
                                                       _hd2933230385_)
                                                      (if (gx#stx-pair?
                                                           _tl2933130388_)
                                                          (let ((_e2935130181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2933130388_)))
                    (let ((_tl2934930188_
                           (let () (declare (not safe)) (##cdr _e2935130181_)))
                          (_hd2935030185_
                           (let ()
                             (declare (not safe))
                             (##car _e2935130181_))))
                      (if (gx#stx-null? _tl2934930188_)
                          (___kont4699146992_ _hd2935030185_)
                          (___match4722347224_
                           _e2933330381_
                           _hd2933230385_
                           _tl2933130388_))))
                  (___match4722347224_
                   _e2933330381_
                   _hd2933230385_
                   _tl2933130388_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g52271_|
                   _hd2933230385_)
                  (if (gx#stx-pair? _tl2933130388_)
                      (let ((_e2935930127_ (gx#syntax-e _tl2933130388_)))
                        (let ((_tl2935730134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2935930127_)))
                              (_hd2935830131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2935930127_))))
                          (if (gx#stx-pair? _tl2935730134_)
                              (let ((_e2936230137_
                                     (gx#syntax-e _tl2935730134_)))
                                (let ((_tl2936030144_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2936230137_)))
                                      (_hd2936130141_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2936230137_))))
                                  (if (gx#stx-null? _tl2936030144_)
                                      (___kont4699346994_
                                       _hd2936130141_
                                       _hd2935830131_)
                                      (___match4722347224_
                                       _e2933330381_
                                       _hd2933230385_
                                       _tl2933130388_))))
                              (___match4722347224_
                               _e2933330381_
                               _hd2933230385_
                               _tl2933130388_))))
                      (___match4722347224_
                       _e2933330381_
                       _hd2933230385_
                       _tl2933130388_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g52270_|
                       _hd2933230385_)
                      (if (gx#stx-pair? _tl2933130388_)
                          (let ((_e2937130071_ (gx#syntax-e _tl2933130388_)))
                            (let ((_tl2936930078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2937130071_)))
                                  (_hd2937030075_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2937130071_))))
                              (if (gx#stx-pair? _tl2936930078_)
                                  (let ((_e2937430081_
                                         (gx#syntax-e _tl2936930078_)))
                                    (let ((_tl2937230088_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2937430081_)))
                                          (_hd2937330085_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2937430081_))))
                                      (___kont4699546996_
                                       _tl2937230088_
                                       _hd2937330085_
                                       _hd2937030075_)))
                                  (___match4722347224_
                                   _e2933330381_
                                   _hd2933230385_
                                   _tl2933130388_))))
                          (___match4722347224_
                           _e2933330381_
                           _hd2933230385_
                           _tl2933130388_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g52269_|
                           _hd2933230385_)
                          (___kont4699746998_ _tl2933130388_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g52268_|
                               _hd2933230385_)
                              (if (gx#stx-pair? _tl2933130388_)
                                  (let ((_e2938530003_
                                         (gx#syntax-e _tl2933130388_)))
                                    (let ((_tl2938330010_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2938530003_)))
                                          (_hd2938430007_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2938530003_))))
                                      (if (gx#stx-null? _tl2938330010_)
                                          (___kont4699947000_ _hd2938430007_)
                                          (___match4722347224_
                                           _e2933330381_
                                           _hd2933230385_
                                           _tl2933130388_))))
                                  (___match4722347224_
                                   _e2933330381_
                                   _hd2933230385_
                                   _tl2933130388_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g52267_|
                                   _hd2933230385_)
                                  (if (gx#stx-pair? _tl2933130388_)
                                      (let ((_e2939429942_
                                             (gx#syntax-e _tl2933130388_)))
                                        (let ((_tl2939229949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2939429942_)))
                                              (_hd2939329946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2939429942_))))
                                          (if (gx#stx-null? _tl2939229949_)
                                              (___kont4700347004_
                                               _hd2939329946_)
                                              (___kont4700547006_
                                               _tl2933130388_))))
                                      (___kont4700547006_ _tl2933130388_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g52266_|
                                       _hd2933230385_)
                                      (___kont4700747008_ _tl2933130388_)
                                      (___match4722347224_
                                       _e2933330381_
                                       _hd2933230385_
                                       _tl2933130388_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4722347224_
                                       _e2933330381_
                                       _hd2933230385_
                                       _tl2933130388_))))
                              (let ()
                                (declare (not safe))
                                (_g2931129986_))))))))
                 (_parse-list28950_
                  (lambda (_body29130_)
                    (let* ((___stx4731247313_ _body29130_)
                           (_g2913629165_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4731247313_))))
                      (let ((___kont4731547316_
                             (lambda (_L29283_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128948_ _L29283_))))
                            (___kont4731747318_
                             (lambda (_L29235_ _L29237_ _L29238_)
                               (let ((__tmp52276
                                      (let ((__tmp52279
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29238_)))
                                            (__tmp52277
                                             (let ((__tmp52278
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28950_
                                                       _L29235_))))
                                               (declare (not safe))
                                               (cons __tmp52278 '()))))
                                        (declare (not safe))
                                        (cons __tmp52279 __tmp52277))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp52276))))
                            (___kont4731947320_
                             (lambda (_L29193_ _L29195_)
                               (let ((__tmp52280
                                      (let ((__tmp52283
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29195_)))
                                            (__tmp52281
                                             (let ((__tmp52282
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28950_
                                                       _L29193_))))
                                               (declare (not safe))
                                               (cons __tmp52282 '()))))
                                        (declare (not safe))
                                        (cons __tmp52283 __tmp52281))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp52280))))
                            (___kont4732147322_
                             (lambda ()
                               (if (gx#stx-null? _body29130_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp52284
                                              (gx#stx-pair? _body29130_)))
                                         (declare (not safe))
                                         (not __tmp52284))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128948_ _body29130_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28955_ _body29130_)))))))
                        (let* ((___match4736147362_
                                (lambda (_e2915929183_
                                         _hd2915829187_
                                         _tl2915729190_)
                                  (let ((_L29193_ _tl2915729190_)
                                        (_L29195_ _hd2915829187_))
                                    (if (let ((__tmp52285
                                               (gx#ellipsis? _L29195_)))
                                          (declare (not safe))
                                          (not __tmp52285))
                                        (___kont4731947320_ _L29193_ _L29195_)
                                        (___kont4732147322_)))))
                               (___match4735547356_
                                (lambda (_e2915129215_
                                         _hd2915029219_
                                         _tl2914929222_
                                         _e2915429225_
                                         _hd2915329229_
                                         _tl2915229232_)
                                  (let ((_L29235_ _tl2915229232_)
                                        (_L29237_ _hd2915329229_)
                                        (_L29238_ _hd2915029219_))
                                    (if (gx#ellipsis? _L29237_)
                                        (___kont4731747318_
                                         _L29235_
                                         _L29237_
                                         _L29238_)
                                        (___match4736147362_
                                         _e2915129215_
                                         _hd2915029219_
                                         _tl2914929222_))))))
                          (if (gx#stx-pair? ___stx4731247313_)
                              (let ((_e2914129259_
                                     (gx#syntax-e ___stx4731247313_)))
                                (let ((_tl2913929266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2914129259_)))
                                      (_hd2914029263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2914129259_))))
                                  (if (gx#stx-datum? _hd2914029263_)
                                      (let ((_e2914229269_
                                             (gx#stx-e _hd2914029263_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2914229269_ '::))
                                            (if (gx#stx-pair? _tl2913929266_)
                                                (let ((_e2914529273_
                                                       (gx#syntax-e
                                                        _tl2913929266_)))
                                                  (let ((_tl2914329280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2914529273_)))
                                                        (_hd2914429277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2914529273_))))
                                                    (if (gx#stx-null?
                                                         _tl2914329280_)
                                                        (___kont4731547316_
                                                         _hd2914429277_)
                                                        (___match4735547356_
                                                         _e2914129259_
                                                         _hd2914029263_
                                                         _tl2913929266_
                                                         _e2914529273_
                                                         _hd2914429277_
                                                         _tl2914329280_))))
                                                (___match4736147362_
                                                 _e2914129259_
                                                 _hd2914029263_
                                                 _tl2913929266_))
                                            (if (gx#stx-pair? _tl2913929266_)
                                                (let ((_e2915429225_
                                                       (gx#syntax-e
                                                        _tl2913929266_)))
                                                  (let ((_tl2915229232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2915429225_)))
                                                        (_hd2915329229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2915429225_))))
                                                    (___match4735547356_
                                                     _e2914129259_
                                                     _hd2914029263_
                                                     _tl2913929266_
                                                     _e2915429225_
                                                     _hd2915329229_
                                                     _tl2915229232_)))
                                                (___match4736147362_
                                                 _e2914129259_
                                                 _hd2914029263_
                                                 _tl2913929266_))))
                                      (if (gx#stx-pair? _tl2913929266_)
                                          (let ((_e2915429225_
                                                 (gx#syntax-e _tl2913929266_)))
                                            (let ((_tl2915229232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2915429225_)))
                                                  (_hd2915329229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2915429225_))))
                                              (___match4735547356_
                                               _e2914129259_
                                               _hd2914029263_
                                               _tl2913929266_
                                               _e2915429225_
                                               _hd2915329229_
                                               _tl2915229232_)))
                                          (___match4736147362_
                                           _e2914129259_
                                           _hd2914029263_
                                           _tl2913929266_)))))
                              (___kont4732147322_)))))))
                 (_parse-vector28951_
                  (lambda (_body29127_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28952_ _body29127_))
                        (let ((__tmp52288
                               (let ((__tmp52289
                                      (gx#stx-map _parse128948_ _body29127_)))
                                 (declare (not safe))
                                 (cons __tmp52289 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp52288))
                        (let ((__tmp52286
                               (let ((__tmp52287
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list28950_ _body29127_))))
                                 (declare (not safe))
                                 (cons __tmp52287 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp52286)))))
                 (_simple-vector?28952_
                  (lambda (_body29064_)
                    (let* ((___stx4736447365_ _body29064_)
                           (_g2906829080_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4736447365_))))
                      (let ((___kont4736747368_
                             (lambda (_L29108_ _L29110_)
                               (if (let ((__tmp52290 (gx#ellipsis? _L29110_)))
                                     (declare (not safe))
                                     (not __tmp52290))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28952_ _L29108_))
                                   '#f)))
                            (___kont4736947370_
                             (lambda () (gx#stx-null? _body29064_))))
                        (if (gx#stx-pair? ___stx4736447365_)
                            (let ((_e2907429098_
                                   (gx#syntax-e ___stx4736447365_)))
                              (let ((_tl2907229105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2907429098_)))
                                    (_hd2907329102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2907429098_))))
                                (___kont4736747368_
                                 _tl2907229105_
                                 _hd2907329102_)))
                            (___kont4736947370_))))))
                 (_parse-class-body28953_
                  (lambda (_body28973_)
                    (let _recur28976_ ((_rest28979_ _body28973_))
                      (let* ((___stx4738047381_ _rest28979_)
                             (_g2898328999_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4738047381_))))
                        (let ((___kont4738347384_
                               (lambda (_L29037_ _L29039_ _L29040_)
                                 (let ((__tmp52291
                                        (let ((__tmp52293
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse128948_ _L29039_)))
                                              (__tmp52292
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur28976_ _L29037_))))
                                          (declare (not safe))
                                          (cons __tmp52293 __tmp52292))))
                                   (declare (not safe))
                                   (cons _L29040_ __tmp52291))))
                              (___kont4738547386_
                               (lambda ()
                                 (if (gx#stx-null? _rest28979_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28955_ _rest28979_))))))
                          (let ((___match4739947400_
                                 (lambda (_e2899029017_
                                          _hd2898929021_
                                          _tl2898829024_
                                          _e2899329027_
                                          _hd2899229031_
                                          _tl2899129034_)
                                   (let ((_L29037_ _tl2899129034_)
                                         (_L29039_ _hd2899229031_)
                                         (_L29040_ _hd2898929021_))
                                     (if (gx#stx-keyword? _L29040_)
                                         (___kont4738347384_
                                          _L29037_
                                          _L29039_
                                          _L29040_)
                                         (___kont4738547386_))))))
                            (if (gx#stx-pair? ___stx4738047381_)
                                (let ((_e2899029017_
                                       (gx#syntax-e ___stx4738047381_)))
                                  (let ((_tl2898829024_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2899029017_)))
                                        (_hd2898929021_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2899029017_))))
                                    (if (gx#stx-pair? _tl2898829024_)
                                        (let ((_e2899329027_
                                               (gx#syntax-e _tl2898829024_)))
                                          (let ((_tl2899129034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2899329027_)))
                                                (_hd2899229031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2899329027_))))
                                            (___match4739947400_
                                             _e2899029017_
                                             _hd2898929021_
                                             _tl2898829024_
                                             _e2899329027_
                                             _hd2899229031_
                                             _tl2899129034_)))
                                        (___kont4738547386_))))
                                (___kont4738547386_))))))))
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
                               (let ((__tmp52295
                                      (let ((__tmp52296
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd28957_ '()))))
                                        (declare (not safe))
                                        (cons _stx28944_ __tmp52296))))
                                 (declare (not safe))
                                 (cons _match-stx28946_ __tmp52295))
                               (let ((__tmp52294
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd28957_ '()))))
                                 (declare (not safe))
                                 (cons _stx28944_ __tmp52294)))))))
          (let () (declare (not safe)) (_parse128948_ _stx28944_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30628_)
        (let ((_match-stx30631_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30628_
           _match-stx30631_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g52298_
        (let ((_g52297_ (let () (declare (not safe)) (##length _g52298_))))
          (cond ((let () (declare (not safe)) (##fx= _g52297_ 1))
                 (apply (lambda (_stx30628_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30628_)))
                        _g52298_))
                ((let () (declare (not safe)) (##fx= _g52297_ 2))
                 (apply (lambda (_stx30634_ _match-stx30636_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30634_
                             _match-stx30636_)))
                        _g52298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g52298_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28928_)
        (call-with-current-continuation
         (lambda (_E28932_)
           (with-exception-handler
            (let ((_E!28935_ (current-exception-handler)))
              (lambda (_e28938_)
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _e28938_
                       'gerbil/runtime/syntax#SyntaxError::t))
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
                    (let* ((___stx4749847499_ _ptree27953_)
                           (_g2796928079_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4749847499_))))
                      (let ((___kont4750147502_
                             (lambda (_L28709_)
                               (let* ((___stx4741847419_ _L28709_)
                                      (_g2872628760_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4741847419_))))
                                 (let ((___kont4742147422_
                                        (lambda (_L28909_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28909_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4742347424_
                                        (lambda (_L28878_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28878_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4742547426_
                                        (lambda (_L28826_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28826_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4742747428_
                                        (lambda () (_K27956_ _vars27955_))))
                                   (if (gx#stx-pair? ___stx4741847419_)
                                       (let ((_e2873128899_
                                              (gx#syntax-e ___stx4741847419_)))
                                         (let ((_tl2872928906_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2873128899_)))
                                               (_hd2873028903_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2873128899_))))
                                           (if (gx#stx-null? _tl2872928906_)
                                               (___kont4742147422_
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
                 (if (gx#stx-pair? _tl2872928906_)
                     (let ((_e2873928868_ (gx#syntax-e _tl2872928906_)))
                       (let ((_tl2873728875_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2873928868_)))
                             (_hd2873828872_
                              (let ()
                                (declare (not safe))
                                (##car _e2873928868_))))
                         (if (gx#stx-null? _tl2873728875_)
                             (___kont4742347424_ _hd2873828872_)
                             (___kont4742747428_))))
                     (___kont4742747428_))
                 (if (let () (declare (not safe)) (equal? _e2873628864_ '::))
                     (if (gx#stx-pair? _tl2872928906_)
                         (let ((_e2874728792_ (gx#syntax-e _tl2872928906_)))
                           (let ((_tl2874528799_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2874728792_)))
                                 (_hd2874628796_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2874728792_))))
                             (if (gx#stx-pair? _tl2874528799_)
                                 (let ((_e2875028802_
                                        (gx#syntax-e _tl2874528799_)))
                                   (let ((_tl2874828809_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2875028802_)))
                                         (_hd2874928806_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2875028802_))))
                                     (if (gx#stx-datum? _hd2874928806_)
                                         (let ((_e2875128812_
                                                (gx#stx-e _hd2874928806_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e2875128812_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl2874828809_)
                                                   (let ((_e2875428816_
                                                          (gx#syntax-e
                                                           _tl2874828809_)))
                                                     (let ((_tl2875228823_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2875428816_)))
                                                           (_hd2875328820_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2875428816_))))
                                                       (if (gx#stx-null?
                                                            _tl2875228823_)
                                                           (___kont4742547426_
                                                            _hd2875328820_)
                                                           (___kont4742747428_))))
                                                   (___kont4742747428_))
                                               (___kont4742747428_)))
                                         (___kont4742747428_))))
                                 (___kont4742747428_))))
                         (___kont4742747428_))
                     (___kont4742747428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4742747428_)))))
                                       (___kont4742747428_))))))
                            (___kont4750347504_
                             (lambda (_L28596_ _L28598_)
                               (let* ((___stx4740247403_ _L28596_)
                                      (_g2861428626_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4740247403_))))
                                 (let ((___kont4740547406_
                                        (lambda (_L28654_ _L28656_)
                                          (let ((__tmp52299
                                                 (lambda (_g2866828670_)
                                                   (let ((__tmp52300
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27666_
                                                      __tmp52300
                                                      _g2866828670_
                                                      _K27956_)))))
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28656_
                                             _vars27955_
                                             __tmp52299))))
                                       (___kont4740747408_
                                        (lambda () (_K27956_ _vars27955_))))
                                   (if (gx#stx-pair? ___stx4740247403_)
                                       (let ((_e2862028644_
                                              (gx#syntax-e ___stx4740247403_)))
                                         (let ((_tl2861828651_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2862028644_)))
                                               (_hd2861928648_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2862028644_))))
                                           (___kont4740547406_
                                            _tl2861828651_
                                            _hd2861928648_)))
                                       (___kont4740747408_))))))
                            (___kont4750547506_
                             (lambda (_L28565_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28565_ _vars27955_ _K27956_))))
                            (___kont4750747508_
                             (lambda (_L28511_ _L28513_)
                               (let ((__tmp52301
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
                                  __tmp52301))))
                            (___kont4750947510_
                             (lambda (_L28447_ _L28449_)
                               (let ((__tmp52302
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
                                  __tmp52302))))
                            (___kont4751147512_
                             (lambda (_L28392_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28392_ _vars27955_ _K27956_))))
                            (___kont4751347514_
                             (lambda (_L28342_ _L28344_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27668_
                                  _L28342_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4751547516_
                             (lambda (_L28299_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27668_
                                  _L28299_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4751747518_
                             (lambda (_L28242_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27670_
                                  _L28242_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4751947520_
                             (lambda (_L28183_ _L28185_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28183_ _vars27955_ _K27956_))))
                            (___kont4752147522_
                             (lambda (_L28121_)
                               (if (let ((__tmp52303
                                          (lambda (_g2813628138_)
                                            (gx#bound-identifier=?
                                             _g2813628138_
                                             _L28121_))))
                                     (declare (not safe))
                                     (find __tmp52303 _vars27955_))
                                   (_K27956_ _vars27955_)
                                   (_K27956_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L28121_ _vars27955_))))))
                            (___kont4752347524_
                             (lambda () (_K27956_ _vars27955_))))
                        (let* ((___match4765547656_
                                (lambda (_e2802828322_
                                         _hd2802728326_
                                         _tl2802628329_
                                         _e2803128332_
                                         _hd2803028336_
                                         _tl2802928339_)
                                  (let ((_L28342_ _hd2803028336_)
                                        (_L28344_ _hd2802728326_))
                                    (if (or (gx#stx-eq? 'values: _L28344_)
                                            (gx#stx-eq? 'vector: _L28344_))
                                        (___kont4751347514_ _L28342_ _L28344_)
                                        (if (gx#stx-datum? _hd2802728326_)
                                            (let ((_e2803628275_
                                                   (gx#stx-e _hd2802728326_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2803628275_
                                                            'struct:))
                                                  (___kont4752347524_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2803628275_
                                                                'class:))
                                                      (___kont4752347524_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2803628275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4752347524_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2803628275_ 'var:))
                      (___kont4752147522_ _hd2803028336_)
                      (___kont4752347524_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4752347524_))))))
                               (___match4754947550_
                                (lambda (_e2798328586_
                                         _hd2798228590_
                                         _tl2798128593_)
                                  (let ((_L28596_ _tl2798128593_)
                                        (_L28598_ _hd2798228590_))
                                    (if (or (gx#stx-eq? 'and: _L28598_)
                                            (gx#stx-eq? 'or: _L28598_))
                                        (___kont4750347504_ _L28596_ _L28598_)
                                        (if (gx#stx-datum? _hd2798228590_)
                                            (let ((_e2798828551_
                                                   (gx#stx-e _hd2798228590_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2798828551_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl2798128593_)
                                                      (let ((_e2799128555_
                                                             (gx#syntax-e
                                                              _tl2798128593_)))
                                                        (let ((_tl2798928562_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2799128555_)))
                      (_hd2799028559_
                       (let () (declare (not safe)) (##car _e2799128555_))))
                  (if (gx#stx-null? _tl2798928562_)
                      (___kont4750547506_ _hd2799028559_)
                      (___kont4752347524_))))
              (___kont4752347524_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2798828551_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl2798128593_)
                                                          (let ((_e2800028491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2798128593_)))
                    (let ((_tl2799828498_
                           (let () (declare (not safe)) (##cdr _e2800028491_)))
                          (_hd2799928495_
                           (let ()
                             (declare (not safe))
                             (##car _e2800028491_))))
                      (if (gx#stx-pair? _tl2799828498_)
                          (let ((_e2800328501_ (gx#syntax-e _tl2799828498_)))
                            (let ((_tl2800128508_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2800328501_)))
                                  (_hd2800228505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2800328501_))))
                              (if (gx#stx-null? _tl2800128508_)
                                  (___kont4750747508_
                                   _hd2800228505_
                                   _hd2799928495_)
                                  (___kont4752347524_))))
                          (if (gx#stx-null? _tl2799828498_)
                              (___match4765547656_
                               _e2798328586_
                               _hd2798228590_
                               _tl2798128593_
                               _e2800028491_
                               _hd2799928495_
                               _tl2799828498_)
                              (___kont4752347524_)))))
                  (___kont4752347524_))
              (if (let () (declare (not safe)) (equal? _e2798828551_ 'splice:))
                  (if (gx#stx-pair? _tl2798128593_)
                      (let ((_e2801228427_ (gx#syntax-e _tl2798128593_)))
                        (let ((_tl2801028434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2801228427_)))
                              (_hd2801128431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2801228427_))))
                          (if (gx#stx-pair? _tl2801028434_)
                              (let ((_e2801528437_
                                     (gx#syntax-e _tl2801028434_)))
                                (let ((_tl2801328444_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2801528437_)))
                                      (_hd2801428441_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2801528437_))))
                                  (if (gx#stx-null? _tl2801328444_)
                                      (___kont4750947510_
                                       _hd2801428441_
                                       _hd2801128431_)
                                      (___kont4752347524_))))
                              (if (gx#stx-null? _tl2801028434_)
                                  (___match4765547656_
                                   _e2798328586_
                                   _hd2798228590_
                                   _tl2798128593_
                                   _e2801228427_
                                   _hd2801128431_
                                   _tl2801028434_)
                                  (___kont4752347524_)))))
                      (___kont4752347524_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2798828551_ 'box:))
                      (if (gx#stx-pair? _tl2798128593_)
                          (let ((_e2802328382_ (gx#syntax-e _tl2798128593_)))
                            (let ((_tl2802128389_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2802328382_)))
                                  (_hd2802228386_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2802328382_))))
                              (if (gx#stx-null? _tl2802128389_)
                                  (___kont4751147512_ _hd2802228386_)
                                  (___kont4752347524_))))
                          (___kont4752347524_))
                      (if (gx#stx-pair? _tl2798128593_)
                          (let ((_e2803128332_ (gx#syntax-e _tl2798128593_)))
                            (let ((_tl2802928339_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2803128332_)))
                                  (_hd2803028336_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2803128332_))))
                              (if (gx#stx-null? _tl2802928339_)
                                  (___match4765547656_
                                   _e2798328586_
                                   _hd2798228590_
                                   _tl2798128593_
                                   _e2803128332_
                                   _hd2803028336_
                                   _tl2802928339_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e2798828551_ 'struct:))
                                      (if (gx#stx-pair? _tl2802928339_)
                                          (let ((_e2804228289_
                                                 (gx#syntax-e _tl2802928339_)))
                                            (let ((_tl2804028296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2804228289_)))
                                                  (_hd2804128293_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2804228289_))))
                                              (if (gx#stx-null? _tl2804028296_)
                                                  (___kont4751547516_
                                                   _hd2804128293_)
                                                  (___kont4752347524_))))
                                          (___kont4752347524_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2798828551_ 'class:))
                                          (if (gx#stx-pair? _tl2802928339_)
                                              (let ((_e2805328232_
                                                     (gx#syntax-e
                                                      _tl2802928339_)))
                                                (let ((_tl2805128239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2805328232_)))
                                                      (_hd2805228236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2805328232_))))
                                                  (if (gx#stx-null?
                                                       _tl2805128239_)
                                                      (___kont4751747518_
                                                       _hd2805228236_)
                                                      (___kont4752347524_))))
                                              (___kont4752347524_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2798828551_ 'apply:))
                                              (if (gx#stx-pair? _tl2802928339_)
                                                  (let ((_e2806528173_
                                                         (gx#syntax-e
                                                          _tl2802928339_)))
                                                    (let ((_tl2806328180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2806528173_)))
                                                          (_hd2806428177_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2806528173_))))
                                                      (if (gx#stx-null?
                                                           _tl2806328180_)
                                                          (___kont4751947520_
                                                           _hd2806428177_
                                                           _hd2803028336_)
                                                          (___kont4752347524_))))
                                                  (___kont4752347524_))
                                              (___kont4752347524_)))))))
                          (___kont4752347524_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2798128593_)
                                                (let ((_e2803128332_
                                                       (gx#syntax-e
                                                        _tl2798128593_)))
                                                  (let ((_tl2802928339_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2803128332_)))
                                                        (_hd2803028336_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2803128332_))))
                                                    (if (gx#stx-null?
                                                         _tl2802928339_)
                                                        (___match4765547656_
                                                         _e2798328586_
                                                         _hd2798228590_
                                                         _tl2798128593_
                                                         _e2803128332_
                                                         _hd2803028336_
                                                         _tl2802928339_)
                                                        (___kont4752347524_))))
                                                (___kont4752347524_))))))))
                          (if (gx#stx-pair? ___stx4749847499_)
                              (let ((_e2797428685_
                                     (gx#syntax-e ___stx4749847499_)))
                                (let ((_tl2797228692_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2797428685_)))
                                      (_hd2797328689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2797428685_))))
                                  (if (gx#stx-datum? _hd2797328689_)
                                      (let ((_e2797528695_
                                             (gx#stx-e _hd2797328689_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2797528695_ '?:))
                                            (if (gx#stx-pair? _tl2797228692_)
                                                (let ((_e2797828699_
                                                       (gx#syntax-e
                                                        _tl2797228692_)))
                                                  (let ((_tl2797628706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2797828699_)))
                                                        (_hd2797728703_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2797828699_))))
                                                    (___kont4750147502_
                                                     _tl2797628706_)))
                                                (___match4754947550_
                                                 _e2797428685_
                                                 _hd2797328689_
                                                 _tl2797228692_))
                                            (___match4754947550_
                                             _e2797428685_
                                             _hd2797328689_
                                             _tl2797228692_)))
                                      (___match4754947550_
                                       _e2797428685_
                                       _hd2797328689_
                                       _tl2797228692_))))
                              (___kont4752347524_)))))))
                 (_loop-vector27668_
                  (lambda (_body27829_ _vars27831_ _K27832_)
                    (let* ((___stx4775647757_ _body27829_)
                           (_g2783527858_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4775647757_))))
                      (let ((___kont4775947760_
                             (lambda (_L27935_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27669_
                                  _L27935_
                                  _vars27831_
                                  _K27832_))))
                            (___kont4776147762_
                             (lambda (_L27889_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27889_
                                  _vars27831_
                                  _K27832_)))))
                        (if (gx#stx-pair? ___stx4775647757_)
                            (let ((_e2784027911_
                                   (gx#syntax-e ___stx4775647757_)))
                              (let ((_tl2783827918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2784027911_)))
                                    (_hd2783927915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2784027911_))))
                                (if (gx#stx-datum? _hd2783927915_)
                                    (let ((_e2784127921_
                                           (gx#stx-e _hd2783927915_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2784127921_ 'simple:))
                                          (if (gx#stx-pair? _tl2783827918_)
                                              (let ((_e2784427925_
                                                     (gx#syntax-e
                                                      _tl2783827918_)))
                                                (let ((_tl2784227932_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2784427925_)))
                                                      (_hd2784327929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2784427925_))))
                                                  (if (gx#stx-null?
                                                       _tl2784227932_)
                                                      (___kont4775947760_
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
                                              (if (gx#stx-pair? _tl2783827918_)
                                                  (let ((_e2785227879_
                                                         (gx#syntax-e
                                                          _tl2783827918_)))
                                                    (let ((_tl2785027886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2785227879_)))
                                                          (_hd2785127883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2785227879_))))
                                                      (if (gx#stx-null?
                                                           _tl2785027886_)
                                                          (___kont4776147762_
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
                    (let* ((___stx4780647807_ _rest27759_)
                           (_g2776527777_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4780647807_))))
                      (let ((___kont4780947810_
                             (lambda (_L27805_ _L27807_)
                               (let ((__tmp52304
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
                                  __tmp52304))))
                            (___kont4781147812_
                             (lambda () (_K27762_ _vars27761_))))
                        (if (gx#stx-pair? ___stx4780647807_)
                            (let ((_e2777127795_
                                   (gx#syntax-e ___stx4780647807_)))
                              (let ((_tl2776927802_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2777127795_)))
                                    (_hd2777027799_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2777127795_))))
                                (___kont4780947810_
                                 _tl2776927802_
                                 _hd2777027799_)))
                            (___kont4781147812_))))))
                 (_loop-class-list27670_
                  (lambda (_rest27672_ _vars27674_ _K27675_)
                    (let* ((___stx4782247823_ _rest27672_)
                           (_g2767827693_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4782247823_))))
                      (let ((___kont4782547826_
                             (lambda (_L27731_ _L27733_)
                               (let ((__tmp52305
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
                                  __tmp52305))))
                            (___kont4782747828_
                             (lambda () (_K27675_ _vars27674_))))
                        (if (gx#stx-pair? ___stx4782247823_)
                            (let ((_e2768427711_
                                   (gx#syntax-e ___stx4782247823_)))
                              (let ((_tl2768227718_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2768427711_)))
                                    (_hd2768327715_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2768427711_))))
                                (if (gx#stx-pair? _tl2768227718_)
                                    (let ((_e2768727721_
                                           (gx#syntax-e _tl2768227718_)))
                                      (let ((_tl2768527728_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2768727721_)))
                                            (_hd2768627725_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2768727721_))))
                                        (___kont4782547826_
                                         _tl2768527728_
                                         _hd2768627725_)))
                                    (___kont4782747828_))))
                            (___kont4782747828_)))))))
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
                                   (let* ((___stx4805848059_ _ptree25878_)
                                          (_g2592426066_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4805848059_))))
                                     (let ((___kont4806148062_
                                            (lambda (_L27374_ _L27376_)
                                              (let* ((___stx4797647977_
                                                      _L27374_)
                                                     (_g2739327428_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4797647977_))))
                                                (let ((___kont4797947980_
                                                       (lambda ()
                                                         (let ((__tmp52306
                                                                (let ((__tmp52309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp52312 (gx#datum->syntax '#f '?))
                                     (__tmp52310
                                      (let ((__tmp52311
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons _L27376_ __tmp52311))))
                                 (declare (not safe))
                                 (cons __tmp52312 __tmp52310)))
                              (__tmp52307
                               (let ((__tmp52308
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons _K25879_ __tmp52308))))
                          (declare (not safe))
                          (cons __tmp52309 __tmp52307))))
                   (declare (not safe))
                   (cons 'if __tmp52306))))
              (___kont4798147982_
               (lambda (_L27629_)
                 (let ((__tmp52313
                        (let ((__tmp52317
                               (let ((__tmp52320 (gx#datum->syntax '#f '?))
                                     (__tmp52318
                                      (let ((__tmp52319
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons _L27376_ __tmp52319))))
                                 (declare (not safe))
                                 (cons __tmp52320 __tmp52318)))
                              (__tmp52314
                               (let ((__tmp52316
                                      (let ()
                                        (declare (not safe))
                                        (_generate124631_
                                         _tgt25876_
                                         _L27629_
                                         _K25879_
                                         _E25880_)))
                                     (__tmp52315
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons __tmp52316 __tmp52315))))
                          (declare (not safe))
                          (cons __tmp52317 __tmp52314))))
                   (declare (not safe))
                   (cons 'if __tmp52313))))
              (___kont4798347984_
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
                                (let ((__tmp52321
                                       (let ((__tmp52328
                                              (let ((__tmp52329
                                                     (let ((__tmp52330
                                                            (let ((__tmp52331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp52332
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons _L27376_ __tmp52332))))
                      (declare (not safe))
                      (cons __tmp52331 '()))))
               (declare (not safe))
               (cons _L27596_ __tmp52330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp52329 '())))
                                             (__tmp52322
                                              (let ((__tmp52323
                                                     (let ((__tmp52324
                                                            (let ((__tmp52325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp52327
                                  (let ()
                                    (declare (not safe))
                                    (_generate124631_
                                     _L27596_
                                     _L27567_
                                     _K25879_
                                     _E25880_)))
                                 (__tmp52326
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25880_ '()))))
                             (declare (not safe))
                             (cons __tmp52327 __tmp52326))))
                      (declare (not safe))
                      (cons _L27596_ __tmp52325))))
               (declare (not safe))
               (cons 'if __tmp52324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp52323 '()))))
                                         (declare (not safe))
                                         (cons __tmp52328 __tmp52322))))
                                  (declare (not safe))
                                  (cons 'let __tmp52321))))
                            _g2758227593_)))
                        (__tmp52333 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2758027608_ __tmp52333))))
              (___kont4798547986_
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
                                (let ((__tmp52334
                                       (let ((__tmp52346
                                              (let ((__tmp52349
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp52347
                                                     (let ((__tmp52348
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L25897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27376_ __tmp52348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp52349 __tmp52347)))
                                             (__tmp52335
                                              (let ((__tmp52337
                                                     (let ((__tmp52338
                                                            (let ((__tmp52341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp52342
                                  (let ((__tmp52343
                                         (let ((__tmp52344
                                                (let ((__tmp52345
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25897_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27485_ __tmp52345))))
                                           (declare (not safe))
                                           (cons __tmp52344 '()))))
                                    (declare (not safe))
                                    (cons _L27520_ __tmp52343))))
                             (declare (not safe))
                             (cons __tmp52342 '())))
                          (__tmp52339
                           (let ((__tmp52340
                                  (let ()
                                    (declare (not safe))
                                    (_generate124631_
                                     _L27520_
                                     _L27483_
                                     _K25879_
                                     _E25880_))))
                             (declare (not safe))
                             (cons __tmp52340 '()))))
                      (declare (not safe))
                      (cons __tmp52341 __tmp52339))))
               (declare (not safe))
               (cons 'let __tmp52338)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp52336
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp52337 __tmp52336))))
                                         (declare (not safe))
                                         (cons __tmp52346 __tmp52335))))
                                  (declare (not safe))
                                  (cons 'if __tmp52334))))
                            _g2750627517_)))
                        (__tmp52350 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2750427532_ __tmp52350)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2739027640_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4797647977_)
                                                               (let ((_e2739827619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4797647977_)))
                         (let ((_tl2739627626_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2739827619_)))
                               (_hd2739727623_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2739827619_))))
                           (if (gx#stx-null? _tl2739627626_)
                               (___kont4798147982_ _hd2739727623_)
                               (if (gx#stx-datum? _hd2739727623_)
                                   (let ((_e2740327553_
                                          (gx#stx-e _hd2739727623_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2740327553_ '=>:))
                                         (if (gx#stx-pair? _tl2739627626_)
                                             (let ((_e2740627557_
                                                    (gx#syntax-e
                                                     _tl2739627626_)))
                                               (let ((_tl2740427564_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2740627557_)))
                                                     (_hd2740527561_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2740627557_))))
                                                 (if (gx#stx-null?
                                                      _tl2740427564_)
                                                     (___kont4798347984_
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
                                             (if (gx#stx-pair? _tl2739627626_)
                                                 (let ((_e2741527449_
                                                        (gx#syntax-e
                                                         _tl2739627626_)))
                                                   (let ((_tl2741327456_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2741527449_)))
                                                         (_hd2741427453_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2741527449_))))
                                                     (if (gx#stx-pair?
                                                          _tl2741327456_)
                                                         (let ((_e2741827459_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2741327456_)))
                   (let ((_tl2741627466_
                          (let () (declare (not safe)) (##cdr _e2741827459_)))
                         (_hd2741727463_
                          (let () (declare (not safe)) (##car _e2741827459_))))
                     (if (gx#stx-datum? _hd2741727463_)
                         (let ((_e2741927469_ (gx#stx-e _hd2741727463_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e2741927469_ '=>:))
                               (if (gx#stx-pair? _tl2741627466_)
                                   (let ((_e2742227473_
                                          (gx#syntax-e _tl2741627466_)))
                                     (let ((_tl2742027480_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2742227473_)))
                                           (_hd2742127477_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2742227473_))))
                                       (if (gx#stx-null? _tl2742027480_)
                                           (___kont4798547986_
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
                                                         ___stx4797647977_)
                                                        (___kont4797947980_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2739027640_))))))))
                                           (___kont4806348064_
                                            (lambda (_L27271_)
                                              (let* ((___stx4796047961_
                                                      _L27271_)
                                                     (_g2728427296_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4796047961_))))
                                                (let ((___kont4796347964_
                                                       (lambda (_L27324_
                                                                _L27326_)
                                                         (let ((__tmp52351
                                                                (let ((__tmp52352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27324_))))
                          (declare (not safe))
                          (_generate124631_
                           _tgt25876_
                           __tmp52352
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_
                    _tgt25876_
                    _L27326_
                    __tmp52351
                    _E25880_))))
              (___kont4796547966_ (lambda () _K25879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4796047961_)
                                                      (let ((_e2729027314_
                                                             (gx#syntax-e
                                                              ___stx4796047961_)))
                                                        (let ((_tl2728827321_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2729027314_)))
                      (_hd2728927318_
                       (let () (declare (not safe)) (##car _e2729027314_))))
                  (___kont4796347964_ _tl2728827321_ _hd2728927318_)))
              (___kont4796547966_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4806548066_
                                            (lambda (_L27178_)
                                              (let* ((___stx4794447945_
                                                      _L27178_)
                                                     (_g2719127203_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4794447945_))))
                                                (let ((___kont4794747948_
                                                       (lambda (_L27231_
                                                                _L27233_)
                                                         (let ((__tmp52353
                                                                (let ((__tmp52354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27231_))))
                          (declare (not safe))
                          (_generate124631_
                           _tgt25876_
                           __tmp52354
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_
                    _tgt25876_
                    _L27233_
                    _K25879_
                    __tmp52353))))
              (___kont4794947950_ (lambda () _E25880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4794447945_)
                                                      (let ((_e2719727221_
                                                             (gx#syntax-e
                                                              ___stx4794447945_)))
                                                        (let ((_tl2719527228_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2719727221_)))
                      (_hd2719627225_
                       (let () (declare (not safe)) (##car _e2719727221_))))
                  (___kont4794747948_ _tl2719527228_ _hd2719627225_)))
              (___kont4794947950_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4806748068_
                                            (lambda (_L27143_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124631_
                                                 _tgt25876_
                                                 _L27143_
                                                 _E25880_
                                                 _K25879_))))
                                           (___kont4806948070_
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
                                                            (let ((_e2705027066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2704527063_)))
                      (let ((_hd2704927070_
                             (let ()
                               (declare (not safe))
                               (##car _e2705027066_)))
                            (_tl2704827073_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2705027066_))))
                        (if (gx#stx-pair? _tl2704827073_)
                            (let ((_e2705327076_ (gx#syntax-e _tl2704827073_)))
                              (let ((_hd2705227080_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2705327076_)))
                                    (_tl2705127083_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2705327076_))))
                                (if (gx#stx-null? _tl2705127083_)
                                    ((lambda (_L27086_ _L27088_)
                                       (let ()
                                         (let ((__tmp52355
                                                (let ((__tmp52393
                                                       (let ((__tmp52395
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp52394
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L25897_ '()))))
                 (declare (not safe))
                 (cons __tmp52395 __tmp52394)))
              (__tmp52356
               (let ((__tmp52358
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
                                (let ((__tmp52384
                                       (let ((__tmp52387
                                              (let ((__tmp52388
                                                     (let ((__tmp52389
                                                            (let ((__tmp52390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp52392 (gx#datum->syntax '#f '##car))
                                 (__tmp52391
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons __tmp52392 __tmp52391))))
                      (declare (not safe))
                      (cons __tmp52390 '()))))
               (declare (not safe))
               (cons _L27088_ __tmp52389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp52388 '())))
                                             (__tmp52385
                                              (let ((__tmp52386
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124631_
                                                        _L27088_
                                                        _L27027_
                                                        _K25879_
                                                        _E25880_))))
                                                (declare (not safe))
                                                (cons __tmp52386 '()))))
                                         (declare (not safe))
                                         (cons __tmp52387 __tmp52385))))
                                  (declare (not safe))
                                  (cons 'let __tmp52384))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat27104_ '(any:)))
                                    (let ((__tmp52375
                                           (let ((__tmp52378
                                                  (let ((__tmp52379
                                                         (let ((__tmp52380
                                                                (let ((__tmp52381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp52383 (gx#datum->syntax '#f '##cdr))
                                     (__tmp52382
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp52383 __tmp52382))))
                          (declare (not safe))
                          (cons __tmp52381 '()))))
                   (declare (not safe))
                   (cons _L27086_ __tmp52380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp52379 '())))
                                                 (__tmp52376
                                                  (let ((__tmp52377
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124631_
                                                            _L27086_
                                                            _L27025_
                                                            _K25879_
                                                            _E25880_))))
                                                    (declare (not safe))
                                                    (cons __tmp52377 '()))))
                                             (declare (not safe))
                                             (cons __tmp52378 __tmp52376))))
                                      (declare (not safe))
                                      (cons 'let __tmp52375))
                                    (let ((__tmp52359
                                           (let ((__tmp52363
                                                  (let ((__tmp52370
                                                         (let ((__tmp52371
                                                                (let ((__tmp52372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp52374 (gx#datum->syntax '#f '##car))
                                     (__tmp52373
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp52374 __tmp52373))))
                          (declare (not safe))
                          (cons __tmp52372 '()))))
                   (declare (not safe))
                   (cons _L27088_ __tmp52371)))
                (__tmp52364
                 (let ((__tmp52365
                        (let ((__tmp52366
                               (let ((__tmp52367
                                      (let ((__tmp52369
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp52368
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons __tmp52369 __tmp52368))))
                                 (declare (not safe))
                                 (cons __tmp52367 '()))))
                          (declare (not safe))
                          (cons _L27086_ __tmp52366))))
                   (declare (not safe))
                   (cons __tmp52365 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp52370
                                                          __tmp52364)))
                                                 (__tmp52360
                                                  (let ((__tmp52361
                                                         (let ((__tmp52362
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124631_
                           _L27086_
                           _L27025_
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_ _L27088_ _L27027_ __tmp52362 _E25880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp52361 '()))))
                                             (declare (not safe))
                                             (cons __tmp52363 __tmp52360))))
                                      (declare (not safe))
                                      (cons 'let __tmp52359)))))))
                     (__tmp52357
                      (let () (declare (not safe)) (cons _E25880_ '()))))
                 (declare (not safe))
                 (cons __tmp52358 __tmp52357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp52393
                                                        __tmp52356))))
                                           (declare (not safe))
                                           (cons 'if __tmp52355))))
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
                                                     (__tmp52396
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2704327108_ __tmp52396))))
                                           (___kont4807148072_
                                            (lambda ()
                                              (let ((__tmp52397
                                                     (let ((__tmp52400
                                                            (let ((__tmp52402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp52401
                           (let () (declare (not safe)) (cons _L25897_ '()))))
                      (declare (not safe))
                      (cons __tmp52402 __tmp52401)))
                   (__tmp52398
                    (let ((__tmp52399
                           (let () (declare (not safe)) (cons _E25880_ '()))))
                      (declare (not safe))
                      (cons _K25879_ __tmp52399))))
               (declare (not safe))
               (cons __tmp52400 __tmp52398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp52397))))
                                           (___kont4807348074_
                                            (lambda (_L26941_ _L26943_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24633_
                                                 _tgt25876_
                                                 _L26943_
                                                 _L26941_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4807548076_
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
                                                             (let ((__tmp52403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52416
                                   (let ((__tmp52418
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp52417
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25897_ '()))))
                                     (declare (not safe))
                                     (cons __tmp52418 __tmp52417)))
                                  (__tmp52404
                                   (let ((__tmp52406
                                          (let ((__tmp52407
                                                 (let ((__tmp52410
                                                        (let ((__tmp52411
                                                               (let ((__tmp52412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp52413
                                     (let ((__tmp52415
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp52414
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25897_ '()))))
                                       (declare (not safe))
                                       (cons __tmp52415 __tmp52414))))
                                (declare (not safe))
                                (cons __tmp52413 '()))))
                         (declare (not safe))
                         (cons _L26884_ __tmp52412))))
                  (declare (not safe))
                  (cons __tmp52411 '())))
               (__tmp52408
                (let ((__tmp52409
                       (let ()
                         (declare (not safe))
                         (_generate124631_
                          _L26884_
                          _L26855_
                          _K25879_
                          _E25880_))))
                  (declare (not safe))
                  (cons __tmp52409 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp52410
                                                         __tmp52408))))
                                            (declare (not safe))
                                            (cons 'let __tmp52407)))
                                         (__tmp52405
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25880_ '()))))
                                     (declare (not safe))
                                     (cons __tmp52406 __tmp52405))))
                              (declare (not safe))
                              (cons __tmp52416 __tmp52404))))
                       (declare (not safe))
                       (cons 'if __tmp52403))))
                 _g2687026881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp52419
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2686826896_ __tmp52419))))
                                           (___kont4807748078_
                                            (lambda (_L26660_)
                                              (let* ((___stx4789447895_
                                                      _L26660_)
                                                     (_g2667526698_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4789447895_))))
                                                (let ((___kont4789747898_
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
                                (let ((__tmp52420
                                       (let ((__tmp52424
                                              (let ((__tmp52430
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp52425
                                                     (let ((__tmp52427
                                                            (let ((__tmp52429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp52428
                           (let () (declare (not safe)) (cons _L25897_ '()))))
                      (declare (not safe))
                      (cons __tmp52429 __tmp52428)))
                   (__tmp52426
                    (let () (declare (not safe)) (cons _L26804_ '()))))
               (declare (not safe))
               (cons __tmp52427 __tmp52426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp52430 __tmp52425)))
                                             (__tmp52421
                                              (let ((__tmp52423
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24634_
                                                        _tgt25876_
                                                        _L26775_
                                                        '0
                                                        _K25879_
                                                        _E25880_)))
                                                    (__tmp52422
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp52423 __tmp52422))))
                                         (declare (not safe))
                                         (cons __tmp52424 __tmp52421))))
                                  (declare (not safe))
                                  (cons 'if __tmp52420))))
                            _g2679026801_)))
                        (__tmp52431 (gx#stx-length _L26775_)))
                   (declare (not safe))
                   (_g2678826816_ __tmp52431))))
              (___kont4789947900_
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
                                                       ___stx4789447895_)
                                                      (let ((_e2668026751_
                                                             (gx#syntax-e
                                                              ___stx4789447895_)))
                                                        (let ((_tl2667826758_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2668026751_)))
                      (_hd2667926755_
                       (let () (declare (not safe)) (##car _e2668026751_))))
                  (if (gx#stx-datum? _hd2667926755_)
                      (let ((_e2668126761_ (gx#stx-e _hd2667926755_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2668126761_ 'simple:))
                            (if (gx#stx-pair? _tl2667826758_)
                                (let ((_e2668426765_
                                       (gx#syntax-e _tl2667826758_)))
                                  (let ((_tl2668226772_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2668426765_)))
                                        (_hd2668326769_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2668426765_))))
                                    (if (gx#stx-null? _tl2668226772_)
                                        (___kont4789747898_ _hd2668326769_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2667526698_)))))
                                (let () (declare (not safe)) (_g2667526698_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2668126761_ 'list:))
                                (if (gx#stx-pair? _tl2667826758_)
                                    (let ((_e2669226719_
                                           (gx#syntax-e _tl2667826758_)))
                                      (let ((_tl2669026726_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2669226719_)))
                                            (_hd2669126723_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2669226719_))))
                                        (if (gx#stx-null? _tl2669026726_)
                                            (___kont4789947900_ _hd2669126723_)
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
                                           (___kont4807948080_
                                            (lambda (_L26465_)
                                              (let* ((___stx4784447845_
                                                      _L26465_)
                                                     (_g2648026503_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4784447845_))))
                                                (let ((___kont4784747848_
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
                                (let ((__tmp52432
                                       (let ((__tmp52447
                                              (let ((__tmp52449
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp52448
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25897_ '()))))
                                                (declare (not safe))
                                                (cons __tmp52449 __tmp52448)))
                                             (__tmp52433
                                              (let ((__tmp52435
                                                     (let ((__tmp52436
                                                            (let ((__tmp52440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp52446 (gx#datum->syntax '#f '##fx=))
                                 (__tmp52441
                                  (let ((__tmp52443
                                         (let ((__tmp52445
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp52444
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L25897_ '()))))
                                           (declare (not safe))
                                           (cons __tmp52445 __tmp52444)))
                                        (__tmp52442
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26609_ '()))))
                                    (declare (not safe))
                                    (cons __tmp52443 __tmp52442))))
                             (declare (not safe))
                             (cons __tmp52446 __tmp52441)))
                          (__tmp52437
                           (let ((__tmp52439
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24634_
                                     _tgt25876_
                                     _L26580_
                                     '0
                                     _K25879_
                                     _E25880_)))
                                 (__tmp52438
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25880_ '()))))
                             (declare (not safe))
                             (cons __tmp52439 __tmp52438))))
                      (declare (not safe))
                      (cons __tmp52440 __tmp52437))))
               (declare (not safe))
               (cons 'if __tmp52436)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp52434
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp52435 __tmp52434))))
                                         (declare (not safe))
                                         (cons __tmp52447 __tmp52433))))
                                  (declare (not safe))
                                  (cons 'if __tmp52432))))
                            _g2659526606_)))
                        (__tmp52450 (gx#stx-length _L26580_)))
                   (declare (not safe))
                   (_g2659326621_ __tmp52450))))
              (___kont4784947850_
               (lambda (_L26534_)
                 (let ((__tmp52451
                        (let ((__tmp52455
                               (let ((__tmp52457
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp52456
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp52457 __tmp52456)))
                              (__tmp52452
                               (let ((__tmp52454
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24635_
                                         _tgt25876_
                                         _L26534_
                                         'vector->list
                                         _K25879_
                                         _E25880_)))
                                     (__tmp52453
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons __tmp52454 __tmp52453))))
                          (declare (not safe))
                          (cons __tmp52455 __tmp52452))))
                   (declare (not safe))
                   (cons 'if __tmp52451)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4784447845_)
                                                      (let ((_e2648526556_
                                                             (gx#syntax-e
                                                              ___stx4784447845_)))
                                                        (let ((_tl2648326563_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2648526556_)))
                      (_hd2648426560_
                       (let () (declare (not safe)) (##car _e2648526556_))))
                  (if (gx#stx-datum? _hd2648426560_)
                      (let ((_e2648626566_ (gx#stx-e _hd2648426560_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2648626566_ 'simple:))
                            (if (gx#stx-pair? _tl2648326563_)
                                (let ((_e2648926570_
                                       (gx#syntax-e _tl2648326563_)))
                                  (let ((_tl2648726577_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2648926570_)))
                                        (_hd2648826574_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2648926570_))))
                                    (if (gx#stx-null? _tl2648726577_)
                                        (___kont4784747848_ _hd2648826574_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2648026503_)))))
                                (let () (declare (not safe)) (_g2648026503_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2648626566_ 'list:))
                                (if (gx#stx-pair? _tl2648326563_)
                                    (let ((_e2649726524_
                                           (gx#syntax-e _tl2648326563_)))
                                      (let ((_tl2649526531_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2649726524_)))
                                            (_hd2649626528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2649726524_))))
                                        (if (gx#stx-null? _tl2649526531_)
                                            (___kont4784947850_ _hd2649626528_)
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
                                           (___kont4808148082_
                                            (lambda (_L26416_ _L26418_)
                                              (let ((__tmp52458
                                                     (gx#stx-e _L26418_)))
                                                (declare (not safe))
                                                (_generate-struct24636_
                                                 __tmp52458
                                                 _tgt25876_
                                                 _L26416_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4808348084_
                                            (lambda (_L26357_ _L26359_)
                                              (let ((__tmp52459
                                                     (gx#stx-e _L26359_)))
                                                (declare (not safe))
                                                (_generate-class24639_
                                                 __tmp52459
                                                 _tgt25876_
                                                 _L26357_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4808548086_
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
                                                             (let ((__tmp52460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52463
                                   (let ((__tmp52464
                                          (let ((__tmp52465
                                                 (let ((__tmp52466
                                                        (let ((__tmp52468
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp52467
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26260_ '()))))
                  (declare (not safe))
                  (cons __tmp52468 __tmp52467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp52466 '()))))
                                            (declare (not safe))
                                            (cons _L25897_ __tmp52465))))
                                     (declare (not safe))
                                     (cons _L26289_ __tmp52464)))
                                  (__tmp52461
                                   (let ((__tmp52462
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25880_ '()))))
                                     (declare (not safe))
                                     (cons _K25879_ __tmp52462))))
                              (declare (not safe))
                              (cons __tmp52463 __tmp52461))))
                       (declare (not safe))
                       (cons 'if __tmp52460))))
                 _g2627526286_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp52469
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
                                                (_g2627326301_ __tmp52469))))
                                           (___kont4808748088_
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
                                                             (let ((__tmp52470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52473
                                   (let ((__tmp52474
                                          (let ((__tmp52475
                                                 (let ((__tmp52476
                                                        (let ((__tmp52477
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L25897_ '()))))
                  (declare (not safe))
                  (cons _L26182_ __tmp52477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp52476 '()))))
                                            (declare (not safe))
                                            (cons _L26213_ __tmp52475))))
                                     (declare (not safe))
                                     (cons __tmp52474 '())))
                                  (__tmp52471
                                   (let ((__tmp52472
                                          (let ()
                                            (declare (not safe))
                                            (_generate124631_
                                             _L26213_
                                             _L26180_
                                             _K25879_
                                             _E25880_))))
                                     (declare (not safe))
                                     (cons __tmp52472 '()))))
                              (declare (not safe))
                              (cons __tmp52473 __tmp52471))))
                       (declare (not safe))
                       (cons 'let __tmp52470))))
                 _g2619926210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp52478
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2619726225_ __tmp52478))))
                                           (___kont4808948090_
                                            (lambda (_L26122_)
                                              (let ((__tmp52479
                                                     (let ((__tmp52481
                                                            (let ((__tmp52482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp52483
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons _L26122_ __tmp52483))))
                      (declare (not safe))
                      (cons __tmp52482 '())))
                   (__tmp52480
                    (let () (declare (not safe)) (cons _K25879_ '()))))
               (declare (not safe))
               (cons __tmp52481 __tmp52480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp52479))))
                                           (___kont4809148092_
                                            (lambda () _K25879_)))
                                       (if (gx#stx-pair? ___stx4805848059_)
                                           (let ((_e2593027350_
                                                  (gx#syntax-e
                                                   ___stx4805848059_)))
                                             (let ((_tl2592827357_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2593027350_)))
                                                   (_hd2592927354_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2593027350_))))
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
                 (if (gx#stx-pair? _tl2592827357_)
                     (let ((_e2593427364_ (gx#syntax-e _tl2592827357_)))
                       (let ((_tl2593227371_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2593427364_)))
                             (_hd2593327368_
                              (let ()
                                (declare (not safe))
                                (##car _e2593427364_))))
                         (___kont4806148062_ _tl2593227371_ _hd2593327368_)))
                     (let () (declare (not safe)) (_g2592426066_)))
                 (if (let () (declare (not safe)) (equal? _e2593127360_ 'and:))
                     (___kont4806348064_ _tl2592827357_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2593127360_ 'or:))
                         (___kont4806548066_ _tl2592827357_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2593127360_ 'not:))
                             (if (gx#stx-pair? _tl2592827357_)
                                 (let ((_e2595227133_
                                        (gx#syntax-e _tl2592827357_)))
                                   (let ((_tl2595027140_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2595227133_)))
                                         (_hd2595127137_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2595227133_))))
                                     (if (gx#stx-null? _tl2595027140_)
                                         (___kont4806748068_ _hd2595127137_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let () (declare (not safe)) (_g2592426066_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2593127360_ 'cons:))
                                 (if (gx#stx-pair? _tl2592827357_)
                                     (let ((_e2596127005_
                                            (gx#syntax-e _tl2592827357_)))
                                       (let ((_tl2595927012_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2596127005_)))
                                             (_hd2596027009_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2596127005_))))
                                         (if (gx#stx-pair? _tl2595927012_)
                                             (let ((_e2596427015_
                                                    (gx#syntax-e
                                                     _tl2595927012_)))
                                               (let ((_tl2596227022_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2596427015_)))
                                                     (_hd2596327019_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2596427015_))))
                                                 (if (gx#stx-null?
                                                      _tl2596227022_)
                                                     (___kont4806948070_
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
                                     (if (gx#stx-null? _tl2592827357_)
                                         (___kont4807148072_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2593127360_ 'splice:))
                                         (if (gx#stx-pair? _tl2592827357_)
                                             (let ((_e2597726921_
                                                    (gx#syntax-e
                                                     _tl2592827357_)))
                                               (let ((_tl2597526928_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2597726921_)))
                                                     (_hd2597626925_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2597726921_))))
                                                 (if (gx#stx-pair?
                                                      _tl2597526928_)
                                                     (let ((_e2598026931_
                                                            (gx#syntax-e
                                                             _tl2597526928_)))
                                                       (let ((_tl2597826938_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2598026931_)))
                     (_hd2597926935_
                      (let () (declare (not safe)) (##car _e2598026931_))))
                 (if (gx#stx-null? _tl2597826938_)
                     (___kont4807348074_ _hd2597926935_ _hd2597626925_)
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
                                             (if (gx#stx-pair? _tl2592827357_)
                                                 (let ((_e2598826845_
                                                        (gx#syntax-e
                                                         _tl2592827357_)))
                                                   (let ((_tl2598626852_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2598826845_)))
                                                         (_hd2598726849_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2598826845_))))
                                                     (if (gx#stx-null?
                                                          _tl2598626852_)
                                                         (___kont4807548076_
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
                                                      _tl2592827357_)
                                                     (let ((_e2599626650_
                                                            (gx#syntax-e
                                                             _tl2592827357_)))
                                                       (let ((_tl2599426657_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2599626650_)))
                     (_hd2599526654_
                      (let () (declare (not safe)) (##car _e2599626650_))))
                 (if (gx#stx-null? _tl2599426657_)
                     (___kont4807748078_ _hd2599526654_)
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
                                                          _tl2592827357_)
                                                         (let ((_e2600426455_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2592827357_)))
                   (let ((_tl2600226462_
                          (let () (declare (not safe)) (##cdr _e2600426455_)))
                         (_hd2600326459_
                          (let () (declare (not safe)) (##car _e2600426455_))))
                     (if (gx#stx-null? _tl2600226462_)
                         (___kont4807948080_ _hd2600326459_)
                         (let () (declare (not safe)) (_g2592426066_)))))
                 (let () (declare (not safe)) (_g2592426066_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2593127360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl2592827357_)
                     (let ((_e2601326396_ (gx#syntax-e _tl2592827357_)))
                       (let ((_tl2601126403_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2601326396_)))
                             (_hd2601226400_
                              (let ()
                                (declare (not safe))
                                (##car _e2601326396_))))
                         (if (gx#stx-pair? _tl2601126403_)
                             (let ((_e2601626406_
                                    (gx#syntax-e _tl2601126403_)))
                               (let ((_tl2601426413_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2601626406_)))
                                     (_hd2601526410_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2601626406_))))
                                 (if (gx#stx-null? _tl2601426413_)
                                     (___kont4808148082_
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
                     (if (gx#stx-pair? _tl2592827357_)
                         (let ((_e2602526337_ (gx#syntax-e _tl2592827357_)))
                           (let ((_tl2602326344_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2602526337_)))
                                 (_hd2602426341_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2602526337_))))
                             (if (gx#stx-pair? _tl2602326344_)
                                 (let ((_e2602826347_
                                        (gx#syntax-e _tl2602326344_)))
                                   (let ((_tl2602626354_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2602826347_)))
                                         (_hd2602726351_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2602826347_))))
                                     (if (gx#stx-null? _tl2602626354_)
                                         (___kont4808348084_
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
                         (if (gx#stx-pair? _tl2592827357_)
                             (let ((_e2603626250_
                                    (gx#syntax-e _tl2592827357_)))
                               (let ((_tl2603426257_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2603626250_)))
                                     (_hd2603526254_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2603626250_))))
                                 (if (gx#stx-null? _tl2603426257_)
                                     (___kont4808548086_ _hd2603526254_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))
                             (let () (declare (not safe)) (_g2592426066_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2593127360_ 'apply:))
                             (if (gx#stx-pair? _tl2592827357_)
                                 (let ((_e2604526160_
                                        (gx#syntax-e _tl2592827357_)))
                                   (let ((_tl2604326167_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2604526160_)))
                                         (_hd2604426164_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2604526160_))))
                                     (if (gx#stx-pair? _tl2604326167_)
                                         (let ((_e2604826170_
                                                (gx#syntax-e _tl2604326167_)))
                                           (let ((_tl2604626177_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2604826170_)))
                                                 (_hd2604726174_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2604826170_))))
                                             (if (gx#stx-null? _tl2604626177_)
                                                 (___kont4808748088_
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
                                 (if (gx#stx-pair? _tl2592827357_)
                                     (let ((_e2605626112_
                                            (gx#syntax-e _tl2592827357_)))
                                       (let ((_tl2605426119_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2605626112_)))
                                             (_hd2605526116_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2605626112_))))
                                         (if (gx#stx-null? _tl2605426119_)
                                             (___kont4808948090_
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
                                     (if (gx#stx-null? _tl2592827357_)
                                         (___kont4809148092_)
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
                                  (let ((_g52484_
                                         (gx#syntax-split-splice
                                          _g2525625276_
                                          '0)))
                                    (begin
                                      (let ((_g52485_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g52484_)
                                                   (##vector-length _g52484_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g52485_ 2)))
                                            (error "Context expects 2 values"
                                                   _g52485_)))
                                      (let ((_target2525825279_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g52484_ 0)))
                                            (_tl2526025282_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g52484_ 1))))
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
                        (let ((__tmp52578
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2526325299_ _var2526525292_))))
                          (declare (not safe))
                          (_loop2526125285_ _lp-tl2526425302_ __tmp52578))))
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
                                         (let ((_g52486_
                                                (gx#syntax-split-splice
                                                 _g2532625346_
                                                 '0)))
                                           (begin
                                             (let ((_g52487_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g52486_)
                                                          (##vector-length
                                                           _g52486_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g52487_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g52487_)))
                                             (let ((_target2532825349_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g52486_
                                                       0)))
                                                   (_tl2533025352_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g52486_
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
                               (let ((__tmp52575
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2533325369_
                                              _var-r2533525362_))))
                                 (declare (not safe))
                                 (_loop2533125355_
                                  _lp-tl2533425372_
                                  __tmp52575))))
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
                                                (let ((_g52488_
                                                       (gx#syntax-split-splice
                                                        _g2539725417_
                                                        '0)))
                                                  (begin
                                                    (let ((_g52489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g52488_)
                         (##vector-length _g52488_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g52489_ 2)))
                  (error "Context expects 2 values" _g52489_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2539925420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g52488_
                                                              0)))
                                                          (_tl2540125423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g52488_
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
                                      (let ((__tmp52569
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2540425440_
                                                     _init2540625433_))))
                                        (declare (not safe))
                                        (_loop2540225426_
                                         _lp-tl2540525443_
                                         __tmp52569))))
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
                                 (let ((__tmp52543
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp52490
                                        (let ((__tmp52496
                                               (let ((__tmp52534
                                                      (let ((__tmp52535
                                                             (let ((__tmp52536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52542 (gx#datum->syntax '#f 'lambda))
                                  (__tmp52537
                                   (let ((__tmp52539
                                          (let ((__tmp52540
                                                 (let ((__tmp52541
                                                        (lambda (_g2575625759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2575725762_)
                  (let ()
                    (declare (not safe))
                    (cons _g2575625759_ _g2575725762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp52541
                                                           '()
                                                           _L25309_))))
                                            (declare (not safe))
                                            (cons _L25622_ __tmp52540)))
                                         (__tmp52538
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25650_ '()))))
                                     (declare (not safe))
                                     (cons __tmp52539 __tmp52538))))
                              (declare (not safe))
                              (cons __tmp52542 __tmp52537))))
                       (declare (not safe))
                       (cons __tmp52536 '()))))
                (declare (not safe))
                (cons _L25510_ __tmp52535)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp52497
                                                      (let ((__tmp52524
                                                             (let ((__tmp52525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52526
                                   (let ((__tmp52533
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp52527
                                          (let ((__tmp52529
                                                 (let ((__tmp52530
                                                        (let ((__tmp52531
                                                               (let ((__tmp52532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2575425765_ _g2575525768_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2575425765_ _g2575525768_)))))
                         (declare (not safe))
                         (foldr1 __tmp52532 '() _L25379_))))
                  (declare (not safe))
                  (cons _L25622_ __tmp52531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25594_ __tmp52530)))
                                                (__tmp52528
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25734_ '()))))
                                            (declare (not safe))
                                            (cons __tmp52529 __tmp52528))))
                                     (declare (not safe))
                                     (cons __tmp52533 __tmp52527))))
                              (declare (not safe))
                              (cons __tmp52526 '()))))
                       (declare (not safe))
                       (cons _L25566_ __tmp52525)))
                    (__tmp52498
                     (let ((__tmp52499
                            (let ((__tmp52500
                                   (let ((__tmp52501
                                          (let ((__tmp52523
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp52502
                                                 (let ((__tmp52520
                                                        (let ((__tmp52521
                                                               (let ((__tmp52522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2575225771_ _g2575325774_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2575225771_ _g2575325774_)))))
                         (declare (not safe))
                         (foldr1 __tmp52522 '() _L25379_))))
                  (declare (not safe))
                  (cons _L25622_ __tmp52521)))
               (__tmp52503
                (let ((__tmp52504
                       (let ((__tmp52519 (gx#datum->syntax '#f 'if))
                             (__tmp52505
                              (let ((__tmp52516
                                     (let ((__tmp52518
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp52517
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25622_ '()))))
                                       (declare (not safe))
                                       (cons __tmp52518 __tmp52517)))
                                    (__tmp52506
                                     (let ((__tmp52508
                                            (let ((__tmp52509
                                                   (let ((__tmp52513
                                                          (let ((__tmp52515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp52514
                         (let () (declare (not safe)) (cons _L25622_ '()))))
                    (declare (not safe))
                    (cons __tmp52515 __tmp52514)))
                 (__tmp52510
                  (let ((__tmp52511
                         (let ((__tmp52512
                                (lambda (_g2575025777_ _g2575125780_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2575025777_ _g2575125780_)))))
                           (declare (not safe))
                           (foldr1 __tmp52512 '() _L25379_))))
                    (declare (not safe))
                    (cons _L25622_ __tmp52511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp52513
                                                           __tmp52510))))
                                              (declare (not safe))
                                              (cons _L25566_ __tmp52509)))
                                           (__tmp52507
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25706_ '()))))
                                       (declare (not safe))
                                       (cons __tmp52508 __tmp52507))))
                                (declare (not safe))
                                (cons __tmp52516 __tmp52506))))
                         (declare (not safe))
                         (cons __tmp52519 __tmp52505))))
                  (declare (not safe))
                  (cons __tmp52504 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp52520
                                                         __tmp52503))))
                                            (declare (not safe))
                                            (cons __tmp52523 __tmp52502))))
                                     (declare (not safe))
                                     (cons __tmp52501 '()))))
                              (declare (not safe))
                              (cons _L25538_ __tmp52500))))
                       (declare (not safe))
                       (cons __tmp52499 '()))))
                (declare (not safe))
                (cons __tmp52524 __tmp52498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp52534 __tmp52497)))
                                              (__tmp52491
                                               (let ((__tmp52492
                                                      (let ((__tmp52493
                                                             (let ((__tmp52494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52495
                                   (lambda (_g2574825783_ _g2574925786_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2574825783_ _g2574925786_)))))
                              (declare (not safe))
                              (foldr1 __tmp52495 '() _L25450_))))
                       (declare (not safe))
                       (cons _L25482_ __tmp52494))))
                (declare (not safe))
                (cons _L25538_ __tmp52493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp52492 '()))))
                                          (declare (not safe))
                                          (cons __tmp52496 __tmp52491))))
                                   (declare (not safe))
                                   (cons __tmp52543 __tmp52490)))))
                           _g2572025731_)))
                       (__tmp52544
                        (let ()
                          (declare (not safe))
                          (_generate124631_
                           _L25594_
                           _hd25250_
                           _L25678_
                           _L25706_))))
                  (declare (not safe))
                  (_g2571825789_ __tmp52544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2569225703_)))
                                                (__tmp52545
                                                 (let ((__tmp52546
                                                        (let ((__tmp52547
                                                               (let ((__tmp52548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2579625799_ _g2579725802_)
                                (let ((__tmp52549
                                       (let ((__tmp52551
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp52550
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2579625799_ '()))))
                                         (declare (not safe))
                                         (cons __tmp52551 __tmp52550))))
                                  (declare (not safe))
                                  (cons __tmp52549 _g2579725802_)))))
                         (declare (not safe))
                         (foldr1 __tmp52548 '() _L25379_))))
                  (declare (not safe))
                  (cons _L25622_ __tmp52547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25510_
                                                         __tmp52546))))
                                           (declare (not safe))
                                           (_g2569025793_ __tmp52545))))
                                     _g2566425675_)))
                                 (__tmp52552
                                  (let ((__tmp52553
                                         (let ((__tmp52560
                                                (let ((__tmp52562
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp52561
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25622_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp52562
                                                        __tmp52561)))
                                               (__tmp52554
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25379_
                                                   _L25309_)
                                                  (let ((__tmp52555
                                                         (lambda (_g2580825812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2580925815_
                          _g2581025817_)
                   (let ((__tmp52556
                          (let ((__tmp52559 (gx#datum->syntax '#f 'cons))
                                (__tmp52557
                                 (let ((__tmp52558
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2580825812_ '()))))
                                   (declare (not safe))
                                   (cons _g2580925815_ __tmp52558))))
                            (declare (not safe))
                            (cons __tmp52559 __tmp52557))))
                     (declare (not safe))
                     (cons __tmp52556 _g2581025817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr2 __tmp52555
                                                            '()
                                                            _L25379_
                                                            _L25309_)))))
                                           (declare (not safe))
                                           (cons __tmp52560 __tmp52554))))
                                    (declare (not safe))
                                    (cons _L25538_ __tmp52553))))
                            (declare (not safe))
                            (_g2566225805_ __tmp52552))))
                      _g2563625647_)))
                  (__tmp52563
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
                                                      __tmp52563))))
                                               _g2560825619_)))
                                           (__tmp52564 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2560625824_ __tmp52564))))
                                _g2558025591_)))
                            (__tmp52565 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2557825828_ __tmp52565))))
                 _g2555225563_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp52566
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2555025832_ __tmp52566))))
                                          _g2552425535_)))
                                      (__tmp52567 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2552225836_ __tmp52567))))
                           _g2549625507_)))
                       (__tmp52568 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2549425840_ __tmp52568))))
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
                                         (__tmp52570
                                          (let ((__tmp52573
                                                 (gx#stx-length
                                                  (let ((__tmp52574
                                                         (lambda (_g2585125854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2585225857_)
                   (let ()
                     (declare (not safe))
                     (cons _g2585125854_ _g2585225857_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp52574
                                                            '()
                                                            _L25309_))))
                                                (__tmp52571
                                                 (let ((__tmp52572
                                                        (gx#datum->syntax
                                                         '#f
                                                         '@list)))
                                                   (declare (not safe))
                                                   (cons __tmp52572 '()))))
                                            (declare (not safe))
                                            (make-list__%
                                             __tmp52573
                                             __tmp52571))))
                                    (declare (not safe))
                                    (_g2539525848_ __tmp52570))))
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
                                  (__tmp52576
                                   (gx#gentemps
                                    (let ((__tmp52577
                                           (lambda (_g2586325866_
                                                    _g2586425869_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2586325866_
                                                     _g2586425869_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp52577 '() _L25309_)))))
                             (declare (not safe))
                             (_g2532425860_ __tmp52576))))
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
                           (__tmp52579
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25250_))))
                      (declare (not safe))
                      (_g2525425872_ __tmp52579))))
                 (_generate-simple-vector24634_
                  (lambda (_tgt25090_
                           _body25092_
                           _start25093_
                           _K25094_
                           _E25095_)
                    (let _recur25097_ ((_rest25100_ _body25092_)
                                       (_off25102_ _start25093_))
                      (let* ((___stx4841648417_ _rest25100_)
                             (_g2510525117_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4841648417_))))
                        (let ((___kont4841948420_
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
                                               (let ((_e2516925188_
                                                      (gx#syntax-e
                                                       _g2516325185_)))
                                                 (let ((_hd2516825192_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2516925188_)))
                                                       (_tl2516725195_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2516925188_))))
                                                   (if (gx#stx-pair?
                                                        _tl2516725195_)
                                                       (let ((_e2517225198_
                                                              (gx#syntax-e
                                                               _tl2516725195_)))
                                                         (let ((_hd2517125202_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2517225198_)))
                       (_tl2517025205_
                        (let () (declare (not safe)) (##cdr _e2517225198_))))
                   (if (gx#stx-pair? _tl2517025205_)
                       (let ((_e2517525208_ (gx#syntax-e _tl2517025205_)))
                         (let ((_hd2517425212_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2517525208_)))
                               (_tl2517325215_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2517525208_))))
                           (if (gx#stx-null? _tl2517325215_)
                               ((lambda (_L25218_ _L25220_ _L25221_)
                                  (let ()
                                    (let ((__tmp52580
                                           (let ((__tmp52585
                                                  (let ((__tmp52586
                                                         (let ((__tmp52587
                                                                (let ((__tmp52588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp52591
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp52589
                                      (let ((__tmp52590
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25218_ '()))))
                                        (declare (not safe))
                                        (cons _L25220_ __tmp52590))))
                                 (declare (not safe))
                                 (cons __tmp52591 __tmp52589))))
                          (declare (not safe))
                          (cons __tmp52588 '()))))
                   (declare (not safe))
                   (cons _L25221_ __tmp52587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp52586 '())))
                                                 (__tmp52581
                                                  (let ((__tmp52582
                                                         (let ((__tmp52583
                                                                (let ((__tmp52584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off25102_ '1))))
                          (declare (not safe))
                          (_recur25097_ _L25145_ __tmp52584))))
                   (declare (not safe))
                   (_generate124631_ _L25221_ _L25147_ __tmp52583 _E25095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp52582 '()))))
                                             (declare (not safe))
                                             (cons __tmp52585 __tmp52581))))
                                      (declare (not safe))
                                      (cons 'let __tmp52580))))
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
                                        (__tmp52592
                                         (list (gx#genident 'e)
                                               _tgt25090_
                                               _off25102_)))
                                   (declare (not safe))
                                   (_g2516125240_ __tmp52592))))
                              (___kont4842148422_ (lambda () _K25094_)))
                          (if (gx#stx-pair? ___stx4841648417_)
                              (let ((_e2511125135_
                                     (gx#syntax-e ___stx4841648417_)))
                                (let ((_tl2510925142_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2511125135_)))
                                      (_hd2511025139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2511125135_))))
                                  (___kont4841948420_
                                   _tl2510925142_
                                   _hd2511025139_)))
                              (___kont4842148422_)))))))
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
                           (let ((__tmp52593
                                  (let ((__tmp52596
                                         (let ((__tmp52597
                                                (let ((__tmp52598
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25059_ '()))))
                                                  (declare (not safe))
                                                  (cons _L25004_ __tmp52598))))
                                           (declare (not safe))
                                           (cons __tmp52597 '())))
                                        (__tmp52594
                                         (let ((__tmp52595
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124631_
                                                   _L25004_
                                                   _body24984_
                                                   _K24986_
                                                   _E24987_))))
                                           (declare (not safe))
                                           (cons __tmp52595 '()))))
                                    (declare (not safe))
                                    (cons __tmp52596 __tmp52594))))
                             (declare (not safe))
                             (cons 'let __tmp52593)))))
                     _g2504525056_)))
                 (__tmp52599
                  (let ((_$e25078_ _->list24985_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e25078_))
                        (let ((__tmp52608 (gx#datum->syntax '#f 'values->list))
                              (__tmp52607
                               (let ()
                                 (declare (not safe))
                                 (cons _L25031_ '()))))
                          (declare (not safe))
                          (cons __tmp52608 __tmp52607))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e25078_))
                            (let ((__tmp52606
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp52605
                                   (let ()
                                     (declare (not safe))
                                     (cons _L25031_ '()))))
                              (declare (not safe))
                              (cons __tmp52606 __tmp52605))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e25078_))
                                (let ((__tmp52604
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp52600
                                       (let ((__tmp52601
                                              (let ((__tmp52603
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp52602
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25031_ '()))))
                                                (declare (not safe))
                                                (cons __tmp52603 __tmp52602))))
                                         (declare (not safe))
                                         (cons __tmp52601 '()))))
                                  (declare (not safe))
                                  (cons __tmp52604 __tmp52600))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24624_
                                 _->list24985_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2504325074_
                                                     __tmp52599))))
                                              _g2501725028_))))
                                     (declare (not safe))
                                     (_g2501525082_ _tgt24982_))))
                               _g2499025001_)))
                           (__tmp52609 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2498825086_ __tmp52609))))
                 (_generate-struct24636_
                  (lambda (_info24853_
                           _tgt24855_
                           _body24856_
                           _K24857_
                           _E24858_)
                    (let* ((___stx4843248433_ _body24856_)
                           (_g2486124884_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4843248433_))))
                      (let ((___kont4843548436_
                             (lambda (_L24961_)
                               (let* ((_fields24975_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24638_
                                          _info24853_)))
                                      (__tmp52610
                                       (let ((__tmp52614
                                              (let ((__tmp52616
                                                     (let ((__obj49635
                                                            _info24853_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj49635
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj49635
                                                              '11
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj49635
                                                            'predicate))))
                                                    (__tmp52615
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24855_ '()))))
                                                (declare (not safe))
                                                (cons __tmp52616 __tmp52615)))
                                             (__tmp52611
                                              (let ((__tmp52613
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24637_
                                                        _info24853_
                                                        _tgt24855_
                                                        _L24961_
                                                        _K24857_
                                                        _E24858_)))
                                                    (__tmp52612
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24858_ '()))))
                                                (declare (not safe))
                                                (cons __tmp52613 __tmp52612))))
                                         (declare (not safe))
                                         (cons __tmp52614 __tmp52611))))
                                 (declare (not safe))
                                 (cons 'if __tmp52610))))
                            (___kont4843748438_
                             (lambda (_L24915_)
                               (let ((__tmp52617
                                      (let ((__tmp52621
                                             (let ((__tmp52623
                                                    (let ((__obj49636
                                                           _info24853_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj49636
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj49636
                                                             '11
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj49636
                                                           'predicate))))
                                                   (__tmp52622
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24855_ '()))))
                                               (declare (not safe))
                                               (cons __tmp52623 __tmp52622)))
                                            (__tmp52618
                                             (let ((__tmp52620
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24635_
                                                       _tgt24855_
                                                       _L24915_
                                                       'struct->list
                                                       _K24857_
                                                       _E24858_)))
                                                   (__tmp52619
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24858_ '()))))
                                               (declare (not safe))
                                               (cons __tmp52620 __tmp52619))))
                                        (declare (not safe))
                                        (cons __tmp52621 __tmp52618))))
                                 (declare (not safe))
                                 (cons 'if __tmp52617)))))
                        (if (gx#stx-pair? ___stx4843248433_)
                            (let ((_e2486624937_
                                   (gx#syntax-e ___stx4843248433_)))
                              (let ((_tl2486424944_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2486624937_)))
                                    (_hd2486524941_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2486624937_))))
                                (if (gx#stx-datum? _hd2486524941_)
                                    (let ((_e2486724947_
                                           (gx#stx-e _hd2486524941_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2486724947_ 'simple:))
                                          (if (gx#stx-pair? _tl2486424944_)
                                              (let ((_e2487024951_
                                                     (gx#syntax-e
                                                      _tl2486424944_)))
                                                (let ((_tl2486824958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2487024951_)))
                                                      (_hd2486924955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2487024951_))))
                                                  (if (gx#stx-null?
                                                       _tl2486824958_)
                                                      (___kont4843548436_
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
                                              (if (gx#stx-pair? _tl2486424944_)
                                                  (let ((_e2487824905_
                                                         (gx#syntax-e
                                                          _tl2486424944_)))
                                                    (let ((_tl2487624912_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2487824905_)))
                                                          (_hd2487724909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2487824905_))))
                                                      (if (gx#stx-null?
                                                           _tl2487624912_)
                                                          (___kont4843748438_
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
                      (let* ((___stx4848248483_ _rest24783_)
                             (_g2478824800_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4848248483_))))
                        (let ((___kont4848548486_
                               (lambda (_L24828_ _L24830_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24785_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24624_
                                      _info24773_
                                      (let ((__obj49637 _info24773_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj49637
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj49637
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj49637
                                             'name))))
                                     (let ((_$tgt24845_ (gx#genident 'e))
                                           (_getf24847_ (car _fields24785_)))
                                       (let ((__tmp52624
                                              (let ((__tmp52629
                                                     (let ((__tmp52630
                                                            (let ((__tmp52631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp52632
                                  (let ((__tmp52633
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24775_ '()))))
                                    (declare (not safe))
                                    (cons _getf24847_ __tmp52633))))
                             (declare (not safe))
                             (cons __tmp52632 '()))))
                      (declare (not safe))
                      (cons _$tgt24845_ __tmp52631))))
               (declare (not safe))
               (cons __tmp52630 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp52625
                                                     (let ((__tmp52626
                                                            (let ((__tmp52627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp52628 (cdr _fields24785_)))
                             (declare (not safe))
                             (_recur24780_ _L24828_ __tmp52628))))
                      (declare (not safe))
                      (_generate124631_
                       _$tgt24845_
                       _L24830_
                       __tmp52627
                       _E24778_))))
               (declare (not safe))
               (cons __tmp52626 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp52629 __tmp52625))))
                                         (declare (not safe))
                                         (cons 'let __tmp52624))))))
                              (___kont4848748488_ (lambda () _K24777_)))
                          (if (gx#stx-pair? ___stx4848248483_)
                              (let ((_e2479424818_
                                     (gx#syntax-e ___stx4848248483_)))
                                (let ((_tl2479224825_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2479424818_)))
                                      (_hd2479324822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2479424818_))))
                                  (___kont4848548486_
                                   _tl2479224825_
                                   _hd2479324822_)))
                              (___kont4848748488_)))))))
                 (_struct-field-accessors24638_
                  (lambda (_info24754_)
                    (let _recur24757_ ((_next24760_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24754_ '()))))
                      (if (let () (declare (not safe)) (null? _next24760_))
                          '()
                          (let ((_ti24763_ (car _next24760_)))
                            (append (let ((__tmp52634
                                           (map gx#syntax-local-value
                                                (let ((__obj49638 _ti24763_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj49638
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj49638
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj49638
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24757_ __tmp52634))
                                    (map (lambda (_slot24766_)
                                           (let ((_$e24769_
                                                  (let ((__tmp52635
                                                         (let ((__obj49639
                                                                _ti24763_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj49639
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj49639
                          '14
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          '#f))
                       (class-slot-ref
                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                        __obj49639
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (assgetq__0
                                                     _slot24766_
                                                     __tmp52635))))
                                             (if _$e24769_
                                                 _$e24769_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24624_
                                                  _info24754_
                                                  _slot24766_))))
                                         (let ((__obj49640 _ti24763_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj49640
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj49640
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj49640
                                                'slots))))))))))
                 (_generate-class24639_
                  (lambda (_info24747_
                           _tgt24749_
                           _body24750_
                           _K24751_
                           _E24752_)
                    (let ((__tmp52636
                           (let ((__tmp52640
                                  (let ((__tmp52642
                                         (let ((__obj49641 _info24747_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj49641
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj49641
                                                  '11
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj49641
                                                'predicate))))
                                        (__tmp52641
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24749_ '()))))
                                    (declare (not safe))
                                    (cons __tmp52642 __tmp52641)))
                                 (__tmp52637
                                  (let ((__tmp52639
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24640_
                                            _info24747_
                                            _tgt24749_
                                            _body24750_
                                            _K24751_
                                            _E24752_)))
                                        (__tmp52638
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24752_ '()))))
                                    (declare (not safe))
                                    (cons __tmp52639 __tmp52638))))
                             (declare (not safe))
                             (cons __tmp52640 __tmp52637))))
                      (declare (not safe))
                      (cons 'if __tmp52636))))
                 (_generate-class-body24640_
                  (lambda (_info24642_
                           _tgt24644_
                           _body24645_
                           _K24646_
                           _E24647_)
                    (let _recur24649_ ((_rest24652_ _body24645_))
                      (let* ((___stx4849848499_ _rest24652_)
                             (_g2465624672_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4849848499_))))
                        (let ((___kont4850148502_
                               (lambda (_L24710_ _L24712_ _L24713_)
                                 (let ((_$e24733_
                                        (let ((__tmp52644
                                               (string->symbol
                                                (keyword->string
                                                 (gx#stx-e _L24713_))))
                                              (__tmp52643
                                               (let ((__obj49642 _info24642_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj49642
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj49642
                                                        '14
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                      __obj49642
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (assgetq__0 __tmp52644 __tmp52643))))
                                   (if _$e24733_
                                       ((lambda (_getf24737_)
                                          (let* ((_$tgt24740_ (gx#genident 'e))
                                                 (__tmp52645
                                                  (let ((__tmp52649
                                                         (let ((__tmp52650
                                                                (let ((__tmp52651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp52652
                                      (let ((__tmp52653
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24644_ '()))))
                                        (declare (not safe))
                                        (cons _getf24737_ __tmp52653))))
                                 (declare (not safe))
                                 (cons __tmp52652 '()))))
                          (declare (not safe))
                          (cons _$tgt24740_ __tmp52651))))
                   (declare (not safe))
                   (cons __tmp52650 '())))
                (__tmp52646
                 (let ((__tmp52647
                        (let ((__tmp52648
                               (let ()
                                 (declare (not safe))
                                 (_recur24649_ _L24710_))))
                          (declare (not safe))
                          (_generate124631_
                           _$tgt24740_
                           _L24712_
                           __tmp52648
                           _E24647_))))
                   (declare (not safe))
                   (cons __tmp52647 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp52649
                                                          __tmp52646))))
                                            (declare (not safe))
                                            (cons 'let __tmp52645)))
                                        _$e24733_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24624_
                                        _info24642_
                                        _L24713_)))))
                              (___kont4850348504_ (lambda () _K24646_)))
                          (if (gx#stx-pair? ___stx4849848499_)
                              (let ((_e2466324690_
                                     (gx#syntax-e ___stx4849848499_)))
                                (let ((_tl2466124697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2466324690_)))
                                      (_hd2466224694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2466324690_))))
                                  (if (gx#stx-pair? _tl2466124697_)
                                      (let ((_e2466624700_
                                             (gx#syntax-e _tl2466124697_)))
                                        (let ((_tl2466424707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2466624700_)))
                                              (_hd2466524704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2466624700_))))
                                          (___kont4850148502_
                                           _tl2466424707_
                                           _hd2466524704_
                                           _hd2466224694_)))
                                      (___kont4850348504_))))
                              (___kont4850348504_))))))))
          (let ()
            (declare (not safe))
            (_generate124631_ _tgt24626_ _ptree24627_ _K24628_ _E24629_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23520_ _tgt-lst23522_ _clauses23523_)
        (letrec ((_parse-body23525_
                  (lambda (_hd-len24446_)
                    (let _lp24449_ ((_rest24452_ _clauses23523_)
                                    (_r24454_ '()))
                      (let* ((___stx4854848549_ _rest24452_)
                             (_g2445724469_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4854848549_))))
                        (let ((___kont4855148552_
                               (lambda (_L24497_ _L24499_)
                                 (let* ((___stx4852048521_ _L24499_)
                                        (_g2451624532_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4852048521_))))
                                   (let ((___kont4852348524_
                                          (lambda (_L24601_)
                                            (if (gx#stx-null? _L24497_)
                                                (let ((__tmp52654
                                                       (let ((__tmp52659
                                                              (gx#genident
                                                               'else))
                                                             (__tmp52655
                                                              (let ((__tmp52656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp52657
                                    (gx#stx-wrap-source
                                     (let ((__tmp52658
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp52658 _L24601_))
                                     (let ((_$e24612_
                                            (gx#stx-source _L24499_)))
                                       (if _$e24612_
                                           _$e24612_
                                           (gx#stx-source _stx23520_))))))
                               (declare (not safe))
                               (cons __tmp52657 '()))))
                        (declare (not safe))
                        (cons '#f __tmp52656))))
                 (declare (not safe))
                 (cons __tmp52659 __tmp52655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp52654 _r24454_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23520_
                                                 _L24499_))))
                                         (___kont4852548526_
                                          (lambda (_L24560_ _L24562_)
                                            (let ((__tmp52660
                                                   (let ((__tmp52661
                                                          (let ((__tmp52667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp52662
                         (let ((__tmp52666
                                (gx#stx-map
                                 (lambda (_g2457424576_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2457424576_
                                      _stx23520_)))
                                 _L24562_))
                               (__tmp52663
                                (let ((__tmp52664
                                       (gx#stx-wrap-source
                                        (let ((__tmp52665
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp52665 _L24560_))
                                        (let ((_$e24580_
                                               (gx#stx-source _L24499_)))
                                          (if _$e24580_
                                              _$e24580_
                                              (gx#stx-source _stx23520_))))))
                                  (declare (not safe))
                                  (cons __tmp52664 '()))))
                           (declare (not safe))
                           (cons __tmp52666 __tmp52663))))
                    (declare (not safe))
                    (cons __tmp52667 __tmp52662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp52661
                                                           _r24454_))))
                                              (declare (not safe))
                                              (_lp24449_
                                               _L24497_
                                               __tmp52660))))
                                         (___kont4852748528_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23520_
                                             _L24499_))))
                                     (let* ((___match4854548546_
                                             (lambda (_e2452624550_
                                                      _hd2452524554_
                                                      _tl2452424557_)
                                               (let ((_L24560_ _tl2452424557_)
                                                     (_L24562_ _hd2452524554_))
                                                 (if (and (gx#stx-list?
                                                           _L24562_)
                                                          (fx= (gx#stx-length
                                                                _L24562_)
                                                               _hd-len24446_)
                                                          (gx#stx-list?
                                                           _L24560_)
                                                          (let ((__tmp52668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24560_)))
                    (declare (not safe))
                    (not __tmp52668)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4852548526_
                                                      _L24560_
                                                      _L24562_)
                                                     (___kont4852748528_)))))
                                            (___match4853948540_
                                             (lambda (_e2452124591_
                                                      _hd2452024595_
                                                      _tl2451924598_)
                                               (let ((_L24601_ _tl2451924598_))
                                                 (if (and (gx#stx-list?
                                                           _L24601_)
                                                          (let ((__tmp52669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24601_)))
                    (declare (not safe))
                    (not __tmp52669)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4852348524_
                                                      _L24601_)
                                                     (___match4854548546_
                                                      _e2452124591_
                                                      _hd2452024595_
                                                      _tl2451924598_))))))
                                       (if (gx#stx-pair? ___stx4852048521_)
                                           (let ((_e2452124591_
                                                  (gx#syntax-e
                                                   ___stx4852048521_)))
                                             (let ((_tl2451924598_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2452124591_)))
                                                   (_hd2452024595_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2452124591_))))
                                               (if (gx#identifier?
                                                    _hd2452024595_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g52670_|
                                                        _hd2452024595_)
                                                       (___match4853948540_
                                                        _e2452124591_
                                                        _hd2452024595_
                                                        _tl2451924598_)
                                                       (___match4854548546_
                                                        _e2452124591_
                                                        _hd2452024595_
                                                        _tl2451924598_))
                                                   (___match4854548546_
                                                    _e2452124591_
                                                    _hd2452024595_
                                                    _tl2451924598_))))
                                           (___kont4852748528_)))))))
                              (___kont4855348554_ (lambda () _r24454_)))
                          (if (gx#stx-pair? ___stx4854848549_)
                              (let ((_e2446324487_
                                     (gx#syntax-e ___stx4854848549_)))
                                (let ((_tl2446124494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2446324487_)))
                                      (_hd2446224491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2446324487_))))
                                  (___kont4855148552_
                                   _tl2446124494_
                                   _hd2446224491_)))
                              (___kont4855348554_)))))))
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
                                                 (let ((_g52671_
                                                        (gx#syntax-split-splice
                                                         _g2426224282_
                                                         '0)))
                                                   (begin
                                                     (let ((_g52672_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g52671_)
                          (##vector-length _g52671_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g52672_ 2)))
                   (error "Context expects 2 values" _g52672_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2426424285_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g52671_
                                                               0)))
                                                           (_tl2426624288_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g52671_
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
                                       (let ((__tmp52695
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2426924305_
                                                      _target2427124298_))))
                                         (declare (not safe))
                                         (_loop2426724291_
                                          _lp-tl2427024308_
                                          __tmp52695))))
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
                                                 (let ((__tmp52676
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp52673
                                                        (let ((__tmp52675
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp52674
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24403_ '()))))
                  (declare (not safe))
                  (cons __tmp52675 __tmp52674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp52676
                                                         __tmp52673)))))
                                           _g2438924400_)))
                                       (__tmp52677
                                        (gx#stx-wrap-source
                                         (let ((__tmp52683
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp52678
                                                (let ((__tmp52680
                                                       (let ((__tmp52681
                                                              (let ((__tmp52682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24347_ '()))))
                        (declare (not safe))
                        (cons _L24249_ __tmp52682))))
                 (declare (not safe))
                 (cons __tmp52681 '())))
              (__tmp52679 (let () (declare (not safe)) (cons _L24375_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp52680
                                                        __tmp52679))))
                                           (declare (not safe))
                                           (cons __tmp52683 __tmp52678))
                                         (gx#stx-source _stx23520_))))
                                  (declare (not safe))
                                  (_g2438724418_ __tmp52677))))
                            _g2436124372_)))
                        (__tmp52684
                         (let ((__tmp52685
                                (let ()
                                  (declare (not safe))
                                  (cons _L24249_ '()))))
                           (declare (not safe))
                           (_generate-clauses23528_ _body24231_ __tmp52685))))
                   (declare (not safe))
                   (_g2435924422_ __tmp52684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2433324344_)))
                                                 (__tmp52686
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp52694
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp52687
                                                          (let ((__tmp52688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp52689
                                (let ((__tmp52693
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp52690
                                       (let ((__tmp52691
                                              (let ((__tmp52692
                                                     (lambda (_g2442924432_
                                                              _g2443024435_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2442924432_
                                                               _g2443024435_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp52692
                                                        '()
                                                        _L24315_))))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp52691))))
                                  (declare (not safe))
                                  (cons __tmp52693 __tmp52690))))
                           (declare (not safe))
                           (cons __tmp52689 '()))))
                    (declare (not safe))
                    (cons '() __tmp52688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp52694
                                                           __tmp52687))
                                                   (gx#stx-source
                                                    _stx23520_))))
                                            (declare (not safe))
                                            (_g2433124426_ __tmp52686))))
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
                           (__tmp52696 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2423324442_ __tmp52696))))
                 (_generate-clauses23528_
                  (lambda (_rest23883_ _E23885_)
                    (let* ((___stx4856448565_ _rest23883_)
                           (_g2388923905_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4856448565_))))
                      (let ((___kont4856748568_
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
                                             (let ((_e2415624175_
                                                    (gx#syntax-e
                                                     _g2415124172_)))
                                               (let ((_hd2415524179_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2415624175_)))
                                                     (_tl2415424182_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2415624175_))))
                                                 (if (gx#stx-pair?
                                                      _tl2415424182_)
                                                     (let ((_e2415924185_
                                                            (gx#syntax-e
                                                             _tl2415424182_)))
                                                       (let ((_hd2415824189_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2415924185_)))
                     (_tl2415724192_
                      (let () (declare (not safe)) (##cdr _e2415924185_))))
                 (if (gx#stx-pair? _tl2415724192_)
                     (let ((_e2416224195_ (gx#syntax-e _tl2415724192_)))
                       (let ((_hd2416124199_
                              (let ()
                                (declare (not safe))
                                (##car _e2416224195_)))
                             (_tl2416024202_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2416224195_))))
                         (if (gx#stx-null? _tl2416024202_)
                             ((lambda (_L24205_ _L24207_)
                                (let ((__tmp52697
                                       (let ((__tmp52698
                                              (let ((__tmp52699
                                                     (if (gx#stx-e _L24207_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123529_
                                                            _L24207_
                                                            _L24205_
                                                            _E23885_))
                                                         _L24205_)))
                                                (declare (not safe))
                                                (cons __tmp52699 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp52698))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp52697)))
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
                            (___kont4856948570_
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
                                             (let ((_e2395523974_
                                                    (gx#syntax-e
                                                     _g2394923971_)))
                                               (let ((_hd2395423978_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2395523974_)))
                                                     (_tl2395323981_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2395523974_))))
                                                 (if (gx#stx-pair?
                                                      _tl2395323981_)
                                                     (let ((_e2395823984_
                                                            (gx#syntax-e
                                                             _tl2395323981_)))
                                                       (let ((_hd2395723988_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2395823984_)))
                     (_tl2395623991_
                      (let () (declare (not safe)) (##cdr _e2395823984_))))
                 (if (gx#stx-pair? _tl2395623991_)
                     (let ((_e2396123994_ (gx#syntax-e _tl2395623991_)))
                       (let ((_hd2396023998_
                              (let ()
                                (declare (not safe))
                                (##car _e2396123994_)))
                             (_tl2395924001_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2396123994_))))
                         (if (gx#stx-null? _tl2395924001_)
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
                                                  (let ((_e2403024046_
                                                         (gx#syntax-e
                                                          _g2402524043_)))
                                                    (let ((_hd2402924050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2403024046_)))
                                                          (_tl2402824053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2403024046_))))
                                                      (if (gx#stx-pair?
                                                           _tl2402824053_)
                                                          (let ((_e2403324056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2402824053_)))
                    (let ((_hd2403224060_
                           (let () (declare (not safe)) (##car _e2403324056_)))
                          (_tl2403124063_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2403324056_))))
                      (if (gx#stx-null? _tl2403124063_)
                          ((lambda (_L24066_ _L24068_)
                             (let ()
                               (let ((__tmp52726 (gx#datum->syntax '#f 'let))
                                     (__tmp52717
                                      (let ((__tmp52719
                                             (let ((__tmp52720
                                                    (let ((__tmp52721
                                                           (let ((__tmp52722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp52725 (gx#datum->syntax '#f 'lambda))
                                (__tmp52723
                                 (let ((__tmp52724
                                        (let ()
                                          (declare (not safe))
                                          (cons _L24068_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp52724))))
                            (declare (not safe))
                            (cons __tmp52725 __tmp52723))))
                     (declare (not safe))
                     (cons __tmp52722 '()))))
              (declare (not safe))
              (cons _L24007_ __tmp52721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp52720 '())))
                                            (__tmp52718
                                             (let ()
                                               (declare (not safe))
                                               (cons _L24066_ '()))))
                                        (declare (not safe))
                                        (cons __tmp52719 __tmp52718))))
                                 (declare (not safe))
                                 (cons __tmp52726 __tmp52717))))
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
                                           (__tmp52727
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123529_
                                                     _L24006_
                                                     _L24004_
                                                     _E23885_))
                                                  (let ((__tmp52728
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L24007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23528_
                                                     _L23933_
                                                     __tmp52728)))))
                                      (declare (not safe))
                                      (_g2402324084_ __tmp52727))
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
                                                   (let ((__tmp52714
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp52700
                                                          (let ((__tmp52702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp52703
                                (let ((__tmp52704
                                       (let ((__tmp52705
                                              (let ((__tmp52713
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp52706
                                                     (let ((__tmp52712
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp52707
                                                            (let ((__tmp52708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp52711 (gx#datum->syntax '#f 'lambda))
                                 (__tmp52709
                                  (let ((__tmp52710
                                         (let ()
                                           (declare (not safe))
                                           (cons _L24004_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp52710))))
                             (declare (not safe))
                             (cons __tmp52711 __tmp52709))))
                      (declare (not safe))
                      (cons __tmp52708 '()))))
               (declare (not safe))
               (cons __tmp52712 __tmp52707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp52713 __tmp52706))))
                                         (declare (not safe))
                                         (cons __tmp52705 '()))))
                                  (declare (not safe))
                                  (cons _L24007_ __tmp52704))))
                           (declare (not safe))
                           (cons __tmp52703 '())))
                        (__tmp52701
                         (let () (declare (not safe)) (cons _L24103_ '()))))
                    (declare (not safe))
                    (cons __tmp52702 __tmp52701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp52714
                                                           __tmp52700))))
                                               _g2408924100_)))
                                           (__tmp52715
                                            (let ((__tmp52716
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L24007_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23528_
                                               _L23933_
                                               __tmp52716))))
                                      (declare (not safe))
                                      (_g2408724114_ __tmp52715))))
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
                            (___kont4857148572_
                             (lambda ()
                               (let ((__tmp52729
                                      (let ((__tmp52730
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23885_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp52730))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp52729)))))
                        (if (gx#stx-pair? ___stx4856448565_)
                            (let ((_e2389424129_
                                   (gx#syntax-e ___stx4856448565_)))
                              (let ((_tl2389224136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2389424129_)))
                                    (_hd2389324133_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2389424129_))))
                                (if (gx#stx-null? _tl2389224136_)
                                    (___kont4856748568_ _hd2389324133_)
                                    (___kont4856948570_
                                     _tl2389224136_
                                     _hd2389324133_))))
                            (___kont4857148572_))))))
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
                                  (let ((_e2354223567_
                                         (gx#syntax-e _g2353723564_)))
                                    (let ((_hd2354123571_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2354223567_)))
                                          (_tl2354023574_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2354223567_))))
                                      (if (gx#stx-pair? _tl2354023574_)
                                          (let ((_e2354523577_
                                                 (gx#syntax-e _tl2354023574_)))
                                            (let ((_hd2354423581_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2354523577_)))
                                                  (_tl2354323584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2354523577_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2354423581_)
                                                  (let ((_g52731_
                                                         (gx#syntax-split-splice
                                                          _hd2354423581_
                                                          '0)))
                                                    (begin
                                                      (let ((_g52732_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g52731_)
                           (##vector-length _g52731_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g52732_ 2)))
                    (error "Context expects 2 values" _g52732_)))
              (let ((_target2354623587_
                     (let () (declare (not safe)) (##vector-ref _g52731_ 0)))
                    (_tl2354823590_
                     (let () (declare (not safe)) (##vector-ref _g52731_ 1))))
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
                                        (let ((__tmp52749
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2355123607_
                                                       _var2355323600_))))
                                          (declare (not safe))
                                          (_loop2354923593_
                                           _lp-tl2355223610_
                                           __tmp52749))))
                                    (let ((_var2355423613_
                                           (reverse _var2355323600_)))
                                      (if (gx#stx-null? _tl2354323584_)
                                          ((lambda (_L23617_ _L23619_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp52733
                                                       (lambda (_g2364023643_
                                                                _g2364123646_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2364023643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2364123646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp52733
                                                          '()
                                                          _L23617_))
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
                                                       (let ((__tmp52738
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp52734
                                                              (let ((__tmp52736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp52737
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23720_ '()))))
                               (declare (not safe))
                               (cons _L23619_ __tmp52737)))
                            (__tmp52735
                             (let ()
                               (declare (not safe))
                               (cons _L23664_ '()))))
                        (declare (not safe))
                        (cons __tmp52736 __tmp52735))))
                 (declare (not safe))
                 (cons __tmp52738 __tmp52734))
               (gx#stx-source _stx23520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2370623717_)))
                                            (__tmp52739
                                             (gx#stx-wrap-source
                                              (let ((__tmp52744
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp52740
                                                     (let ((__tmp52742
                                                            (let ((__tmp52743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2373823741_ _g2373923744_)
                             (let ()
                               (declare (not safe))
                               (cons _g2373823741_ _g2373923744_)))))
                      (declare (not safe))
                      (foldr1 __tmp52743 '() _L23617_)))
                   (__tmp52741
                    (let () (declare (not safe)) (cons _L23692_ '()))))
               (declare (not safe))
               (cons __tmp52742 __tmp52741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp52744 __tmp52740))
                                              (gx#stx-source _stx23520_))))
                                       (declare (not safe))
                                       (_g2370423735_ __tmp52739))))
                                 _g2367823689_))))
                        (declare (not safe))
                        (_g2367623747_ _body23533_))))
                  _g2365023661_)))
              (__tmp52745
               (let _recur23755_ ((_rest23758_ _clause23531_)
                                  (_rest-targets23760_ _tgt-lst23522_))
                 (let* ((___stx4859048591_ _rest23758_)
                        (_g2376323775_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4859048591_))))
                   (let ((___kont4859348594_
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
                                          (let ((_e2383423847_
                                                 (gx#syntax-e _g2382923844_)))
                                            (let ((_hd2383323851_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2383423847_)))
                                                  (_tl2383223854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2383423847_))))
                                              ((lambda (_L23857_ _L23859_)
                                                 (let ((__tmp52746
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
                                                    __tmp52746
                                                    _E23534_)))
                                               _tl2383223854_
                                               _hd2383323851_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2382823840_ _g2382923844_))))))
                              (declare (not safe))
                              (_g2382723871_ _rest-targets23760_))))
                         (___kont4859548596_
                          (lambda ()
                            (let ((__tmp52747
                                   (let ((__tmp52748
                                          (lambda (_g2378523788_ _g2378623791_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2378523788_
                                                    _g2378623791_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp52748 '() _L23617_))))
                              (declare (not safe))
                              (cons _L23619_ __tmp52747)))))
                     (if (gx#stx-pair? ___stx4859048591_)
                         (let ((_e2376923801_ (gx#syntax-e ___stx4859048591_)))
                           (let ((_tl2376723808_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2376923801_)))
                                 (_hd2376823805_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2376923801_))))
                             (___kont4859348594_
                              _tl2376723808_
                              _hd2376823805_)))
                         (___kont4859548596_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2364823751_ __tmp52745))))
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
                           (__tmp52750
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23531_)))))
                      (declare (not safe))
                      (_g2353523879_ __tmp52750)))))
          (let ((__tmp52751
                 (let ((__tmp52752 (gx#stx-length _tgt-lst23522_)))
                   (declare (not safe))
                   (_parse-body23525_ __tmp52752))))
            (declare (not safe))
            (_generate-body23527_ __tmp52751)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23422_ _tgt23424_ _clauses23425_)
        (letrec ((_reclause23427_
                  (lambda (_clause23430_)
                    (let* ((___stx4860648607_ _clause23430_)
                           (_g2343523450_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4860648607_))))
                      (let ((___kont4860948610_ (lambda () _clause23430_))
                            (___kont4861148612_
                             (lambda (_L23478_ _L23480_)
                               (gx#stx-wrap-source
                                (let ((__tmp52753
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23480_ '()))))
                                  (declare (not safe))
                                  (cons __tmp52753 _L23478_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4861348614_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23422_
                                _clause23430_))))
                        (if (gx#stx-pair? ___stx4860648607_)
                            (let ((_e2343923502_
                                   (gx#syntax-e ___stx4860648607_)))
                              (let ((_tl2343723509_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2343923502_)))
                                    (_hd2343823506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2343923502_))))
                                (if (gx#identifier? _hd2343823506_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g52754_|
                                         _hd2343823506_)
                                        (___kont4860948610_)
                                        (___kont4861148612_
                                         _tl2343723509_
                                         _hd2343823506_))
                                    (___kont4861148612_
                                     _tl2343723509_
                                     _hd2343823506_))))
                            (___kont4861348614_)))))))
          (let ((__tmp52756
                 (let () (declare (not safe)) (cons _tgt23424_ '())))
                (__tmp52755 (gx#stx-map _reclause23427_ _clauses23425_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23422_
             __tmp52756
             __tmp52755)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30653_)
        (let* ((___stx4863448635_ _stx30653_)
               (_g3065830687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4863448635_))))
          (let ((___kont4863748638_
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
                                                   (let ((__tmp52760
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp52757
                                                          (let ((__tmp52759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30955_ '())))
                        (__tmp52758
                         (let () (declare (not safe)) (cons _L30982_ '()))))
                    (declare (not safe))
                    (cons __tmp52759 __tmp52758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp52760
                                                           __tmp52757)))))
                                             _g3096830979_))))
                                    (_g3096630997_
                                     (gx#stx-wrap-source
                                      (let ((__tmp52762
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp52761
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30955_ _L30927_))))
                                        (declare (not safe))
                                        (cons __tmp52762 __tmp52761))
                                      (gx#stx-source _stx30653_))))))
                              _g3094130952_))))
                     (_g3093931001_ (gx#genident 'e)))))
                (___kont4863948640_
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
                                                   (let ((__tmp52765
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp52763
                                                          (let ((__tmp52764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30877_ '()))))
                    (declare (not safe))
                    (cons _L30850_ __tmp52764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp52765
                                                           __tmp52763)))))
                                             _g3086330874_))))
                                    (_g3086130892_
                                     (gx#stx-wrap-source
                                      (let ((__tmp52767
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp52766
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30850_ _L30822_))))
                                        (declare (not safe))
                                        (cons __tmp52767 __tmp52766))
                                      (gx#stx-source _stx30653_))))))
                              _g3083630847_))))
                     (_g3083430896_ (gx#genident 'args)))))
                (___kont4864148642_
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
                                                   (let ((__tmp52773
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp52768
                                                          (let ((__tmp52770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp52771
                                (let ((__tmp52772
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30716_ '()))))
                                  (declare (not safe))
                                  (cons _L30745_ __tmp52772))))
                           (declare (not safe))
                           (cons __tmp52771 '())))
                        (__tmp52769
                         (let () (declare (not safe)) (cons _L30772_ '()))))
                    (declare (not safe))
                    (cons __tmp52770 __tmp52769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp52773
                                                           __tmp52768)))))
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
            (let* ((___match4868748688_
                    (lambda (_e3067830694_
                             _hd3067730698_
                             _tl3067630701_
                             _e3068130704_
                             _hd3068030708_
                             _tl3067930711_)
                      (let ((_L30714_ _tl3067930711_)
                            (_L30716_ _hd3068030708_))
                        (if (gx#stx-list? _L30714_)
                            (___kont4864148642_ _L30714_ _L30716_)
                            (let () (declare (not safe)) (_g3065830687_))))))
                   (___match4867548676_
                    (lambda (_e3067030802_
                             _hd3066930806_
                             _tl3066830809_
                             _e3067330812_
                             _hd3067230816_
                             _tl3067130819_)
                      (let ((_L30822_ _tl3067130819_))
                        (if (gx#stx-list? _L30822_)
                            (___kont4863948640_ _L30822_)
                            (___match4868748688_
                             _e3067030802_
                             _hd3066930806_
                             _tl3066830809_
                             _e3067330812_
                             _hd3067230816_
                             _tl3067130819_)))))
                   (___match4865948660_
                    (lambda (_e3066330907_
                             _hd3066230911_
                             _tl3066130914_
                             _e3066630917_
                             _hd3066530921_
                             _tl3066430924_)
                      (let ((_L30927_ _tl3066430924_))
                        (if (gx#stx-list? _L30927_)
                            (___kont4863748638_ _L30927_)
                            (___match4868748688_
                             _e3066330907_
                             _hd3066230911_
                             _tl3066130914_
                             _e3066630917_
                             _hd3066530921_
                             _tl3066430924_))))))
              (if (gx#stx-pair? ___stx4863448635_)
                  (let ((_e3066330907_ (gx#syntax-e ___stx4863448635_)))
                    (let ((_tl3066130914_
                           (let () (declare (not safe)) (##cdr _e3066330907_)))
                          (_hd3066230911_
                           (let ()
                             (declare (not safe))
                             (##car _e3066330907_))))
                      (if (gx#stx-pair? _tl3066130914_)
                          (let ((_e3066630917_ (gx#syntax-e _tl3066130914_)))
                            (let ((_tl3066430924_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3066630917_)))
                                  (_hd3066530921_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3066630917_))))
                              (if (gx#identifier? _hd3066530921_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g52775_|
                                       _hd3066530921_)
                                      (___match4865948660_
                                       _e3066330907_
                                       _hd3066230911_
                                       _tl3066130914_
                                       _e3066630917_
                                       _hd3066530921_
                                       _tl3066430924_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g52774_|
                                           _hd3066530921_)
                                          (___match4867548676_
                                           _e3066330907_
                                           _hd3066230911_
                                           _tl3066130914_
                                           _e3066630917_
                                           _hd3066530921_
                                           _tl3066430924_)
                                          (___match4868748688_
                                           _e3066330907_
                                           _hd3066230911_
                                           _tl3066130914_
                                           _e3066630917_
                                           _hd3066530921_
                                           _tl3066430924_)))
                                  (___match4868748688_
                                   _e3066330907_
                                   _hd3066230911_
                                   _tl3066130914_
                                   _e3066630917_
                                   _hd3066530921_
                                   _tl3066430924_))))
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
                      (let ((_e3101831043_ (gx#syntax-e _g3101331040_)))
                        (let ((_hd3101731047_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3101831043_)))
                              (_tl3101631050_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3101831043_))))
                          (if (gx#stx-pair? _tl3101631050_)
                              (let ((_e3102131053_
                                     (gx#syntax-e _tl3101631050_)))
                                (let ((_hd3102031057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3102131053_)))
                                      (_tl3101931060_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3102131053_))))
                                  (if (gx#stx-pair/null? _hd3102031057_)
                                      (let ((_g52776_
                                             (gx#syntax-split-splice
                                              _hd3102031057_
                                              '0)))
                                        (begin
                                          (let ((_g52777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g52776_)
                                                       (##vector-length
                                                        _g52776_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g52777_ 2)))
                                                (error "Context expects 2 values"
                                                       _g52777_)))
                                          (let ((_target3102231063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g52776_ 0)))
                                                (_tl3102431066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g52776_ 1))))
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
                                               (let ((_g52778_
                                                      (gx#syntax-split-splice
                                                       _g3111431134_
                                                       '0)))
                                                 (begin
                                                   (let ((_g52779_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g52778_)
                        (##vector-length _g52778_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g52779_ 2)))
                 (error "Context expects 2 values" _g52779_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3111631137_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g52778_
                                                             0)))
                                                         (_tl3111831140_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g52778_
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
                                                         (let ((__tmp52786
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp52780
                        (let ((__tmp52782
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L31095_
                                  _L31167_)
                                 (let ((__tmp52783
                                        (lambda (_g3121231216_
                                                 _g3121331219_
                                                 _g3121431221_)
                                          (let ((__tmp52784
                                                 (let ((__tmp52785
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3121231216_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3121331219_
                                                         __tmp52785))))
                                            (declare (not safe))
                                            (cons __tmp52784 _g3121431221_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp52783 '() _L31095_ _L31167_))))
                              (__tmp52781
                               (let ()
                                 (declare (not safe))
                                 (cons _L31198_ '()))))
                          (declare (not safe))
                          (cons __tmp52782 __tmp52781))))
                   (declare (not safe))
                   (cons __tmp52786 __tmp52780)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3118431195_))))
                                          (_g3118231224_
                                           (let ((__tmp52787
                                                  (let ((__tmp52788
                                                         (lambda (_g3122731230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3122831233_)
                   (let ()
                     (declare (not safe))
                     (cons _g3122731230_ _g3122831233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp52788
                                                            '()
                                                            _L31167_))))
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx31009_
                                              __tmp52787
                                              _L31093_))))))
                                    _$e3112431163_))))))
                   (_loop3111931143_ _target3111631137_ '()))
                 (_g3111331130_ _g3111431134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3111331130_
                                                _g3111431134_)))))
                                   (_g3111231236_
                                    (gx#gentemps
                                     (let ((__tmp52789
                                            (lambda (_g3123931242_
                                                     _g3124031245_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3123931242_
                                                      _g3124031245_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp52789 '() _L31095_)))))
                                 (_g3101231036_ _g3101331040_)))
                           _tl3101931060_
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
        (let* ((___stx4869048691_ _$stx31254_)
               (_g3126031343_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4869048691_))))
          (let ((___kont4869348694_
                 (lambda (_L31673_)
                   (let ((__tmp52793 (gx#datum->syntax '#f 'let))
                         (__tmp52790
                          (let ((__tmp52791
                                 (let ((__tmp52792
                                        (lambda (_g3168931692_ _g3169031695_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3168931692_
                                                  _g3169031695_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp52792 '() _L31673_))))
                            (declare (not safe))
                            (cons '() __tmp52791))))
                     (declare (not safe))
                     (cons __tmp52793 __tmp52790))))
                (___kont4869748698_
                 (lambda (_L31581_ _L31583_ _L31584_ _L31585_)
                   (let ((__tmp52794
                          (let ((__tmp52797
                                 (let ((__tmp52798
                                        (let ((__tmp52799
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31583_ '()))))
                                          (declare (not safe))
                                          (cons _L31584_ __tmp52799))))
                                   (declare (not safe))
                                   (cons __tmp52798 '())))
                                (__tmp52795
                                 (let ((__tmp52796
                                        (lambda (_g3160731610_ _g3160831613_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3160731610_
                                                  _g3160831613_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp52796 '() _L31581_))))
                            (declare (not safe))
                            (cons __tmp52797 __tmp52795))))
                     (declare (not safe))
                     (cons _L31585_ __tmp52794))))
                (___kont4870148702_
                 (lambda (_L31454_ _L31456_ _L31457_)
                   (let ((__tmp52809 (gx#datum->syntax '#f 'match*))
                         (__tmp52800
                          (let ((__tmp52807
                                 (let ((__tmp52808
                                        (lambda (_g3148331486_ _g3148431489_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3148331486_
                                                  _g3148431489_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp52808 '() _L31456_)))
                                (__tmp52801
                                 (let ((__tmp52802
                                        (let ((__tmp52805
                                               (let ((__tmp52806
                                                      (lambda (_g3148131492_
                                                               _g3148231495_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3148131492_
                                                                _g3148231495_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp52806
                                                         '()
                                                         _L31457_)))
                                              (__tmp52803
                                               (let ((__tmp52804
                                                      (lambda (_g3147931498_
                                                               _g3148031501_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3147931498_
                                                                _g3148031501_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp52804
                                                         '()
                                                         _L31454_))))
                                          (declare (not safe))
                                          (cons __tmp52805 __tmp52803))))
                                   (declare (not safe))
                                   (cons __tmp52802 '()))))
                            (declare (not safe))
                            (cons __tmp52807 __tmp52801))))
                     (declare (not safe))
                     (cons __tmp52809 __tmp52800)))))
            (let* ((___match4878348784_
                    (lambda (_e3130831350_
                             _hd3130731354_
                             _tl3130631357_
                             _e3131131360_
                             _hd3131031364_
                             _tl3130931367_
                             ___splice4870348704_
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
                                              (let ((_e3132531398_
                                                     (gx#syntax-e
                                                      _lp-hd3131731392_)))
                                                (let ((_tl3132331405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3132531398_)))
                                                      (_hd3132431402_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3132531398_))))
                                                  (if (gx#stx-pair?
                                                       _tl3132331405_)
                                                      (let ((_e3132831408_
                                                             (gx#syntax-e
                                                              _tl3132331405_)))
                                                        (let ((_tl3132631415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3132831408_)))
                      (_hd3132731412_
                       (let () (declare (not safe)) (##car _e3132831408_))))
                  (if (gx#stx-null? _tl3132631415_)
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
                                        (if (gx#stx-pair/null? _tl3130931367_)
                                            (let ((___splice4870548706_
                                                   (gx#syntax-split-splice
                                                    _tl3130931367_
                                                    '0)))
                                              (let ((_tl3133131427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4870548706_
                                                        '1)))
                                                    (_target3132931424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4870548706_
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
                              (___kont4870148702_
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
                   (___match4877548776_
                    (lambda (_e3130831350_
                             _hd3130731354_
                             _tl3130631357_
                             _e3131131360_
                             _hd3131031364_
                             _tl3130931367_)
                      (if (gx#stx-pair/null? _hd3131031364_)
                          (let ((___splice4870348704_
                                 (gx#syntax-split-splice _hd3131031364_ '0)))
                            (let ((_tl3131431373_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4870348704_ '1)))
                                  (_target3131231370_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4870348704_ '0))))
                              (if (gx#stx-null? _tl3131431373_)
                                  (___match4878348784_
                                   _e3130831350_
                                   _hd3130731354_
                                   _tl3130631357_
                                   _e3131131360_
                                   _hd3131031364_
                                   _tl3130931367_
                                   ___splice4870348704_
                                   _target3131231370_
                                   _tl3131431373_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3126031343_)))))
                          (let () (declare (not safe)) (_g3126031343_)))))
                   (___match4876348764_
                    (lambda (_e3128431511_
                             _hd3128331515_
                             _tl3128231518_
                             _e3128731521_
                             _hd3128631525_
                             _tl3128531528_
                             _e3129031531_
                             _hd3128931535_
                             _tl3128831538_
                             _e3129331541_
                             _hd3129231545_
                             _tl3129131548_
                             ___splice4869948700_
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
                                              (___kont4869748698_
                                               _L31581_
                                               _L31583_
                                               _L31584_
                                               _L31585_)
                                              (___match4877548776_
                                               _e3128431511_
                                               _hd3128331515_
                                               _tl3128231518_
                                               _e3128731521_
                                               _hd3128631525_
                                               _tl3128531528_))))))))
                        (_loop3129731557_ _target3129431551_ '()))))
                   (___match4872948730_
                    (lambda (_e3126531623_
                             _hd3126431627_
                             _tl3126331630_
                             _e3126831633_
                             _hd3126731637_
                             _tl3126631640_
                             ___splice4869548696_
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
                                        (___kont4869348694_
                                         _body3127731669_))))))
                        (_loop3127231649_ _target3126931643_ '())))))
              (if (gx#stx-pair? ___stx4869048691_)
                  (let ((_e3126531623_ (gx#syntax-e ___stx4869048691_)))
                    (let ((_tl3126331630_
                           (let () (declare (not safe)) (##cdr _e3126531623_)))
                          (_hd3126431627_
                           (let ()
                             (declare (not safe))
                             (##car _e3126531623_))))
                      (if (gx#stx-pair? _tl3126331630_)
                          (let ((_e3126831633_ (gx#syntax-e _tl3126331630_)))
                            (let ((_tl3126631640_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3126831633_)))
                                  (_hd3126731637_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3126831633_))))
                              (if (gx#stx-null? _hd3126731637_)
                                  (if (gx#stx-pair/null? _tl3126631640_)
                                      (let ((___splice4869548696_
                                             (gx#syntax-split-splice
                                              _tl3126631640_
                                              '0)))
                                        (let ((_tl3127131646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4869548696_
                                                  '1)))
                                              (_target3126931643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4869548696_
                                                  '0))))
                                          (if (gx#stx-null? _tl3127131646_)
                                              (___match4872948730_
                                               _e3126531623_
                                               _hd3126431627_
                                               _tl3126331630_
                                               _e3126831633_
                                               _hd3126731637_
                                               _tl3126631640_
                                               ___splice4869548696_
                                               _target3126931643_
                                               _tl3127131646_)
                                              (if (gx#stx-pair/null?
                                                   _hd3126731637_)
                                                  (let ((___splice4870348704_
                                                         (gx#syntax-split-splice
                                                          _hd3126731637_
                                                          '0)))
                                                    (let ((_tl3131431373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4870348704_
                                                              '1)))
                                                          (_target3131231370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4870348704_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3131431373_)
                                                          (___match4878348784_
                                                           _e3126531623_
                                                           _hd3126431627_
                                                           _tl3126331630_
                                                           _e3126831633_
                                                           _hd3126731637_
                                                           _tl3126631640_
                                                           ___splice4870348704_
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
                                          (let ((___splice4870348704_
                                                 (gx#syntax-split-splice
                                                  _hd3126731637_
                                                  '0)))
                                            (let ((_tl3131431373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4870348704_
                                                      '1)))
                                                  (_target3131231370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4870348704_
                                                      '0))))
                                              (if (gx#stx-null? _tl3131431373_)
                                                  (___match4878348784_
                                                   _e3126531623_
                                                   _hd3126431627_
                                                   _tl3126331630_
                                                   _e3126831633_
                                                   _hd3126731637_
                                                   _tl3126631640_
                                                   ___splice4870348704_
                                                   _target3131231370_
                                                   _tl3131431373_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3126031343_))))
                                  (if (gx#stx-pair? _hd3126731637_)
                                      (let ((_e3129031531_
                                             (gx#syntax-e _hd3126731637_)))
                                        (let ((_tl3128831538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3129031531_)))
                                              (_hd3128931535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3129031531_))))
                                          (if (gx#stx-pair? _tl3128831538_)
                                              (let ((_e3129331541_
                                                     (gx#syntax-e
                                                      _tl3128831538_)))
                                                (let ((_tl3129131548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3129331541_)))
                                                      (_hd3129231545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3129331541_))))
                                                  (if (gx#stx-null?
                                                       _tl3129131548_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3126631640_)
                                                          (let ((___splice4869948700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3126631640_ '0)))
                    (let ((_tl3129631554_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4869948700_ '1)))
                          (_target3129431551_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4869948700_ '0))))
                      (if (gx#stx-null? _tl3129631554_)
                          (___match4876348764_
                           _e3126531623_
                           _hd3126431627_
                           _tl3126331630_
                           _e3126831633_
                           _hd3126731637_
                           _tl3126631640_
                           _e3129031531_
                           _hd3128931535_
                           _tl3128831538_
                           _e3129331541_
                           _hd3129231545_
                           _tl3129131548_
                           ___splice4869948700_
                           _target3129431551_
                           _tl3129631554_)
                          (if (gx#stx-pair/null? _hd3126731637_)
                              (let ((___splice4870348704_
                                     (gx#syntax-split-splice
                                      _hd3126731637_
                                      '0)))
                                (let ((_tl3131431373_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4870348704_
                                          '1)))
                                      (_target3131231370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4870348704_
                                          '0))))
                                  (if (gx#stx-null? _tl3131431373_)
                                      (___match4878348784_
                                       _e3126531623_
                                       _hd3126431627_
                                       _tl3126331630_
                                       _e3126831633_
                                       _hd3126731637_
                                       _tl3126631640_
                                       ___splice4870348704_
                                       _target3131231370_
                                       _tl3131431373_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3126031343_)))))
                              (let () (declare (not safe)) (_g3126031343_))))))
                  (if (gx#stx-pair/null? _hd3126731637_)
                      (let ((___splice4870348704_
                             (gx#syntax-split-splice _hd3126731637_ '0)))
                        (let ((_tl3131431373_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4870348704_ '1)))
                              (_target3131231370_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4870348704_ '0))))
                          (if (gx#stx-null? _tl3131431373_)
                              (___match4878348784_
                               _e3126531623_
                               _hd3126431627_
                               _tl3126331630_
                               _e3126831633_
                               _hd3126731637_
                               _tl3126631640_
                               ___splice4870348704_
                               _target3131231370_
                               _tl3131431373_)
                              (let () (declare (not safe)) (_g3126031343_)))))
                      (let () (declare (not safe)) (_g3126031343_))))
              (if (gx#stx-pair/null? _hd3126731637_)
                  (let ((___splice4870348704_
                         (gx#syntax-split-splice _hd3126731637_ '0)))
                    (let ((_tl3131431373_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4870348704_ '1)))
                          (_target3131231370_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4870348704_ '0))))
                      (if (gx#stx-null? _tl3131431373_)
                          (___match4878348784_
                           _e3126531623_
                           _hd3126431627_
                           _tl3126331630_
                           _e3126831633_
                           _hd3126731637_
                           _tl3126631640_
                           ___splice4870348704_
                           _target3131231370_
                           _tl3131431373_)
                          (let () (declare (not safe)) (_g3126031343_)))))
                  (let () (declare (not safe)) (_g3126031343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3126731637_)
                                                  (let ((___splice4870348704_
                                                         (gx#syntax-split-splice
                                                          _hd3126731637_
                                                          '0)))
                                                    (let ((_tl3131431373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4870348704_
                                                              '1)))
                                                          (_target3131231370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4870348704_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3131431373_)
                                                          (___match4878348784_
                                                           _e3126531623_
                                                           _hd3126431627_
                                                           _tl3126331630_
                                                           _e3126831633_
                                                           _hd3126731637_
                                                           _tl3126631640_
                                                           ___splice4870348704_
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
                                          (let ((___splice4870348704_
                                                 (gx#syntax-split-splice
                                                  _hd3126731637_
                                                  '0)))
                                            (let ((_tl3131431373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4870348704_
                                                      '1)))
                                                  (_target3131231370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4870348704_
                                                      '0))))
                                              (if (gx#stx-null? _tl3131431373_)
                                                  (___match4878348784_
                                                   _e3126531623_
                                                   _hd3126431627_
                                                   _tl3126331630_
                                                   _e3126831633_
                                                   _hd3126731637_
                                                   _tl3126631640_
                                                   ___splice4870348704_
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
        (let* ((___stx4878648787_ _$stx31706_)
               (_g3171131763_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4878648787_))))
          (let ((___kont4878948790_
                 (lambda (_L31933_ _L31935_ _L31936_ _L31937_ _L31938_)
                   (let ((__tmp52819 (gx#datum->syntax '#f 'with))
                         (__tmp52810
                          (let ((__tmp52816
                                 (let ((__tmp52817
                                        (let ((__tmp52818
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31936_ '()))))
                                          (declare (not safe))
                                          (cons _L31937_ __tmp52818))))
                                   (declare (not safe))
                                   (cons __tmp52817 '())))
                                (__tmp52811
                                 (let ((__tmp52812
                                        (let ((__tmp52813
                                               (let ((__tmp52814
                                                      (let ((__tmp52815
                                                             (lambda (_g3196331966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3196431969_)
                       (let ()
                         (declare (not safe))
                         (cons _g3196331966_ _g3196431969_)))))
                (declare (not safe))
                (foldr1 __tmp52815 '() _L31933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31935_ __tmp52814))))
                                          (declare (not safe))
                                          (cons _L31938_ __tmp52813))))
                                   (declare (not safe))
                                   (cons __tmp52812 '()))))
                            (declare (not safe))
                            (cons __tmp52816 __tmp52811))))
                     (declare (not safe))
                     (cons __tmp52819 __tmp52810))))
                (___kont4879348794_
                 (lambda (_L31820_)
                   (let ((__tmp52823 (gx#datum->syntax '#f 'let))
                         (__tmp52820
                          (let ((__tmp52821
                                 (let ((__tmp52822
                                        (lambda (_g3183731840_ _g3183831843_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3183731840_
                                                  _g3183831843_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp52822 '() _L31820_))))
                            (declare (not safe))
                            (cons '() __tmp52821))))
                     (declare (not safe))
                     (cons __tmp52823 __tmp52820)))))
            (let* ((___match4885948860_
                    (lambda (_e3174531770_
                             _hd3174431774_
                             _tl3174331777_
                             _e3174831780_
                             _hd3174731784_
                             _tl3174631787_
                             ___splice4879548796_
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
                                        (___kont4879348794_
                                         _body3175731816_))))))
                        (_loop3175231796_ _target3174931790_ '()))))
                   (___match4883748838_
                    (lambda (_e3172031853_
                             _hd3171931857_
                             _tl3171831860_
                             _e3172331863_
                             _hd3172231867_
                             _tl3172131870_
                             _e3172631873_
                             _hd3172531877_
                             _tl3172431880_
                             _e3172931883_
                             _hd3172831887_
                             _tl3172731890_
                             _e3173231893_
                             _hd3173131897_
                             _tl3173031900_
                             ___splice4879148792_
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
                                        (___kont4878948790_
                                         _body3174131929_
                                         _tl3172431880_
                                         _hd3173131897_
                                         _hd3172831887_
                                         _hd3171931857_))))))
                        (_loop3173631909_ _target3173331903_ '())))))
              (if (gx#stx-pair? ___stx4878648787_)
                  (let ((_e3172031853_ (gx#syntax-e ___stx4878648787_)))
                    (let ((_tl3171831860_
                           (let () (declare (not safe)) (##cdr _e3172031853_)))
                          (_hd3171931857_
                           (let ()
                             (declare (not safe))
                             (##car _e3172031853_))))
                      (if (gx#stx-pair? _tl3171831860_)
                          (let ((_e3172331863_ (gx#syntax-e _tl3171831860_)))
                            (let ((_tl3172131870_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3172331863_)))
                                  (_hd3172231867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3172331863_))))
                              (if (gx#stx-pair? _hd3172231867_)
                                  (let ((_e3172631873_
                                         (gx#syntax-e _hd3172231867_)))
                                    (let ((_tl3172431880_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3172631873_)))
                                          (_hd3172531877_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3172631873_))))
                                      (if (gx#stx-pair? _hd3172531877_)
                                          (let ((_e3172931883_
                                                 (gx#syntax-e _hd3172531877_)))
                                            (let ((_tl3172731890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3172931883_)))
                                                  (_hd3172831887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3172931883_))))
                                              (if (gx#stx-pair? _tl3172731890_)
                                                  (let ((_e3173231893_
                                                         (gx#syntax-e
                                                          _tl3172731890_)))
                                                    (let ((_tl3173031900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3173231893_)))
                                                          (_hd3173131897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3173231893_))))
                                                      (if (gx#stx-null?
                                                           _tl3173031900_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3172131870_)
                                                              (let ((___splice4879148792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3172131870_ '0)))
                        (let ((_tl3173531906_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4879148792_ '1)))
                              (_target3173331903_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4879148792_ '0))))
                          (if (gx#stx-null? _tl3173531906_)
                              (___match4883748838_
                               _e3172031853_
                               _hd3171931857_
                               _tl3171831860_
                               _e3172331863_
                               _hd3172231867_
                               _tl3172131870_
                               _e3172631873_
                               _hd3172531877_
                               _tl3172431880_
                               _e3172931883_
                               _hd3172831887_
                               _tl3172731890_
                               _e3173231893_
                               _hd3173131897_
                               _tl3173031900_
                               ___splice4879148792_
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
                                      (if (gx#stx-pair/null? _tl3172131870_)
                                          (let ((___splice4879548796_
                                                 (gx#syntax-split-splice
                                                  _tl3172131870_
                                                  '0)))
                                            (let ((_tl3175131793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4879548796_
                                                      '1)))
                                                  (_target3174931790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4879548796_
                                                      '0))))
                                              (if (gx#stx-null? _tl3175131793_)
                                                  (___match4885948860_
                                                   _e3172031853_
                                                   _hd3171931857_
                                                   _tl3171831860_
                                                   _e3172331863_
                                                   _hd3172231867_
                                                   _tl3172131870_
                                                   ___splice4879548796_
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
        (let* ((___stx4886248863_ _$stx31978_)
               (_g3198932135_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4886248863_))))
          (let ((___kont4886548866_
                 (lambda (_L32739_ _L32741_ _L32742_)
                   (let ((__tmp52829 (gx#datum->syntax '#f 'and))
                         (__tmp52824
                          (let ((__tmp52825
                                 (lambda (_g3276332766_ _g3276432769_)
                                   (let ((__tmp52826
                                          (let ((__tmp52827
                                                 (let ((__tmp52828
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32739_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3276332766_
                                                         __tmp52828))))
                                            (declare (not safe))
                                            (cons _L32742_ __tmp52827))))
                                     (declare (not safe))
                                     (cons __tmp52826 _g3276432769_)))))
                            (declare (not safe))
                            (foldr1 __tmp52825 '() _L32741_))))
                     (declare (not safe))
                     (cons __tmp52829 __tmp52824))))
                (___kont4886948870_
                 (lambda (_L32629_ _L32631_ _L32632_)
                   (let ((__tmp52835 (gx#datum->syntax '#f 'or))
                         (__tmp52830
                          (let ((__tmp52831
                                 (lambda (_g3265332656_ _g3265432659_)
                                   (let ((__tmp52832
                                          (let ((__tmp52833
                                                 (let ((__tmp52834
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32629_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3265332656_
                                                         __tmp52834))))
                                            (declare (not safe))
                                            (cons _L32632_ __tmp52833))))
                                     (declare (not safe))
                                     (cons __tmp52832 _g3265432659_)))))
                            (declare (not safe))
                            (foldr1 __tmp52831 '() _L32631_))))
                     (declare (not safe))
                     (cons __tmp52835 __tmp52830))))
                (___kont4887348874_
                 (lambda (_L32529_ _L32531_ _L32532_)
                   (let ((__tmp52840 (gx#datum->syntax '#f 'not))
                         (__tmp52836
                          (let ((__tmp52837
                                 (let ((__tmp52838
                                        (let ((__tmp52839
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32529_ '()))))
                                          (declare (not safe))
                                          (cons _L32531_ __tmp52839))))
                                   (declare (not safe))
                                   (cons _L32532_ __tmp52838))))
                            (declare (not safe))
                            (cons __tmp52837 '()))))
                     (declare (not safe))
                     (cons __tmp52840 __tmp52836))))
                (___kont4887548876_
                 (lambda (_L32455_ _L32457_)
                   (let ((__tmp52841
                          (let () (declare (not safe)) (cons _L32455_ '()))))
                     (declare (not safe))
                     (cons _L32457_ __tmp52841))))
                (___kont4887748878_
                 (lambda (_L32403_ _L32405_)
                   (let ((__tmp52850 (gx#datum->syntax '#f 'lambda))
                         (__tmp52842
                          (let ((__tmp52848
                                 (let ((__tmp52849
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp52849 '())))
                                (__tmp52843
                                 (let ((__tmp52844
                                        (let ((__tmp52845
                                               (let ((__tmp52846
                                                      (let ((__tmp52847
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp52847
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32403_ __tmp52846))))
                                          (declare (not safe))
                                          (cons _L32405_ __tmp52845))))
                                   (declare (not safe))
                                   (cons __tmp52844 '()))))
                            (declare (not safe))
                            (cons __tmp52848 __tmp52843))))
                     (declare (not safe))
                     (cons __tmp52850 __tmp52842))))
                (___kont4887948880_
                 (lambda (_L32355_ _L32357_ _L32358_)
                   (let ((__tmp52869 (gx#datum->syntax '#f 'lambda))
                         (__tmp52851
                          (let ((__tmp52867
                                 (let ((__tmp52868
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp52868 '())))
                                (__tmp52852
                                 (let ((__tmp52853
                                        (let ((__tmp52866
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp52854
                                               (let ((__tmp52859
                                                      (let ((__tmp52865
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp52860
                                                             (let ((__tmp52861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52862
                                   (let ((__tmp52863
                                          (let ((__tmp52864
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp52864 '()))))
                                     (declare (not safe))
                                     (cons _L32357_ __tmp52863))))
                              (declare (not safe))
                              (cons _L32358_ __tmp52862))))
                       (declare (not safe))
                       (cons __tmp52861 '()))))
                (declare (not safe))
                (cons __tmp52865 __tmp52860)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp52855
                                                      (let ((__tmp52856
                                                             (let ((__tmp52857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52858 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp52858 '()))))
                       (declare (not safe))
                       (cons _L32355_ __tmp52857))))
                (declare (not safe))
                (cons __tmp52856 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp52859
                                                       __tmp52855))))
                                          (declare (not safe))
                                          (cons __tmp52866 __tmp52854))))
                                   (declare (not safe))
                                   (cons __tmp52853 '()))))
                            (declare (not safe))
                            (cons __tmp52867 __tmp52852))))
                     (declare (not safe))
                     (cons __tmp52869 __tmp52851))))
                (___kont4888148882_
                 (lambda (_L32286_ _L32288_ _L32289_)
                   (let ((__tmp52885 (gx#datum->syntax '#f 'lambda))
                         (__tmp52870
                          (let ((__tmp52883
                                 (let ((__tmp52884
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp52884 '())))
                                (__tmp52871
                                 (let ((__tmp52872
                                        (let ((__tmp52882
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp52873
                                               (let ((__tmp52878
                                                      (let ((__tmp52879
                                                             (let ((__tmp52880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52881 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp52881 '()))))
                       (declare (not safe))
                       (cons _L32288_ __tmp52880))))
                (declare (not safe))
                (cons _L32289_ __tmp52879)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp52874
                                                      (let ((__tmp52875
                                                             (let ((__tmp52876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52877 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp52877 '()))))
                       (declare (not safe))
                       (cons _L32286_ __tmp52876))))
                (declare (not safe))
                (cons __tmp52875 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp52878
                                                       __tmp52874))))
                                          (declare (not safe))
                                          (cons __tmp52882 __tmp52873))))
                                   (declare (not safe))
                                   (cons __tmp52872 '()))))
                            (declare (not safe))
                            (cons __tmp52883 __tmp52871))))
                     (declare (not safe))
                     (cons __tmp52885 __tmp52870))))
                (___kont4888348884_
                 (lambda (_L32206_ _L32208_ _L32209_ _L32210_)
                   (let ((__tmp52903 (gx#datum->syntax '#f 'lambda))
                         (__tmp52886
                          (let ((__tmp52901
                                 (let ((__tmp52902
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp52902 '())))
                                (__tmp52887
                                 (let ((__tmp52888
                                        (let ((__tmp52900
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp52889
                                               (let ((__tmp52896
                                                      (let ((__tmp52897
                                                             (let ((__tmp52898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52899 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp52899 '()))))
                       (declare (not safe))
                       (cons _L32209_ __tmp52898))))
                (declare (not safe))
                (cons _L32210_ __tmp52897)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp52890
                                                      (let ((__tmp52891
                                                             (let ((__tmp52892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp52893
                                   (let ((__tmp52894
                                          (let ((__tmp52895
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp52895 '()))))
                                     (declare (not safe))
                                     (cons _L32208_ __tmp52894))))
                              (declare (not safe))
                              (cons __tmp52893 '()))))
                       (declare (not safe))
                       (cons _L32206_ __tmp52892))))
                (declare (not safe))
                (cons __tmp52891 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp52896
                                                       __tmp52890))))
                                          (declare (not safe))
                                          (cons __tmp52900 __tmp52889))))
                                   (declare (not safe))
                                   (cons __tmp52888 '()))))
                            (declare (not safe))
                            (cons __tmp52901 __tmp52887))))
                     (declare (not safe))
                     (cons __tmp52903 __tmp52886)))))
            (let* ((___match4903549036_
                    (lambda (_e3208132315_
                             _hd3208032319_
                             _tl3207932322_
                             _e3208432325_
                             _hd3208332329_
                             _tl3208232332_
                             _e3208732335_
                             _hd3208632339_
                             _tl3208532342_)
                      (if (gx#identifier? _hd3208632339_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g52905_|
                               _hd3208632339_)
                              (if (gx#stx-pair? _tl3208532342_)
                                  (let ((_e3209032345_
                                         (gx#syntax-e _tl3208532342_)))
                                    (let ((_tl3208832352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3209032345_)))
                                          (_hd3208932349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3209032345_))))
                                      (if (gx#stx-null? _tl3208832352_)
                                          (___kont4887948880_
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
                                    (if (gx#stx-pair? _tl3208532342_)
                                        (let ((_e3210632276_
                                               (gx#syntax-e _tl3208532342_)))
                                          (let ((_tl3210432283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3210632276_)))
                                                (_hd3210532280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3210632276_))))
                                            (if (gx#stx-null? _tl3210432283_)
                                                (___kont4888148882_
                                                 _hd3210532280_
                                                 _hd3208332329_
                                                 _hd3208032319_)
                                                (if (gx#stx-pair?
                                                     _tl3210432283_)
                                                    (let ((_e3212632186_
                                                           (gx#syntax-e
                                                            _tl3210432283_)))
                                                      (let ((_tl3212432193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212632186_)))
                    (_hd3212532190_
                     (let () (declare (not safe)) (##car _e3212632186_))))
                (if (gx#identifier? _hd3212532190_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g52904_|
                         _hd3212532190_)
                        (if (gx#stx-pair? _tl3212432193_)
                            (let ((_e3212932196_ (gx#syntax-e _tl3212432193_)))
                              (let ((_tl3212732203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212932196_)))
                                    (_hd3212832200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212932196_))))
                                (if (gx#stx-null? _tl3212732203_)
                                    (___kont4888348884_
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
                   (___match4901549016_
                    (lambda (_e3207232383_
                             _hd3207132387_
                             _tl3207032390_
                             _e3207532393_
                             _hd3207432397_
                             _tl3207332400_)
                      (if (gx#stx-null? _tl3207332400_)
                          (___kont4887748878_ _hd3207432397_ _hd3207132387_)
                          (if (gx#stx-pair? _tl3207332400_)
                              (let ((_e3208732335_
                                     (gx#syntax-e _tl3207332400_)))
                                (let ((_tl3208532342_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3208732335_)))
                                      (_hd3208632339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3208732335_))))
                                  (if (gx#identifier? _hd3208632339_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g52905_|
                                           _hd3208632339_)
                                          (if (gx#stx-pair? _tl3208532342_)
                                              (let ((_e3209032345_
                                                     (gx#syntax-e
                                                      _tl3208532342_)))
                                                (let ((_tl3208832352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3209032345_)))
                                                      (_hd3208932349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3209032345_))))
                                                  (if (gx#stx-null?
                                                       _tl3208832352_)
                                                      (___kont4887948880_
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
                                                     _tl3208532342_)
                                                    (let ((_e3210632276_
                                                           (gx#syntax-e
                                                            _tl3208532342_)))
                                                      (let ((_tl3210432283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3210632276_)))
                    (_hd3210532280_
                     (let () (declare (not safe)) (##car _e3210632276_))))
                (if (gx#stx-null? _tl3210432283_)
                    (___kont4888148882_
                     _hd3210532280_
                     _hd3207432397_
                     _hd3207132387_)
                    (if (gx#stx-pair? _tl3210432283_)
                        (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                          (let ((_tl3212432193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3212632186_)))
                                (_hd3212532190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3212632186_))))
                            (if (gx#identifier? _hd3212532190_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g52904_|
                                     _hd3212532190_)
                                    (if (gx#stx-pair? _tl3212432193_)
                                        (let ((_e3212932196_
                                               (gx#syntax-e _tl3212432193_)))
                                          (let ((_tl3212732203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3212932196_)))
                                                (_hd3212832200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3212932196_))))
                                            (if (gx#stx-null? _tl3212732203_)
                                                (___kont4888348884_
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
                   (___match4894548946_
                    (lambda (_e3202032559_
                             _hd3201932563_
                             _tl3201832566_
                             _e3202332569_
                             _hd3202232573_
                             _tl3202132576_
                             _e3202632579_
                             _hd3202532583_
                             _tl3202432586_
                             ___splice4887148872_
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
                                        (if (gx#stx-pair? _tl3202132576_)
                                            (let ((_e3203832619_
                                                   (gx#syntax-e
                                                    _tl3202132576_)))
                                              (let ((_tl3203632626_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3203832619_)))
                                                    (_hd3203732623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3203832619_))))
                                                (if (gx#stx-null?
                                                     _tl3203632626_)
                                                    (___kont4886948870_
                                                     _hd3203732623_
                                                     _pred3203532615_
                                                     _hd3201932563_)
                                                    (___match4903549036_
                                                     _e3202032559_
                                                     _hd3201932563_
                                                     _tl3201832566_
                                                     _e3202332569_
                                                     _hd3202232573_
                                                     _tl3202132576_
                                                     _e3203832619_
                                                     _hd3203732623_
                                                     _tl3203632626_))))
                                            (___match4901549016_
                                             _e3202032559_
                                             _hd3201932563_
                                             _tl3201832566_
                                             _e3202332569_
                                             _hd3202232573_
                                             _tl3202132576_)))))))
                        (_loop3203032595_ _target3202732589_ '()))))
                   (___match4891548916_
                    (lambda (_e3199632669_
                             _hd3199532673_
                             _tl3199432676_
                             _e3199932679_
                             _hd3199832683_
                             _tl3199732686_
                             _e3200232689_
                             _hd3200132693_
                             _tl3200032696_
                             ___splice4886748868_
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
                                        (if (gx#stx-pair? _tl3199732686_)
                                            (let ((_e3201432729_
                                                   (gx#syntax-e
                                                    _tl3199732686_)))
                                              (let ((_tl3201232736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3201432729_)))
                                                    (_hd3201332733_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3201432729_))))
                                                (if (gx#stx-null?
                                                     _tl3201232736_)
                                                    (___kont4886548866_
                                                     _hd3201332733_
                                                     _pred3201132725_
                                                     _hd3199532673_)
                                                    (___match4903549036_
                                                     _e3199632669_
                                                     _hd3199532673_
                                                     _tl3199432676_
                                                     _e3199932679_
                                                     _hd3199832683_
                                                     _tl3199732686_
                                                     _e3201432729_
                                                     _hd3201332733_
                                                     _tl3201232736_))))
                                            (___match4901549016_
                                             _e3199632669_
                                             _hd3199532673_
                                             _tl3199432676_
                                             _e3199932679_
                                             _hd3199832683_
                                             _tl3199732686_)))))))
                        (_loop3200632705_ _target3200332699_ '())))))
              (if (gx#stx-pair? ___stx4886248863_)
                  (let ((_e3199632669_ (gx#syntax-e ___stx4886248863_)))
                    (let ((_tl3199432676_
                           (let () (declare (not safe)) (##cdr _e3199632669_)))
                          (_hd3199532673_
                           (let ()
                             (declare (not safe))
                             (##car _e3199632669_))))
                      (if (gx#stx-pair? _tl3199432676_)
                          (let ((_e3199932679_ (gx#syntax-e _tl3199432676_)))
                            (let ((_tl3199732686_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3199932679_)))
                                  (_hd3199832683_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3199932679_))))
                              (if (gx#stx-pair? _hd3199832683_)
                                  (let ((_e3200232689_
                                         (gx#syntax-e _hd3199832683_)))
                                    (let ((_tl3200032696_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3200232689_)))
                                          (_hd3200132693_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3200232689_))))
                                      (if (gx#identifier? _hd3200132693_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g52908_|
                                               _hd3200132693_)
                                              (if (gx#stx-pair/null?
                                                   _tl3200032696_)
                                                  (let ((___splice4886748868_
                                                         (gx#syntax-split-splice
                                                          _tl3200032696_
                                                          '0)))
                                                    (let ((_tl3200532702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4886748868_
                                                              '1)))
                                                          (_target3200332699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4886748868_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3200532702_)
                                                          (___match4891548916_
                                                           _e3199632669_
                                                           _hd3199532673_
                                                           _tl3199432676_
                                                           _e3199932679_
                                                           _hd3199832683_
                                                           _tl3199732686_
                                                           _e3200232689_
                                                           _hd3200132693_
                                                           _tl3200032696_
                                                           ___splice4886748868_
                                                           _target3200332699_
                                                           _tl3200532702_)
                                                          (if (gx#stx-pair?
                                                               _tl3199732686_)
                                                              (let ((_e3206732445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3199732686_)))
                        (let ((_tl3206532452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3206732445_)))
                              (_hd3206632449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3206732445_))))
                          (if (gx#stx-null? _tl3206532452_)
                              (___kont4887548876_
                               _hd3206632449_
                               _hd3199832683_)
                              (if (gx#identifier? _hd3206632449_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g52905_|
                                       _hd3206632449_)
                                      (if (gx#stx-pair? _tl3206532452_)
                                          (let ((_e3209032345_
                                                 (gx#syntax-e _tl3206532452_)))
                                            (let ((_tl3208832352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3209032345_)))
                                                  (_hd3208932349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3209032345_))))
                                              (if (gx#stx-null? _tl3208832352_)
                                                  (___kont4887948880_
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
                                            (if (gx#stx-pair? _tl3206532452_)
                                                (let ((_e3210632276_
                                                       (gx#syntax-e
                                                        _tl3206532452_)))
                                                  (let ((_tl3210432283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3210632276_)))
                                                        (_hd3210532280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3210632276_))))
                                                    (if (gx#stx-null?
                                                         _tl3210432283_)
                                                        (___kont4888148882_
                                                         _hd3210532280_
                                                         _hd3199832683_
                                                         _hd3199532673_)
                                                        (if (gx#stx-pair?
                                                             _tl3210432283_)
                                                            (let ((_e3212632186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3210432283_)))
                      (let ((_tl3212432193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212632186_)))
                            (_hd3212532190_
                             (let ()
                               (declare (not safe))
                               (##car _e3212632186_))))
                        (if (gx#identifier? _hd3212532190_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g52904_|
                                 _hd3212532190_)
                                (if (gx#stx-pair? _tl3212432193_)
                                    (let ((_e3212932196_
                                           (gx#syntax-e _tl3212432193_)))
                                      (let ((_tl3212732203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212932196_)))
                                            (_hd3212832200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212932196_))))
                                        (if (gx#stx-null? _tl3212732203_)
                                            (___kont4888348884_
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
                      (if (gx#stx-null? _tl3199732686_)
                          (___kont4887748878_ _hd3199832683_ _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3199732686_)
                                                      (let ((_e3206732445_
                                                             (gx#syntax-e
                                                              _tl3199732686_)))
                                                        (let ((_tl3206532452_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3206732445_)))
                      (_hd3206632449_
                       (let () (declare (not safe)) (##car _e3206732445_))))
                  (if (gx#stx-null? _tl3206532452_)
                      (___kont4887548876_ _hd3206632449_ _hd3199832683_)
                      (if (gx#identifier? _hd3206632449_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g52905_|
                               _hd3206632449_)
                              (if (gx#stx-pair? _tl3206532452_)
                                  (let ((_e3209032345_
                                         (gx#syntax-e _tl3206532452_)))
                                    (let ((_tl3208832352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3209032345_)))
                                          (_hd3208932349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3209032345_))))
                                      (if (gx#stx-null? _tl3208832352_)
                                          (___kont4887948880_
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
                                    (if (gx#stx-pair? _tl3206532452_)
                                        (let ((_e3210632276_
                                               (gx#syntax-e _tl3206532452_)))
                                          (let ((_tl3210432283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3210632276_)))
                                                (_hd3210532280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3210632276_))))
                                            (if (gx#stx-null? _tl3210432283_)
                                                (___kont4888148882_
                                                 _hd3210532280_
                                                 _hd3199832683_
                                                 _hd3199532673_)
                                                (if (gx#stx-pair?
                                                     _tl3210432283_)
                                                    (let ((_e3212632186_
                                                           (gx#syntax-e
                                                            _tl3210432283_)))
                                                      (let ((_tl3212432193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212632186_)))
                    (_hd3212532190_
                     (let () (declare (not safe)) (##car _e3212632186_))))
                (if (gx#identifier? _hd3212532190_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g52904_|
                         _hd3212532190_)
                        (if (gx#stx-pair? _tl3212432193_)
                            (let ((_e3212932196_ (gx#syntax-e _tl3212432193_)))
                              (let ((_tl3212732203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212932196_)))
                                    (_hd3212832200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212932196_))))
                                (if (gx#stx-null? _tl3212732203_)
                                    (___kont4888348884_
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
              (if (gx#stx-null? _tl3199732686_)
                  (___kont4887748878_ _hd3199832683_ _hd3199532673_)
                  (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g52907_|
                                                   _hd3200132693_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3200032696_)
                                                      (let ((___splice4887148872_
                                                             (gx#syntax-split-splice
                                                              _tl3200032696_
                                                              '0)))
                                                        (let ((_tl3202932592_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4887148872_ '1)))
                      (_target3202732589_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4887148872_ '0))))
                  (if (gx#stx-null? _tl3202932592_)
                      (___match4894548946_
                       _e3199632669_
                       _hd3199532673_
                       _tl3199432676_
                       _e3199932679_
                       _hd3199832683_
                       _tl3199732686_
                       _e3200232689_
                       _hd3200132693_
                       _tl3200032696_
                       ___splice4887148872_
                       _target3202732589_
                       _tl3202932592_)
                      (if (gx#stx-pair? _tl3199732686_)
                          (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                            (let ((_tl3206532452_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3206732445_)))
                                  (_hd3206632449_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3206732445_))))
                              (if (gx#stx-null? _tl3206532452_)
                                  (___kont4887548876_
                                   _hd3206632449_
                                   _hd3199832683_)
                                  (if (gx#identifier? _hd3206632449_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g52905_|
                                           _hd3206632449_)
                                          (if (gx#stx-pair? _tl3206532452_)
                                              (let ((_e3209032345_
                                                     (gx#syntax-e
                                                      _tl3206532452_)))
                                                (let ((_tl3208832352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3209032345_)))
                                                      (_hd3208932349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3209032345_))))
                                                  (if (gx#stx-null?
                                                       _tl3208832352_)
                                                      (___kont4887948880_
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
                                                     _tl3206532452_)
                                                    (let ((_e3210632276_
                                                           (gx#syntax-e
                                                            _tl3206532452_)))
                                                      (let ((_tl3210432283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3210632276_)))
                    (_hd3210532280_
                     (let () (declare (not safe)) (##car _e3210632276_))))
                (if (gx#stx-null? _tl3210432283_)
                    (___kont4888148882_
                     _hd3210532280_
                     _hd3199832683_
                     _hd3199532673_)
                    (if (gx#stx-pair? _tl3210432283_)
                        (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                          (let ((_tl3212432193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3212632186_)))
                                (_hd3212532190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3212632186_))))
                            (if (gx#identifier? _hd3212532190_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g52904_|
                                     _hd3212532190_)
                                    (if (gx#stx-pair? _tl3212432193_)
                                        (let ((_e3212932196_
                                               (gx#syntax-e _tl3212432193_)))
                                          (let ((_tl3212732203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3212932196_)))
                                                (_hd3212832200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3212932196_))))
                                            (if (gx#stx-null? _tl3212732203_)
                                                (___kont4888348884_
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
                          (if (gx#stx-null? _tl3199732686_)
                              (___kont4887748878_
                               _hd3199832683_
                               _hd3199532673_)
                              (let ()
                                (declare (not safe))
                                (_g3198932135_)))))))
              (if (gx#stx-pair? _tl3199732686_)
                  (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                    (let ((_tl3206532452_
                           (let () (declare (not safe)) (##cdr _e3206732445_)))
                          (_hd3206632449_
                           (let ()
                             (declare (not safe))
                             (##car _e3206732445_))))
                      (if (gx#stx-null? _tl3206532452_)
                          (___kont4887548876_ _hd3206632449_ _hd3199832683_)
                          (if (gx#identifier? _hd3206632449_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g52905_|
                                   _hd3206632449_)
                                  (if (gx#stx-pair? _tl3206532452_)
                                      (let ((_e3209032345_
                                             (gx#syntax-e _tl3206532452_)))
                                        (let ((_tl3208832352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3209032345_)))
                                              (_hd3208932349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3209032345_))))
                                          (if (gx#stx-null? _tl3208832352_)
                                              (___kont4887948880_
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
                                        (if (gx#stx-pair? _tl3206532452_)
                                            (let ((_e3210632276_
                                                   (gx#syntax-e
                                                    _tl3206532452_)))
                                              (let ((_tl3210432283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3210632276_)))
                                                    (_hd3210532280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3210632276_))))
                                                (if (gx#stx-null?
                                                     _tl3210432283_)
                                                    (___kont4888148882_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (if (gx#stx-pair?
                                                         _tl3210432283_)
                                                        (let ((_e3212632186_
                                                               (gx#syntax-e
                                                                _tl3210432283_)))
                                                          (let ((_tl3212432193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3212632186_)))
                        (_hd3212532190_
                         (let () (declare (not safe)) (##car _e3212632186_))))
                    (if (gx#identifier? _hd3212532190_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g52904_|
                             _hd3212532190_)
                            (if (gx#stx-pair? _tl3212432193_)
                                (let ((_e3212932196_
                                       (gx#syntax-e _tl3212432193_)))
                                  (let ((_tl3212732203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3212932196_)))
                                        (_hd3212832200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3212932196_))))
                                    (if (gx#stx-null? _tl3212732203_)
                                        (___kont4888348884_
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
                  (if (gx#stx-null? _tl3199732686_)
                      (___kont4887748878_ _hd3199832683_ _hd3199532673_)
                      (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g52906_|
                                                       _hd3200132693_)
                                                      (if (gx#stx-pair?
                                                           _tl3200032696_)
                                                          (let ((_e3205332509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3200032696_)))
                    (let ((_tl3205132516_
                           (let () (declare (not safe)) (##cdr _e3205332509_)))
                          (_hd3205232513_
                           (let ()
                             (declare (not safe))
                             (##car _e3205332509_))))
                      (if (gx#stx-null? _tl3205132516_)
                          (if (gx#stx-pair? _tl3199732686_)
                              (let ((_e3205632519_
                                     (gx#syntax-e _tl3199732686_)))
                                (let ((_tl3205432526_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3205632519_)))
                                      (_hd3205532523_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3205632519_))))
                                  (if (gx#stx-null? _tl3205432526_)
                                      (___kont4887348874_
                                       _hd3205532523_
                                       _hd3205232513_
                                       _hd3199532673_)
                                      (if (gx#identifier? _hd3205532523_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g52905_|
                                               _hd3205532523_)
                                              (if (gx#stx-pair? _tl3205432526_)
                                                  (let ((_e3209032345_
                                                         (gx#syntax-e
                                                          _tl3205432526_)))
                                                    (let ((_tl3208832352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3209032345_)))
                                                          (_hd3208932349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3209032345_))))
                                                      (if (gx#stx-null?
                                                           _tl3208832352_)
                                                          (___kont4887948880_
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
                                                         _tl3205432526_)
                                                        (let ((_e3210632276_
                                                               (gx#syntax-e
                                                                _tl3205432526_)))
                                                          (let ((_tl3210432283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3210632276_)))
                        (_hd3210532280_
                         (let () (declare (not safe)) (##car _e3210632276_))))
                    (if (gx#stx-null? _tl3210432283_)
                        (___kont4888148882_
                         _hd3210532280_
                         _hd3199832683_
                         _hd3199532673_)
                        (if (gx#stx-pair? _tl3210432283_)
                            (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                              (let ((_tl3212432193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212632186_)))
                                    (_hd3212532190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212632186_))))
                                (if (gx#identifier? _hd3212532190_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g52904_|
                                         _hd3212532190_)
                                        (if (gx#stx-pair? _tl3212432193_)
                                            (let ((_e3212932196_
                                                   (gx#syntax-e
                                                    _tl3212432193_)))
                                              (let ((_tl3212732203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212932196_)))
                                                    (_hd3212832200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212932196_))))
                                                (if (gx#stx-null?
                                                     _tl3212732203_)
                                                    (___kont4888348884_
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
                              (if (gx#stx-null? _tl3199732686_)
                                  (___kont4887748878_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_))))
                          (if (gx#stx-pair? _tl3199732686_)
                              (let ((_e3206732445_
                                     (gx#syntax-e _tl3199732686_)))
                                (let ((_tl3206532452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3206732445_)))
                                      (_hd3206632449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3206732445_))))
                                  (if (gx#stx-null? _tl3206532452_)
                                      (___kont4887548876_
                                       _hd3206632449_
                                       _hd3199832683_)
                                      (if (gx#identifier? _hd3206632449_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g52905_|
                                               _hd3206632449_)
                                              (if (gx#stx-pair? _tl3206532452_)
                                                  (let ((_e3209032345_
                                                         (gx#syntax-e
                                                          _tl3206532452_)))
                                                    (let ((_tl3208832352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3209032345_)))
                                                          (_hd3208932349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3209032345_))))
                                                      (if (gx#stx-null?
                                                           _tl3208832352_)
                                                          (___kont4887948880_
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
                                                         _tl3206532452_)
                                                        (let ((_e3210632276_
                                                               (gx#syntax-e
                                                                _tl3206532452_)))
                                                          (let ((_tl3210432283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3210632276_)))
                        (_hd3210532280_
                         (let () (declare (not safe)) (##car _e3210632276_))))
                    (if (gx#stx-null? _tl3210432283_)
                        (___kont4888148882_
                         _hd3210532280_
                         _hd3199832683_
                         _hd3199532673_)
                        (if (gx#stx-pair? _tl3210432283_)
                            (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                              (let ((_tl3212432193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212632186_)))
                                    (_hd3212532190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212632186_))))
                                (if (gx#identifier? _hd3212532190_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g52904_|
                                         _hd3212532190_)
                                        (if (gx#stx-pair? _tl3212432193_)
                                            (let ((_e3212932196_
                                                   (gx#syntax-e
                                                    _tl3212432193_)))
                                              (let ((_tl3212732203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212932196_)))
                                                    (_hd3212832200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212932196_))))
                                                (if (gx#stx-null?
                                                     _tl3212732203_)
                                                    (___kont4888348884_
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
                              (if (gx#stx-null? _tl3199732686_)
                                  (___kont4887748878_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-pair? _tl3199732686_)
                      (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                        (let ((_tl3206532452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3206732445_)))
                              (_hd3206632449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3206732445_))))
                          (if (gx#stx-null? _tl3206532452_)
                              (___kont4887548876_
                               _hd3206632449_
                               _hd3199832683_)
                              (if (gx#identifier? _hd3206632449_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g52905_|
                                       _hd3206632449_)
                                      (if (gx#stx-pair? _tl3206532452_)
                                          (let ((_e3209032345_
                                                 (gx#syntax-e _tl3206532452_)))
                                            (let ((_tl3208832352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3209032345_)))
                                                  (_hd3208932349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3209032345_))))
                                              (if (gx#stx-null? _tl3208832352_)
                                                  (___kont4887948880_
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
                                            (if (gx#stx-pair? _tl3206532452_)
                                                (let ((_e3210632276_
                                                       (gx#syntax-e
                                                        _tl3206532452_)))
                                                  (let ((_tl3210432283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3210632276_)))
                                                        (_hd3210532280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3210632276_))))
                                                    (if (gx#stx-null?
                                                         _tl3210432283_)
                                                        (___kont4888148882_
                                                         _hd3210532280_
                                                         _hd3199832683_
                                                         _hd3199532673_)
                                                        (if (gx#stx-pair?
                                                             _tl3210432283_)
                                                            (let ((_e3212632186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3210432283_)))
                      (let ((_tl3212432193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212632186_)))
                            (_hd3212532190_
                             (let ()
                               (declare (not safe))
                               (##car _e3212632186_))))
                        (if (gx#identifier? _hd3212532190_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g52904_|
                                 _hd3212532190_)
                                (if (gx#stx-pair? _tl3212432193_)
                                    (let ((_e3212932196_
                                           (gx#syntax-e _tl3212432193_)))
                                      (let ((_tl3212732203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212932196_)))
                                            (_hd3212832200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212932196_))))
                                        (if (gx#stx-null? _tl3212732203_)
                                            (___kont4888348884_
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
                      (if (gx#stx-null? _tl3199732686_)
                          (___kont4887748878_ _hd3199832683_ _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))
              (if (gx#stx-pair? _tl3199732686_)
                  (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                    (let ((_tl3206532452_
                           (let () (declare (not safe)) (##cdr _e3206732445_)))
                          (_hd3206632449_
                           (let ()
                             (declare (not safe))
                             (##car _e3206732445_))))
                      (if (gx#stx-null? _tl3206532452_)
                          (___kont4887548876_ _hd3206632449_ _hd3199832683_)
                          (if (gx#identifier? _hd3206632449_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g52905_|
                                   _hd3206632449_)
                                  (if (gx#stx-pair? _tl3206532452_)
                                      (let ((_e3209032345_
                                             (gx#syntax-e _tl3206532452_)))
                                        (let ((_tl3208832352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3209032345_)))
                                              (_hd3208932349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3209032345_))))
                                          (if (gx#stx-null? _tl3208832352_)
                                              (___kont4887948880_
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
                                        (if (gx#stx-pair? _tl3206532452_)
                                            (let ((_e3210632276_
                                                   (gx#syntax-e
                                                    _tl3206532452_)))
                                              (let ((_tl3210432283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3210632276_)))
                                                    (_hd3210532280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3210632276_))))
                                                (if (gx#stx-null?
                                                     _tl3210432283_)
                                                    (___kont4888148882_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (if (gx#stx-pair?
                                                         _tl3210432283_)
                                                        (let ((_e3212632186_
                                                               (gx#syntax-e
                                                                _tl3210432283_)))
                                                          (let ((_tl3212432193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3212632186_)))
                        (_hd3212532190_
                         (let () (declare (not safe)) (##car _e3212632186_))))
                    (if (gx#identifier? _hd3212532190_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g52904_|
                             _hd3212532190_)
                            (if (gx#stx-pair? _tl3212432193_)
                                (let ((_e3212932196_
                                       (gx#syntax-e _tl3212432193_)))
                                  (let ((_tl3212732203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3212932196_)))
                                        (_hd3212832200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3212932196_))))
                                    (if (gx#stx-null? _tl3212732203_)
                                        (___kont4888348884_
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
                  (if (gx#stx-null? _tl3199732686_)
                      (___kont4887748878_ _hd3199832683_ _hd3199532673_)
                      (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3199732686_)
                                              (let ((_e3206732445_
                                                     (gx#syntax-e
                                                      _tl3199732686_)))
                                                (let ((_tl3206532452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3206732445_)))
                                                      (_hd3206632449_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3206732445_))))
                                                  (if (gx#stx-null?
                                                       _tl3206532452_)
                                                      (___kont4887548876_
                                                       _hd3206632449_
                                                       _hd3199832683_)
                                                      (if (gx#identifier?
                                                           _hd3206632449_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g52905_|
                                                               _hd3206632449_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3206532452_)
                          (let ((_e3209032345_ (gx#syntax-e _tl3206532452_)))
                            (let ((_tl3208832352_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3209032345_)))
                                  (_hd3208932349_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3209032345_))))
                              (if (gx#stx-null? _tl3208832352_)
                                  (___kont4887948880_
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
                            (if (gx#stx-pair? _tl3206532452_)
                                (let ((_e3210632276_
                                       (gx#syntax-e _tl3206532452_)))
                                  (let ((_tl3210432283_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3210632276_)))
                                        (_hd3210532280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3210632276_))))
                                    (if (gx#stx-null? _tl3210432283_)
                                        (___kont4888148882_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (if (gx#stx-pair? _tl3210432283_)
                                            (let ((_e3212632186_
                                                   (gx#syntax-e
                                                    _tl3210432283_)))
                                              (let ((_tl3212432193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212632186_)))
                                                    (_hd3212532190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212632186_))))
                                                (if (gx#identifier?
                                                     _hd3212532190_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g52904_|
                                                         _hd3212532190_)
                                                        (if (gx#stx-pair?
                                                             _tl3212432193_)
                                                            (let ((_e3212932196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3212432193_)))
                      (let ((_tl3212732203_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212932196_)))
                            (_hd3212832200_
                             (let ()
                               (declare (not safe))
                               (##car _e3212932196_))))
                        (if (gx#stx-null? _tl3212732203_)
                            (___kont4888348884_
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
                                              (if (gx#stx-null? _tl3199732686_)
                                                  (___kont4887748878_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))))
                                  (if (gx#stx-pair? _tl3199732686_)
                                      (let ((_e3206732445_
                                             (gx#syntax-e _tl3199732686_)))
                                        (let ((_tl3206532452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3206732445_)))
                                              (_hd3206632449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3206732445_))))
                                          (if (gx#stx-null? _tl3206532452_)
                                              (___kont4887548876_
                                               _hd3206632449_
                                               _hd3199832683_)
                                              (if (gx#identifier?
                                                   _hd3206632449_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g52905_|
                                                       _hd3206632449_)
                                                      (if (gx#stx-pair?
                                                           _tl3206532452_)
                                                          (let ((_e3209032345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3206532452_)))
                    (let ((_tl3208832352_
                           (let () (declare (not safe)) (##cdr _e3209032345_)))
                          (_hd3208932349_
                           (let ()
                             (declare (not safe))
                             (##car _e3209032345_))))
                      (if (gx#stx-null? _tl3208832352_)
                          (___kont4887948880_
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
                    (if (gx#stx-pair? _tl3206532452_)
                        (let ((_e3210632276_ (gx#syntax-e _tl3206532452_)))
                          (let ((_tl3210432283_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3210632276_)))
                                (_hd3210532280_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3210632276_))))
                            (if (gx#stx-null? _tl3210432283_)
                                (___kont4888148882_
                                 _hd3210532280_
                                 _hd3199832683_
                                 _hd3199532673_)
                                (if (gx#stx-pair? _tl3210432283_)
                                    (let ((_e3212632186_
                                           (gx#syntax-e _tl3210432283_)))
                                      (let ((_tl3212432193_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212632186_)))
                                            (_hd3212532190_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212632186_))))
                                        (if (gx#identifier? _hd3212532190_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g52904_|
                                                 _hd3212532190_)
                                                (if (gx#stx-pair?
                                                     _tl3212432193_)
                                                    (let ((_e3212932196_
                                                           (gx#syntax-e
                                                            _tl3212432193_)))
                                                      (let ((_tl3212732203_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212932196_)))
                    (_hd3212832200_
                     (let () (declare (not safe)) (##car _e3212932196_))))
                (if (gx#stx-null? _tl3212732203_)
                    (___kont4888348884_
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
                                      (if (gx#stx-null? _tl3199732686_)
                                          (___kont4887748878_
                                           _hd3199832683_
                                           _hd3199532673_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))))
                          (let () (declare (not safe)) (_g3198932135_)))))
                  (let () (declare (not safe)) (_g3198932135_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32778_)
        (let* ((___stx4913049131_ _$stx32778_)
               (_g3278332817_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4913049131_))))
          (let ((___kont4913349134_
                 (lambda (_L32921_ _L32923_ _L32924_)
                   (let ((__tmp52970 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp52909
                          (let ((__tmp52910
                                 (let ((__tmp52911
                                        (let ((__tmp52969
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp52912
                                               (let ((__tmp52913
                                                      (let ((__tmp52914
                                                             (let ((__tmp52968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp52915
                            (let ((__tmp52960
                                   (let ((__tmp52965
                                          (let ((__tmp52967
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp52966
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L32923_ '()))))
                                            (declare (not safe))
                                            (cons __tmp52967 __tmp52966)))
                                         (__tmp52961
                                          (let ((__tmp52962
                                                 (let ((__tmp52964
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp52963
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32921_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp52964
                                                         __tmp52963))))
                                            (declare (not safe))
                                            (cons __tmp52962 '()))))
                                     (declare (not safe))
                                     (cons __tmp52965 __tmp52961)))
                                  (__tmp52916
                                   (let ((__tmp52917
                                          (let ((__tmp52959
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp52918
                                                 (let ((__tmp52957
                                                        (let ((__tmp52958
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp52958
                                                                '())))
                                                       (__tmp52919
                                                        (let ((__tmp52920
                                                               (let ((__tmp52956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp52921
                              (let ((__tmp52955 (gx#datum->syntax '#f '$stx))
                                    (__tmp52922
                                     (let ((__tmp52923
                                            (let ((__tmp52934
                                                   (let ((__tmp52953
                                                          (let ((__tmp52954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp52954)))
                 (__tmp52935
                  (let ((__tmp52936
                         (let ((__tmp52952
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp52937
                                (let ((__tmp52951
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp52938
                                       (let ((__tmp52939
                                              (let ((__tmp52950
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp52940
                                                     (let ((__tmp52946
                                                            (let ((__tmp52949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp52947
                           (let ((__tmp52948 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp52948 '()))))
                      (declare (not safe))
                      (cons __tmp52949 __tmp52947)))
                   (__tmp52941
                    (let ((__tmp52942
                           (let ((__tmp52945
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp52943
                                  (let ((__tmp52944
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp52944 '()))))
                             (declare (not safe))
                             (cons __tmp52945 __tmp52943))))
                      (declare (not safe))
                      (cons __tmp52942 '()))))
               (declare (not safe))
               (cons __tmp52946 __tmp52941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp52950 __tmp52940))))
                                         (declare (not safe))
                                         (cons __tmp52939 '()))))
                                  (declare (not safe))
                                  (cons __tmp52951 __tmp52938))))
                           (declare (not safe))
                           (cons __tmp52952 __tmp52937))))
                    (declare (not safe))
                    (cons __tmp52936 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp52953
                                                           __tmp52935)))
                                                  (__tmp52924
                                                   (let ((__tmp52925
                                                          (let ((__tmp52933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp52926
                         (let ((__tmp52927
                                (let ((__tmp52932
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp52928
                                       (let ((__tmp52931
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp52929
                                              (let ((__tmp52930
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp52930 '()))))
                                         (declare (not safe))
                                         (cons __tmp52931 __tmp52929))))
                                  (declare (not safe))
                                  (cons __tmp52932 __tmp52928))))
                           (declare (not safe))
                           (cons __tmp52927 '()))))
                    (declare (not safe))
                    (cons __tmp52933 __tmp52926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp52925 '()))))
                                              (declare (not safe))
                                              (cons __tmp52934 __tmp52924))))
                                       (declare (not safe))
                                       (cons '() __tmp52923))))
                                (declare (not safe))
                                (cons __tmp52955 __tmp52922))))
                         (declare (not safe))
                         (cons __tmp52956 __tmp52921))))
                  (declare (not safe))
                  (cons __tmp52920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp52957
                                                         __tmp52919))))
                                            (declare (not safe))
                                            (cons __tmp52959 __tmp52918))))
                                     (declare (not safe))
                                     (cons __tmp52917 '()))))
                              (declare (not safe))
                              (cons __tmp52960 __tmp52916))))
                       (declare (not safe))
                       (cons __tmp52968 __tmp52915))))
                (declare (not safe))
                (cons __tmp52914 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp52913))))
                                          (declare (not safe))
                                          (cons __tmp52969 __tmp52912))))
                                   (declare (not safe))
                                   (cons __tmp52911 '()))))
                            (declare (not safe))
                            (cons _L32924_ __tmp52910))))
                     (declare (not safe))
                     (cons __tmp52970 __tmp52909))))
                (___kont4913549136_
                 (lambda (_L32854_ _L32856_ _L32857_)
                   (let ((__tmp52971
                          (let ((__tmp52972
                                 (let ((__tmp52973
                                        (let ((__tmp52974
                                               (let ((__tmp52985
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp52975
                                                      (let ((__tmp52983
                                                             (let ((__tmp52984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp52984 '())))
                    (__tmp52976
                     (let ((__tmp52977
                            (let ((__tmp52982
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp52978
                                   (let ((__tmp52979
                                          (let ((__tmp52980
                                                 (let ((__tmp52981
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp52981 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp52980))))
                                     (declare (not safe))
                                     (cons '#f __tmp52979))))
                              (declare (not safe))
                              (cons __tmp52982 __tmp52978))))
                       (declare (not safe))
                       (cons __tmp52977 '()))))
                (declare (not safe))
                (cons __tmp52983 __tmp52976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp52985
                                                       __tmp52975))))
                                          (declare (not safe))
                                          (cons __tmp52974 '()))))
                                   (declare (not safe))
                                   (cons _L32854_ __tmp52973))))
                            (declare (not safe))
                            (cons _L32856_ __tmp52972))))
                     (declare (not safe))
                     (cons _L32857_ __tmp52971)))))
            (let ((___match4916349164_
                   (lambda (_e3279032881_
                            _hd3278932885_
                            _tl3278832888_
                            _e3279332891_
                            _hd3279232895_
                            _tl3279132898_
                            _e3279632901_
                            _hd3279532905_
                            _tl3279432908_
                            _e3279932911_
                            _hd3279832915_
                            _tl3279732918_)
                     (let ((_L32921_ _hd3279832915_)
                           (_L32923_ _hd3279532905_)
                           (_L32924_ _hd3279232895_))
                       (if (gx#identifier? _L32924_)
                           (___kont4913349134_ _L32921_ _L32923_ _L32924_)
                           (let () (declare (not safe)) (_g3278332817_)))))))
              (if (gx#stx-pair? ___stx4913049131_)
                  (let ((_e3279032881_ (gx#syntax-e ___stx4913049131_)))
                    (let ((_tl3278832888_
                           (let () (declare (not safe)) (##cdr _e3279032881_)))
                          (_hd3278932885_
                           (let ()
                             (declare (not safe))
                             (##car _e3279032881_))))
                      (if (gx#stx-pair? _tl3278832888_)
                          (let ((_e3279332891_ (gx#syntax-e _tl3278832888_)))
                            (let ((_tl3279132898_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3279332891_)))
                                  (_hd3279232895_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3279332891_))))
                              (if (gx#stx-pair? _tl3279132898_)
                                  (let ((_e3279632901_
                                         (gx#syntax-e _tl3279132898_)))
                                    (let ((_tl3279432908_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3279632901_)))
                                          (_hd3279532905_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3279632901_))))
                                      (if (gx#stx-pair? _tl3279432908_)
                                          (let ((_e3279932911_
                                                 (gx#syntax-e _tl3279432908_)))
                                            (let ((_tl3279732918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3279932911_)))
                                                  (_hd3279832915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3279932911_))))
                                              (if (gx#stx-null? _tl3279732918_)
                                                  (___match4916349164_
                                                   _e3279032881_
                                                   _hd3278932885_
                                                   _tl3278832888_
                                                   _e3279332891_
                                                   _hd3279232895_
                                                   _tl3279132898_
                                                   _e3279632901_
                                                   _hd3279532905_
                                                   _tl3279432908_
                                                   _e3279932911_
                                                   _hd3279832915_
                                                   _tl3279732918_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3278332817_)))))
                                          (if (gx#stx-null? _tl3279432908_)
                                              (___kont4913549136_
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
                      (let ((_e3295632972_ (gx#syntax-e _g3295132969_)))
                        (let ((_hd3295532976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3295632972_)))
                              (_tl3295432979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3295632972_))))
                          (if (gx#stx-pair? _tl3295432979_)
                              (let ((_e3295932982_
                                     (gx#syntax-e _tl3295432979_)))
                                (let ((_hd3295832986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3295932982_)))
                                      (_tl3295732989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3295932982_))))
                                  ((lambda (_L32992_ _L32994_)
                                     (let ((__tmp52990
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp52986
                                            (let ((__tmp52987
                                                   (let ((__tmp52988
                                                          (let ((__tmp52989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp52989 _L32992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp52988 '()))))
                                              (declare (not safe))
                                              (cons _L32994_ __tmp52987))))
                                       (declare (not safe))
                                       (cons __tmp52990 __tmp52986)))
                                   _tl3295732989_
                                   _hd3295832986_)))
                              (_g3295032965_ _g3295132969_))))
                      (_g3295032965_ _g3295132969_)))))
          (_g3294933008_ _$stx32946_))))))
