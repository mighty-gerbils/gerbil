(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx159443_)
      (let* ((_g159447159465_
              (lambda (_g159448159461_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159448159461_))))
             (_g159446159520_
              (lambda (_g159448159469_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159448159469_))
                    (let ((_e159453159472_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159448159469_))))
                      (let ((_hd159452159476_
                             (let ()
                               (declare (not safe))
                               (##car _e159453159472_)))
                            (_tl159451159479_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159453159472_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159451159479_))
                            (let ((_e159456159482_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159451159479_))))
                              (let ((_hd159455159486_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159456159482_)))
                                    (_tl159454159489_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159456159482_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159454159489_))
                                    (let ((_e159459159492_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159454159489_))))
                                      (let ((_hd159458159496_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159459159492_)))
                                            (_tl159457159499_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159459159492_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159457159499_))
                                            ((lambda (_L159502_ _L159504_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L159504_))
                                                   (let ((__tmp162984
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp162979
                                                          (let ((__tmp162981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162983
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162982
                                (let ()
                                  (declare (not safe))
                                  (cons _L159504_ '()))))
                           (declare (not safe))
                           (cons __tmp162983 __tmp162982)))
                        (__tmp162980
                         (let () (declare (not safe)) (cons _L159502_ '()))))
                    (declare (not safe))
                    (cons __tmp162981 __tmp162980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162984
                                                           __tmp162979))
                                                   (_g159447159465_
                                                    _g159448159469_)))
                                             _hd159458159496_
                                             _hd159455159486_)
                                            (_g159447159465_
                                             _g159448159469_))))
                                    (_g159447159465_ _g159448159469_))))
                            (_g159447159465_ _g159448159469_))))
                    (_g159447159465_ _g159448159469_)))))
        (_g159446159520_ _$stx159443_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx159524_)
      (let* ((_g159528159557_
              (lambda (_g159529159553_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159529159553_))))
             (_g159527159657_
              (lambda (_g159529159561_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159529159561_))
                    (let ((_e159534159564_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159529159561_))))
                      (let ((_hd159533159568_
                             (let ()
                               (declare (not safe))
                               (##car _e159534159564_)))
                            (_tl159532159571_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159534159564_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159532159571_))
                            (let ((_g162985_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159532159571_
                                      '0))))
                              (begin
                                (let ((_g162986_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162985_)
                                             (##vector-length _g162985_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162986_ 2)))
                                      (error "Context expects 2 values"
                                             _g162986_)))
                                (let ((_target159535159574_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162985_ 0)))
                                      (_tl159537159577_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162985_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159537159577_))
                                      (letrec ((_loop159538159580_
                                                (lambda (_hd159536159584_
                                                         _type159542159587_
                                                         _symbol159543159589_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159536159584_))
                                                      (let ((_e159539159592_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159536159584_))))
                (let ((_lp-hd159540159596_
                       (let () (declare (not safe)) (##car _e159539159592_)))
                      (_lp-tl159541159599_
                       (let () (declare (not safe)) (##cdr _e159539159592_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159540159596_))
                      (let ((_e159548159602_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159540159596_))))
                        (let ((_hd159547159606_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159548159602_)))
                              (_tl159546159609_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159548159602_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159546159609_))
                              (let ((_e159551159612_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159546159609_))))
                                (let ((_hd159550159616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159551159612_)))
                                      (_tl159549159619_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159551159612_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159549159619_))
                                      (_loop159538159580_
                                       _lp-tl159541159599_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159550159616_
                                               _type159542159587_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159547159606_
                                               _symbol159543159589_)))
                                      (_g159528159557_ _g159529159561_))))
                              (_g159528159557_ _g159529159561_))))
                      (_g159528159557_ _g159529159561_))))
              (let ((_type159544159622_ (reverse _type159542159587_))
                    (_symbol159545159625_ (reverse _symbol159543159589_)))
                ((lambda (_L159628_ _L159630_)
                   (let ((__tmp162993
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162987
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159628_
                               _L159630_))
                            (let ((__tmp162988
                                   (lambda (_g159645159649_
                                            _g159646159652_
                                            _g159647159654_)
                                     (let ((__tmp162989
                                            (let ((__tmp162992
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162990
                                                   (let ((__tmp162991
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g159645159649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159646159652_
                                                           __tmp162991))))
                                              (declare (not safe))
                                              (cons __tmp162992 __tmp162990))))
                                       (declare (not safe))
                                       (cons __tmp162989 _g159647159654_)))))
                              (declare (not safe))
                              (foldr2 __tmp162988 '() _L159628_ _L159630_)))))
                     (declare (not safe))
                     (cons __tmp162993 __tmp162987)))
                 _type159544159622_
                 _symbol159545159625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159538159580_
                                         _target159535159574_
                                         '()
                                         '()))
                                      (_g159528159557_ _g159529159561_)))))
                            (_g159528159557_ _g159529159561_))))
                    (_g159528159557_ _g159529159561_)))))
        (_g159527159657_ _$stx159524_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx159662_)
      (let* ((___stx162544162545_ _$stx159662_)
             (_g159667159709_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162544162545_)))))
        (let ((___kont162547162548_
               (lambda (_L159837_ _L159839_ _L159840_ _L159841_)
                 (let ((__tmp163007
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162994
                        (let ((__tmp163004
                               (let ((__tmp163006
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163005
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159841_ '()))))
                                 (declare (not safe))
                                 (cons __tmp163006 __tmp163005)))
                              (__tmp162995
                               (let ((__tmp163001
                                      (let ((__tmp163003
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163002
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159840_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163003 __tmp163002)))
                                     (__tmp162996
                                      (let ((__tmp162998
                                             (let ((__tmp163000
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162999
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159839_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163000 __tmp162999)))
                                            (__tmp162997
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159837_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162998 __tmp162997))))
                                 (declare (not safe))
                                 (cons __tmp163001 __tmp162996))))
                          (declare (not safe))
                          (cons __tmp163004 __tmp162995))))
                   (declare (not safe))
                   (cons __tmp163007 __tmp162994))))
              (___kont162549162550_
               (lambda (_L159756_ _L159758_ _L159759_ _L159760_)
                 (let ((__tmp163008
                        (let ((__tmp163009
                               (let ((__tmp163010
                                      (let ((__tmp163011
                                             (let ((__tmp163012
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp163012 '()))))
                                        (declare (not safe))
                                        (cons _L159756_ __tmp163011))))
                                 (declare (not safe))
                                 (cons _L159758_ __tmp163010))))
                          (declare (not safe))
                          (cons _L159759_ __tmp163009))))
                   (declare (not safe))
                   (cons _L159760_ __tmp163008)))))
          (let ((___match162583162584_
                 (lambda (_e159675159787_
                          _hd159674159791_
                          _tl159673159794_
                          _e159678159797_
                          _hd159677159801_
                          _tl159676159804_
                          _e159681159807_
                          _hd159680159811_
                          _tl159679159814_
                          _e159684159817_
                          _hd159683159821_
                          _tl159682159824_
                          _e159687159827_
                          _hd159686159831_
                          _tl159685159834_)
                   (let ((_L159837_ _hd159686159831_)
                         (_L159839_ _hd159683159821_)
                         (_L159840_ _hd159680159811_)
                         (_L159841_ _hd159677159801_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159841_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159840_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159839_)))
                         (___kont162547162548_
                          _L159837_
                          _L159839_
                          _L159840_
                          _L159841_)
                         (let () (declare (not safe)) (_g159667159709_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162544162545_))
                (let ((_e159675159787_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162544162545_))))
                  (let ((_tl159673159794_
                         (let () (declare (not safe)) (##cdr _e159675159787_)))
                        (_hd159674159791_
                         (let ()
                           (declare (not safe))
                           (##car _e159675159787_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159673159794_))
                        (let ((_e159678159797_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159673159794_))))
                          (let ((_tl159676159804_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159678159797_)))
                                (_hd159677159801_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159678159797_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159676159804_))
                                (let ((_e159681159807_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159676159804_))))
                                  (let ((_tl159679159814_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159681159807_)))
                                        (_hd159680159811_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159681159807_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl159679159814_))
                                        (let ((_e159684159817_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl159679159814_))))
                                          (let ((_tl159682159824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e159684159817_)))
                                                (_hd159683159821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e159684159817_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159682159824_))
                                                (let ((_e159687159827_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159682159824_))))
                                                  (let ((_tl159685159834_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159687159827_)))
                                                        (_hd159686159831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159687159827_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159685159834_))
                                                        (___match162583162584_
                                                         _e159675159787_
                                                         _hd159674159791_
                                                         _tl159673159794_
                                                         _e159678159797_
                                                         _hd159677159801_
                                                         _tl159676159804_
                                                         _e159681159807_
                                                         _hd159680159811_
                                                         _tl159679159814_
                                                         _e159684159817_
                                                         _hd159683159821_
                                                         _tl159682159824_
                                                         _e159687159827_
                                                         _hd159686159831_
                                                         _tl159685159834_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159667159709_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159682159824_))
                                                    (___kont162549162550_
                                                     _hd159683159821_
                                                     _hd159680159811_
                                                     _hd159677159801_
                                                     _hd159674159791_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159667159709_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g159667159709_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g159667159709_)))))
                        (let () (declare (not safe)) (_g159667159709_)))))
                (let () (declare (not safe)) (_g159667159709_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159866_)
      (let* ((_g159870159905_
              (lambda (_g159871159901_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159871159901_))))
             (_g159869160024_
              (lambda (_g159871159909_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159871159909_))
                    (let ((_e159877159912_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159871159909_))))
                      (let ((_hd159876159916_
                             (let ()
                               (declare (not safe))
                               (##car _e159877159912_)))
                            (_tl159875159919_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159877159912_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159875159919_))
                            (let ((_g163013_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159875159919_
                                      '0))))
                              (begin
                                (let ((_g163014_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163013_)
                                             (##vector-length _g163013_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163014_ 2)))
                                      (error "Context expects 2 values"
                                             _g163014_)))
                                (let ((_target159878159922_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163013_ 0)))
                                      (_tl159880159925_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163013_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159880159925_))
                                      (letrec ((_loop159881159928_
                                                (lambda (_hd159879159932_
                                                         _symbol159885159935_
                                                         _method159886159937_
                                                         _type-t159887159939_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159879159932_))
                                                      (let ((_e159882159942_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159879159932_))))
                (let ((_lp-hd159883159946_
                       (let () (declare (not safe)) (##car _e159882159942_)))
                      (_lp-tl159884159949_
                       (let () (declare (not safe)) (##cdr _e159882159942_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159883159946_))
                      (let ((_e159893159952_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159883159946_))))
                        (let ((_hd159892159956_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159893159952_)))
                              (_tl159891159959_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159893159952_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159891159959_))
                              (let ((_e159896159962_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159891159959_))))
                                (let ((_hd159895159966_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159896159962_)))
                                      (_tl159894159969_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159896159962_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159894159969_))
                                      (let ((_e159899159972_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159894159969_))))
                                        (let ((_hd159898159976_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159899159972_)))
                                              (_tl159897159979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159899159972_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159897159979_))
                                              (_loop159881159928_
                                               _lp-tl159884159949_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159898159976_
                                                       _symbol159885159935_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159895159966_
                                                       _method159886159937_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159892159956_
                                                       _type-t159887159939_)))
                                              (_g159870159905_
                                               _g159871159909_))))
                                      (_g159870159905_ _g159871159909_))))
                              (_g159870159905_ _g159871159909_))))
                      (_g159870159905_ _g159871159909_))))
              (let ((_symbol159888159982_ (reverse _symbol159885159935_))
                    (_method159889159985_ (reverse _method159886159937_))
                    (_type-t159890159987_ (reverse _type-t159887159939_)))
                ((lambda (_L159990_ _L159992_ _L159993_)
                   (let ((__tmp163022
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163015
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159990_
                               _L159992_
                               _L159993_))
                            (let ((__tmp163016
                                   (lambda (_g160009160014_
                                            _g160010160017_
                                            _g160011160019_
                                            _g160012160021_)
                                     (let ((__tmp163017
                                            (let ((__tmp163021
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp163018
                                                   (let ((__tmp163019
                                                          (let ((__tmp163020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g160009160014_ '()))))
                    (declare (not safe))
                    (cons _g160010160017_ __tmp163020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160011160019_
                                                           __tmp163019))))
                                              (declare (not safe))
                                              (cons __tmp163021 __tmp163018))))
                                       (declare (not safe))
                                       (cons __tmp163017 _g160012160021_)))))
                              (declare (not safe))
                              (foldr* __tmp163016
                                      '()
                                      _L159990_
                                      _L159992_
                                      _L159993_)))))
                     (declare (not safe))
                     (cons __tmp163022 __tmp163015)))
                 _symbol159888159982_
                 _method159889159985_
                 _type-t159890159987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159881159928_
                                         _target159878159922_
                                         '()
                                         '()
                                         '()))
                                      (_g159870159905_ _g159871159909_)))))
                            (_g159870159905_ _g159871159909_))))
                    (_g159870159905_ _g159871159909_)))))
        (_g159869160024_ _$stx159866_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx160029_)
      (let* ((_g160033160066_
              (lambda (_g160034160062_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160034160062_))))
             (_g160032160180_
              (lambda (_g160034160070_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160034160070_))
                    (let ((_e160040160073_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160034160070_))))
                      (let ((_hd160039160077_
                             (let ()
                               (declare (not safe))
                               (##car _e160040160073_)))
                            (_tl160038160080_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160040160073_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160038160080_))
                            (let ((_e160043160083_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160038160080_))))
                              (let ((_hd160042160087_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160043160083_)))
                                    (_tl160041160090_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160043160083_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160041160090_))
                                    (let ((_g163023_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160041160090_
                                              '0))))
                                      (begin
                                        (let ((_g163024_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g163023_)
                                                     (##vector-length
                                                      _g163023_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g163024_ 2)))
                                              (error "Context expects 2 values"
                                                     _g163024_)))
                                        (let ((_target160044160093_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163023_ 0)))
                                              (_tl160046160096_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163023_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160046160096_))
                                              (letrec ((_loop160047160099_
                                                        (lambda (_hd160045160103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol160051160106_
                         _method160052160108_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd160045160103_))
                      (let ((_e160048160111_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd160045160103_))))
                        (let ((_lp-hd160049160115_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160048160111_)))
                              (_lp-tl160050160118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160048160111_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd160049160115_))
                              (let ((_e160057160121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd160049160115_))))
                                (let ((_hd160056160125_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160057160121_)))
                                      (_tl160055160128_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160057160121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160055160128_))
                                      (let ((_e160060160131_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160055160128_))))
                                        (let ((_hd160059160135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160060160131_)))
                                              (_tl160058160138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160060160131_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160058160138_))
                                              (_loop160047160099_
                                               _lp-tl160050160118_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160059160135_
                                                       _symbol160051160106_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160056160125_
                                                       _method160052160108_)))
                                              (_g160033160066_
                                               _g160034160070_))))
                                      (_g160033160066_ _g160034160070_))))
                              (_g160033160066_ _g160034160070_))))
                      (let ((_symbol160053160141_
                             (reverse _symbol160051160106_))
                            (_method160054160144_
                             (reverse _method160052160108_)))
                        ((lambda (_L160147_ _L160149_ _L160150_)
                           (let ((__tmp163032
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp163025
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L160147_
                                       _L160149_))
                                    (let ((__tmp163026
                                           (lambda (_g160168160172_
                                                    _g160169160175_
                                                    _g160170160177_)
                                             (let ((__tmp163027
                                                    (let ((__tmp163031
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp163028
                                                           (let ((__tmp163029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp163030
                                 (let ()
                                   (declare (not safe))
                                   (cons _g160168160172_ '()))))
                            (declare (not safe))
                            (cons _g160169160175_ __tmp163030))))
                     (declare (not safe))
                     (cons _L160150_ __tmp163029))))
              (declare (not safe))
              (cons __tmp163031 __tmp163028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163027
                                                     _g160170160177_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp163026
                                              '()
                                              _L160147_
                                              _L160149_)))))
                             (declare (not safe))
                             (cons __tmp163032 __tmp163025)))
                         _symbol160053160141_
                         _method160054160144_
                         _hd160042160087_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop160047160099_
                                                 _target160044160093_
                                                 '()
                                                 '()))
                                              (_g160033160066_
                                               _g160034160070_)))))
                                    (_g160033160066_ _g160034160070_))))
                            (_g160033160066_ _g160034160070_))))
                    (_g160033160066_ _g160034160070_)))))
        (_g160032160180_ _$stx160029_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx160185_)
      (let* ((_g160189160203_
              (lambda (_g160190160199_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160190160199_))))
             (_g160188160244_
              (lambda (_g160190160207_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160190160207_))
                    (let ((_e160194160210_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160190160207_))))
                      (let ((_hd160193160214_
                             (let ()
                               (declare (not safe))
                               (##car _e160194160210_)))
                            (_tl160192160217_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160194160210_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160192160217_))
                            (let ((_e160197160220_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160192160217_))))
                              (let ((_hd160196160224_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160197160220_)))
                                    (_tl160195160227_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160197160220_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160195160227_))
                                    ((lambda (_L160230_)
                                       (let ((__tmp163037
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp163033
                                              (let ((__tmp163034
                                                     (let ((__tmp163036
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163035
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163036 __tmp163035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163034 '()))))
                                         (declare (not safe))
                                         (cons __tmp163037 __tmp163033)))
                                     _hd160196160224_)
                                    (_g160189160203_ _g160190160207_))))
                            (_g160189160203_ _g160190160207_))))
                    (_g160189160203_ _g160190160207_)))))
        (_g160188160244_ _$stx160185_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx160248_)
      (let* ((_g160252160302_
              (lambda (_g160253160298_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160253160298_))))
             (_g160251160469_
              (lambda (_g160253160306_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160253160306_))
                    (let ((_e160266160309_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160253160306_))))
                      (let ((_hd160265160313_
                             (let ()
                               (declare (not safe))
                               (##car _e160266160309_)))
                            (_tl160264160316_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160266160309_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160264160316_))
                            (let ((_e160269160319_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160264160316_))))
                              (let ((_hd160268160323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160269160319_)))
                                    (_tl160267160326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160269160319_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160267160326_))
                                    (let ((_e160272160329_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160267160326_))))
                                      (let ((_hd160271160333_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160272160329_)))
                                            (_tl160270160336_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160272160329_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160270160336_))
                                            (let ((_e160275160339_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160270160336_))))
                                              (let ((_hd160274160343_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160275160339_)))
                                                    (_tl160273160346_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160275160339_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160273160346_))
                                                    (let ((_e160278160349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160273160346_))))
                                                      (let ((_hd160277160353_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e160278160349_)))
                    (_tl160276160356_
                     (let () (declare (not safe)) (##cdr _e160278160349_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl160276160356_))
                    (let ((_e160281160359_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl160276160356_))))
                      (let ((_hd160280160363_
                             (let ()
                               (declare (not safe))
                               (##car _e160281160359_)))
                            (_tl160279160366_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160281160359_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160279160366_))
                            (let ((_e160284160369_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160279160366_))))
                              (let ((_hd160283160373_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160284160369_)))
                                    (_tl160282160376_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160284160369_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160282160376_))
                                    (let ((_e160287160379_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160282160376_))))
                                      (let ((_hd160286160383_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160287160379_)))
                                            (_tl160285160386_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160287160379_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160285160386_))
                                            (let ((_e160290160389_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160285160386_))))
                                              (let ((_hd160289160393_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160290160389_)))
                                                    (_tl160288160396_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160290160389_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160288160396_))
                                                    (let ((_e160293160399_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160288160396_))))
                                                      (let ((_hd160292160403_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e160293160399_)))
                    (_tl160291160406_
                     (let () (declare (not safe)) (##cdr _e160293160399_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl160291160406_))
                    (let ((_e160296160409_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl160291160406_))))
                      (let ((_hd160295160413_
                             (let ()
                               (declare (not safe))
                               (##car _e160296160409_)))
                            (_tl160294160416_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160296160409_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl160294160416_))
                            ((lambda (_L160419_
                                      _L160421_
                                      _L160422_
                                      _L160423_
                                      _L160424_
                                      _L160425_
                                      _L160426_
                                      _L160427_
                                      _L160428_
                                      _L160429_)
                               (let ((__tmp163072
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp163038
                                      (let ((__tmp163069
                                             (let ((__tmp163071
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163070
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160429_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163071 __tmp163070)))
                                            (__tmp163039
                                             (let ((__tmp163066
                                                    (let ((__tmp163068
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp163067
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L160428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp163068 __tmp163067)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp163040
                                                    (let ((__tmp163063
                                                           (let ((__tmp163065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp163064
                          (let () (declare (not safe)) (cons _L160427_ '()))))
                     (declare (not safe))
                     (cons __tmp163065 __tmp163064)))
                  (__tmp163041
                   (let ((__tmp163060
                          (let ((__tmp163062
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp163061
                                 (let ()
                                   (declare (not safe))
                                   (cons _L160426_ '()))))
                            (declare (not safe))
                            (cons __tmp163062 __tmp163061)))
                         (__tmp163042
                          (let ((__tmp163057
                                 (let ((__tmp163059
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp163058
                                        (let ()
                                          (declare (not safe))
                                          (cons _L160425_ '()))))
                                   (declare (not safe))
                                   (cons __tmp163059 __tmp163058)))
                                (__tmp163043
                                 (let ((__tmp163054
                                        (let ((__tmp163056
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp163055
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L160424_ '()))))
                                          (declare (not safe))
                                          (cons __tmp163056 __tmp163055)))
                                       (__tmp163044
                                        (let ((__tmp163045
                                               (let ((__tmp163046
                                                      (let ((__tmp163051
                                                             (let ((__tmp163053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163052
                            (let ()
                              (declare (not safe))
                              (cons _L160421_ '()))))
                       (declare (not safe))
                       (cons __tmp163053 __tmp163052)))
                    (__tmp163047
                     (let ((__tmp163048
                            (let ((__tmp163050
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163049
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160419_ '()))))
                              (declare (not safe))
                              (cons __tmp163050 __tmp163049))))
                       (declare (not safe))
                       (cons __tmp163048 '()))))
                (declare (not safe))
                (cons __tmp163051 __tmp163047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L160422_
                                                       __tmp163046))))
                                          (declare (not safe))
                                          (cons _L160423_ __tmp163045))))
                                   (declare (not safe))
                                   (cons __tmp163054 __tmp163044))))
                            (declare (not safe))
                            (cons __tmp163057 __tmp163043))))
                     (declare (not safe))
                     (cons __tmp163060 __tmp163042))))
              (declare (not safe))
              (cons __tmp163063 __tmp163041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163066
                                                     __tmp163040))))
                                        (declare (not safe))
                                        (cons __tmp163069 __tmp163039))))
                                 (declare (not safe))
                                 (cons __tmp163072 __tmp163038)))
                             _hd160295160413_
                             _hd160292160403_
                             _hd160289160393_
                             _hd160286160383_
                             _hd160283160373_
                             _hd160280160363_
                             _hd160277160353_
                             _hd160274160343_
                             _hd160271160333_
                             _hd160268160323_)
                            (_g160252160302_ _g160253160306_))))
                    (_g160252160302_ _g160253160306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g160252160302_
                                                     _g160253160306_))))
                                            (_g160252160302_
                                             _g160253160306_))))
                                    (_g160252160302_ _g160253160306_))))
                            (_g160252160302_ _g160253160306_))))
                    (_g160252160302_ _g160253160306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g160252160302_
                                                     _g160253160306_))))
                                            (_g160252160302_
                                             _g160253160306_))))
                                    (_g160252160302_ _g160253160306_))))
                            (_g160252160302_ _g160253160306_))))
                    (_g160252160302_ _g160253160306_)))))
        (_g160251160469_ _$stx160248_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx160473_)
      (let* ((_g160477160491_
              (lambda (_g160478160487_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160478160487_))))
             (_g160476160532_
              (lambda (_g160478160495_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160478160495_))
                    (let ((_e160482160498_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160478160495_))))
                      (let ((_hd160481160502_
                             (let ()
                               (declare (not safe))
                               (##car _e160482160498_)))
                            (_tl160480160505_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160482160498_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160480160505_))
                            (let ((_e160485160508_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160480160505_))))
                              (let ((_hd160484160512_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160485160508_)))
                                    (_tl160483160515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160485160508_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160483160515_))
                                    ((lambda (_L160518_)
                                       (let ((__tmp163077
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp163073
                                              (let ((__tmp163074
                                                     (let ((__tmp163076
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163075
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163076 __tmp163075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163074 '()))))
                                         (declare (not safe))
                                         (cons __tmp163077 __tmp163073)))
                                     _hd160484160512_)
                                    (_g160477160491_ _g160478160495_))))
                            (_g160477160491_ _g160478160495_))))
                    (_g160477160491_ _g160478160495_)))))
        (_g160476160532_ _$stx160473_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx160536_)
      (let* ((_g160540160554_
              (lambda (_g160541160550_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160541160550_))))
             (_g160539160595_
              (lambda (_g160541160558_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160541160558_))
                    (let ((_e160545160561_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160541160558_))))
                      (let ((_hd160544160565_
                             (let ()
                               (declare (not safe))
                               (##car _e160545160561_)))
                            (_tl160543160568_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160545160561_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160543160568_))
                            (let ((_e160548160571_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160543160568_))))
                              (let ((_hd160547160575_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160548160571_)))
                                    (_tl160546160578_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160548160571_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160546160578_))
                                    ((lambda (_L160581_)
                                       (let ((__tmp163082
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp163078
                                              (let ((__tmp163079
                                                     (let ((__tmp163081
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163080
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163081 __tmp163080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163079 '()))))
                                         (declare (not safe))
                                         (cons __tmp163082 __tmp163078)))
                                     _hd160547160575_)
                                    (_g160540160554_ _g160541160558_))))
                            (_g160540160554_ _g160541160558_))))
                    (_g160540160554_ _g160541160558_)))))
        (_g160539160595_ _$stx160536_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx160599_)
      (let* ((_g160603160625_
              (lambda (_g160604160621_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160604160621_))))
             (_g160602160694_
              (lambda (_g160604160629_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160604160629_))
                    (let ((_e160610160632_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160604160629_))))
                      (let ((_hd160609160636_
                             (let ()
                               (declare (not safe))
                               (##car _e160610160632_)))
                            (_tl160608160639_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160610160632_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160608160639_))
                            (let ((_e160613160642_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160608160639_))))
                              (let ((_hd160612160646_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160613160642_)))
                                    (_tl160611160649_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160613160642_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160611160649_))
                                    (let ((_e160616160652_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160611160649_))))
                                      (let ((_hd160615160656_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160616160652_)))
                                            (_tl160614160659_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160616160652_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160614160659_))
                                            (let ((_e160619160662_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160614160659_))))
                                              (let ((_hd160618160666_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160619160662_)))
                                                    (_tl160617160669_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160619160662_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160617160669_))
                                                    ((lambda (_L160672_
                                                              _L160674_
                                                              _L160675_)
                                                       (let ((__tmp163092
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp163083
                      (let ((__tmp163089
                             (let ((__tmp163091
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163090
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160675_ '()))))
                               (declare (not safe))
                               (cons __tmp163091 __tmp163090)))
                            (__tmp163084
                             (let ((__tmp163086
                                    (let ((__tmp163088
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163087
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160674_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163088 __tmp163087)))
                                   (__tmp163085
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160672_ '()))))
                               (declare (not safe))
                               (cons __tmp163086 __tmp163085))))
                        (declare (not safe))
                        (cons __tmp163089 __tmp163084))))
                 (declare (not safe))
                 (cons __tmp163092 __tmp163083)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160618160666_
                                                     _hd160615160656_
                                                     _hd160612160646_)
                                                    (_g160603160625_
                                                     _g160604160629_))))
                                            (_g160603160625_
                                             _g160604160629_))))
                                    (_g160603160625_ _g160604160629_))))
                            (_g160603160625_ _g160604160629_))))
                    (_g160603160625_ _g160604160629_)))))
        (_g160602160694_ _$stx160599_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx160698_)
      (let* ((_g160702160724_
              (lambda (_g160703160720_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160703160720_))))
             (_g160701160793_
              (lambda (_g160703160728_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160703160728_))
                    (let ((_e160709160731_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160703160728_))))
                      (let ((_hd160708160735_
                             (let ()
                               (declare (not safe))
                               (##car _e160709160731_)))
                            (_tl160707160738_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160709160731_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160707160738_))
                            (let ((_e160712160741_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160707160738_))))
                              (let ((_hd160711160745_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160712160741_)))
                                    (_tl160710160748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160712160741_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160710160748_))
                                    (let ((_e160715160751_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160710160748_))))
                                      (let ((_hd160714160755_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160715160751_)))
                                            (_tl160713160758_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160715160751_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160713160758_))
                                            (let ((_e160718160761_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160713160758_))))
                                              (let ((_hd160717160765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160718160761_)))
                                                    (_tl160716160768_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160718160761_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160716160768_))
                                                    ((lambda (_L160771_
                                                              _L160773_
                                                              _L160774_)
                                                       (let ((__tmp163102
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp163093
                      (let ((__tmp163099
                             (let ((__tmp163101
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163100
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160774_ '()))))
                               (declare (not safe))
                               (cons __tmp163101 __tmp163100)))
                            (__tmp163094
                             (let ((__tmp163096
                                    (let ((__tmp163098
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163097
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160773_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163098 __tmp163097)))
                                   (__tmp163095
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160771_ '()))))
                               (declare (not safe))
                               (cons __tmp163096 __tmp163095))))
                        (declare (not safe))
                        (cons __tmp163099 __tmp163094))))
                 (declare (not safe))
                 (cons __tmp163102 __tmp163093)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160717160765_
                                                     _hd160714160755_
                                                     _hd160711160745_)
                                                    (_g160702160724_
                                                     _g160703160728_))))
                                            (_g160702160724_
                                             _g160703160728_))))
                                    (_g160702160724_ _g160703160728_))))
                            (_g160702160724_ _g160703160728_))))
                    (_g160702160724_ _g160703160728_)))))
        (_g160701160793_ _$stx160698_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160797_)
      (let* ((___stx162612162613_ _$stx160797_)
             (_g160805160873_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162612162613_)))))
        (let ((___kont162615162616_
               (lambda (_L161151_ _L161153_)
                 (let ((__tmp163123
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp163103
                        (let ((__tmp163119
                               (let ((__tmp163122
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163120
                                      (let ((__tmp163121
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163121 '()))))
                                 (declare (not safe))
                                 (cons __tmp163122 __tmp163120)))
                              (__tmp163104
                               (let ((__tmp163116
                                      (let ((__tmp163118
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163117
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161153_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163118 __tmp163117)))
                                     (__tmp163105
                                      (let ((__tmp163106
                                             (let ((__tmp163107
                                                    (let ((__tmp163108
                                                           (let ((__tmp163115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp163109
                          (let ((__tmp163110
                                 (let ((__tmp163114
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp163111
                                        (let ((__tmp163112
                                               (let ((__tmp163113
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L161151_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp163113))))
                                          (declare (not safe))
                                          (cons _L161153_ __tmp163112))))
                                   (declare (not safe))
                                   (cons __tmp163114 __tmp163111))))
                            (declare (not safe))
                            (cons __tmp163110 '()))))
                     (declare (not safe))
                     (cons __tmp163115 __tmp163109))))
              (declare (not safe))
              (cons __tmp163108 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L161151_ __tmp163107))))
                                        (declare (not safe))
                                        (cons '#f __tmp163106))))
                                 (declare (not safe))
                                 (cons __tmp163116 __tmp163105))))
                          (declare (not safe))
                          (cons __tmp163119 __tmp163104))))
                   (declare (not safe))
                   (cons __tmp163123 __tmp163103))))
              (___kont162617162618_
               (lambda (_L161082_ _L161084_)
                 (let ((__tmp163124
                        (let ((__tmp163125
                               (let ((__tmp163126
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L161082_ __tmp163126))))
                          (declare (not safe))
                          (cons 'primitive: __tmp163125))))
                   (declare (not safe))
                   (cons _L161084_ __tmp163124))))
              (___kont162619162620_
               (lambda (_L161021_ _L161023_)
                 (let ((__tmp163140
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp163127
                        (let ((__tmp163136
                               (let ((__tmp163139
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163137
                                      (let ((__tmp163138
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163138 '()))))
                                 (declare (not safe))
                                 (cons __tmp163139 __tmp163137)))
                              (__tmp163128
                               (let ((__tmp163133
                                      (let ((__tmp163135
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163134
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161023_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163135 __tmp163134)))
                                     (__tmp163129
                                      (let ((__tmp163130
                                             (let ((__tmp163132
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163131
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161021_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163132
                                                     __tmp163131))))
                                        (declare (not safe))
                                        (cons __tmp163130 '()))))
                                 (declare (not safe))
                                 (cons __tmp163133 __tmp163129))))
                          (declare (not safe))
                          (cons __tmp163136 __tmp163128))))
                   (declare (not safe))
                   (cons __tmp163140 __tmp163127))))
              (___kont162621162622_
               (lambda (_L160953_ _L160955_)
                 (let ((__tmp163154
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp163141
                        (let ((__tmp163150
                               (let ((__tmp163153
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163151
                                      (let ((__tmp163152
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163152 '()))))
                                 (declare (not safe))
                                 (cons __tmp163153 __tmp163151)))
                              (__tmp163142
                               (let ((__tmp163147
                                      (let ((__tmp163149
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163148
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160955_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163149 __tmp163148)))
                                     (__tmp163143
                                      (let ((__tmp163144
                                             (let ((__tmp163146
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163145
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160953_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163146
                                                     __tmp163145))))
                                        (declare (not safe))
                                        (cons __tmp163144 '()))))
                                 (declare (not safe))
                                 (cons __tmp163147 __tmp163143))))
                          (declare (not safe))
                          (cons __tmp163150 __tmp163142))))
                   (declare (not safe))
                   (cons __tmp163154 __tmp163141))))
              (___kont162623162624_
               (lambda (_L160900_ _L160902_)
                 (let ((__tmp163155
                        (let ((__tmp163156
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160900_ __tmp163156))))
                   (declare (not safe))
                   (cons _L160902_ __tmp163155)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx162612162613_))
              (let ((_e160811161107_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx162612162613_))))
                (let ((_tl160809161114_
                       (let () (declare (not safe)) (##cdr _e160811161107_)))
                      (_hd160810161111_
                       (let () (declare (not safe)) (##car _e160811161107_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160809161114_))
                      (let ((_e160814161117_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160809161114_))))
                        (let ((_tl160812161124_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160814161117_)))
                              (_hd160813161121_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160814161117_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160812161124_))
                              (let ((_e160817161127_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160812161124_))))
                                (let ((_tl160815161134_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160817161127_)))
                                      (_hd160816161131_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160817161127_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160816161131_))
                                      (let ((_e160818161137_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160816161131_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160818161137_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160815161134_))
                                                (let ((_e160821161141_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160815161134_))))
                                                  (let ((_tl160819161148_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160821161141_)))
                                                        (_hd160820161145_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160821161141_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160819161148_))
                                                        (___kont162615162616_
                                                         _hd160820161145_
                                                         _hd160813161121_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160813161121_))
                                                            (let ((_e160830161068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160813161121_))))
                      (declare (not safe))
                      (_g160805160873_))
                    (let () (declare (not safe)) (_g160805160873_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160813161121_))
                                                    (let ((_e160830161068_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160813161121_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160830161068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160815161134_))
                      (___kont162617162618_ _hd160816161131_ _hd160810161111_)
                      (let () (declare (not safe)) (_g160805160873_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160815161134_))
                      (___kont162621162622_ _hd160816161131_ _hd160813161121_)
                      (let () (declare (not safe)) (_g160805160873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160815161134_))
                                                        (___kont162621162622_
                                                         _hd160816161131_
                                                         _hd160813161121_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160805160873_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160813161121_))
                                                (let ((_e160830161068_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160813161121_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160830161068_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160815161134_))
                                                          (___kont162617162618_
                                                           _hd160816161131_
                                                           _hd160810161111_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160815161134_))
                      (let ((_e160848161011_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160815161134_))))
                        (let ((_tl160846161018_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160848161011_)))
                              (_hd160847161015_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160848161011_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160846161018_))
                              (___kont162619162620_
                               _hd160847161015_
                               _hd160816161131_)
                              (let ()
                                (declare (not safe))
                                (_g160805160873_)))))
                      (let () (declare (not safe)) (_g160805160873_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160815161134_))
                  (___kont162621162622_ _hd160816161131_ _hd160813161121_)
                  (let () (declare (not safe)) (_g160805160873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160815161134_))
                                                    (___kont162621162622_
                                                     _hd160816161131_
                                                     _hd160813161121_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160805160873_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160813161121_))
                                          (let ((_e160830161068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160813161121_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160830161068_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160815161134_))
                                                    (___kont162617162618_
                                                     _hd160816161131_
                                                     _hd160810161111_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160815161134_))
                                                        (let ((_e160848161011_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160815161134_))))
                  (let ((_tl160846161018_
                         (let () (declare (not safe)) (##cdr _e160848161011_)))
                        (_hd160847161015_
                         (let ()
                           (declare (not safe))
                           (##car _e160848161011_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160846161018_))
                        (___kont162619162620_
                         _hd160847161015_
                         _hd160816161131_)
                        (let () (declare (not safe)) (_g160805160873_)))))
                (let () (declare (not safe)) (_g160805160873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160815161134_))
                                                    (___kont162621162622_
                                                     _hd160816161131_
                                                     _hd160813161121_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160805160873_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160815161134_))
                                              (___kont162621162622_
                                               _hd160816161131_
                                               _hd160813161121_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160805160873_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160813161121_))
                                  (let ((_e160830161068_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160813161121_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160812161124_))
                                        (___kont162623162624_
                                         _hd160813161121_
                                         _hd160810161111_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160805160873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160812161124_))
                                      (___kont162623162624_
                                       _hd160813161121_
                                       _hd160810161111_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160805160873_)))))))
                      (let () (declare (not safe)) (_g160805160873_)))))
              (let () (declare (not safe)) (_g160805160873_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx161175_)
      (let* ((___stx162752162753_ _$stx161175_)
             (_g161180161235_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162752162753_)))))
        (let ((___kont162755162756_
               (lambda (_L161420_ _L161422_)
                 (let ((__tmp163172
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp163157
                        (let ((__tmp163168
                               (let ((__tmp163171
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163169
                                      (let ((__tmp163170
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp163170 '()))))
                                 (declare (not safe))
                                 (cons __tmp163171 __tmp163169)))
                              (__tmp163158
                               (let ((__tmp163159
                                      (let ((__tmp163167
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp163160
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L161420_
                                                  _L161422_))
                                               (let ((__tmp163161
                                                      (lambda (_g161439161443_
                                                               _g161440161446_
                                                               _g161441161448_)
                                                        (let ((__tmp163162
                                                               (let ((__tmp163166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp163163
                              (let ((__tmp163164
                                     (let ((__tmp163165
                                            (let ()
                                              (declare (not safe))
                                              (cons _g161439161443_ '()))))
                                       (declare (not safe))
                                       (cons _g161440161446_ __tmp163165))))
                                (declare (not safe))
                                (cons 'primitive: __tmp163164))))
                         (declare (not safe))
                         (cons __tmp163166 __tmp163163))))
                  (declare (not safe))
                  (cons __tmp163162 _g161441161448_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp163161
                                                         '()
                                                         _L161420_
                                                         _L161422_)))))
                                        (declare (not safe))
                                        (cons __tmp163167 __tmp163160))))
                                 (declare (not safe))
                                 (cons __tmp163159 '()))))
                          (declare (not safe))
                          (cons __tmp163168 __tmp163158))))
                   (declare (not safe))
                   (cons __tmp163172 __tmp163157))))
              (___kont162759162760_
               (lambda (_L161306_ _L161308_)
                 (let ((__tmp163187
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp163173
                        (let ((__tmp163183
                               (let ((__tmp163186
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163184
                                      (let ((__tmp163185
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp163185 '()))))
                                 (declare (not safe))
                                 (cons __tmp163186 __tmp163184)))
                              (__tmp163174
                               (let ((__tmp163175
                                      (let ((__tmp163182
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp163176
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L161306_
                                                  _L161308_))
                                               (let ((__tmp163177
                                                      (lambda (_g161323161327_
                                                               _g161324161330_
                                                               _g161325161332_)
                                                        (let ((__tmp163178
                                                               (let ((__tmp163181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp163179
                              (let ((__tmp163180
                                     (let ()
                                       (declare (not safe))
                                       (cons _g161323161327_ '()))))
                                (declare (not safe))
                                (cons _g161324161330_ __tmp163180))))
                         (declare (not safe))
                         (cons __tmp163181 __tmp163179))))
                  (declare (not safe))
                  (cons __tmp163178 _g161325161332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp163177
                                                         '()
                                                         _L161306_
                                                         _L161308_)))))
                                        (declare (not safe))
                                        (cons __tmp163182 __tmp163176))))
                                 (declare (not safe))
                                 (cons __tmp163175 '()))))
                          (declare (not safe))
                          (cons __tmp163183 __tmp163174))))
                   (declare (not safe))
                   (cons __tmp163187 __tmp163173)))))
          (let* ((___match162803162804_
                  (lambda (_e161212161242_
                           _hd161211161246_
                           _tl161210161249_
                           ___splice162761162762_
                           _target161213161252_
                           _tl161215161255_)
                    (letrec ((_loop161216161258_
                              (lambda (_hd161214161262_
                                       _dispatch161220161265_
                                       _arity161221161267_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161214161262_))
                                    (let ((_e161217161270_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161214161262_))))
                                      (let ((_lp-tl161219161277_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161217161270_)))
                                            (_lp-hd161218161274_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161217161270_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd161218161274_))
                                            (let ((_e161226161280_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd161218161274_))))
                                              (let ((_tl161224161287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161226161280_)))
                                                    (_hd161225161284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161226161280_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161224161287_))
                                                    (let ((_e161229161290_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161224161287_))))
                                                      (let ((_tl161227161297_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e161229161290_)))
                    (_hd161228161294_
                     (let () (declare (not safe)) (##car _e161229161290_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl161227161297_))
                    (_loop161216161258_
                     _lp-tl161219161277_
                     (let ()
                       (declare (not safe))
                       (cons _hd161228161294_ _dispatch161220161265_))
                     (let ()
                       (declare (not safe))
                       (cons _hd161225161284_ _arity161221161267_)))
                    (let () (declare (not safe)) (_g161180161235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161180161235_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161180161235_)))))
                                    (let ((_arity161223161303_
                                           (reverse _arity161221161267_))
                                          (_dispatch161222161300_
                                           (reverse _dispatch161220161265_)))
                                      (___kont162759162760_
                                       _dispatch161222161300_
                                       _arity161223161303_))))))
                      (_loop161216161258_ _target161213161252_ '() '()))))
                 (___match162795162796_
                  (lambda (_e161212161242_ _hd161211161246_ _tl161210161249_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl161210161249_))
                        (let ((___splice162761162762_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl161210161249_
                                  '0))))
                          (let ((_tl161215161255_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162761162762_ '1)))
                                (_target161213161252_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162761162762_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl161215161255_))
                                (___match162803162804_
                                 _e161212161242_
                                 _hd161211161246_
                                 _tl161210161249_
                                 ___splice162761162762_
                                 _target161213161252_
                                 _tl161215161255_)
                                (let ()
                                  (declare (not safe))
                                  (_g161180161235_)))))
                        (let () (declare (not safe)) (_g161180161235_)))))
                 (___match162789162790_
                  (lambda (_e161186161342_
                           _hd161185161346_
                           _tl161184161349_
                           _e161189161352_
                           _hd161188161356_
                           _tl161187161359_
                           _e161190161362_
                           ___splice162757162758_
                           _target161191161366_
                           _tl161193161369_)
                    (letrec ((_loop161194161372_
                              (lambda (_hd161192161376_
                                       _dispatch161198161379_
                                       _arity161199161381_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161192161376_))
                                    (let ((_e161195161384_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161192161376_))))
                                      (let ((_lp-tl161197161391_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161195161384_)))
                                            (_lp-hd161196161388_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161195161384_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd161196161388_))
                                            (let ((_e161204161394_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd161196161388_))))
                                              (let ((_tl161202161401_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161204161394_)))
                                                    (_hd161203161398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161204161394_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161202161401_))
                                                    (let ((_e161207161404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161202161401_))))
                                                      (let ((_tl161205161411_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e161207161404_)))
                    (_hd161206161408_
                     (let () (declare (not safe)) (##car _e161207161404_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl161205161411_))
                    (_loop161194161372_
                     _lp-tl161197161391_
                     (let ()
                       (declare (not safe))
                       (cons _hd161206161408_ _dispatch161198161379_))
                     (let ()
                       (declare (not safe))
                       (cons _hd161203161398_ _arity161199161381_)))
                    (___match162795162796_
                     _e161186161342_
                     _hd161185161346_
                     _tl161184161349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162795162796_
                                                     _e161186161342_
                                                     _hd161185161346_
                                                     _tl161184161349_))))
                                            (___match162795162796_
                                             _e161186161342_
                                             _hd161185161346_
                                             _tl161184161349_))))
                                    (let ((_arity161201161417_
                                           (reverse _arity161199161381_))
                                          (_dispatch161200161414_
                                           (reverse _dispatch161198161379_)))
                                      (___kont162755162756_
                                       _dispatch161200161414_
                                       _arity161201161417_))))))
                      (_loop161194161372_ _target161191161366_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162752162753_))
                (let ((_e161186161342_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162752162753_))))
                  (let ((_tl161184161349_
                         (let () (declare (not safe)) (##cdr _e161186161342_)))
                        (_hd161185161346_
                         (let ()
                           (declare (not safe))
                           (##car _e161186161342_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161184161349_))
                        (let ((_e161189161352_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161184161349_))))
                          (let ((_tl161187161359_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161189161352_)))
                                (_hd161188161356_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161189161352_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd161188161356_))
                                (let ((_e161190161362_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd161188161356_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e161190161362_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl161187161359_))
                                          (let ((___splice162757162758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl161187161359_
                                                    '0))))
                                            (let ((_tl161193161369_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162757162758_
                                                      '1)))
                                                  (_target161191161366_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162757162758_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161193161369_))
                                                  (___match162789162790_
                                                   _e161186161342_
                                                   _hd161185161346_
                                                   _tl161184161349_
                                                   _e161189161352_
                                                   _hd161188161356_
                                                   _tl161187161359_
                                                   _e161190161362_
                                                   ___splice162757162758_
                                                   _target161191161366_
                                                   _tl161193161369_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161184161349_))
                                                      (let ((___splice162761162762_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161184161349_ '0))))
                (let ((_tl161215161255_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162761162762_ '1)))
                      (_target161213161252_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162761162762_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161215161255_))
                      (___match162803162804_
                       _e161186161342_
                       _hd161185161346_
                       _tl161184161349_
                       ___splice162761162762_
                       _target161213161252_
                       _tl161215161255_)
                      (let () (declare (not safe)) (_g161180161235_)))))
              (let () (declare (not safe)) (_g161180161235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl161184161349_))
                                              (let ((___splice162761162762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl161184161349_
                                                        '0))))
                                                (let ((_tl161215161255_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162761162762_
                                                          '1)))
                                                      (_target161213161252_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162761162762_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl161215161255_))
                                                      (___match162803162804_
                                                       _e161186161342_
                                                       _hd161185161346_
                                                       _tl161184161349_
                                                       ___splice162761162762_
                                                       _target161213161252_
                                                       _tl161215161255_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g161180161235_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g161180161235_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl161184161349_))
                                          (let ((___splice162761162762_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl161184161349_
                                                    '0))))
                                            (let ((_tl161215161255_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162761162762_
                                                      '1)))
                                                  (_target161213161252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162761162762_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161215161255_))
                                                  (___match162803162804_
                                                   _e161186161342_
                                                   _hd161185161346_
                                                   _tl161184161349_
                                                   ___splice162761162762_
                                                   _target161213161252_
                                                   _tl161215161255_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g161180161235_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g161180161235_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161184161349_))
                                    (let ((___splice162761162762_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161184161349_
                                              '0))))
                                      (let ((_tl161215161255_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162761162762_
                                                '1)))
                                            (_target161213161252_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162761162762_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161215161255_))
                                            (___match162803162804_
                                             _e161186161342_
                                             _hd161185161346_
                                             _tl161184161349_
                                             ___splice162761162762_
                                             _target161213161252_
                                             _tl161215161255_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161180161235_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161180161235_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161184161349_))
                            (let ((___splice162761162762_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161184161349_
                                      '0))))
                              (let ((_tl161215161255_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162761162762_
                                        '1)))
                                    (_target161213161252_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162761162762_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161215161255_))
                                    (___match162803162804_
                                     _e161186161342_
                                     _hd161185161346_
                                     _tl161184161349_
                                     ___splice162761162762_
                                     _target161213161252_
                                     _tl161215161255_)
                                    (let ()
                                      (declare (not safe))
                                      (_g161180161235_)))))
                            (let () (declare (not safe)) (_g161180161235_))))))
                (let () (declare (not safe)) (_g161180161235_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx161457_)
      (let* ((_g161461161479_
              (lambda (_g161462161475_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161462161475_))))
             (_g161460161534_
              (lambda (_g161462161483_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161462161483_))
                    (let ((_e161467161486_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161462161483_))))
                      (let ((_hd161466161490_
                             (let ()
                               (declare (not safe))
                               (##car _e161467161486_)))
                            (_tl161465161493_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161467161486_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161465161493_))
                            (let ((_e161470161496_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161465161493_))))
                              (let ((_hd161469161500_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161470161496_)))
                                    (_tl161468161503_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161470161496_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161468161503_))
                                    (let ((_e161473161506_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161468161503_))))
                                      (let ((_hd161472161510_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161473161506_)))
                                            (_tl161471161513_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161473161506_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161471161513_))
                                            ((lambda (_L161516_ _L161518_)
                                               (let ((__tmp163201
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp163188
                                                      (let ((__tmp163197
                                                             (let ((__tmp163200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163198
                            (let ((__tmp163199
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp163199 '()))))
                       (declare (not safe))
                       (cons __tmp163200 __tmp163198)))
                    (__tmp163189
                     (let ((__tmp163194
                            (let ((__tmp163196
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163195
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161518_ '()))))
                              (declare (not safe))
                              (cons __tmp163196 __tmp163195)))
                           (__tmp163190
                            (let ((__tmp163191
                                   (let ((__tmp163193
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp163192
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161516_ '()))))
                                     (declare (not safe))
                                     (cons __tmp163193 __tmp163192))))
                              (declare (not safe))
                              (cons __tmp163191 '()))))
                       (declare (not safe))
                       (cons __tmp163194 __tmp163190))))
                (declare (not safe))
                (cons __tmp163197 __tmp163189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp163201
                                                       __tmp163188)))
                                             _hd161472161510_
                                             _hd161469161500_)
                                            (_g161461161479_
                                             _g161462161483_))))
                                    (_g161461161479_ _g161462161483_))))
                            (_g161461161479_ _g161462161483_))))
                    (_g161461161479_ _g161462161483_)))))
        (_g161460161534_ _$stx161457_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx161538_)
      (let* ((_g161542161560_
              (lambda (_g161543161556_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161543161556_))))
             (_g161541161615_
              (lambda (_g161543161564_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161543161564_))
                    (let ((_e161548161567_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161543161564_))))
                      (let ((_hd161547161571_
                             (let ()
                               (declare (not safe))
                               (##car _e161548161567_)))
                            (_tl161546161574_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161548161567_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161546161574_))
                            (let ((_e161551161577_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161546161574_))))
                              (let ((_hd161550161581_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161551161577_)))
                                    (_tl161549161584_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161551161577_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161549161584_))
                                    (let ((_e161554161587_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161549161584_))))
                                      (let ((_hd161553161591_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161554161587_)))
                                            (_tl161552161594_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161554161587_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161552161594_))
                                            ((lambda (_L161597_ _L161599_)
                                               (let ((__tmp163215
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp163202
                                                      (let ((__tmp163211
                                                             (let ((__tmp163214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163212
                            (let ((__tmp163213
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp163213 '()))))
                       (declare (not safe))
                       (cons __tmp163214 __tmp163212)))
                    (__tmp163203
                     (let ((__tmp163208
                            (let ((__tmp163210
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163209
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161599_ '()))))
                              (declare (not safe))
                              (cons __tmp163210 __tmp163209)))
                           (__tmp163204
                            (let ((__tmp163205
                                   (let ((__tmp163207
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp163206
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161597_ '()))))
                                     (declare (not safe))
                                     (cons __tmp163207 __tmp163206))))
                              (declare (not safe))
                              (cons __tmp163205 '()))))
                       (declare (not safe))
                       (cons __tmp163208 __tmp163204))))
                (declare (not safe))
                (cons __tmp163211 __tmp163203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp163215
                                                       __tmp163202)))
                                             _hd161553161591_
                                             _hd161550161581_)
                                            (_g161542161560_
                                             _g161543161564_))))
                                    (_g161542161560_ _g161543161564_))))
                            (_g161542161560_ _g161543161564_))))
                    (_g161542161560_ _g161543161564_)))))
        (_g161541161615_ _$stx161538_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx161619_)
      (let* ((___stx162806162807_ _$stx161619_)
             (_g161626161697_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162806162807_)))))
        (let ((___kont162809162810_
               (lambda (_L161988_ _L161990_)
                 (let ((__tmp163221
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163216
                        (let ((__tmp163217
                               (let ((__tmp163218
                                      (let ((__tmp163220
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163219
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161988_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163220 __tmp163219))))
                                 (declare (not safe))
                                 (cons __tmp163218 '()))))
                          (declare (not safe))
                          (cons _L161990_ __tmp163217))))
                   (declare (not safe))
                   (cons __tmp163221 __tmp163216))))
              (___kont162811162812_
               (lambda (_L161907_ _L161909_)
                 (let ((__tmp163230
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163222
                        (let ((__tmp163223
                               (let ((__tmp163224
                                      (let ((__tmp163229
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163225
                                             (let ((__tmp163226
                                                    (lambda (_g161928161931_
                                                             _g161929161934_)
                                                      (let ((__tmp163227
                                                             (let ((__tmp163228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161928161931_ __tmp163228))))
                (declare (not safe))
                (cons __tmp163227 _g161929161934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp163226
                                                       '()
                                                       _L161907_))))
                                        (declare (not safe))
                                        (cons __tmp163229 __tmp163225))))
                                 (declare (not safe))
                                 (cons __tmp163224 '()))))
                          (declare (not safe))
                          (cons _L161909_ __tmp163223))))
                   (declare (not safe))
                   (cons __tmp163230 __tmp163222))))
              (___kont162815162816_
               (lambda (_L161819_ _L161821_)
                 (let ((__tmp163237
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163231
                        (let ((__tmp163232
                               (let ((__tmp163233
                                      (let ((__tmp163236
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163234
                                             (let ((__tmp163235
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161819_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp163235))))
                                        (declare (not safe))
                                        (cons __tmp163236 __tmp163234))))
                                 (declare (not safe))
                                 (cons __tmp163233 '()))))
                          (declare (not safe))
                          (cons _L161821_ __tmp163232))))
                   (declare (not safe))
                   (cons __tmp163237 __tmp163231))))
              (___kont162817162818_
               (lambda (_L161754_ _L161756_)
                 (let ((__tmp163247
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163238
                        (let ((__tmp163239
                               (let ((__tmp163240
                                      (let ((__tmp163246
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163241
                                             (let ((__tmp163242
                                                    (let ((__tmp163243
                                                           (lambda (_g161773161776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161774161779_)
                     (let ((__tmp163244
                            (let ((__tmp163245
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161773161776_ __tmp163245))))
                       (declare (not safe))
                       (cons __tmp163244 _g161774161779_)))))
              (declare (not safe))
              (foldr1 __tmp163243 '() _L161754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp163242))))
                                        (declare (not safe))
                                        (cons __tmp163246 __tmp163241))))
                                 (declare (not safe))
                                 (cons __tmp163240 '()))))
                          (declare (not safe))
                          (cons _L161756_ __tmp163239))))
                   (declare (not safe))
                   (cons __tmp163247 __tmp163238)))))
          (let* ((___match162925162926_
                  (lambda (_e161679161704_
                           _hd161678161708_
                           _tl161677161711_
                           _e161682161714_
                           _hd161681161718_
                           _tl161680161721_
                           ___splice162819162820_
                           _target161683161724_
                           _tl161685161727_)
                    (letrec ((_loop161686161730_
                              (lambda (_hd161684161734_ _arity161690161737_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161684161734_))
                                    (let ((_e161687161740_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161684161734_))))
                                      (let ((_lp-tl161689161747_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161687161740_)))
                                            (_lp-hd161688161744_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161687161740_))))
                                        (_loop161686161730_
                                         _lp-tl161689161747_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161688161744_
                                                 _arity161690161737_)))))
                                    (let ((_arity161691161750_
                                           (reverse _arity161690161737_)))
                                      (___kont162817162818_
                                       _arity161691161750_
                                       _hd161681161718_))))))
                      (_loop161686161730_ _target161683161724_ '()))))
                 (___match162885162886_
                  (lambda (_e161647161843_
                           _hd161646161847_
                           _tl161645161850_
                           _e161650161853_
                           _hd161649161857_
                           _tl161648161860_
                           _e161653161863_
                           _hd161652161867_
                           _tl161651161870_
                           _e161654161873_
                           ___splice162813162814_
                           _target161655161877_
                           _tl161657161880_)
                    (letrec ((_loop161658161883_
                              (lambda (_hd161656161887_ _arity161662161890_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161656161887_))
                                    (let ((_e161659161893_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161656161887_))))
                                      (let ((_lp-tl161661161900_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161659161893_)))
                                            (_lp-hd161660161897_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161659161893_))))
                                        (_loop161658161883_
                                         _lp-tl161661161900_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161660161897_
                                                 _arity161662161890_)))))
                                    (let ((_arity161663161903_
                                           (reverse _arity161662161890_)))
                                      (___kont162811162812_
                                       _arity161663161903_
                                       _hd161649161857_))))))
                      (_loop161658161883_ _target161655161877_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162806162807_))
                (let ((_e161632161944_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162806162807_))))
                  (let ((_tl161630161951_
                         (let () (declare (not safe)) (##cdr _e161632161944_)))
                        (_hd161631161948_
                         (let ()
                           (declare (not safe))
                           (##car _e161632161944_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161630161951_))
                        (let ((_e161635161954_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161630161951_))))
                          (let ((_tl161633161961_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161635161954_)))
                                (_hd161634161958_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161635161954_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161633161961_))
                                (let ((_e161638161964_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161633161961_))))
                                  (let ((_tl161636161971_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161638161964_)))
                                        (_hd161637161968_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161638161964_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd161637161968_))
                                        (let ((_e161639161974_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd161637161968_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e161639161974_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161636161971_))
                                                  (let ((_e161642161978_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161636161971_))))
                                                    (let ((_tl161640161985_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161642161978_)))
                                                          (_hd161641161982_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161642161978_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161640161985_))
                                                          (___kont162809162810_
                                                           _hd161641161982_
                                                           _hd161634161958_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl161636161971_))
                      (let ((___splice162813162814_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161636161971_ '0))))
                        (let ((_tl161657161880_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162813162814_ '1)))
                              (_target161655161877_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162813162814_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161657161880_))
                              (___match162885162886_
                               _e161632161944_
                               _hd161631161948_
                               _tl161630161951_
                               _e161635161954_
                               _hd161634161958_
                               _tl161633161961_
                               _e161638161964_
                               _hd161637161968_
                               _tl161636161971_
                               _e161639161974_
                               ___splice162813162814_
                               _target161655161877_
                               _tl161657161880_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl161633161961_))
                                  (let ((___splice162819162820_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl161633161961_
                                            '0))))
                                    (let ((_tl161685161727_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162819162820_
                                              '1)))
                                          (_target161683161724_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162819162820_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl161685161727_))
                                          (___match162925162926_
                                           _e161632161944_
                                           _hd161631161948_
                                           _tl161630161951_
                                           _e161635161954_
                                           _hd161634161958_
                                           _tl161633161961_
                                           ___splice162819162820_
                                           _target161683161724_
                                           _tl161685161727_)
                                          (let ()
                                            (declare (not safe))
                                            (_g161626161697_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g161626161697_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl161633161961_))
                          (let ((___splice162819162820_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl161633161961_
                                    '0))))
                            (let ((_tl161685161727_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162819162820_ '1)))
                                  (_target161683161724_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162819162820_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161685161727_))
                                  (___match162925162926_
                                   _e161632161944_
                                   _hd161631161948_
                                   _tl161630161951_
                                   _e161635161954_
                                   _hd161634161958_
                                   _tl161633161961_
                                   ___splice162819162820_
                                   _target161683161724_
                                   _tl161685161727_)
                                  (let ()
                                    (declare (not safe))
                                    (_g161626161697_)))))
                          (let () (declare (not safe)) (_g161626161697_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161636161971_))
                                                      (let ((___splice162813162814_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161636161971_ '0))))
                (let ((_tl161657161880_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162813162814_ '1)))
                      (_target161655161877_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162813162814_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161657161880_))
                      (___match162885162886_
                       _e161632161944_
                       _hd161631161948_
                       _tl161630161951_
                       _e161635161954_
                       _hd161634161958_
                       _tl161633161961_
                       _e161638161964_
                       _hd161637161968_
                       _tl161636161971_
                       _e161639161974_
                       ___splice162813162814_
                       _target161655161877_
                       _tl161657161880_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl161636161971_))
                          (___kont162815162816_
                           _hd161637161968_
                           _hd161634161958_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161633161961_))
                              (let ((___splice162819162820_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161633161961_
                                        '0))))
                                (let ((_tl161685161727_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162819162820_
                                          '1)))
                                      (_target161683161724_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162819162820_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161685161727_))
                                      (___match162925162926_
                                       _e161632161944_
                                       _hd161631161948_
                                       _tl161630161951_
                                       _e161635161954_
                                       _hd161634161958_
                                       _tl161633161961_
                                       ___splice162819162820_
                                       _target161683161724_
                                       _tl161685161727_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161626161697_)))))
                              (let ()
                                (declare (not safe))
                                (_g161626161697_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161636161971_))
                  (___kont162815162816_ _hd161637161968_ _hd161634161958_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl161633161961_))
                      (let ((___splice162819162820_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161633161961_ '0))))
                        (let ((_tl161685161727_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162819162820_ '1)))
                              (_target161683161724_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162819162820_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161685161727_))
                              (___match162925162926_
                               _e161632161944_
                               _hd161631161948_
                               _tl161630161951_
                               _e161635161954_
                               _hd161634161958_
                               _tl161633161961_
                               ___splice162819162820_
                               _target161683161724_
                               _tl161685161727_)
                              (let ()
                                (declare (not safe))
                                (_g161626161697_)))))
                      (let () (declare (not safe)) (_g161626161697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161636161971_))
                                                  (___kont162815162816_
                                                   _hd161637161968_
                                                   _hd161634161958_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161633161961_))
                                                      (let ((___splice162819162820_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161633161961_ '0))))
                (let ((_tl161685161727_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162819162820_ '1)))
                      (_target161683161724_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162819162820_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161685161727_))
                      (___match162925162926_
                       _e161632161944_
                       _hd161631161948_
                       _tl161630161951_
                       _e161635161954_
                       _hd161634161958_
                       _tl161633161961_
                       ___splice162819162820_
                       _target161683161724_
                       _tl161685161727_)
                      (let () (declare (not safe)) (_g161626161697_)))))
              (let () (declare (not safe)) (_g161626161697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161636161971_))
                                            (___kont162815162816_
                                             _hd161637161968_
                                             _hd161634161958_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl161633161961_))
                                                (let ((___splice162819162820_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl161633161961_
                                                          '0))))
                                                  (let ((_tl161685161727_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162819162820_
                                                            '1)))
                                                        (_target161683161724_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162819162820_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161685161727_))
                                                        (___match162925162926_
                                                         _e161632161944_
                                                         _hd161631161948_
                                                         _tl161630161951_
                                                         _e161635161954_
                                                         _hd161634161958_
                                                         _tl161633161961_
                                                         ___splice162819162820_
                                                         _target161683161724_
                                                         _tl161685161727_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161626161697_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g161626161697_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161633161961_))
                                    (let ((___splice162819162820_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161633161961_
                                              '0))))
                                      (let ((_tl161685161727_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162819162820_
                                                '1)))
                                            (_target161683161724_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162819162820_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161685161727_))
                                            (___match162925162926_
                                             _e161632161944_
                                             _hd161631161948_
                                             _tl161630161951_
                                             _e161635161954_
                                             _hd161634161958_
                                             _tl161633161961_
                                             ___splice162819162820_
                                             _target161683161724_
                                             _tl161685161727_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161626161697_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161626161697_))))))
                        (let () (declare (not safe)) (_g161626161697_)))))
                (let () (declare (not safe)) (_g161626161697_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx162014_)
      (let* ((___stx162928162929_ _$stx162014_)
             (_g162019162054_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162928162929_)))))
        (let ((___kont162931162932_
               (lambda (_L162176_ _L162178_)
                 (let ((__tmp163253
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163248
                        (let ((__tmp163249
                               (let ((__tmp163250
                                      (let ((__tmp163252
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163251
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162176_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163252 __tmp163251))))
                                 (declare (not safe))
                                 (cons __tmp163250 '()))))
                          (declare (not safe))
                          (cons _L162178_ __tmp163249))))
                   (declare (not safe))
                   (cons __tmp163253 __tmp163248))))
              (___kont162933162934_
               (lambda (_L162111_ _L162113_)
                 (let ((__tmp163262
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163254
                        (let ((__tmp163255
                               (let ((__tmp163256
                                      (let ((__tmp163261
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163257
                                             (let ((__tmp163258
                                                    (lambda (_g162130162133_
                                                             _g162131162136_)
                                                      (let ((__tmp163259
                                                             (let ((__tmp163260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g162130162133_ __tmp163260))))
                (declare (not safe))
                (cons __tmp163259 _g162131162136_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp163258
                                                       '()
                                                       _L162111_))))
                                        (declare (not safe))
                                        (cons __tmp163261 __tmp163257))))
                                 (declare (not safe))
                                 (cons __tmp163256 '()))))
                          (declare (not safe))
                          (cons _L162113_ __tmp163255))))
                   (declare (not safe))
                   (cons __tmp163262 __tmp163254)))))
          (let ((___match162977162978_
                 (lambda (_e162036162061_
                          _hd162035162065_
                          _tl162034162068_
                          _e162039162071_
                          _hd162038162075_
                          _tl162037162078_
                          ___splice162935162936_
                          _target162040162081_
                          _tl162042162084_)
                   (letrec ((_loop162043162087_
                             (lambda (_hd162041162091_ _arity162047162094_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd162041162091_))
                                   (let ((_e162044162097_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd162041162091_))))
                                     (let ((_lp-tl162046162104_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e162044162097_)))
                                           (_lp-hd162045162101_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e162044162097_))))
                                       (_loop162043162087_
                                        _lp-tl162046162104_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd162045162101_
                                                _arity162047162094_)))))
                                   (let ((_arity162048162107_
                                          (reverse _arity162047162094_)))
                                     (___kont162933162934_
                                      _arity162048162107_
                                      _hd162038162075_))))))
                     (_loop162043162087_ _target162040162081_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162928162929_))
                (let ((_e162025162146_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162928162929_))))
                  (let ((_tl162023162153_
                         (let () (declare (not safe)) (##cdr _e162025162146_)))
                        (_hd162024162150_
                         (let ()
                           (declare (not safe))
                           (##car _e162025162146_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162023162153_))
                        (let ((_e162028162156_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162023162153_))))
                          (let ((_tl162026162163_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162028162156_)))
                                (_hd162027162160_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162028162156_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162026162163_))
                                (let ((_e162031162166_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162026162163_))))
                                  (let ((_tl162029162173_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162031162166_)))
                                        (_hd162030162170_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162031162166_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162029162173_))
                                        (___kont162931162932_
                                         _hd162030162170_
                                         _hd162027162160_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl162026162163_))
                                            (let ((___splice162935162936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl162026162163_
                                                      '0))))
                                              (let ((_tl162042162084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162935162936_
                                                        '1)))
                                                    (_target162040162081_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162935162936_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162042162084_))
                                                    (___match162977162978_
                                                     _e162025162146_
                                                     _hd162024162150_
                                                     _tl162023162153_
                                                     _e162028162156_
                                                     _hd162027162160_
                                                     _tl162026162163_
                                                     ___splice162935162936_
                                                     _target162040162081_
                                                     _tl162042162084_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162019162054_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162019162054_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162026162163_))
                                    (let ((___splice162935162936_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162026162163_
                                              '0))))
                                      (let ((_tl162042162084_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162935162936_
                                                '1)))
                                            (_target162040162081_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162935162936_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162042162084_))
                                            (___match162977162978_
                                             _e162025162146_
                                             _hd162024162150_
                                             _tl162023162153_
                                             _e162028162156_
                                             _hd162027162160_
                                             _tl162026162163_
                                             ___splice162935162936_
                                             _target162040162081_
                                             _tl162042162084_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162019162054_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162019162054_))))))
                        (let () (declare (not safe)) (_g162019162054_)))))
                (let () (declare (not safe)) (_g162019162054_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx162198_)
      (let* ((_g162202162237_
              (lambda (_g162203162233_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162203162233_))))
             (_g162201162365_
              (lambda (_g162203162241_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162203162241_))
                    (let ((_e162208162244_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162203162241_))))
                      (let ((_hd162207162248_
                             (let ()
                               (declare (not safe))
                               (##car _e162208162244_)))
                            (_tl162206162251_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162208162244_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162206162251_))
                            (let ((_g163263_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162206162251_
                                      '0))))
                              (begin
                                (let ((_g163264_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163263_)
                                             (##vector-length _g163263_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163264_ 2)))
                                      (error "Context expects 2 values"
                                             _g163264_)))
                                (let ((_target162209162254_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163263_ 0)))
                                      (_tl162211162257_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163263_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162211162257_))
                                      (letrec ((_loop162212162260_
                                                (lambda (_hd162210162264_
                                                         _arity162216162267_
                                                         _prim162217162269_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd162210162264_))
                                                      (let ((_e162213162272_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd162210162264_))))
                (let ((_lp-hd162214162276_
                       (let () (declare (not safe)) (##car _e162213162272_)))
                      (_lp-tl162215162279_
                       (let () (declare (not safe)) (##cdr _e162213162272_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd162214162276_))
                      (let ((_e162222162282_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd162214162276_))))
                        (let ((_hd162221162286_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162222162282_)))
                              (_tl162220162289_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162222162282_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162220162289_))
                              (let ((_g163273_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162220162289_
                                        '0))))
                                (begin
                                  (let ((_g163274_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g163273_)
                                               (##vector-length _g163273_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g163274_ 2)))
                                        (error "Context expects 2 values"
                                               _g163274_)))
                                  (let ((_target162223162292_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163273_ 0)))
                                        (_tl162225162295_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163273_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162225162295_))
                                        (letrec ((_loop162226162298_
                                                  (lambda (_hd162224162302_
                                                           _arity162230162305_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162224162302_))
                                                        (let ((_e162227162308_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162224162302_))))
                  (let ((_lp-hd162228162312_
                         (let () (declare (not safe)) (##car _e162227162308_)))
                        (_lp-tl162229162315_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162227162308_))))
                    (_loop162226162298_
                     _lp-tl162229162315_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd162228162312_ _arity162230162305_)))))
                (let ((_arity162231162318_ (reverse _arity162230162305_)))
                  (_loop162212162260_
                   _lp-tl162215162279_
                   (let ()
                     (declare (not safe))
                     (cons _arity162231162318_ _arity162216162267_))
                   (let ()
                     (declare (not safe))
                     (cons _hd162221162286_ _prim162217162269_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162226162298_
                                           _target162223162292_
                                           '()))
                                        (_g162202162237_ _g162203162241_)))))
                              (_g162202162237_ _g162203162241_))))
                      (_g162202162237_ _g162203162241_))))
              (let ((_arity162218162322_ (reverse _arity162216162267_))
                    (_prim162219162325_ (reverse _prim162217162269_)))
                ((lambda (_L162328_ _L162330_)
                   (let ((__tmp163272
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163265
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162328_
                               _L162330_))
                            (let ((__tmp163266
                                   (lambda (_g162345162351_
                                            _g162346162354_
                                            _g162347162356_)
                                     (let ((__tmp163267
                                            (let ((__tmp163271
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp163268
                                                   (let ((__tmp163269
                                                          (let ((__tmp163270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162348162359_ _g162349162362_)
                           (let ()
                             (declare (not safe))
                             (cons _g162348162359_ _g162349162362_)))))
                    (declare (not safe))
                    (foldr1 __tmp163270 '() _g162345162351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162346162354_
                                                           __tmp163269))))
                                              (declare (not safe))
                                              (cons __tmp163271 __tmp163268))))
                                       (declare (not safe))
                                       (cons __tmp163267 _g162347162356_)))))
                              (declare (not safe))
                              (foldr2 __tmp163266 '() _L162328_ _L162330_)))))
                     (declare (not safe))
                     (cons __tmp163272 __tmp163265)))
                 _arity162218162322_
                 _prim162219162325_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop162212162260_
                                         _target162209162254_
                                         '()
                                         '()))
                                      (_g162202162237_ _g162203162241_)))))
                            (_g162202162237_ _g162203162241_))))
                    (_g162202162237_ _g162203162241_)))))
        (_g162201162365_ _$stx162198_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx162371_)
      (let* ((_g162375162410_
              (lambda (_g162376162406_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162376162406_))))
             (_g162374162538_
              (lambda (_g162376162414_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162376162414_))
                    (let ((_e162381162417_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162376162414_))))
                      (let ((_hd162380162421_
                             (let ()
                               (declare (not safe))
                               (##car _e162381162417_)))
                            (_tl162379162424_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162381162417_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162379162424_))
                            (let ((_g163275_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162379162424_
                                      '0))))
                              (begin
                                (let ((_g163276_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163275_)
                                             (##vector-length _g163275_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163276_ 2)))
                                      (error "Context expects 2 values"
                                             _g163276_)))
                                (let ((_target162382162427_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163275_ 0)))
                                      (_tl162384162430_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163275_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162384162430_))
                                      (letrec ((_loop162385162433_
                                                (lambda (_hd162383162437_
                                                         _arity162389162440_
                                                         _prim162390162442_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd162383162437_))
                                                      (let ((_e162386162445_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd162383162437_))))
                (let ((_lp-hd162387162449_
                       (let () (declare (not safe)) (##car _e162386162445_)))
                      (_lp-tl162388162452_
                       (let () (declare (not safe)) (##cdr _e162386162445_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd162387162449_))
                      (let ((_e162395162455_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd162387162449_))))
                        (let ((_hd162394162459_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162395162455_)))
                              (_tl162393162462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162395162455_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162393162462_))
                              (let ((_g163285_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162393162462_
                                        '0))))
                                (begin
                                  (let ((_g163286_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g163285_)
                                               (##vector-length _g163285_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g163286_ 2)))
                                        (error "Context expects 2 values"
                                               _g163286_)))
                                  (let ((_target162396162465_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163285_ 0)))
                                        (_tl162398162468_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163285_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162398162468_))
                                        (letrec ((_loop162399162471_
                                                  (lambda (_hd162397162475_
                                                           _arity162403162478_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162397162475_))
                                                        (let ((_e162400162481_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162397162475_))))
                  (let ((_lp-hd162401162485_
                         (let () (declare (not safe)) (##car _e162400162481_)))
                        (_lp-tl162402162488_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162400162481_))))
                    (_loop162399162471_
                     _lp-tl162402162488_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd162401162485_ _arity162403162478_)))))
                (let ((_arity162404162491_ (reverse _arity162403162478_)))
                  (_loop162385162433_
                   _lp-tl162388162452_
                   (let ()
                     (declare (not safe))
                     (cons _arity162404162491_ _arity162389162440_))
                   (let ()
                     (declare (not safe))
                     (cons _hd162394162459_ _prim162390162442_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162399162471_
                                           _target162396162465_
                                           '()))
                                        (_g162375162410_ _g162376162414_)))))
                              (_g162375162410_ _g162376162414_))))
                      (_g162375162410_ _g162376162414_))))
              (let ((_arity162391162495_ (reverse _arity162389162440_))
                    (_prim162392162498_ (reverse _prim162390162442_)))
                ((lambda (_L162501_ _L162503_)
                   (let ((__tmp163284
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163277
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162501_
                               _L162503_))
                            (let ((__tmp163278
                                   (lambda (_g162518162524_
                                            _g162519162527_
                                            _g162520162529_)
                                     (let ((__tmp163279
                                            (let ((__tmp163283
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp163280
                                                   (let ((__tmp163281
                                                          (let ((__tmp163282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162521162532_ _g162522162535_)
                           (let ()
                             (declare (not safe))
                             (cons _g162521162532_ _g162522162535_)))))
                    (declare (not safe))
                    (foldr1 __tmp163282 '() _g162518162524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162519162527_
                                                           __tmp163281))))
                                              (declare (not safe))
                                              (cons __tmp163283 __tmp163280))))
                                       (declare (not safe))
                                       (cons __tmp163279 _g162520162529_)))))
                              (declare (not safe))
                              (foldr2 __tmp163278 '() _L162501_ _L162503_)))))
                     (declare (not safe))
                     (cons __tmp163284 __tmp163277)))
                 _arity162391162495_
                 _prim162392162498_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop162385162433_
                                         _target162382162427_
                                         '()
                                         '()))
                                      (_g162375162410_ _g162376162414_)))))
                            (_g162375162410_ _g162376162414_))))
                    (_g162375162410_ _g162376162414_)))))
        (_g162374162538_ _$stx162371_)))))
