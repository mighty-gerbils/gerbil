(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx301649_)
      (let* ((_g301653301671_
              (lambda (_g301654301667_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301654301667_))))
             (_g301652301726_
              (lambda (_g301654301675_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301654301675_))
                    (let ((_e301659301678_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301654301675_))))
                      (let ((_hd301658301682_
                             (let ()
                               (declare (not safe))
                               (##car _e301659301678_)))
                            (_tl301657301685_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301659301678_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301657301685_))
                            (let ((_e301662301688_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301657301685_))))
                              (let ((_hd301661301692_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301662301688_)))
                                    (_tl301660301695_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301662301688_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl301660301695_))
                                    (let ((_e301665301698_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl301660301695_))))
                                      (let ((_hd301664301702_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e301665301698_)))
                                            (_tl301663301705_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e301665301698_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl301663301705_))
                                            ((lambda (_L301708_ _L301710_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L301710_))
                                                   (let ((__tmp309257
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp309252
                                                          (let ((__tmp309254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp309256
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp309255
                                (let ()
                                  (declare (not safe))
                                  (cons _L301710_ '()))))
                           (declare (not safe))
                           (cons __tmp309256 __tmp309255)))
                        (__tmp309253
                         (let () (declare (not safe)) (cons _L301708_ '()))))
                    (declare (not safe))
                    (cons __tmp309254 __tmp309253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp309257
                                                           __tmp309252))
                                                   (_g301653301671_
                                                    _g301654301675_)))
                                             _hd301664301702_
                                             _hd301661301692_)
                                            (_g301653301671_
                                             _g301654301675_))))
                                    (_g301653301671_ _g301654301675_))))
                            (_g301653301671_ _g301654301675_))))
                    (_g301653301671_ _g301654301675_)))))
        (_g301652301726_ _$stx301649_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx301730_)
      (let* ((_g301734301763_
              (lambda (_g301735301759_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301735301759_))))
             (_g301733301863_
              (lambda (_g301735301767_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301735301767_))
                    (let ((_e301740301770_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301735301767_))))
                      (let ((_hd301739301774_
                             (let ()
                               (declare (not safe))
                               (##car _e301740301770_)))
                            (_tl301738301777_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301740301770_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301738301777_))
                            (let ((_g309258_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301738301777_
                                      '0))))
                              (begin
                                (let ((_g309259_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g309258_)
                                             (##vector-length _g309258_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g309259_ 2)))
                                      (error "Context expects 2 values"
                                             _g309259_)))
                                (let ((_target301741301780_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309258_ 0)))
                                      (_tl301743301783_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309258_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301743301783_))
                                      (letrec ((_loop301744301786_
                                                (lambda (_hd301742301790_
                                                         _type301748301793_
                                                         _symbol301749301795_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd301742301790_))
                                                      (let ((_e301745301798_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd301742301790_))))
                (let ((_lp-hd301746301802_
                       (let () (declare (not safe)) (##car _e301745301798_)))
                      (_lp-tl301747301805_
                       (let () (declare (not safe)) (##cdr _e301745301798_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd301746301802_))
                      (let ((_e301754301808_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd301746301802_))))
                        (let ((_hd301753301812_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301754301808_)))
                              (_tl301752301815_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301754301808_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl301752301815_))
                              (let ((_e301757301818_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl301752301815_))))
                                (let ((_hd301756301822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e301757301818_)))
                                      (_tl301755301825_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e301757301818_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301755301825_))
                                      (_loop301744301786_
                                       _lp-tl301747301805_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd301756301822_
                                               _type301748301793_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd301753301812_
                                               _symbol301749301795_)))
                                      (_g301734301763_ _g301735301767_))))
                              (_g301734301763_ _g301735301767_))))
                      (_g301734301763_ _g301735301767_))))
              (let ((_type301750301828_ (reverse _type301748301793_))
                    (_symbol301751301831_ (reverse _symbol301749301795_)))
                ((lambda (_L301834_ _L301836_)
                   (let ((__tmp309266
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp309260
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301834_
                               _L301836_))
                            (let ((__tmp309261
                                   (lambda (_g301851301855_
                                            _g301852301858_
                                            _g301853301860_)
                                     (let ((__tmp309262
                                            (let ((__tmp309265
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp309263
                                                   (let ((__tmp309264
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g301851301855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301852301858_
                                                           __tmp309264))))
                                              (declare (not safe))
                                              (cons __tmp309265 __tmp309263))))
                                       (declare (not safe))
                                       (cons __tmp309262 _g301853301860_)))))
                              (declare (not safe))
                              (foldr2 __tmp309261 '() _L301834_ _L301836_)))))
                     (declare (not safe))
                     (cons __tmp309266 __tmp309260)))
                 _type301750301828_
                 _symbol301751301831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop301744301786_
                                         _target301741301780_
                                         '()
                                         '()))
                                      (_g301734301763_ _g301735301767_)))))
                            (_g301734301763_ _g301735301767_))))
                    (_g301734301763_ _g301735301767_)))))
        (_g301733301863_ _$stx301730_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx301868_)
      (let* ((___stx308817308818_ _$stx301868_)
             (_g301873301915_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx308817308818_)))))
        (let ((___kont308820308821_
               (lambda (_L302043_ _L302045_ _L302046_ _L302047_)
                 (let ((__tmp309280
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp309267
                        (let ((__tmp309277
                               (let ((__tmp309279
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309278
                                      (let ()
                                        (declare (not safe))
                                        (cons _L302047_ '()))))
                                 (declare (not safe))
                                 (cons __tmp309279 __tmp309278)))
                              (__tmp309268
                               (let ((__tmp309274
                                      (let ((__tmp309276
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp309275
                                             (let ()
                                               (declare (not safe))
                                               (cons _L302046_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309276 __tmp309275)))
                                     (__tmp309269
                                      (let ((__tmp309271
                                             (let ((__tmp309273
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp309272
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L302045_ '()))))
                                               (declare (not safe))
                                               (cons __tmp309273 __tmp309272)))
                                            (__tmp309270
                                             (let ()
                                               (declare (not safe))
                                               (cons _L302043_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309271 __tmp309270))))
                                 (declare (not safe))
                                 (cons __tmp309274 __tmp309269))))
                          (declare (not safe))
                          (cons __tmp309277 __tmp309268))))
                   (declare (not safe))
                   (cons __tmp309280 __tmp309267))))
              (___kont308822308823_
               (lambda (_L301962_ _L301964_ _L301965_ _L301966_)
                 (let ((__tmp309281
                        (let ((__tmp309282
                               (let ((__tmp309283
                                      (let ((__tmp309284
                                             (let ((__tmp309285
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp309285 '()))))
                                        (declare (not safe))
                                        (cons _L301962_ __tmp309284))))
                                 (declare (not safe))
                                 (cons _L301964_ __tmp309283))))
                          (declare (not safe))
                          (cons _L301965_ __tmp309282))))
                   (declare (not safe))
                   (cons _L301966_ __tmp309281)))))
          (let ((___match308856308857_
                 (lambda (_e301881301993_
                          _hd301880301997_
                          _tl301879302000_
                          _e301884302003_
                          _hd301883302007_
                          _tl301882302010_
                          _e301887302013_
                          _hd301886302017_
                          _tl301885302020_
                          _e301890302023_
                          _hd301889302027_
                          _tl301888302030_
                          _e301893302033_
                          _hd301892302037_
                          _tl301891302040_)
                   (let ((_L302043_ _hd301892302037_)
                         (_L302045_ _hd301889302027_)
                         (_L302046_ _hd301886302017_)
                         (_L302047_ _hd301883302007_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L302047_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L302046_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L302045_)))
                         (___kont308820308821_
                          _L302043_
                          _L302045_
                          _L302046_
                          _L302047_)
                         (let () (declare (not safe)) (_g301873301915_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx308817308818_))
                (let ((_e301881301993_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx308817308818_))))
                  (let ((_tl301879302000_
                         (let () (declare (not safe)) (##cdr _e301881301993_)))
                        (_hd301880301997_
                         (let ()
                           (declare (not safe))
                           (##car _e301881301993_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl301879302000_))
                        (let ((_e301884302003_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl301879302000_))))
                          (let ((_tl301882302010_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e301884302003_)))
                                (_hd301883302007_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e301884302003_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl301882302010_))
                                (let ((_e301887302013_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl301882302010_))))
                                  (let ((_tl301885302020_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e301887302013_)))
                                        (_hd301886302017_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e301887302013_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl301885302020_))
                                        (let ((_e301890302023_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl301885302020_))))
                                          (let ((_tl301888302030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e301890302023_)))
                                                (_hd301889302027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e301890302023_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl301888302030_))
                                                (let ((_e301893302033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl301888302030_))))
                                                  (let ((_tl301891302040_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e301893302033_)))
                                                        (_hd301892302037_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e301893302033_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl301891302040_))
                                                        (___match308856308857_
                                                         _e301881301993_
                                                         _hd301880301997_
                                                         _tl301879302000_
                                                         _e301884302003_
                                                         _hd301883302007_
                                                         _tl301882302010_
                                                         _e301887302013_
                                                         _hd301886302017_
                                                         _tl301885302020_
                                                         _e301890302023_
                                                         _hd301889302027_
                                                         _tl301888302030_
                                                         _e301893302033_
                                                         _hd301892302037_
                                                         _tl301891302040_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g301873301915_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl301888302030_))
                                                    (___kont308822308823_
                                                     _hd301889302027_
                                                     _hd301886302017_
                                                     _hd301883302007_
                                                     _hd301880301997_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g301873301915_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g301873301915_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g301873301915_)))))
                        (let () (declare (not safe)) (_g301873301915_)))))
                (let () (declare (not safe)) (_g301873301915_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx302072_)
      (let* ((_g302076302111_
              (lambda (_g302077302107_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302077302107_))))
             (_g302075302230_
              (lambda (_g302077302115_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302077302115_))
                    (let ((_e302083302118_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302077302115_))))
                      (let ((_hd302082302122_
                             (let ()
                               (declare (not safe))
                               (##car _e302083302118_)))
                            (_tl302081302125_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302083302118_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl302081302125_))
                            (let ((_g309286_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl302081302125_
                                      '0))))
                              (begin
                                (let ((_g309287_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g309286_)
                                             (##vector-length _g309286_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g309287_ 2)))
                                      (error "Context expects 2 values"
                                             _g309287_)))
                                (let ((_target302084302128_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309286_ 0)))
                                      (_tl302086302131_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309286_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl302086302131_))
                                      (letrec ((_loop302087302134_
                                                (lambda (_hd302085302138_
                                                         _symbol302091302141_
                                                         _method302092302143_
                                                         _type-t302093302145_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd302085302138_))
                                                      (let ((_e302088302148_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd302085302138_))))
                (let ((_lp-hd302089302152_
                       (let () (declare (not safe)) (##car _e302088302148_)))
                      (_lp-tl302090302155_
                       (let () (declare (not safe)) (##cdr _e302088302148_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd302089302152_))
                      (let ((_e302099302158_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd302089302152_))))
                        (let ((_hd302098302162_
                               (let ()
                                 (declare (not safe))
                                 (##car _e302099302158_)))
                              (_tl302097302165_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e302099302158_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl302097302165_))
                              (let ((_e302102302168_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl302097302165_))))
                                (let ((_hd302101302172_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e302102302168_)))
                                      (_tl302100302175_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e302102302168_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl302100302175_))
                                      (let ((_e302105302178_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl302100302175_))))
                                        (let ((_hd302104302182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e302105302178_)))
                                              (_tl302103302185_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e302105302178_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl302103302185_))
                                              (_loop302087302134_
                                               _lp-tl302090302155_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd302104302182_
                                                       _symbol302091302141_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd302101302172_
                                                       _method302092302143_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd302098302162_
                                                       _type-t302093302145_)))
                                              (_g302076302111_
                                               _g302077302115_))))
                                      (_g302076302111_ _g302077302115_))))
                              (_g302076302111_ _g302077302115_))))
                      (_g302076302111_ _g302077302115_))))
              (let ((_symbol302094302188_ (reverse _symbol302091302141_))
                    (_method302095302191_ (reverse _method302092302143_))
                    (_type-t302096302193_ (reverse _type-t302093302145_)))
                ((lambda (_L302196_ _L302198_ _L302199_)
                   (let ((__tmp309295
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp309288
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L302196_
                               _L302198_
                               _L302199_))
                            (let ((__tmp309289
                                   (lambda (_g302215302220_
                                            _g302216302223_
                                            _g302217302225_
                                            _g302218302227_)
                                     (let ((__tmp309290
                                            (let ((__tmp309294
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp309291
                                                   (let ((__tmp309292
                                                          (let ((__tmp309293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g302215302220_ '()))))
                    (declare (not safe))
                    (cons _g302216302223_ __tmp309293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g302217302225_
                                                           __tmp309292))))
                                              (declare (not safe))
                                              (cons __tmp309294 __tmp309291))))
                                       (declare (not safe))
                                       (cons __tmp309290 _g302218302227_)))))
                              (declare (not safe))
                              (foldr* __tmp309289
                                      '()
                                      _L302196_
                                      _L302198_
                                      _L302199_)))))
                     (declare (not safe))
                     (cons __tmp309295 __tmp309288)))
                 _symbol302094302188_
                 _method302095302191_
                 _type-t302096302193_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop302087302134_
                                         _target302084302128_
                                         '()
                                         '()
                                         '()))
                                      (_g302076302111_ _g302077302115_)))))
                            (_g302076302111_ _g302077302115_))))
                    (_g302076302111_ _g302077302115_)))))
        (_g302075302230_ _$stx302072_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx302235_)
      (let* ((_g302239302272_
              (lambda (_g302240302268_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302240302268_))))
             (_g302238302386_
              (lambda (_g302240302276_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302240302276_))
                    (let ((_e302246302279_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302240302276_))))
                      (let ((_hd302245302283_
                             (let ()
                               (declare (not safe))
                               (##car _e302246302279_)))
                            (_tl302244302286_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302246302279_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302244302286_))
                            (let ((_e302249302289_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302244302286_))))
                              (let ((_hd302248302293_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302249302289_)))
                                    (_tl302247302296_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302249302289_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl302247302296_))
                                    (let ((_g309296_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl302247302296_
                                              '0))))
                                      (begin
                                        (let ((_g309297_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g309296_)
                                                     (##vector-length
                                                      _g309296_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g309297_ 2)))
                                              (error "Context expects 2 values"
                                                     _g309297_)))
                                        (let ((_target302250302299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g309296_ 0)))
                                              (_tl302252302302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g309296_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl302252302302_))
                                              (letrec ((_loop302253302305_
                                                        (lambda (_hd302251302309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol302257302312_
                         _method302258302314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd302251302309_))
                      (let ((_e302254302317_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd302251302309_))))
                        (let ((_lp-hd302255302321_
                               (let ()
                                 (declare (not safe))
                                 (##car _e302254302317_)))
                              (_lp-tl302256302324_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e302254302317_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd302255302321_))
                              (let ((_e302263302327_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd302255302321_))))
                                (let ((_hd302262302331_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e302263302327_)))
                                      (_tl302261302334_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e302263302327_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl302261302334_))
                                      (let ((_e302266302337_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl302261302334_))))
                                        (let ((_hd302265302341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e302266302337_)))
                                              (_tl302264302344_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e302266302337_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl302264302344_))
                                              (_loop302253302305_
                                               _lp-tl302256302324_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd302265302341_
                                                       _symbol302257302312_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd302262302331_
                                                       _method302258302314_)))
                                              (_g302239302272_
                                               _g302240302276_))))
                                      (_g302239302272_ _g302240302276_))))
                              (_g302239302272_ _g302240302276_))))
                      (let ((_symbol302259302347_
                             (reverse _symbol302257302312_))
                            (_method302260302350_
                             (reverse _method302258302314_)))
                        ((lambda (_L302353_ _L302355_ _L302356_)
                           (let ((__tmp309305
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp309298
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L302353_
                                       _L302355_))
                                    (let ((__tmp309299
                                           (lambda (_g302374302378_
                                                    _g302375302381_
                                                    _g302376302383_)
                                             (let ((__tmp309300
                                                    (let ((__tmp309304
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp309301
                                                           (let ((__tmp309302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp309303
                                 (let ()
                                   (declare (not safe))
                                   (cons _g302374302378_ '()))))
                            (declare (not safe))
                            (cons _g302375302381_ __tmp309303))))
                     (declare (not safe))
                     (cons _L302356_ __tmp309302))))
              (declare (not safe))
              (cons __tmp309304 __tmp309301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp309300
                                                     _g302376302383_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp309299
                                              '()
                                              _L302353_
                                              _L302355_)))))
                             (declare (not safe))
                             (cons __tmp309305 __tmp309298)))
                         _symbol302259302347_
                         _method302260302350_
                         _hd302248302293_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop302253302305_
                                                 _target302250302299_
                                                 '()
                                                 '()))
                                              (_g302239302272_
                                               _g302240302276_)))))
                                    (_g302239302272_ _g302240302276_))))
                            (_g302239302272_ _g302240302276_))))
                    (_g302239302272_ _g302240302276_)))))
        (_g302238302386_ _$stx302235_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx302391_)
      (let* ((_g302395302409_
              (lambda (_g302396302405_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302396302405_))))
             (_g302394302450_
              (lambda (_g302396302413_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302396302413_))
                    (let ((_e302400302416_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302396302413_))))
                      (let ((_hd302399302420_
                             (let ()
                               (declare (not safe))
                               (##car _e302400302416_)))
                            (_tl302398302423_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302400302416_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302398302423_))
                            (let ((_e302403302426_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302398302423_))))
                              (let ((_hd302402302430_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302403302426_)))
                                    (_tl302401302433_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302403302426_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl302401302433_))
                                    ((lambda (_L302436_)
                                       (let ((__tmp309310
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp309306
                                              (let ((__tmp309307
                                                     (let ((__tmp309309
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp309308
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L302436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp309309 __tmp309308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp309307 '()))))
                                         (declare (not safe))
                                         (cons __tmp309310 __tmp309306)))
                                     _hd302402302430_)
                                    (_g302395302409_ _g302396302413_))))
                            (_g302395302409_ _g302396302413_))))
                    (_g302395302409_ _g302396302413_)))))
        (_g302394302450_ _$stx302391_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx302454_)
      (let* ((_g302458302508_
              (lambda (_g302459302504_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302459302504_))))
             (_g302457302675_
              (lambda (_g302459302512_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302459302512_))
                    (let ((_e302472302515_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302459302512_))))
                      (let ((_hd302471302519_
                             (let ()
                               (declare (not safe))
                               (##car _e302472302515_)))
                            (_tl302470302522_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302472302515_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302470302522_))
                            (let ((_e302475302525_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302470302522_))))
                              (let ((_hd302474302529_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302475302525_)))
                                    (_tl302473302532_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302475302525_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302473302532_))
                                    (let ((_e302478302535_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302473302532_))))
                                      (let ((_hd302477302539_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302478302535_)))
                                            (_tl302476302542_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302478302535_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl302476302542_))
                                            (let ((_e302481302545_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl302476302542_))))
                                              (let ((_hd302480302549_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e302481302545_)))
                                                    (_tl302479302552_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e302481302545_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl302479302552_))
                                                    (let ((_e302484302555_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl302479302552_))))
                                                      (let ((_hd302483302559_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e302484302555_)))
                    (_tl302482302562_
                     (let () (declare (not safe)) (##cdr _e302484302555_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl302482302562_))
                    (let ((_e302487302565_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl302482302562_))))
                      (let ((_hd302486302569_
                             (let ()
                               (declare (not safe))
                               (##car _e302487302565_)))
                            (_tl302485302572_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302487302565_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302485302572_))
                            (let ((_e302490302575_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302485302572_))))
                              (let ((_hd302489302579_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302490302575_)))
                                    (_tl302488302582_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302490302575_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302488302582_))
                                    (let ((_e302493302585_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302488302582_))))
                                      (let ((_hd302492302589_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302493302585_)))
                                            (_tl302491302592_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302493302585_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl302491302592_))
                                            (let ((_e302496302595_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl302491302592_))))
                                              (let ((_hd302495302599_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e302496302595_)))
                                                    (_tl302494302602_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e302496302595_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl302494302602_))
                                                    (let ((_e302499302605_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl302494302602_))))
                                                      (let ((_hd302498302609_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e302499302605_)))
                    (_tl302497302612_
                     (let () (declare (not safe)) (##cdr _e302499302605_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl302497302612_))
                    (let ((_e302502302615_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl302497302612_))))
                      (let ((_hd302501302619_
                             (let ()
                               (declare (not safe))
                               (##car _e302502302615_)))
                            (_tl302500302622_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302502302615_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl302500302622_))
                            ((lambda (_L302625_
                                      _L302627_
                                      _L302628_
                                      _L302629_
                                      _L302630_
                                      _L302631_
                                      _L302632_
                                      _L302633_
                                      _L302634_
                                      _L302635_)
                               (let ((__tmp309345
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp309311
                                      (let ((__tmp309342
                                             (let ((__tmp309344
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp309343
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L302635_ '()))))
                                               (declare (not safe))
                                               (cons __tmp309344 __tmp309343)))
                                            (__tmp309312
                                             (let ((__tmp309339
                                                    (let ((__tmp309341
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp309340
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L302634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp309341 __tmp309340)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp309313
                                                    (let ((__tmp309336
                                                           (let ((__tmp309338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp309337
                          (let () (declare (not safe)) (cons _L302633_ '()))))
                     (declare (not safe))
                     (cons __tmp309338 __tmp309337)))
                  (__tmp309314
                   (let ((__tmp309333
                          (let ((__tmp309335
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp309334
                                 (let ()
                                   (declare (not safe))
                                   (cons _L302632_ '()))))
                            (declare (not safe))
                            (cons __tmp309335 __tmp309334)))
                         (__tmp309315
                          (let ((__tmp309330
                                 (let ((__tmp309332
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp309331
                                        (let ()
                                          (declare (not safe))
                                          (cons _L302631_ '()))))
                                   (declare (not safe))
                                   (cons __tmp309332 __tmp309331)))
                                (__tmp309316
                                 (let ((__tmp309327
                                        (let ((__tmp309329
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp309328
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L302630_ '()))))
                                          (declare (not safe))
                                          (cons __tmp309329 __tmp309328)))
                                       (__tmp309317
                                        (let ((__tmp309318
                                               (let ((__tmp309319
                                                      (let ((__tmp309324
                                                             (let ((__tmp309326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp309325
                            (let ()
                              (declare (not safe))
                              (cons _L302627_ '()))))
                       (declare (not safe))
                       (cons __tmp309326 __tmp309325)))
                    (__tmp309320
                     (let ((__tmp309321
                            (let ((__tmp309323
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp309322
                                   (let ()
                                     (declare (not safe))
                                     (cons _L302625_ '()))))
                              (declare (not safe))
                              (cons __tmp309323 __tmp309322))))
                       (declare (not safe))
                       (cons __tmp309321 '()))))
                (declare (not safe))
                (cons __tmp309324 __tmp309320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L302628_
                                                       __tmp309319))))
                                          (declare (not safe))
                                          (cons _L302629_ __tmp309318))))
                                   (declare (not safe))
                                   (cons __tmp309327 __tmp309317))))
                            (declare (not safe))
                            (cons __tmp309330 __tmp309316))))
                     (declare (not safe))
                     (cons __tmp309333 __tmp309315))))
              (declare (not safe))
              (cons __tmp309336 __tmp309314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp309339
                                                     __tmp309313))))
                                        (declare (not safe))
                                        (cons __tmp309342 __tmp309312))))
                                 (declare (not safe))
                                 (cons __tmp309345 __tmp309311)))
                             _hd302501302619_
                             _hd302498302609_
                             _hd302495302599_
                             _hd302492302589_
                             _hd302489302579_
                             _hd302486302569_
                             _hd302483302559_
                             _hd302480302549_
                             _hd302477302539_
                             _hd302474302529_)
                            (_g302458302508_ _g302459302512_))))
                    (_g302458302508_ _g302459302512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g302458302508_
                                                     _g302459302512_))))
                                            (_g302458302508_
                                             _g302459302512_))))
                                    (_g302458302508_ _g302459302512_))))
                            (_g302458302508_ _g302459302512_))))
                    (_g302458302508_ _g302459302512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g302458302508_
                                                     _g302459302512_))))
                                            (_g302458302508_
                                             _g302459302512_))))
                                    (_g302458302508_ _g302459302512_))))
                            (_g302458302508_ _g302459302512_))))
                    (_g302458302508_ _g302459302512_)))))
        (_g302457302675_ _$stx302454_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx302679_)
      (let* ((_g302683302697_
              (lambda (_g302684302693_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302684302693_))))
             (_g302682302738_
              (lambda (_g302684302701_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302684302701_))
                    (let ((_e302688302704_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302684302701_))))
                      (let ((_hd302687302708_
                             (let ()
                               (declare (not safe))
                               (##car _e302688302704_)))
                            (_tl302686302711_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302688302704_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302686302711_))
                            (let ((_e302691302714_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302686302711_))))
                              (let ((_hd302690302718_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302691302714_)))
                                    (_tl302689302721_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302691302714_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl302689302721_))
                                    ((lambda (_L302724_)
                                       (let ((__tmp309350
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp309346
                                              (let ((__tmp309347
                                                     (let ((__tmp309349
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp309348
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L302724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp309349 __tmp309348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp309347 '()))))
                                         (declare (not safe))
                                         (cons __tmp309350 __tmp309346)))
                                     _hd302690302718_)
                                    (_g302683302697_ _g302684302701_))))
                            (_g302683302697_ _g302684302701_))))
                    (_g302683302697_ _g302684302701_)))))
        (_g302682302738_ _$stx302679_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx302742_)
      (let* ((_g302746302760_
              (lambda (_g302747302756_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302747302756_))))
             (_g302745302801_
              (lambda (_g302747302764_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302747302764_))
                    (let ((_e302751302767_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302747302764_))))
                      (let ((_hd302750302771_
                             (let ()
                               (declare (not safe))
                               (##car _e302751302767_)))
                            (_tl302749302774_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302751302767_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302749302774_))
                            (let ((_e302754302777_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302749302774_))))
                              (let ((_hd302753302781_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302754302777_)))
                                    (_tl302752302784_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302754302777_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl302752302784_))
                                    ((lambda (_L302787_)
                                       (let ((__tmp309355
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp309351
                                              (let ((__tmp309352
                                                     (let ((__tmp309354
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp309353
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L302787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp309354 __tmp309353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp309352 '()))))
                                         (declare (not safe))
                                         (cons __tmp309355 __tmp309351)))
                                     _hd302753302781_)
                                    (_g302746302760_ _g302747302764_))))
                            (_g302746302760_ _g302747302764_))))
                    (_g302746302760_ _g302747302764_)))))
        (_g302745302801_ _$stx302742_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx302805_)
      (let* ((_g302809302831_
              (lambda (_g302810302827_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302810302827_))))
             (_g302808302900_
              (lambda (_g302810302835_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302810302835_))
                    (let ((_e302816302838_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302810302835_))))
                      (let ((_hd302815302842_
                             (let ()
                               (declare (not safe))
                               (##car _e302816302838_)))
                            (_tl302814302845_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302816302838_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302814302845_))
                            (let ((_e302819302848_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302814302845_))))
                              (let ((_hd302818302852_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302819302848_)))
                                    (_tl302817302855_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302819302848_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302817302855_))
                                    (let ((_e302822302858_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302817302855_))))
                                      (let ((_hd302821302862_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302822302858_)))
                                            (_tl302820302865_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302822302858_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl302820302865_))
                                            (let ((_e302825302868_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl302820302865_))))
                                              (let ((_hd302824302872_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e302825302868_)))
                                                    (_tl302823302875_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e302825302868_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl302823302875_))
                                                    ((lambda (_L302878_
                                                              _L302880_
                                                              _L302881_)
                                                       (let ((__tmp309365
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp309356
                      (let ((__tmp309362
                             (let ((__tmp309364
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp309363
                                    (let ()
                                      (declare (not safe))
                                      (cons _L302881_ '()))))
                               (declare (not safe))
                               (cons __tmp309364 __tmp309363)))
                            (__tmp309357
                             (let ((__tmp309359
                                    (let ((__tmp309361
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp309360
                                           (let ()
                                             (declare (not safe))
                                             (cons _L302880_ '()))))
                                      (declare (not safe))
                                      (cons __tmp309361 __tmp309360)))
                                   (__tmp309358
                                    (let ()
                                      (declare (not safe))
                                      (cons _L302878_ '()))))
                               (declare (not safe))
                               (cons __tmp309359 __tmp309358))))
                        (declare (not safe))
                        (cons __tmp309362 __tmp309357))))
                 (declare (not safe))
                 (cons __tmp309365 __tmp309356)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd302824302872_
                                                     _hd302821302862_
                                                     _hd302818302852_)
                                                    (_g302809302831_
                                                     _g302810302835_))))
                                            (_g302809302831_
                                             _g302810302835_))))
                                    (_g302809302831_ _g302810302835_))))
                            (_g302809302831_ _g302810302835_))))
                    (_g302809302831_ _g302810302835_)))))
        (_g302808302900_ _$stx302805_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx302904_)
      (let* ((_g302908302930_
              (lambda (_g302909302926_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302909302926_))))
             (_g302907302999_
              (lambda (_g302909302934_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302909302934_))
                    (let ((_e302915302937_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302909302934_))))
                      (let ((_hd302914302941_
                             (let ()
                               (declare (not safe))
                               (##car _e302915302937_)))
                            (_tl302913302944_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302915302937_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302913302944_))
                            (let ((_e302918302947_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302913302944_))))
                              (let ((_hd302917302951_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302918302947_)))
                                    (_tl302916302954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302918302947_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302916302954_))
                                    (let ((_e302921302957_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302916302954_))))
                                      (let ((_hd302920302961_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302921302957_)))
                                            (_tl302919302964_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302921302957_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl302919302964_))
                                            (let ((_e302924302967_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl302919302964_))))
                                              (let ((_hd302923302971_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e302924302967_)))
                                                    (_tl302922302974_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e302924302967_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl302922302974_))
                                                    ((lambda (_L302977_
                                                              _L302979_
                                                              _L302980_)
                                                       (let ((__tmp309375
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp309366
                      (let ((__tmp309372
                             (let ((__tmp309374
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp309373
                                    (let ()
                                      (declare (not safe))
                                      (cons _L302980_ '()))))
                               (declare (not safe))
                               (cons __tmp309374 __tmp309373)))
                            (__tmp309367
                             (let ((__tmp309369
                                    (let ((__tmp309371
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp309370
                                           (let ()
                                             (declare (not safe))
                                             (cons _L302979_ '()))))
                                      (declare (not safe))
                                      (cons __tmp309371 __tmp309370)))
                                   (__tmp309368
                                    (let ()
                                      (declare (not safe))
                                      (cons _L302977_ '()))))
                               (declare (not safe))
                               (cons __tmp309369 __tmp309368))))
                        (declare (not safe))
                        (cons __tmp309372 __tmp309367))))
                 (declare (not safe))
                 (cons __tmp309375 __tmp309366)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd302923302971_
                                                     _hd302920302961_
                                                     _hd302917302951_)
                                                    (_g302908302930_
                                                     _g302909302934_))))
                                            (_g302908302930_
                                             _g302909302934_))))
                                    (_g302908302930_ _g302909302934_))))
                            (_g302908302930_ _g302909302934_))))
                    (_g302908302930_ _g302909302934_)))))
        (_g302907302999_ _$stx302904_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx303003_)
      (let* ((___stx308885308886_ _$stx303003_)
             (_g303011303079_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx308885308886_)))))
        (let ((___kont308888308889_
               (lambda (_L303357_ _L303359_)
                 (let ((__tmp309391
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp309376
                        (let ((__tmp309387
                               (let ((__tmp309390
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309388
                                      (let ((__tmp309389
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp309389 '()))))
                                 (declare (not safe))
                                 (cons __tmp309390 __tmp309388)))
                              (__tmp309377
                               (let ((__tmp309384
                                      (let ((__tmp309386
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp309385
                                             (let ()
                                               (declare (not safe))
                                               (cons _L303359_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309386 __tmp309385)))
                                     (__tmp309378
                                      (let ((__tmp309379
                                             (let ((__tmp309380
                                                    (let ((__tmp309381
                                                           (let ((__tmp309383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp309382
                          (let () (declare (not safe)) (cons _L303357_ '()))))
                     (declare (not safe))
                     (cons __tmp309383 __tmp309382))))
              (declare (not safe))
              (cons __tmp309381 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L303357_ __tmp309380))))
                                        (declare (not safe))
                                        (cons '#f __tmp309379))))
                                 (declare (not safe))
                                 (cons __tmp309384 __tmp309378))))
                          (declare (not safe))
                          (cons __tmp309387 __tmp309377))))
                   (declare (not safe))
                   (cons __tmp309391 __tmp309376))))
              (___kont308890308891_
               (lambda (_L303288_ _L303290_)
                 (let ((__tmp309392
                        (let ((__tmp309393
                               (let ((__tmp309394
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L303288_ __tmp309394))))
                          (declare (not safe))
                          (cons 'primitive: __tmp309393))))
                   (declare (not safe))
                   (cons _L303290_ __tmp309392))))
              (___kont308892308893_
               (lambda (_L303227_ _L303229_)
                 (let ((__tmp309408
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp309395
                        (let ((__tmp309404
                               (let ((__tmp309407
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309405
                                      (let ((__tmp309406
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp309406 '()))))
                                 (declare (not safe))
                                 (cons __tmp309407 __tmp309405)))
                              (__tmp309396
                               (let ((__tmp309401
                                      (let ((__tmp309403
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp309402
                                             (let ()
                                               (declare (not safe))
                                               (cons _L303229_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309403 __tmp309402)))
                                     (__tmp309397
                                      (let ((__tmp309398
                                             (let ((__tmp309400
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp309399
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L303227_ '()))))
                                               (declare (not safe))
                                               (cons __tmp309400
                                                     __tmp309399))))
                                        (declare (not safe))
                                        (cons __tmp309398 '()))))
                                 (declare (not safe))
                                 (cons __tmp309401 __tmp309397))))
                          (declare (not safe))
                          (cons __tmp309404 __tmp309396))))
                   (declare (not safe))
                   (cons __tmp309408 __tmp309395))))
              (___kont308894308895_
               (lambda (_L303159_ _L303161_)
                 (let ((__tmp309422
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp309409
                        (let ((__tmp309418
                               (let ((__tmp309421
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309419
                                      (let ((__tmp309420
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp309420 '()))))
                                 (declare (not safe))
                                 (cons __tmp309421 __tmp309419)))
                              (__tmp309410
                               (let ((__tmp309415
                                      (let ((__tmp309417
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp309416
                                             (let ()
                                               (declare (not safe))
                                               (cons _L303161_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309417 __tmp309416)))
                                     (__tmp309411
                                      (let ((__tmp309412
                                             (let ((__tmp309414
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp309413
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L303159_ '()))))
                                               (declare (not safe))
                                               (cons __tmp309414
                                                     __tmp309413))))
                                        (declare (not safe))
                                        (cons __tmp309412 '()))))
                                 (declare (not safe))
                                 (cons __tmp309415 __tmp309411))))
                          (declare (not safe))
                          (cons __tmp309418 __tmp309410))))
                   (declare (not safe))
                   (cons __tmp309422 __tmp309409))))
              (___kont308896308897_
               (lambda (_L303106_ _L303108_)
                 (let ((__tmp309423
                        (let ((__tmp309424
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L303106_ __tmp309424))))
                   (declare (not safe))
                   (cons _L303108_ __tmp309423)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx308885308886_))
              (let ((_e303017303313_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx308885308886_))))
                (let ((_tl303015303320_
                       (let () (declare (not safe)) (##cdr _e303017303313_)))
                      (_hd303016303317_
                       (let () (declare (not safe)) (##car _e303017303313_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl303015303320_))
                      (let ((_e303020303323_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl303015303320_))))
                        (let ((_tl303018303330_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e303020303323_)))
                              (_hd303019303327_
                               (let ()
                                 (declare (not safe))
                                 (##car _e303020303323_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl303018303330_))
                              (let ((_e303023303333_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl303018303330_))))
                                (let ((_tl303021303340_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e303023303333_)))
                                      (_hd303022303337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e303023303333_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd303022303337_))
                                      (let ((_e303024303343_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd303022303337_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e303024303343_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl303021303340_))
                                                (let ((_e303027303347_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl303021303340_))))
                                                  (let ((_tl303025303354_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e303027303347_)))
                                                        (_hd303026303351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e303027303347_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl303025303354_))
                                                        (___kont308888308889_
                                                         _hd303026303351_
                                                         _hd303019303327_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd303019303327_))
                                                            (let ((_e303036303274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd303019303327_))))
                      (declare (not safe))
                      (_g303011303079_))
                    (let () (declare (not safe)) (_g303011303079_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd303019303327_))
                                                    (let ((_e303036303274_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd303019303327_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e303036303274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl303021303340_))
                      (___kont308890308891_ _hd303022303337_ _hd303016303317_)
                      (let () (declare (not safe)) (_g303011303079_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl303021303340_))
                      (___kont308894308895_ _hd303022303337_ _hd303019303327_)
                      (let () (declare (not safe)) (_g303011303079_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl303021303340_))
                                                        (___kont308894308895_
                                                         _hd303022303337_
                                                         _hd303019303327_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g303011303079_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd303019303327_))
                                                (let ((_e303036303274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd303019303327_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e303036303274_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl303021303340_))
                                                          (___kont308890308891_
                                                           _hd303022303337_
                                                           _hd303016303317_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl303021303340_))
                      (let ((_e303054303217_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl303021303340_))))
                        (let ((_tl303052303224_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e303054303217_)))
                              (_hd303053303221_
                               (let ()
                                 (declare (not safe))
                                 (##car _e303054303217_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl303052303224_))
                              (___kont308892308893_
                               _hd303053303221_
                               _hd303022303337_)
                              (let ()
                                (declare (not safe))
                                (_g303011303079_)))))
                      (let () (declare (not safe)) (_g303011303079_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl303021303340_))
                  (___kont308894308895_ _hd303022303337_ _hd303019303327_)
                  (let () (declare (not safe)) (_g303011303079_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl303021303340_))
                                                    (___kont308894308895_
                                                     _hd303022303337_
                                                     _hd303019303327_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g303011303079_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd303019303327_))
                                          (let ((_e303036303274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd303019303327_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e303036303274_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl303021303340_))
                                                    (___kont308890308891_
                                                     _hd303022303337_
                                                     _hd303016303317_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl303021303340_))
                                                        (let ((_e303054303217_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl303021303340_))))
                  (let ((_tl303052303224_
                         (let () (declare (not safe)) (##cdr _e303054303217_)))
                        (_hd303053303221_
                         (let ()
                           (declare (not safe))
                           (##car _e303054303217_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl303052303224_))
                        (___kont308892308893_
                         _hd303053303221_
                         _hd303022303337_)
                        (let () (declare (not safe)) (_g303011303079_)))))
                (let () (declare (not safe)) (_g303011303079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl303021303340_))
                                                    (___kont308894308895_
                                                     _hd303022303337_
                                                     _hd303019303327_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g303011303079_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl303021303340_))
                                              (___kont308894308895_
                                               _hd303022303337_
                                               _hd303019303327_)
                                              (let ()
                                                (declare (not safe))
                                                (_g303011303079_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd303019303327_))
                                  (let ((_e303036303274_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd303019303327_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl303018303330_))
                                        (___kont308896308897_
                                         _hd303019303327_
                                         _hd303016303317_)
                                        (let ()
                                          (declare (not safe))
                                          (_g303011303079_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl303018303330_))
                                      (___kont308896308897_
                                       _hd303019303327_
                                       _hd303016303317_)
                                      (let ()
                                        (declare (not safe))
                                        (_g303011303079_)))))))
                      (let () (declare (not safe)) (_g303011303079_)))))
              (let () (declare (not safe)) (_g303011303079_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx303381_)
      (let* ((___stx309025309026_ _$stx303381_)
             (_g303386303441_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx309025309026_)))))
        (let ((___kont309028309029_
               (lambda (_L303626_ _L303628_)
                 (let ((__tmp309440
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp309425
                        (let ((__tmp309436
                               (let ((__tmp309439
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309437
                                      (let ((__tmp309438
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp309438 '()))))
                                 (declare (not safe))
                                 (cons __tmp309439 __tmp309437)))
                              (__tmp309426
                               (let ((__tmp309427
                                      (let ((__tmp309435
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp309428
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L303626_
                                                  _L303628_))
                                               (let ((__tmp309429
                                                      (lambda (_g303645303649_
                                                               _g303646303652_
                                                               _g303647303654_)
                                                        (let ((__tmp309430
                                                               (let ((__tmp309434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp309431
                              (let ((__tmp309432
                                     (let ((__tmp309433
                                            (let ()
                                              (declare (not safe))
                                              (cons _g303645303649_ '()))))
                                       (declare (not safe))
                                       (cons _g303646303652_ __tmp309433))))
                                (declare (not safe))
                                (cons 'primitive: __tmp309432))))
                         (declare (not safe))
                         (cons __tmp309434 __tmp309431))))
                  (declare (not safe))
                  (cons __tmp309430 _g303647303654_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp309429
                                                         '()
                                                         _L303626_
                                                         _L303628_)))))
                                        (declare (not safe))
                                        (cons __tmp309435 __tmp309428))))
                                 (declare (not safe))
                                 (cons __tmp309427 '()))))
                          (declare (not safe))
                          (cons __tmp309436 __tmp309426))))
                   (declare (not safe))
                   (cons __tmp309440 __tmp309425))))
              (___kont309032309033_
               (lambda (_L303512_ _L303514_)
                 (let ((__tmp309455
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp309441
                        (let ((__tmp309451
                               (let ((__tmp309454
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp309452
                                      (let ((__tmp309453
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp309453 '()))))
                                 (declare (not safe))
                                 (cons __tmp309454 __tmp309452)))
                              (__tmp309442
                               (let ((__tmp309443
                                      (let ((__tmp309450
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp309444
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L303512_
                                                  _L303514_))
                                               (let ((__tmp309445
                                                      (lambda (_g303529303533_
                                                               _g303530303536_
                                                               _g303531303538_)
                                                        (let ((__tmp309446
                                                               (let ((__tmp309449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp309447
                              (let ((__tmp309448
                                     (let ()
                                       (declare (not safe))
                                       (cons _g303529303533_ '()))))
                                (declare (not safe))
                                (cons _g303530303536_ __tmp309448))))
                         (declare (not safe))
                         (cons __tmp309449 __tmp309447))))
                  (declare (not safe))
                  (cons __tmp309446 _g303531303538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp309445
                                                         '()
                                                         _L303512_
                                                         _L303514_)))))
                                        (declare (not safe))
                                        (cons __tmp309450 __tmp309444))))
                                 (declare (not safe))
                                 (cons __tmp309443 '()))))
                          (declare (not safe))
                          (cons __tmp309451 __tmp309442))))
                   (declare (not safe))
                   (cons __tmp309455 __tmp309441)))))
          (let* ((___match309076309077_
                  (lambda (_e303418303448_
                           _hd303417303452_
                           _tl303416303455_
                           ___splice309034309035_
                           _target303419303458_
                           _tl303421303461_)
                    (letrec ((_loop303422303464_
                              (lambda (_hd303420303468_
                                       _dispatch303426303471_
                                       _arity303427303473_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd303420303468_))
                                    (let ((_e303423303476_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd303420303468_))))
                                      (let ((_lp-tl303425303483_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303423303476_)))
                                            (_lp-hd303424303480_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303423303476_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd303424303480_))
                                            (let ((_e303432303486_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd303424303480_))))
                                              (let ((_tl303430303493_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e303432303486_)))
                                                    (_hd303431303490_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e303432303486_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl303430303493_))
                                                    (let ((_e303435303496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl303430303493_))))
                                                      (let ((_tl303433303503_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e303435303496_)))
                    (_hd303434303500_
                     (let () (declare (not safe)) (##car _e303435303496_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl303433303503_))
                    (_loop303422303464_
                     _lp-tl303425303483_
                     (let ()
                       (declare (not safe))
                       (cons _hd303434303500_ _dispatch303426303471_))
                     (let ()
                       (declare (not safe))
                       (cons _hd303431303490_ _arity303427303473_)))
                    (let () (declare (not safe)) (_g303386303441_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g303386303441_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g303386303441_)))))
                                    (let ((_arity303429303509_
                                           (reverse _arity303427303473_))
                                          (_dispatch303428303506_
                                           (reverse _dispatch303426303471_)))
                                      (___kont309032309033_
                                       _dispatch303428303506_
                                       _arity303429303509_))))))
                      (_loop303422303464_ _target303419303458_ '() '()))))
                 (___match309068309069_
                  (lambda (_e303418303448_ _hd303417303452_ _tl303416303455_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl303416303455_))
                        (let ((___splice309034309035_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl303416303455_
                                  '0))))
                          (let ((_tl303421303461_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice309034309035_ '1)))
                                (_target303419303458_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice309034309035_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl303421303461_))
                                (___match309076309077_
                                 _e303418303448_
                                 _hd303417303452_
                                 _tl303416303455_
                                 ___splice309034309035_
                                 _target303419303458_
                                 _tl303421303461_)
                                (let ()
                                  (declare (not safe))
                                  (_g303386303441_)))))
                        (let () (declare (not safe)) (_g303386303441_)))))
                 (___match309062309063_
                  (lambda (_e303392303548_
                           _hd303391303552_
                           _tl303390303555_
                           _e303395303558_
                           _hd303394303562_
                           _tl303393303565_
                           _e303396303568_
                           ___splice309030309031_
                           _target303397303572_
                           _tl303399303575_)
                    (letrec ((_loop303400303578_
                              (lambda (_hd303398303582_
                                       _dispatch303404303585_
                                       _arity303405303587_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd303398303582_))
                                    (let ((_e303401303590_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd303398303582_))))
                                      (let ((_lp-tl303403303597_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303401303590_)))
                                            (_lp-hd303402303594_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303401303590_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd303402303594_))
                                            (let ((_e303410303600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd303402303594_))))
                                              (let ((_tl303408303607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e303410303600_)))
                                                    (_hd303409303604_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e303410303600_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl303408303607_))
                                                    (let ((_e303413303610_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl303408303607_))))
                                                      (let ((_tl303411303617_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e303413303610_)))
                    (_hd303412303614_
                     (let () (declare (not safe)) (##car _e303413303610_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl303411303617_))
                    (_loop303400303578_
                     _lp-tl303403303597_
                     (let ()
                       (declare (not safe))
                       (cons _hd303412303614_ _dispatch303404303585_))
                     (let ()
                       (declare (not safe))
                       (cons _hd303409303604_ _arity303405303587_)))
                    (___match309068309069_
                     _e303392303548_
                     _hd303391303552_
                     _tl303390303555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match309068309069_
                                                     _e303392303548_
                                                     _hd303391303552_
                                                     _tl303390303555_))))
                                            (___match309068309069_
                                             _e303392303548_
                                             _hd303391303552_
                                             _tl303390303555_))))
                                    (let ((_arity303407303623_
                                           (reverse _arity303405303587_))
                                          (_dispatch303406303620_
                                           (reverse _dispatch303404303585_)))
                                      (___kont309028309029_
                                       _dispatch303406303620_
                                       _arity303407303623_))))))
                      (_loop303400303578_ _target303397303572_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx309025309026_))
                (let ((_e303392303548_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx309025309026_))))
                  (let ((_tl303390303555_
                         (let () (declare (not safe)) (##cdr _e303392303548_)))
                        (_hd303391303552_
                         (let ()
                           (declare (not safe))
                           (##car _e303392303548_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl303390303555_))
                        (let ((_e303395303558_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl303390303555_))))
                          (let ((_tl303393303565_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e303395303558_)))
                                (_hd303394303562_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e303395303558_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd303394303562_))
                                (let ((_e303396303568_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd303394303562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e303396303568_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl303393303565_))
                                          (let ((___splice309030309031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl303393303565_
                                                    '0))))
                                            (let ((_tl303399303575_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice309030309031_
                                                      '1)))
                                                  (_target303397303572_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice309030309031_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl303399303575_))
                                                  (___match309062309063_
                                                   _e303392303548_
                                                   _hd303391303552_
                                                   _tl303390303555_
                                                   _e303395303558_
                                                   _hd303394303562_
                                                   _tl303393303565_
                                                   _e303396303568_
                                                   ___splice309030309031_
                                                   _target303397303572_
                                                   _tl303399303575_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl303390303555_))
                                                      (let ((___splice309034309035_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl303390303555_ '0))))
                (let ((_tl303421303461_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309034309035_ '1)))
                      (_target303419303458_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309034309035_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl303421303461_))
                      (___match309076309077_
                       _e303392303548_
                       _hd303391303552_
                       _tl303390303555_
                       ___splice309034309035_
                       _target303419303458_
                       _tl303421303461_)
                      (let () (declare (not safe)) (_g303386303441_)))))
              (let () (declare (not safe)) (_g303386303441_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl303390303555_))
                                              (let ((___splice309034309035_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl303390303555_
                                                        '0))))
                                                (let ((_tl303421303461_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice309034309035_
                                                          '1)))
                                                      (_target303419303458_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice309034309035_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl303421303461_))
                                                      (___match309076309077_
                                                       _e303392303548_
                                                       _hd303391303552_
                                                       _tl303390303555_
                                                       ___splice309034309035_
                                                       _target303419303458_
                                                       _tl303421303461_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g303386303441_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g303386303441_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl303390303555_))
                                          (let ((___splice309034309035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl303390303555_
                                                    '0))))
                                            (let ((_tl303421303461_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice309034309035_
                                                      '1)))
                                                  (_target303419303458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice309034309035_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl303421303461_))
                                                  (___match309076309077_
                                                   _e303392303548_
                                                   _hd303391303552_
                                                   _tl303390303555_
                                                   ___splice309034309035_
                                                   _target303419303458_
                                                   _tl303421303461_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g303386303441_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g303386303441_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl303390303555_))
                                    (let ((___splice309034309035_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl303390303555_
                                              '0))))
                                      (let ((_tl303421303461_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309034309035_
                                                '1)))
                                            (_target303419303458_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309034309035_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl303421303461_))
                                            (___match309076309077_
                                             _e303392303548_
                                             _hd303391303552_
                                             _tl303390303555_
                                             ___splice309034309035_
                                             _target303419303458_
                                             _tl303421303461_)
                                            (let ()
                                              (declare (not safe))
                                              (_g303386303441_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g303386303441_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl303390303555_))
                            (let ((___splice309034309035_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl303390303555_
                                      '0))))
                              (let ((_tl303421303461_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice309034309035_
                                        '1)))
                                    (_target303419303458_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice309034309035_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl303421303461_))
                                    (___match309076309077_
                                     _e303392303548_
                                     _hd303391303552_
                                     _tl303390303555_
                                     ___splice309034309035_
                                     _target303419303458_
                                     _tl303421303461_)
                                    (let ()
                                      (declare (not safe))
                                      (_g303386303441_)))))
                            (let () (declare (not safe)) (_g303386303441_))))))
                (let () (declare (not safe)) (_g303386303441_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx303663_)
      (let* ((_g303667303685_
              (lambda (_g303668303681_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g303668303681_))))
             (_g303666303740_
              (lambda (_g303668303689_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g303668303689_))
                    (let ((_e303673303692_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g303668303689_))))
                      (let ((_hd303672303696_
                             (let ()
                               (declare (not safe))
                               (##car _e303673303692_)))
                            (_tl303671303699_
                             (let ()
                               (declare (not safe))
                               (##cdr _e303673303692_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl303671303699_))
                            (let ((_e303676303702_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl303671303699_))))
                              (let ((_hd303675303706_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e303676303702_)))
                                    (_tl303674303709_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e303676303702_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl303674303709_))
                                    (let ((_e303679303712_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl303674303709_))))
                                      (let ((_hd303678303716_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303679303712_)))
                                            (_tl303677303719_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303679303712_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl303677303719_))
                                            ((lambda (_L303722_ _L303724_)
                                               (let ((__tmp309469
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp309456
                                                      (let ((__tmp309465
                                                             (let ((__tmp309468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp309466
                            (let ((__tmp309467
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp309467 '()))))
                       (declare (not safe))
                       (cons __tmp309468 __tmp309466)))
                    (__tmp309457
                     (let ((__tmp309462
                            (let ((__tmp309464
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp309463
                                   (let ()
                                     (declare (not safe))
                                     (cons _L303724_ '()))))
                              (declare (not safe))
                              (cons __tmp309464 __tmp309463)))
                           (__tmp309458
                            (let ((__tmp309459
                                   (let ((__tmp309461
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp309460
                                          (let ()
                                            (declare (not safe))
                                            (cons _L303722_ '()))))
                                     (declare (not safe))
                                     (cons __tmp309461 __tmp309460))))
                              (declare (not safe))
                              (cons __tmp309459 '()))))
                       (declare (not safe))
                       (cons __tmp309462 __tmp309458))))
                (declare (not safe))
                (cons __tmp309465 __tmp309457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp309469
                                                       __tmp309456)))
                                             _hd303678303716_
                                             _hd303675303706_)
                                            (_g303667303685_
                                             _g303668303689_))))
                                    (_g303667303685_ _g303668303689_))))
                            (_g303667303685_ _g303668303689_))))
                    (_g303667303685_ _g303668303689_)))))
        (_g303666303740_ _$stx303663_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx303744_)
      (let* ((_g303748303766_
              (lambda (_g303749303762_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g303749303762_))))
             (_g303747303821_
              (lambda (_g303749303770_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g303749303770_))
                    (let ((_e303754303773_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g303749303770_))))
                      (let ((_hd303753303777_
                             (let ()
                               (declare (not safe))
                               (##car _e303754303773_)))
                            (_tl303752303780_
                             (let ()
                               (declare (not safe))
                               (##cdr _e303754303773_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl303752303780_))
                            (let ((_e303757303783_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl303752303780_))))
                              (let ((_hd303756303787_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e303757303783_)))
                                    (_tl303755303790_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e303757303783_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl303755303790_))
                                    (let ((_e303760303793_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl303755303790_))))
                                      (let ((_hd303759303797_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303760303793_)))
                                            (_tl303758303800_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303760303793_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl303758303800_))
                                            ((lambda (_L303803_ _L303805_)
                                               (let ((__tmp309483
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp309470
                                                      (let ((__tmp309479
                                                             (let ((__tmp309482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp309480
                            (let ((__tmp309481
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp309481 '()))))
                       (declare (not safe))
                       (cons __tmp309482 __tmp309480)))
                    (__tmp309471
                     (let ((__tmp309476
                            (let ((__tmp309478
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp309477
                                   (let ()
                                     (declare (not safe))
                                     (cons _L303805_ '()))))
                              (declare (not safe))
                              (cons __tmp309478 __tmp309477)))
                           (__tmp309472
                            (let ((__tmp309473
                                   (let ((__tmp309475
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp309474
                                          (let ()
                                            (declare (not safe))
                                            (cons _L303803_ '()))))
                                     (declare (not safe))
                                     (cons __tmp309475 __tmp309474))))
                              (declare (not safe))
                              (cons __tmp309473 '()))))
                       (declare (not safe))
                       (cons __tmp309476 __tmp309472))))
                (declare (not safe))
                (cons __tmp309479 __tmp309471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp309483
                                                       __tmp309470)))
                                             _hd303759303797_
                                             _hd303756303787_)
                                            (_g303748303766_
                                             _g303749303770_))))
                                    (_g303748303766_ _g303749303770_))))
                            (_g303748303766_ _g303749303770_))))
                    (_g303748303766_ _g303749303770_)))))
        (_g303747303821_ _$stx303744_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx303825_)
      (let* ((___stx309079309080_ _$stx303825_)
             (_g303832303903_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx309079309080_)))))
        (let ((___kont309082309083_
               (lambda (_L304194_ _L304196_)
                 (let ((__tmp309489
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309484
                        (let ((__tmp309485
                               (let ((__tmp309486
                                      (let ((__tmp309488
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp309487
                                             (let ()
                                               (declare (not safe))
                                               (cons _L304194_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309488 __tmp309487))))
                                 (declare (not safe))
                                 (cons __tmp309486 '()))))
                          (declare (not safe))
                          (cons _L304196_ __tmp309485))))
                   (declare (not safe))
                   (cons __tmp309489 __tmp309484))))
              (___kont309084309085_
               (lambda (_L304113_ _L304115_)
                 (let ((__tmp309498
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309490
                        (let ((__tmp309491
                               (let ((__tmp309492
                                      (let ((__tmp309497
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp309493
                                             (let ((__tmp309494
                                                    (lambda (_g304134304137_
                                                             _g304135304140_)
                                                      (let ((__tmp309495
                                                             (let ((__tmp309496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g304134304137_ __tmp309496))))
                (declare (not safe))
                (cons __tmp309495 _g304135304140_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp309494
                                                       '()
                                                       _L304113_))))
                                        (declare (not safe))
                                        (cons __tmp309497 __tmp309493))))
                                 (declare (not safe))
                                 (cons __tmp309492 '()))))
                          (declare (not safe))
                          (cons _L304115_ __tmp309491))))
                   (declare (not safe))
                   (cons __tmp309498 __tmp309490))))
              (___kont309088309089_
               (lambda (_L304025_ _L304027_)
                 (let ((__tmp309505
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309499
                        (let ((__tmp309500
                               (let ((__tmp309501
                                      (let ((__tmp309504
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp309502
                                             (let ((__tmp309503
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L304025_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp309503))))
                                        (declare (not safe))
                                        (cons __tmp309504 __tmp309502))))
                                 (declare (not safe))
                                 (cons __tmp309501 '()))))
                          (declare (not safe))
                          (cons _L304027_ __tmp309500))))
                   (declare (not safe))
                   (cons __tmp309505 __tmp309499))))
              (___kont309090309091_
               (lambda (_L303960_ _L303962_)
                 (let ((__tmp309515
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309506
                        (let ((__tmp309507
                               (let ((__tmp309508
                                      (let ((__tmp309514
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp309509
                                             (let ((__tmp309510
                                                    (let ((__tmp309511
                                                           (lambda (_g303979303982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g303980303985_)
                     (let ((__tmp309512
                            (let ((__tmp309513
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g303979303982_ __tmp309513))))
                       (declare (not safe))
                       (cons __tmp309512 _g303980303985_)))))
              (declare (not safe))
              (foldr1 __tmp309511 '() _L303960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp309510))))
                                        (declare (not safe))
                                        (cons __tmp309514 __tmp309509))))
                                 (declare (not safe))
                                 (cons __tmp309508 '()))))
                          (declare (not safe))
                          (cons _L303962_ __tmp309507))))
                   (declare (not safe))
                   (cons __tmp309515 __tmp309506)))))
          (let* ((___match309198309199_
                  (lambda (_e303885303910_
                           _hd303884303914_
                           _tl303883303917_
                           _e303888303920_
                           _hd303887303924_
                           _tl303886303927_
                           ___splice309092309093_
                           _target303889303930_
                           _tl303891303933_)
                    (letrec ((_loop303892303936_
                              (lambda (_hd303890303940_ _arity303896303943_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd303890303940_))
                                    (let ((_e303893303946_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd303890303940_))))
                                      (let ((_lp-tl303895303953_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303893303946_)))
                                            (_lp-hd303894303950_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303893303946_))))
                                        (_loop303892303936_
                                         _lp-tl303895303953_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd303894303950_
                                                 _arity303896303943_)))))
                                    (let ((_arity303897303956_
                                           (reverse _arity303896303943_)))
                                      (___kont309090309091_
                                       _arity303897303956_
                                       _hd303887303924_))))))
                      (_loop303892303936_ _target303889303930_ '()))))
                 (___match309158309159_
                  (lambda (_e303853304049_
                           _hd303852304053_
                           _tl303851304056_
                           _e303856304059_
                           _hd303855304063_
                           _tl303854304066_
                           _e303859304069_
                           _hd303858304073_
                           _tl303857304076_
                           _e303860304079_
                           ___splice309086309087_
                           _target303861304083_
                           _tl303863304086_)
                    (letrec ((_loop303864304089_
                              (lambda (_hd303862304093_ _arity303868304096_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd303862304093_))
                                    (let ((_e303865304099_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd303862304093_))))
                                      (let ((_lp-tl303867304106_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e303865304099_)))
                                            (_lp-hd303866304103_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e303865304099_))))
                                        (_loop303864304089_
                                         _lp-tl303867304106_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd303866304103_
                                                 _arity303868304096_)))))
                                    (let ((_arity303869304109_
                                           (reverse _arity303868304096_)))
                                      (___kont309084309085_
                                       _arity303869304109_
                                       _hd303855304063_))))))
                      (_loop303864304089_ _target303861304083_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx309079309080_))
                (let ((_e303838304150_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx309079309080_))))
                  (let ((_tl303836304157_
                         (let () (declare (not safe)) (##cdr _e303838304150_)))
                        (_hd303837304154_
                         (let ()
                           (declare (not safe))
                           (##car _e303838304150_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl303836304157_))
                        (let ((_e303841304160_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl303836304157_))))
                          (let ((_tl303839304167_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e303841304160_)))
                                (_hd303840304164_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e303841304160_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl303839304167_))
                                (let ((_e303844304170_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl303839304167_))))
                                  (let ((_tl303842304177_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e303844304170_)))
                                        (_hd303843304174_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e303844304170_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd303843304174_))
                                        (let ((_e303845304180_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd303843304174_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e303845304180_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl303842304177_))
                                                  (let ((_e303848304184_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl303842304177_))))
                                                    (let ((_tl303846304191_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e303848304184_)))
                                                          (_hd303847304188_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e303848304184_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl303846304191_))
                                                          (___kont309082309083_
                                                           _hd303847304188_
                                                           _hd303840304164_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl303842304177_))
                      (let ((___splice309086309087_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl303842304177_ '0))))
                        (let ((_tl303863304086_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice309086309087_ '1)))
                              (_target303861304083_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice309086309087_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl303863304086_))
                              (___match309158309159_
                               _e303838304150_
                               _hd303837304154_
                               _tl303836304157_
                               _e303841304160_
                               _hd303840304164_
                               _tl303839304167_
                               _e303844304170_
                               _hd303843304174_
                               _tl303842304177_
                               _e303845304180_
                               ___splice309086309087_
                               _target303861304083_
                               _tl303863304086_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl303839304167_))
                                  (let ((___splice309092309093_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl303839304167_
                                            '0))))
                                    (let ((_tl303891303933_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice309092309093_
                                              '1)))
                                          (_target303889303930_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice309092309093_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl303891303933_))
                                          (___match309198309199_
                                           _e303838304150_
                                           _hd303837304154_
                                           _tl303836304157_
                                           _e303841304160_
                                           _hd303840304164_
                                           _tl303839304167_
                                           ___splice309092309093_
                                           _target303889303930_
                                           _tl303891303933_)
                                          (let ()
                                            (declare (not safe))
                                            (_g303832303903_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g303832303903_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl303839304167_))
                          (let ((___splice309092309093_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl303839304167_
                                    '0))))
                            (let ((_tl303891303933_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice309092309093_ '1)))
                                  (_target303889303930_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice309092309093_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl303891303933_))
                                  (___match309198309199_
                                   _e303838304150_
                                   _hd303837304154_
                                   _tl303836304157_
                                   _e303841304160_
                                   _hd303840304164_
                                   _tl303839304167_
                                   ___splice309092309093_
                                   _target303889303930_
                                   _tl303891303933_)
                                  (let ()
                                    (declare (not safe))
                                    (_g303832303903_)))))
                          (let () (declare (not safe)) (_g303832303903_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl303842304177_))
                                                      (let ((___splice309086309087_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl303842304177_ '0))))
                (let ((_tl303863304086_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309086309087_ '1)))
                      (_target303861304083_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309086309087_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl303863304086_))
                      (___match309158309159_
                       _e303838304150_
                       _hd303837304154_
                       _tl303836304157_
                       _e303841304160_
                       _hd303840304164_
                       _tl303839304167_
                       _e303844304170_
                       _hd303843304174_
                       _tl303842304177_
                       _e303845304180_
                       ___splice309086309087_
                       _target303861304083_
                       _tl303863304086_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl303842304177_))
                          (___kont309088309089_
                           _hd303843304174_
                           _hd303840304164_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl303839304167_))
                              (let ((___splice309092309093_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl303839304167_
                                        '0))))
                                (let ((_tl303891303933_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice309092309093_
                                          '1)))
                                      (_target303889303930_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice309092309093_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl303891303933_))
                                      (___match309198309199_
                                       _e303838304150_
                                       _hd303837304154_
                                       _tl303836304157_
                                       _e303841304160_
                                       _hd303840304164_
                                       _tl303839304167_
                                       ___splice309092309093_
                                       _target303889303930_
                                       _tl303891303933_)
                                      (let ()
                                        (declare (not safe))
                                        (_g303832303903_)))))
                              (let ()
                                (declare (not safe))
                                (_g303832303903_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl303842304177_))
                  (___kont309088309089_ _hd303843304174_ _hd303840304164_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl303839304167_))
                      (let ((___splice309092309093_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl303839304167_ '0))))
                        (let ((_tl303891303933_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice309092309093_ '1)))
                              (_target303889303930_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice309092309093_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl303891303933_))
                              (___match309198309199_
                               _e303838304150_
                               _hd303837304154_
                               _tl303836304157_
                               _e303841304160_
                               _hd303840304164_
                               _tl303839304167_
                               ___splice309092309093_
                               _target303889303930_
                               _tl303891303933_)
                              (let ()
                                (declare (not safe))
                                (_g303832303903_)))))
                      (let () (declare (not safe)) (_g303832303903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl303842304177_))
                                                  (___kont309088309089_
                                                   _hd303843304174_
                                                   _hd303840304164_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl303839304167_))
                                                      (let ((___splice309092309093_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl303839304167_ '0))))
                (let ((_tl303891303933_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309092309093_ '1)))
                      (_target303889303930_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice309092309093_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl303891303933_))
                      (___match309198309199_
                       _e303838304150_
                       _hd303837304154_
                       _tl303836304157_
                       _e303841304160_
                       _hd303840304164_
                       _tl303839304167_
                       ___splice309092309093_
                       _target303889303930_
                       _tl303891303933_)
                      (let () (declare (not safe)) (_g303832303903_)))))
              (let () (declare (not safe)) (_g303832303903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl303842304177_))
                                            (___kont309088309089_
                                             _hd303843304174_
                                             _hd303840304164_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl303839304167_))
                                                (let ((___splice309092309093_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl303839304167_
                                                          '0))))
                                                  (let ((_tl303891303933_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice309092309093_
                                                            '1)))
                                                        (_target303889303930_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice309092309093_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl303891303933_))
                                                        (___match309198309199_
                                                         _e303838304150_
                                                         _hd303837304154_
                                                         _tl303836304157_
                                                         _e303841304160_
                                                         _hd303840304164_
                                                         _tl303839304167_
                                                         ___splice309092309093_
                                                         _target303889303930_
                                                         _tl303891303933_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g303832303903_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g303832303903_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl303839304167_))
                                    (let ((___splice309092309093_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl303839304167_
                                              '0))))
                                      (let ((_tl303891303933_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309092309093_
                                                '1)))
                                            (_target303889303930_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309092309093_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl303891303933_))
                                            (___match309198309199_
                                             _e303838304150_
                                             _hd303837304154_
                                             _tl303836304157_
                                             _e303841304160_
                                             _hd303840304164_
                                             _tl303839304167_
                                             ___splice309092309093_
                                             _target303889303930_
                                             _tl303891303933_)
                                            (let ()
                                              (declare (not safe))
                                              (_g303832303903_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g303832303903_))))))
                        (let () (declare (not safe)) (_g303832303903_)))))
                (let () (declare (not safe)) (_g303832303903_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx304220_)
      (let* ((___stx309201309202_ _$stx304220_)
             (_g304225304260_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx309201309202_)))))
        (let ((___kont309204309205_
               (lambda (_L304382_ _L304384_)
                 (let ((__tmp309521
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309516
                        (let ((__tmp309517
                               (let ((__tmp309518
                                      (let ((__tmp309520
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp309519
                                             (let ()
                                               (declare (not safe))
                                               (cons _L304382_ '()))))
                                        (declare (not safe))
                                        (cons __tmp309520 __tmp309519))))
                                 (declare (not safe))
                                 (cons __tmp309518 '()))))
                          (declare (not safe))
                          (cons _L304384_ __tmp309517))))
                   (declare (not safe))
                   (cons __tmp309521 __tmp309516))))
              (___kont309206309207_
               (lambda (_L304317_ _L304319_)
                 (let ((__tmp309530
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp309522
                        (let ((__tmp309523
                               (let ((__tmp309524
                                      (let ((__tmp309529
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp309525
                                             (let ((__tmp309526
                                                    (lambda (_g304336304339_
                                                             _g304337304342_)
                                                      (let ((__tmp309527
                                                             (let ((__tmp309528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g304336304339_ __tmp309528))))
                (declare (not safe))
                (cons __tmp309527 _g304337304342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp309526
                                                       '()
                                                       _L304317_))))
                                        (declare (not safe))
                                        (cons __tmp309529 __tmp309525))))
                                 (declare (not safe))
                                 (cons __tmp309524 '()))))
                          (declare (not safe))
                          (cons _L304319_ __tmp309523))))
                   (declare (not safe))
                   (cons __tmp309530 __tmp309522)))))
          (let ((___match309250309251_
                 (lambda (_e304242304267_
                          _hd304241304271_
                          _tl304240304274_
                          _e304245304277_
                          _hd304244304281_
                          _tl304243304284_
                          ___splice309208309209_
                          _target304246304287_
                          _tl304248304290_)
                   (letrec ((_loop304249304293_
                             (lambda (_hd304247304297_ _arity304253304300_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd304247304297_))
                                   (let ((_e304250304303_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd304247304297_))))
                                     (let ((_lp-tl304252304310_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e304250304303_)))
                                           (_lp-hd304251304307_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e304250304303_))))
                                       (_loop304249304293_
                                        _lp-tl304252304310_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd304251304307_
                                                _arity304253304300_)))))
                                   (let ((_arity304254304313_
                                          (reverse _arity304253304300_)))
                                     (___kont309206309207_
                                      _arity304254304313_
                                      _hd304244304281_))))))
                     (_loop304249304293_ _target304246304287_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx309201309202_))
                (let ((_e304231304352_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx309201309202_))))
                  (let ((_tl304229304359_
                         (let () (declare (not safe)) (##cdr _e304231304352_)))
                        (_hd304230304356_
                         (let ()
                           (declare (not safe))
                           (##car _e304231304352_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl304229304359_))
                        (let ((_e304234304362_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl304229304359_))))
                          (let ((_tl304232304369_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e304234304362_)))
                                (_hd304233304366_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e304234304362_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl304232304369_))
                                (let ((_e304237304372_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl304232304369_))))
                                  (let ((_tl304235304379_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e304237304372_)))
                                        (_hd304236304376_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e304237304372_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl304235304379_))
                                        (___kont309204309205_
                                         _hd304236304376_
                                         _hd304233304366_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl304232304369_))
                                            (let ((___splice309208309209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl304232304369_
                                                      '0))))
                                              (let ((_tl304248304290_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice309208309209_
                                                        '1)))
                                                    (_target304246304287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice309208309209_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl304248304290_))
                                                    (___match309250309251_
                                                     _e304231304352_
                                                     _hd304230304356_
                                                     _tl304229304359_
                                                     _e304234304362_
                                                     _hd304233304366_
                                                     _tl304232304369_
                                                     ___splice309208309209_
                                                     _target304246304287_
                                                     _tl304248304290_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g304225304260_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g304225304260_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl304232304369_))
                                    (let ((___splice309208309209_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl304232304369_
                                              '0))))
                                      (let ((_tl304248304290_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309208309209_
                                                '1)))
                                            (_target304246304287_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice309208309209_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl304248304290_))
                                            (___match309250309251_
                                             _e304231304352_
                                             _hd304230304356_
                                             _tl304229304359_
                                             _e304234304362_
                                             _hd304233304366_
                                             _tl304232304369_
                                             ___splice309208309209_
                                             _target304246304287_
                                             _tl304248304290_)
                                            (let ()
                                              (declare (not safe))
                                              (_g304225304260_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g304225304260_))))))
                        (let () (declare (not safe)) (_g304225304260_)))))
                (let () (declare (not safe)) (_g304225304260_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx304404_)
      (let* ((_g304408304443_
              (lambda (_g304409304439_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g304409304439_))))
             (_g304407304571_
              (lambda (_g304409304447_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g304409304447_))
                    (let ((_e304414304450_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g304409304447_))))
                      (let ((_hd304413304454_
                             (let ()
                               (declare (not safe))
                               (##car _e304414304450_)))
                            (_tl304412304457_
                             (let ()
                               (declare (not safe))
                               (##cdr _e304414304450_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl304412304457_))
                            (let ((_g309531_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl304412304457_
                                      '0))))
                              (begin
                                (let ((_g309532_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g309531_)
                                             (##vector-length _g309531_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g309532_ 2)))
                                      (error "Context expects 2 values"
                                             _g309532_)))
                                (let ((_target304415304460_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309531_ 0)))
                                      (_tl304417304463_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309531_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl304417304463_))
                                      (letrec ((_loop304418304466_
                                                (lambda (_hd304416304470_
                                                         _arity304422304473_
                                                         _prim304423304475_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd304416304470_))
                                                      (let ((_e304419304478_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd304416304470_))))
                (let ((_lp-hd304420304482_
                       (let () (declare (not safe)) (##car _e304419304478_)))
                      (_lp-tl304421304485_
                       (let () (declare (not safe)) (##cdr _e304419304478_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd304420304482_))
                      (let ((_e304428304488_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd304420304482_))))
                        (let ((_hd304427304492_
                               (let ()
                                 (declare (not safe))
                                 (##car _e304428304488_)))
                              (_tl304426304495_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e304428304488_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl304426304495_))
                              (let ((_g309541_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl304426304495_
                                        '0))))
                                (begin
                                  (let ((_g309542_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g309541_)
                                               (##vector-length _g309541_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g309542_ 2)))
                                        (error "Context expects 2 values"
                                               _g309542_)))
                                  (let ((_target304429304498_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g309541_ 0)))
                                        (_tl304431304501_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g309541_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl304431304501_))
                                        (letrec ((_loop304432304504_
                                                  (lambda (_hd304430304508_
                                                           _arity304436304511_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd304430304508_))
                                                        (let ((_e304433304514_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd304430304508_))))
                  (let ((_lp-hd304434304518_
                         (let () (declare (not safe)) (##car _e304433304514_)))
                        (_lp-tl304435304521_
                         (let ()
                           (declare (not safe))
                           (##cdr _e304433304514_))))
                    (_loop304432304504_
                     _lp-tl304435304521_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd304434304518_ _arity304436304511_)))))
                (let ((_arity304437304524_ (reverse _arity304436304511_)))
                  (_loop304418304466_
                   _lp-tl304421304485_
                   (let ()
                     (declare (not safe))
                     (cons _arity304437304524_ _arity304422304473_))
                   (let ()
                     (declare (not safe))
                     (cons _hd304427304492_ _prim304423304475_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop304432304504_
                                           _target304429304498_
                                           '()))
                                        (_g304408304443_ _g304409304447_)))))
                              (_g304408304443_ _g304409304447_))))
                      (_g304408304443_ _g304409304447_))))
              (let ((_arity304424304528_ (reverse _arity304422304473_))
                    (_prim304425304531_ (reverse _prim304423304475_)))
                ((lambda (_L304534_ _L304536_)
                   (let ((__tmp309540
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp309533
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L304534_
                               _L304536_))
                            (let ((__tmp309534
                                   (lambda (_g304551304557_
                                            _g304552304560_
                                            _g304553304562_)
                                     (let ((__tmp309535
                                            (let ((__tmp309539
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp309536
                                                   (let ((__tmp309537
                                                          (let ((__tmp309538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g304554304565_ _g304555304568_)
                           (let ()
                             (declare (not safe))
                             (cons _g304554304565_ _g304555304568_)))))
                    (declare (not safe))
                    (foldr1 __tmp309538 '() _g304551304557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g304552304560_
                                                           __tmp309537))))
                                              (declare (not safe))
                                              (cons __tmp309539 __tmp309536))))
                                       (declare (not safe))
                                       (cons __tmp309535 _g304553304562_)))))
                              (declare (not safe))
                              (foldr2 __tmp309534 '() _L304534_ _L304536_)))))
                     (declare (not safe))
                     (cons __tmp309540 __tmp309533)))
                 _arity304424304528_
                 _prim304425304531_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop304418304466_
                                         _target304415304460_
                                         '()
                                         '()))
                                      (_g304408304443_ _g304409304447_)))))
                            (_g304408304443_ _g304409304447_))))
                    (_g304408304443_ _g304409304447_)))))
        (_g304407304571_ _$stx304404_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx304577_)
      (let* ((_g304581304616_
              (lambda (_g304582304612_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g304582304612_))))
             (_g304580304744_
              (lambda (_g304582304620_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g304582304620_))
                    (let ((_e304587304623_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g304582304620_))))
                      (let ((_hd304586304627_
                             (let ()
                               (declare (not safe))
                               (##car _e304587304623_)))
                            (_tl304585304630_
                             (let ()
                               (declare (not safe))
                               (##cdr _e304587304623_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl304585304630_))
                            (let ((_g309543_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl304585304630_
                                      '0))))
                              (begin
                                (let ((_g309544_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g309543_)
                                             (##vector-length _g309543_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g309544_ 2)))
                                      (error "Context expects 2 values"
                                             _g309544_)))
                                (let ((_target304588304633_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309543_ 0)))
                                      (_tl304590304636_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g309543_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl304590304636_))
                                      (letrec ((_loop304591304639_
                                                (lambda (_hd304589304643_
                                                         _arity304595304646_
                                                         _prim304596304648_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd304589304643_))
                                                      (let ((_e304592304651_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd304589304643_))))
                (let ((_lp-hd304593304655_
                       (let () (declare (not safe)) (##car _e304592304651_)))
                      (_lp-tl304594304658_
                       (let () (declare (not safe)) (##cdr _e304592304651_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd304593304655_))
                      (let ((_e304601304661_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd304593304655_))))
                        (let ((_hd304600304665_
                               (let ()
                                 (declare (not safe))
                                 (##car _e304601304661_)))
                              (_tl304599304668_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e304601304661_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl304599304668_))
                              (let ((_g309553_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl304599304668_
                                        '0))))
                                (begin
                                  (let ((_g309554_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g309553_)
                                               (##vector-length _g309553_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g309554_ 2)))
                                        (error "Context expects 2 values"
                                               _g309554_)))
                                  (let ((_target304602304671_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g309553_ 0)))
                                        (_tl304604304674_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g309553_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl304604304674_))
                                        (letrec ((_loop304605304677_
                                                  (lambda (_hd304603304681_
                                                           _arity304609304684_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd304603304681_))
                                                        (let ((_e304606304687_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd304603304681_))))
                  (let ((_lp-hd304607304691_
                         (let () (declare (not safe)) (##car _e304606304687_)))
                        (_lp-tl304608304694_
                         (let ()
                           (declare (not safe))
                           (##cdr _e304606304687_))))
                    (_loop304605304677_
                     _lp-tl304608304694_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd304607304691_ _arity304609304684_)))))
                (let ((_arity304610304697_ (reverse _arity304609304684_)))
                  (_loop304591304639_
                   _lp-tl304594304658_
                   (let ()
                     (declare (not safe))
                     (cons _arity304610304697_ _arity304595304646_))
                   (let ()
                     (declare (not safe))
                     (cons _hd304600304665_ _prim304596304648_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop304605304677_
                                           _target304602304671_
                                           '()))
                                        (_g304581304616_ _g304582304620_)))))
                              (_g304581304616_ _g304582304620_))))
                      (_g304581304616_ _g304582304620_))))
              (let ((_arity304597304701_ (reverse _arity304595304646_))
                    (_prim304598304704_ (reverse _prim304596304648_)))
                ((lambda (_L304707_ _L304709_)
                   (let ((__tmp309552
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp309545
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L304707_
                               _L304709_))
                            (let ((__tmp309546
                                   (lambda (_g304724304730_
                                            _g304725304733_
                                            _g304726304735_)
                                     (let ((__tmp309547
                                            (let ((__tmp309551
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp309548
                                                   (let ((__tmp309549
                                                          (let ((__tmp309550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g304727304738_ _g304728304741_)
                           (let ()
                             (declare (not safe))
                             (cons _g304727304738_ _g304728304741_)))))
                    (declare (not safe))
                    (foldr1 __tmp309550 '() _g304724304730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g304725304733_
                                                           __tmp309549))))
                                              (declare (not safe))
                                              (cons __tmp309551 __tmp309548))))
                                       (declare (not safe))
                                       (cons __tmp309547 _g304726304735_)))))
                              (declare (not safe))
                              (foldr2 __tmp309546 '() _L304707_ _L304709_)))))
                     (declare (not safe))
                     (cons __tmp309552 __tmp309545)))
                 _arity304597304701_
                 _prim304598304704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop304591304639_
                                         _target304588304633_
                                         '()
                                         '()))
                                      (_g304581304616_ _g304582304620_)))))
                            (_g304581304616_ _g304582304620_))))
                    (_g304581304616_ _g304582304620_)))))
        (_g304580304744_ _$stx304577_)))))
