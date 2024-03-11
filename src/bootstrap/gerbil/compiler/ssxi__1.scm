(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx159440_)
      (let* ((_g159444159462_
              (lambda (_g159445159458_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159445159458_))))
             (_g159443159517_
              (lambda (_g159445159466_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159445159466_))
                    (let ((_e159450159469_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159445159466_))))
                      (let ((_hd159449159473_
                             (let ()
                               (declare (not safe))
                               (##car _e159450159469_)))
                            (_tl159448159476_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159450159469_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159448159476_))
                            (let ((_e159453159479_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159448159476_))))
                              (let ((_hd159452159483_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159453159479_)))
                                    (_tl159451159486_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159453159479_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159451159486_))
                                    (let ((_e159456159489_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159451159486_))))
                                      (let ((_hd159455159493_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159456159489_)))
                                            (_tl159454159496_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159456159489_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159454159496_))
                                            ((lambda (_L159499_ _L159501_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L159501_))
                                                   (let ((__tmp162981
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp162976
                                                          (let ((__tmp162978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162980
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162979
                                (let ()
                                  (declare (not safe))
                                  (cons _L159501_ '()))))
                           (declare (not safe))
                           (cons __tmp162980 __tmp162979)))
                        (__tmp162977
                         (let () (declare (not safe)) (cons _L159499_ '()))))
                    (declare (not safe))
                    (cons __tmp162978 __tmp162977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162981
                                                           __tmp162976))
                                                   (_g159444159462_
                                                    _g159445159466_)))
                                             _hd159455159493_
                                             _hd159452159483_)
                                            (_g159444159462_
                                             _g159445159466_))))
                                    (_g159444159462_ _g159445159466_))))
                            (_g159444159462_ _g159445159466_))))
                    (_g159444159462_ _g159445159466_)))))
        (_g159443159517_ _$stx159440_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx159521_)
      (let* ((_g159525159554_
              (lambda (_g159526159550_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159526159550_))))
             (_g159524159654_
              (lambda (_g159526159558_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159526159558_))
                    (let ((_e159531159561_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159526159558_))))
                      (let ((_hd159530159565_
                             (let ()
                               (declare (not safe))
                               (##car _e159531159561_)))
                            (_tl159529159568_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159531159561_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159529159568_))
                            (let ((_g162982_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159529159568_
                                      '0))))
                              (begin
                                (let ((_g162983_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162982_)
                                             (##vector-length _g162982_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162983_ 2)))
                                      (error "Context expects 2 values"
                                             _g162983_)))
                                (let ((_target159532159571_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162982_ 0)))
                                      (_tl159534159574_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162982_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159534159574_))
                                      (letrec ((_loop159535159577_
                                                (lambda (_hd159533159581_
                                                         _type159539159584_
                                                         _symbol159540159586_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159533159581_))
                                                      (let ((_e159536159589_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159533159581_))))
                (let ((_lp-hd159537159593_
                       (let () (declare (not safe)) (##car _e159536159589_)))
                      (_lp-tl159538159596_
                       (let () (declare (not safe)) (##cdr _e159536159589_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159537159593_))
                      (let ((_e159545159599_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159537159593_))))
                        (let ((_hd159544159603_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159545159599_)))
                              (_tl159543159606_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159545159599_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159543159606_))
                              (let ((_e159548159609_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159543159606_))))
                                (let ((_hd159547159613_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159548159609_)))
                                      (_tl159546159616_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159548159609_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159546159616_))
                                      (_loop159535159577_
                                       _lp-tl159538159596_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159547159613_
                                               _type159539159584_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159544159603_
                                               _symbol159540159586_)))
                                      (_g159525159554_ _g159526159558_))))
                              (_g159525159554_ _g159526159558_))))
                      (_g159525159554_ _g159526159558_))))
              (let ((_type159541159619_ (reverse _type159539159584_))
                    (_symbol159542159622_ (reverse _symbol159540159586_)))
                ((lambda (_L159625_ _L159627_)
                   (let ((__tmp162990
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162984
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159625_
                               _L159627_))
                            (let ((__tmp162985
                                   (lambda (_g159642159646_
                                            _g159643159649_
                                            _g159644159651_)
                                     (let ((__tmp162986
                                            (let ((__tmp162989
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162987
                                                   (let ((__tmp162988
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g159642159646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159643159649_
                                                           __tmp162988))))
                                              (declare (not safe))
                                              (cons __tmp162989 __tmp162987))))
                                       (declare (not safe))
                                       (cons __tmp162986 _g159644159651_)))))
                              (declare (not safe))
                              (foldr2 __tmp162985 '() _L159625_ _L159627_)))))
                     (declare (not safe))
                     (cons __tmp162990 __tmp162984)))
                 _type159541159619_
                 _symbol159542159622_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159535159577_
                                         _target159532159571_
                                         '()
                                         '()))
                                      (_g159525159554_ _g159526159558_)))))
                            (_g159525159554_ _g159526159558_))))
                    (_g159525159554_ _g159526159558_)))))
        (_g159524159654_ _$stx159521_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx159659_)
      (let* ((___stx162541162542_ _$stx159659_)
             (_g159664159706_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162541162542_)))))
        (let ((___kont162544162545_
               (lambda (_L159834_ _L159836_ _L159837_ _L159838_)
                 (let ((__tmp163004
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162991
                        (let ((__tmp163001
                               (let ((__tmp163003
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163002
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159838_ '()))))
                                 (declare (not safe))
                                 (cons __tmp163003 __tmp163002)))
                              (__tmp162992
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
                                               (cons _L159837_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163000 __tmp162999)))
                                     (__tmp162993
                                      (let ((__tmp162995
                                             (let ((__tmp162997
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162996
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159836_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162997 __tmp162996)))
                                            (__tmp162994
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159834_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162995 __tmp162994))))
                                 (declare (not safe))
                                 (cons __tmp162998 __tmp162993))))
                          (declare (not safe))
                          (cons __tmp163001 __tmp162992))))
                   (declare (not safe))
                   (cons __tmp163004 __tmp162991))))
              (___kont162546162547_
               (lambda (_L159753_ _L159755_ _L159756_ _L159757_)
                 (let ((__tmp163005
                        (let ((__tmp163006
                               (let ((__tmp163007
                                      (let ((__tmp163008
                                             (let ((__tmp163009
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp163009 '()))))
                                        (declare (not safe))
                                        (cons _L159753_ __tmp163008))))
                                 (declare (not safe))
                                 (cons _L159755_ __tmp163007))))
                          (declare (not safe))
                          (cons _L159756_ __tmp163006))))
                   (declare (not safe))
                   (cons _L159757_ __tmp163005)))))
          (let ((___match162580162581_
                 (lambda (_e159672159784_
                          _hd159671159788_
                          _tl159670159791_
                          _e159675159794_
                          _hd159674159798_
                          _tl159673159801_
                          _e159678159804_
                          _hd159677159808_
                          _tl159676159811_
                          _e159681159814_
                          _hd159680159818_
                          _tl159679159821_
                          _e159684159824_
                          _hd159683159828_
                          _tl159682159831_)
                   (let ((_L159834_ _hd159683159828_)
                         (_L159836_ _hd159680159818_)
                         (_L159837_ _hd159677159808_)
                         (_L159838_ _hd159674159798_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159838_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159837_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159836_)))
                         (___kont162544162545_
                          _L159834_
                          _L159836_
                          _L159837_
                          _L159838_)
                         (let () (declare (not safe)) (_g159664159706_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162541162542_))
                (let ((_e159672159784_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162541162542_))))
                  (let ((_tl159670159791_
                         (let () (declare (not safe)) (##cdr _e159672159784_)))
                        (_hd159671159788_
                         (let ()
                           (declare (not safe))
                           (##car _e159672159784_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159670159791_))
                        (let ((_e159675159794_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159670159791_))))
                          (let ((_tl159673159801_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159675159794_)))
                                (_hd159674159798_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159675159794_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159673159801_))
                                (let ((_e159678159804_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159673159801_))))
                                  (let ((_tl159676159811_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159678159804_)))
                                        (_hd159677159808_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159678159804_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl159676159811_))
                                        (let ((_e159681159814_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl159676159811_))))
                                          (let ((_tl159679159821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e159681159814_)))
                                                (_hd159680159818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e159681159814_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159679159821_))
                                                (let ((_e159684159824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159679159821_))))
                                                  (let ((_tl159682159831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159684159824_)))
                                                        (_hd159683159828_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159684159824_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159682159831_))
                                                        (___match162580162581_
                                                         _e159672159784_
                                                         _hd159671159788_
                                                         _tl159670159791_
                                                         _e159675159794_
                                                         _hd159674159798_
                                                         _tl159673159801_
                                                         _e159678159804_
                                                         _hd159677159808_
                                                         _tl159676159811_
                                                         _e159681159814_
                                                         _hd159680159818_
                                                         _tl159679159821_
                                                         _e159684159824_
                                                         _hd159683159828_
                                                         _tl159682159831_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159664159706_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159679159821_))
                                                    (___kont162546162547_
                                                     _hd159680159818_
                                                     _hd159677159808_
                                                     _hd159674159798_
                                                     _hd159671159788_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159664159706_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g159664159706_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g159664159706_)))))
                        (let () (declare (not safe)) (_g159664159706_)))))
                (let () (declare (not safe)) (_g159664159706_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159863_)
      (let* ((_g159867159902_
              (lambda (_g159868159898_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159868159898_))))
             (_g159866160021_
              (lambda (_g159868159906_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159868159906_))
                    (let ((_e159874159909_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159868159906_))))
                      (let ((_hd159873159913_
                             (let ()
                               (declare (not safe))
                               (##car _e159874159909_)))
                            (_tl159872159916_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159874159909_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159872159916_))
                            (let ((_g163010_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159872159916_
                                      '0))))
                              (begin
                                (let ((_g163011_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163010_)
                                             (##vector-length _g163010_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163011_ 2)))
                                      (error "Context expects 2 values"
                                             _g163011_)))
                                (let ((_target159875159919_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163010_ 0)))
                                      (_tl159877159922_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163010_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159877159922_))
                                      (letrec ((_loop159878159925_
                                                (lambda (_hd159876159929_
                                                         _symbol159882159932_
                                                         _method159883159934_
                                                         _type-t159884159936_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159876159929_))
                                                      (let ((_e159879159939_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159876159929_))))
                (let ((_lp-hd159880159943_
                       (let () (declare (not safe)) (##car _e159879159939_)))
                      (_lp-tl159881159946_
                       (let () (declare (not safe)) (##cdr _e159879159939_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159880159943_))
                      (let ((_e159890159949_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159880159943_))))
                        (let ((_hd159889159953_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159890159949_)))
                              (_tl159888159956_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159890159949_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159888159956_))
                              (let ((_e159893159959_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159888159956_))))
                                (let ((_hd159892159963_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159893159959_)))
                                      (_tl159891159966_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159893159959_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159891159966_))
                                      (let ((_e159896159969_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159891159966_))))
                                        (let ((_hd159895159973_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159896159969_)))
                                              (_tl159894159976_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159896159969_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159894159976_))
                                              (_loop159878159925_
                                               _lp-tl159881159946_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159895159973_
                                                       _symbol159882159932_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159892159963_
                                                       _method159883159934_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159889159953_
                                                       _type-t159884159936_)))
                                              (_g159867159902_
                                               _g159868159906_))))
                                      (_g159867159902_ _g159868159906_))))
                              (_g159867159902_ _g159868159906_))))
                      (_g159867159902_ _g159868159906_))))
              (let ((_symbol159885159979_ (reverse _symbol159882159932_))
                    (_method159886159982_ (reverse _method159883159934_))
                    (_type-t159887159984_ (reverse _type-t159884159936_)))
                ((lambda (_L159987_ _L159989_ _L159990_)
                   (let ((__tmp163019
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163012
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159987_
                               _L159989_
                               _L159990_))
                            (let ((__tmp163013
                                   (lambda (_g160006160011_
                                            _g160007160014_
                                            _g160008160016_
                                            _g160009160018_)
                                     (let ((__tmp163014
                                            (let ((__tmp163018
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp163015
                                                   (let ((__tmp163016
                                                          (let ((__tmp163017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g160006160011_ '()))))
                    (declare (not safe))
                    (cons _g160007160014_ __tmp163017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160008160016_
                                                           __tmp163016))))
                                              (declare (not safe))
                                              (cons __tmp163018 __tmp163015))))
                                       (declare (not safe))
                                       (cons __tmp163014 _g160009160018_)))))
                              (declare (not safe))
                              (foldr* __tmp163013
                                      '()
                                      _L159987_
                                      _L159989_
                                      _L159990_)))))
                     (declare (not safe))
                     (cons __tmp163019 __tmp163012)))
                 _symbol159885159979_
                 _method159886159982_
                 _type-t159887159984_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159878159925_
                                         _target159875159919_
                                         '()
                                         '()
                                         '()))
                                      (_g159867159902_ _g159868159906_)))))
                            (_g159867159902_ _g159868159906_))))
                    (_g159867159902_ _g159868159906_)))))
        (_g159866160021_ _$stx159863_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx160026_)
      (let* ((_g160030160063_
              (lambda (_g160031160059_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160031160059_))))
             (_g160029160177_
              (lambda (_g160031160067_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160031160067_))
                    (let ((_e160037160070_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160031160067_))))
                      (let ((_hd160036160074_
                             (let ()
                               (declare (not safe))
                               (##car _e160037160070_)))
                            (_tl160035160077_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160037160070_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160035160077_))
                            (let ((_e160040160080_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160035160077_))))
                              (let ((_hd160039160084_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160040160080_)))
                                    (_tl160038160087_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160040160080_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160038160087_))
                                    (let ((_g163020_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160038160087_
                                              '0))))
                                      (begin
                                        (let ((_g163021_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g163020_)
                                                     (##vector-length
                                                      _g163020_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g163021_ 2)))
                                              (error "Context expects 2 values"
                                                     _g163021_)))
                                        (let ((_target160041160090_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163020_ 0)))
                                              (_tl160043160093_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163020_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160043160093_))
                                              (letrec ((_loop160044160096_
                                                        (lambda (_hd160042160100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol160048160103_
                         _method160049160105_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd160042160100_))
                      (let ((_e160045160108_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd160042160100_))))
                        (let ((_lp-hd160046160112_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160045160108_)))
                              (_lp-tl160047160115_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160045160108_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd160046160112_))
                              (let ((_e160054160118_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd160046160112_))))
                                (let ((_hd160053160122_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160054160118_)))
                                      (_tl160052160125_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160054160118_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160052160125_))
                                      (let ((_e160057160128_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160052160125_))))
                                        (let ((_hd160056160132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160057160128_)))
                                              (_tl160055160135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160057160128_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160055160135_))
                                              (_loop160044160096_
                                               _lp-tl160047160115_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160056160132_
                                                       _symbol160048160103_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160053160122_
                                                       _method160049160105_)))
                                              (_g160030160063_
                                               _g160031160067_))))
                                      (_g160030160063_ _g160031160067_))))
                              (_g160030160063_ _g160031160067_))))
                      (let ((_symbol160050160138_
                             (reverse _symbol160048160103_))
                            (_method160051160141_
                             (reverse _method160049160105_)))
                        ((lambda (_L160144_ _L160146_ _L160147_)
                           (let ((__tmp163029
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp163022
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L160144_
                                       _L160146_))
                                    (let ((__tmp163023
                                           (lambda (_g160165160169_
                                                    _g160166160172_
                                                    _g160167160174_)
                                             (let ((__tmp163024
                                                    (let ((__tmp163028
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp163025
                                                           (let ((__tmp163026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp163027
                                 (let ()
                                   (declare (not safe))
                                   (cons _g160165160169_ '()))))
                            (declare (not safe))
                            (cons _g160166160172_ __tmp163027))))
                     (declare (not safe))
                     (cons _L160147_ __tmp163026))))
              (declare (not safe))
              (cons __tmp163028 __tmp163025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163024
                                                     _g160167160174_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp163023
                                              '()
                                              _L160144_
                                              _L160146_)))))
                             (declare (not safe))
                             (cons __tmp163029 __tmp163022)))
                         _symbol160050160138_
                         _method160051160141_
                         _hd160039160084_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop160044160096_
                                                 _target160041160090_
                                                 '()
                                                 '()))
                                              (_g160030160063_
                                               _g160031160067_)))))
                                    (_g160030160063_ _g160031160067_))))
                            (_g160030160063_ _g160031160067_))))
                    (_g160030160063_ _g160031160067_)))))
        (_g160029160177_ _$stx160026_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx160182_)
      (let* ((_g160186160200_
              (lambda (_g160187160196_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160187160196_))))
             (_g160185160241_
              (lambda (_g160187160204_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160187160204_))
                    (let ((_e160191160207_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160187160204_))))
                      (let ((_hd160190160211_
                             (let ()
                               (declare (not safe))
                               (##car _e160191160207_)))
                            (_tl160189160214_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160191160207_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160189160214_))
                            (let ((_e160194160217_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160189160214_))))
                              (let ((_hd160193160221_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160194160217_)))
                                    (_tl160192160224_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160194160217_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160192160224_))
                                    ((lambda (_L160227_)
                                       (let ((__tmp163034
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp163030
                                              (let ((__tmp163031
                                                     (let ((__tmp163033
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163032
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163033 __tmp163032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163031 '()))))
                                         (declare (not safe))
                                         (cons __tmp163034 __tmp163030)))
                                     _hd160193160221_)
                                    (_g160186160200_ _g160187160204_))))
                            (_g160186160200_ _g160187160204_))))
                    (_g160186160200_ _g160187160204_)))))
        (_g160185160241_ _$stx160182_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx160245_)
      (let* ((_g160249160299_
              (lambda (_g160250160295_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160250160295_))))
             (_g160248160466_
              (lambda (_g160250160303_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160250160303_))
                    (let ((_e160263160306_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160250160303_))))
                      (let ((_hd160262160310_
                             (let ()
                               (declare (not safe))
                               (##car _e160263160306_)))
                            (_tl160261160313_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160263160306_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160261160313_))
                            (let ((_e160266160316_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160261160313_))))
                              (let ((_hd160265160320_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160266160316_)))
                                    (_tl160264160323_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160266160316_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160264160323_))
                                    (let ((_e160269160326_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160264160323_))))
                                      (let ((_hd160268160330_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160269160326_)))
                                            (_tl160267160333_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160269160326_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160267160333_))
                                            (let ((_e160272160336_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160267160333_))))
                                              (let ((_hd160271160340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160272160336_)))
                                                    (_tl160270160343_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160272160336_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160270160343_))
                                                    (let ((_e160275160346_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160270160343_))))
                                                      (let ((_hd160274160350_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e160275160346_)))
                    (_tl160273160353_
                     (let () (declare (not safe)) (##cdr _e160275160346_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl160273160353_))
                    (let ((_e160278160356_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl160273160353_))))
                      (let ((_hd160277160360_
                             (let ()
                               (declare (not safe))
                               (##car _e160278160356_)))
                            (_tl160276160363_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160278160356_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160276160363_))
                            (let ((_e160281160366_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160276160363_))))
                              (let ((_hd160280160370_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160281160366_)))
                                    (_tl160279160373_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160281160366_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160279160373_))
                                    (let ((_e160284160376_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160279160373_))))
                                      (let ((_hd160283160380_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160284160376_)))
                                            (_tl160282160383_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160284160376_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160282160383_))
                                            (let ((_e160287160386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160282160383_))))
                                              (let ((_hd160286160390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160287160386_)))
                                                    (_tl160285160393_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160287160386_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160285160393_))
                                                    (let ((_e160290160396_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160285160393_))))
                                                      (let ((_hd160289160400_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e160290160396_)))
                    (_tl160288160403_
                     (let () (declare (not safe)) (##cdr _e160290160396_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl160288160403_))
                    (let ((_e160293160406_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl160288160403_))))
                      (let ((_hd160292160410_
                             (let ()
                               (declare (not safe))
                               (##car _e160293160406_)))
                            (_tl160291160413_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160293160406_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl160291160413_))
                            ((lambda (_L160416_
                                      _L160418_
                                      _L160419_
                                      _L160420_
                                      _L160421_
                                      _L160422_
                                      _L160423_
                                      _L160424_
                                      _L160425_
                                      _L160426_)
                               (let ((__tmp163069
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp163035
                                      (let ((__tmp163066
                                             (let ((__tmp163068
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163067
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160426_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163068 __tmp163067)))
                                            (__tmp163036
                                             (let ((__tmp163063
                                                    (let ((__tmp163065
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp163064
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L160425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp163065 __tmp163064)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp163037
                                                    (let ((__tmp163060
                                                           (let ((__tmp163062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp163061
                          (let () (declare (not safe)) (cons _L160424_ '()))))
                     (declare (not safe))
                     (cons __tmp163062 __tmp163061)))
                  (__tmp163038
                   (let ((__tmp163057
                          (let ((__tmp163059
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp163058
                                 (let ()
                                   (declare (not safe))
                                   (cons _L160423_ '()))))
                            (declare (not safe))
                            (cons __tmp163059 __tmp163058)))
                         (__tmp163039
                          (let ((__tmp163054
                                 (let ((__tmp163056
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp163055
                                        (let ()
                                          (declare (not safe))
                                          (cons _L160422_ '()))))
                                   (declare (not safe))
                                   (cons __tmp163056 __tmp163055)))
                                (__tmp163040
                                 (let ((__tmp163051
                                        (let ((__tmp163053
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp163052
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L160421_ '()))))
                                          (declare (not safe))
                                          (cons __tmp163053 __tmp163052)))
                                       (__tmp163041
                                        (let ((__tmp163042
                                               (let ((__tmp163043
                                                      (let ((__tmp163048
                                                             (let ((__tmp163050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163049
                            (let ()
                              (declare (not safe))
                              (cons _L160418_ '()))))
                       (declare (not safe))
                       (cons __tmp163050 __tmp163049)))
                    (__tmp163044
                     (let ((__tmp163045
                            (let ((__tmp163047
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163046
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160416_ '()))))
                              (declare (not safe))
                              (cons __tmp163047 __tmp163046))))
                       (declare (not safe))
                       (cons __tmp163045 '()))))
                (declare (not safe))
                (cons __tmp163048 __tmp163044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L160419_
                                                       __tmp163043))))
                                          (declare (not safe))
                                          (cons _L160420_ __tmp163042))))
                                   (declare (not safe))
                                   (cons __tmp163051 __tmp163041))))
                            (declare (not safe))
                            (cons __tmp163054 __tmp163040))))
                     (declare (not safe))
                     (cons __tmp163057 __tmp163039))))
              (declare (not safe))
              (cons __tmp163060 __tmp163038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163063
                                                     __tmp163037))))
                                        (declare (not safe))
                                        (cons __tmp163066 __tmp163036))))
                                 (declare (not safe))
                                 (cons __tmp163069 __tmp163035)))
                             _hd160292160410_
                             _hd160289160400_
                             _hd160286160390_
                             _hd160283160380_
                             _hd160280160370_
                             _hd160277160360_
                             _hd160274160350_
                             _hd160271160340_
                             _hd160268160330_
                             _hd160265160320_)
                            (_g160249160299_ _g160250160303_))))
                    (_g160249160299_ _g160250160303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g160249160299_
                                                     _g160250160303_))))
                                            (_g160249160299_
                                             _g160250160303_))))
                                    (_g160249160299_ _g160250160303_))))
                            (_g160249160299_ _g160250160303_))))
                    (_g160249160299_ _g160250160303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g160249160299_
                                                     _g160250160303_))))
                                            (_g160249160299_
                                             _g160250160303_))))
                                    (_g160249160299_ _g160250160303_))))
                            (_g160249160299_ _g160250160303_))))
                    (_g160249160299_ _g160250160303_)))))
        (_g160248160466_ _$stx160245_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx160470_)
      (let* ((_g160474160488_
              (lambda (_g160475160484_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160475160484_))))
             (_g160473160529_
              (lambda (_g160475160492_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160475160492_))
                    (let ((_e160479160495_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160475160492_))))
                      (let ((_hd160478160499_
                             (let ()
                               (declare (not safe))
                               (##car _e160479160495_)))
                            (_tl160477160502_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160479160495_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160477160502_))
                            (let ((_e160482160505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160477160502_))))
                              (let ((_hd160481160509_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160482160505_)))
                                    (_tl160480160512_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160482160505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160480160512_))
                                    ((lambda (_L160515_)
                                       (let ((__tmp163074
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp163070
                                              (let ((__tmp163071
                                                     (let ((__tmp163073
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163072
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163073 __tmp163072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163071 '()))))
                                         (declare (not safe))
                                         (cons __tmp163074 __tmp163070)))
                                     _hd160481160509_)
                                    (_g160474160488_ _g160475160492_))))
                            (_g160474160488_ _g160475160492_))))
                    (_g160474160488_ _g160475160492_)))))
        (_g160473160529_ _$stx160470_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx160533_)
      (let* ((_g160537160551_
              (lambda (_g160538160547_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160538160547_))))
             (_g160536160592_
              (lambda (_g160538160555_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160538160555_))
                    (let ((_e160542160558_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160538160555_))))
                      (let ((_hd160541160562_
                             (let ()
                               (declare (not safe))
                               (##car _e160542160558_)))
                            (_tl160540160565_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160542160558_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160540160565_))
                            (let ((_e160545160568_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160540160565_))))
                              (let ((_hd160544160572_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160545160568_)))
                                    (_tl160543160575_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160545160568_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160543160575_))
                                    ((lambda (_L160578_)
                                       (let ((__tmp163079
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp163075
                                              (let ((__tmp163076
                                                     (let ((__tmp163078
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163077
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163078 __tmp163077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163076 '()))))
                                         (declare (not safe))
                                         (cons __tmp163079 __tmp163075)))
                                     _hd160544160572_)
                                    (_g160537160551_ _g160538160555_))))
                            (_g160537160551_ _g160538160555_))))
                    (_g160537160551_ _g160538160555_)))))
        (_g160536160592_ _$stx160533_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx160596_)
      (let* ((_g160600160622_
              (lambda (_g160601160618_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160601160618_))))
             (_g160599160691_
              (lambda (_g160601160626_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160601160626_))
                    (let ((_e160607160629_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160601160626_))))
                      (let ((_hd160606160633_
                             (let ()
                               (declare (not safe))
                               (##car _e160607160629_)))
                            (_tl160605160636_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160607160629_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160605160636_))
                            (let ((_e160610160639_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160605160636_))))
                              (let ((_hd160609160643_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160610160639_)))
                                    (_tl160608160646_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160610160639_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160608160646_))
                                    (let ((_e160613160649_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160608160646_))))
                                      (let ((_hd160612160653_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160613160649_)))
                                            (_tl160611160656_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160613160649_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160611160656_))
                                            (let ((_e160616160659_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160611160656_))))
                                              (let ((_hd160615160663_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160616160659_)))
                                                    (_tl160614160666_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160616160659_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160614160666_))
                                                    ((lambda (_L160669_
                                                              _L160671_
                                                              _L160672_)
                                                       (let ((__tmp163089
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp163080
                      (let ((__tmp163086
                             (let ((__tmp163088
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163087
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160672_ '()))))
                               (declare (not safe))
                               (cons __tmp163088 __tmp163087)))
                            (__tmp163081
                             (let ((__tmp163083
                                    (let ((__tmp163085
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163084
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160671_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163085 __tmp163084)))
                                   (__tmp163082
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160669_ '()))))
                               (declare (not safe))
                               (cons __tmp163083 __tmp163082))))
                        (declare (not safe))
                        (cons __tmp163086 __tmp163081))))
                 (declare (not safe))
                 (cons __tmp163089 __tmp163080)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160615160663_
                                                     _hd160612160653_
                                                     _hd160609160643_)
                                                    (_g160600160622_
                                                     _g160601160626_))))
                                            (_g160600160622_
                                             _g160601160626_))))
                                    (_g160600160622_ _g160601160626_))))
                            (_g160600160622_ _g160601160626_))))
                    (_g160600160622_ _g160601160626_)))))
        (_g160599160691_ _$stx160596_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx160695_)
      (let* ((_g160699160721_
              (lambda (_g160700160717_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160700160717_))))
             (_g160698160790_
              (lambda (_g160700160725_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160700160725_))
                    (let ((_e160706160728_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160700160725_))))
                      (let ((_hd160705160732_
                             (let ()
                               (declare (not safe))
                               (##car _e160706160728_)))
                            (_tl160704160735_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160706160728_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160704160735_))
                            (let ((_e160709160738_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160704160735_))))
                              (let ((_hd160708160742_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160709160738_)))
                                    (_tl160707160745_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160709160738_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160707160745_))
                                    (let ((_e160712160748_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160707160745_))))
                                      (let ((_hd160711160752_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160712160748_)))
                                            (_tl160710160755_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160712160748_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160710160755_))
                                            (let ((_e160715160758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160710160755_))))
                                              (let ((_hd160714160762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160715160758_)))
                                                    (_tl160713160765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160715160758_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160713160765_))
                                                    ((lambda (_L160768_
                                                              _L160770_
                                                              _L160771_)
                                                       (let ((__tmp163099
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp163090
                      (let ((__tmp163096
                             (let ((__tmp163098
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163097
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160771_ '()))))
                               (declare (not safe))
                               (cons __tmp163098 __tmp163097)))
                            (__tmp163091
                             (let ((__tmp163093
                                    (let ((__tmp163095
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163094
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160770_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163095 __tmp163094)))
                                   (__tmp163092
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160768_ '()))))
                               (declare (not safe))
                               (cons __tmp163093 __tmp163092))))
                        (declare (not safe))
                        (cons __tmp163096 __tmp163091))))
                 (declare (not safe))
                 (cons __tmp163099 __tmp163090)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160714160762_
                                                     _hd160711160752_
                                                     _hd160708160742_)
                                                    (_g160699160721_
                                                     _g160700160725_))))
                                            (_g160699160721_
                                             _g160700160725_))))
                                    (_g160699160721_ _g160700160725_))))
                            (_g160699160721_ _g160700160725_))))
                    (_g160699160721_ _g160700160725_)))))
        (_g160698160790_ _$stx160695_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160794_)
      (let* ((___stx162609162610_ _$stx160794_)
             (_g160802160870_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162609162610_)))))
        (let ((___kont162612162613_
               (lambda (_L161148_ _L161150_)
                 (let ((__tmp163120
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp163100
                        (let ((__tmp163116
                               (let ((__tmp163119
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163117
                                      (let ((__tmp163118
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163118 '()))))
                                 (declare (not safe))
                                 (cons __tmp163119 __tmp163117)))
                              (__tmp163101
                               (let ((__tmp163113
                                      (let ((__tmp163115
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163114
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161150_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163115 __tmp163114)))
                                     (__tmp163102
                                      (let ((__tmp163103
                                             (let ((__tmp163104
                                                    (let ((__tmp163105
                                                           (let ((__tmp163112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp163106
                          (let ((__tmp163107
                                 (let ((__tmp163111
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp163108
                                        (let ((__tmp163109
                                               (let ((__tmp163110
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L161148_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp163110))))
                                          (declare (not safe))
                                          (cons _L161150_ __tmp163109))))
                                   (declare (not safe))
                                   (cons __tmp163111 __tmp163108))))
                            (declare (not safe))
                            (cons __tmp163107 '()))))
                     (declare (not safe))
                     (cons __tmp163112 __tmp163106))))
              (declare (not safe))
              (cons __tmp163105 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L161148_ __tmp163104))))
                                        (declare (not safe))
                                        (cons '#f __tmp163103))))
                                 (declare (not safe))
                                 (cons __tmp163113 __tmp163102))))
                          (declare (not safe))
                          (cons __tmp163116 __tmp163101))))
                   (declare (not safe))
                   (cons __tmp163120 __tmp163100))))
              (___kont162614162615_
               (lambda (_L161079_ _L161081_)
                 (let ((__tmp163121
                        (let ((__tmp163122
                               (let ((__tmp163123
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L161079_ __tmp163123))))
                          (declare (not safe))
                          (cons 'primitive: __tmp163122))))
                   (declare (not safe))
                   (cons _L161081_ __tmp163121))))
              (___kont162616162617_
               (lambda (_L161018_ _L161020_)
                 (let ((__tmp163137
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp163124
                        (let ((__tmp163133
                               (let ((__tmp163136
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163134
                                      (let ((__tmp163135
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163135 '()))))
                                 (declare (not safe))
                                 (cons __tmp163136 __tmp163134)))
                              (__tmp163125
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
                                               (cons _L161020_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163132 __tmp163131)))
                                     (__tmp163126
                                      (let ((__tmp163127
                                             (let ((__tmp163129
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163128
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161018_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163129
                                                     __tmp163128))))
                                        (declare (not safe))
                                        (cons __tmp163127 '()))))
                                 (declare (not safe))
                                 (cons __tmp163130 __tmp163126))))
                          (declare (not safe))
                          (cons __tmp163133 __tmp163125))))
                   (declare (not safe))
                   (cons __tmp163137 __tmp163124))))
              (___kont162618162619_
               (lambda (_L160950_ _L160952_)
                 (let ((__tmp163151
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp163138
                        (let ((__tmp163147
                               (let ((__tmp163150
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163148
                                      (let ((__tmp163149
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163149 '()))))
                                 (declare (not safe))
                                 (cons __tmp163150 __tmp163148)))
                              (__tmp163139
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
                                               (cons _L160952_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163146 __tmp163145)))
                                     (__tmp163140
                                      (let ((__tmp163141
                                             (let ((__tmp163143
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163142
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160950_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163143
                                                     __tmp163142))))
                                        (declare (not safe))
                                        (cons __tmp163141 '()))))
                                 (declare (not safe))
                                 (cons __tmp163144 __tmp163140))))
                          (declare (not safe))
                          (cons __tmp163147 __tmp163139))))
                   (declare (not safe))
                   (cons __tmp163151 __tmp163138))))
              (___kont162620162621_
               (lambda (_L160897_ _L160899_)
                 (let ((__tmp163152
                        (let ((__tmp163153
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160897_ __tmp163153))))
                   (declare (not safe))
                   (cons _L160899_ __tmp163152)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx162609162610_))
              (let ((_e160808161104_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx162609162610_))))
                (let ((_tl160806161111_
                       (let () (declare (not safe)) (##cdr _e160808161104_)))
                      (_hd160807161108_
                       (let () (declare (not safe)) (##car _e160808161104_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160806161111_))
                      (let ((_e160811161114_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160806161111_))))
                        (let ((_tl160809161121_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160811161114_)))
                              (_hd160810161118_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160811161114_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160809161121_))
                              (let ((_e160814161124_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160809161121_))))
                                (let ((_tl160812161131_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160814161124_)))
                                      (_hd160813161128_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160814161124_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160813161128_))
                                      (let ((_e160815161134_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160813161128_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160815161134_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160812161131_))
                                                (let ((_e160818161138_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160812161131_))))
                                                  (let ((_tl160816161145_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160818161138_)))
                                                        (_hd160817161142_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160818161138_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160816161145_))
                                                        (___kont162612162613_
                                                         _hd160817161142_
                                                         _hd160810161118_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160810161118_))
                                                            (let ((_e160827161065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160810161118_))))
                      (declare (not safe))
                      (_g160802160870_))
                    (let () (declare (not safe)) (_g160802160870_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160810161118_))
                                                    (let ((_e160827161065_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160810161118_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160827161065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160812161131_))
                      (___kont162614162615_ _hd160813161128_ _hd160807161108_)
                      (let () (declare (not safe)) (_g160802160870_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160812161131_))
                      (___kont162618162619_ _hd160813161128_ _hd160810161118_)
                      (let () (declare (not safe)) (_g160802160870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160812161131_))
                                                        (___kont162618162619_
                                                         _hd160813161128_
                                                         _hd160810161118_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160802160870_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160810161118_))
                                                (let ((_e160827161065_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160810161118_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160827161065_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160812161131_))
                                                          (___kont162614162615_
                                                           _hd160813161128_
                                                           _hd160807161108_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160812161131_))
                      (let ((_e160845161008_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160812161131_))))
                        (let ((_tl160843161015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160845161008_)))
                              (_hd160844161012_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160845161008_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160843161015_))
                              (___kont162616162617_
                               _hd160844161012_
                               _hd160813161128_)
                              (let ()
                                (declare (not safe))
                                (_g160802160870_)))))
                      (let () (declare (not safe)) (_g160802160870_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160812161131_))
                  (___kont162618162619_ _hd160813161128_ _hd160810161118_)
                  (let () (declare (not safe)) (_g160802160870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160812161131_))
                                                    (___kont162618162619_
                                                     _hd160813161128_
                                                     _hd160810161118_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160802160870_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160810161118_))
                                          (let ((_e160827161065_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160810161118_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160827161065_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160812161131_))
                                                    (___kont162614162615_
                                                     _hd160813161128_
                                                     _hd160807161108_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160812161131_))
                                                        (let ((_e160845161008_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160812161131_))))
                  (let ((_tl160843161015_
                         (let () (declare (not safe)) (##cdr _e160845161008_)))
                        (_hd160844161012_
                         (let ()
                           (declare (not safe))
                           (##car _e160845161008_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160843161015_))
                        (___kont162616162617_
                         _hd160844161012_
                         _hd160813161128_)
                        (let () (declare (not safe)) (_g160802160870_)))))
                (let () (declare (not safe)) (_g160802160870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160812161131_))
                                                    (___kont162618162619_
                                                     _hd160813161128_
                                                     _hd160810161118_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160802160870_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160812161131_))
                                              (___kont162618162619_
                                               _hd160813161128_
                                               _hd160810161118_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160802160870_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160810161118_))
                                  (let ((_e160827161065_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160810161118_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160809161121_))
                                        (___kont162620162621_
                                         _hd160810161118_
                                         _hd160807161108_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160802160870_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160809161121_))
                                      (___kont162620162621_
                                       _hd160810161118_
                                       _hd160807161108_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160802160870_)))))))
                      (let () (declare (not safe)) (_g160802160870_)))))
              (let () (declare (not safe)) (_g160802160870_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx161172_)
      (let* ((___stx162749162750_ _$stx161172_)
             (_g161177161232_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162749162750_)))))
        (let ((___kont162752162753_
               (lambda (_L161417_ _L161419_)
                 (let ((__tmp163169
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp163154
                        (let ((__tmp163165
                               (let ((__tmp163168
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163166
                                      (let ((__tmp163167
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp163167 '()))))
                                 (declare (not safe))
                                 (cons __tmp163168 __tmp163166)))
                              (__tmp163155
                               (let ((__tmp163156
                                      (let ((__tmp163164
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp163157
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L161417_
                                                  _L161419_))
                                               (let ((__tmp163158
                                                      (lambda (_g161436161440_
                                                               _g161437161443_
                                                               _g161438161445_)
                                                        (let ((__tmp163159
                                                               (let ((__tmp163163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp163160
                              (let ((__tmp163161
                                     (let ((__tmp163162
                                            (let ()
                                              (declare (not safe))
                                              (cons _g161436161440_ '()))))
                                       (declare (not safe))
                                       (cons _g161437161443_ __tmp163162))))
                                (declare (not safe))
                                (cons 'primitive: __tmp163161))))
                         (declare (not safe))
                         (cons __tmp163163 __tmp163160))))
                  (declare (not safe))
                  (cons __tmp163159 _g161438161445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp163158
                                                         '()
                                                         _L161417_
                                                         _L161419_)))))
                                        (declare (not safe))
                                        (cons __tmp163164 __tmp163157))))
                                 (declare (not safe))
                                 (cons __tmp163156 '()))))
                          (declare (not safe))
                          (cons __tmp163165 __tmp163155))))
                   (declare (not safe))
                   (cons __tmp163169 __tmp163154))))
              (___kont162756162757_
               (lambda (_L161303_ _L161305_)
                 (let ((__tmp163184
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp163170
                        (let ((__tmp163180
                               (let ((__tmp163183
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163181
                                      (let ((__tmp163182
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp163182 '()))))
                                 (declare (not safe))
                                 (cons __tmp163183 __tmp163181)))
                              (__tmp163171
                               (let ((__tmp163172
                                      (let ((__tmp163179
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp163173
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L161303_
                                                  _L161305_))
                                               (let ((__tmp163174
                                                      (lambda (_g161320161324_
                                                               _g161321161327_
                                                               _g161322161329_)
                                                        (let ((__tmp163175
                                                               (let ((__tmp163178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp163176
                              (let ((__tmp163177
                                     (let ()
                                       (declare (not safe))
                                       (cons _g161320161324_ '()))))
                                (declare (not safe))
                                (cons _g161321161327_ __tmp163177))))
                         (declare (not safe))
                         (cons __tmp163178 __tmp163176))))
                  (declare (not safe))
                  (cons __tmp163175 _g161322161329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp163174
                                                         '()
                                                         _L161303_
                                                         _L161305_)))))
                                        (declare (not safe))
                                        (cons __tmp163179 __tmp163173))))
                                 (declare (not safe))
                                 (cons __tmp163172 '()))))
                          (declare (not safe))
                          (cons __tmp163180 __tmp163171))))
                   (declare (not safe))
                   (cons __tmp163184 __tmp163170)))))
          (let* ((___match162800162801_
                  (lambda (_e161209161239_
                           _hd161208161243_
                           _tl161207161246_
                           ___splice162758162759_
                           _target161210161249_
                           _tl161212161252_)
                    (letrec ((_loop161213161255_
                              (lambda (_hd161211161259_
                                       _dispatch161217161262_
                                       _arity161218161264_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161211161259_))
                                    (let ((_e161214161267_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161211161259_))))
                                      (let ((_lp-tl161216161274_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161214161267_)))
                                            (_lp-hd161215161271_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161214161267_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd161215161271_))
                                            (let ((_e161223161277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd161215161271_))))
                                              (let ((_tl161221161284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161223161277_)))
                                                    (_hd161222161281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161223161277_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161221161284_))
                                                    (let ((_e161226161287_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161221161284_))))
                                                      (let ((_tl161224161294_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e161226161287_)))
                    (_hd161225161291_
                     (let () (declare (not safe)) (##car _e161226161287_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl161224161294_))
                    (_loop161213161255_
                     _lp-tl161216161274_
                     (let ()
                       (declare (not safe))
                       (cons _hd161225161291_ _dispatch161217161262_))
                     (let ()
                       (declare (not safe))
                       (cons _hd161222161281_ _arity161218161264_)))
                    (let () (declare (not safe)) (_g161177161232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161177161232_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161177161232_)))))
                                    (let ((_arity161220161300_
                                           (reverse _arity161218161264_))
                                          (_dispatch161219161297_
                                           (reverse _dispatch161217161262_)))
                                      (___kont162756162757_
                                       _dispatch161219161297_
                                       _arity161220161300_))))))
                      (_loop161213161255_ _target161210161249_ '() '()))))
                 (___match162792162793_
                  (lambda (_e161209161239_ _hd161208161243_ _tl161207161246_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl161207161246_))
                        (let ((___splice162758162759_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl161207161246_
                                  '0))))
                          (let ((_tl161212161252_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162758162759_ '1)))
                                (_target161210161249_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162758162759_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl161212161252_))
                                (___match162800162801_
                                 _e161209161239_
                                 _hd161208161243_
                                 _tl161207161246_
                                 ___splice162758162759_
                                 _target161210161249_
                                 _tl161212161252_)
                                (let ()
                                  (declare (not safe))
                                  (_g161177161232_)))))
                        (let () (declare (not safe)) (_g161177161232_)))))
                 (___match162786162787_
                  (lambda (_e161183161339_
                           _hd161182161343_
                           _tl161181161346_
                           _e161186161349_
                           _hd161185161353_
                           _tl161184161356_
                           _e161187161359_
                           ___splice162754162755_
                           _target161188161363_
                           _tl161190161366_)
                    (letrec ((_loop161191161369_
                              (lambda (_hd161189161373_
                                       _dispatch161195161376_
                                       _arity161196161378_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161189161373_))
                                    (let ((_e161192161381_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161189161373_))))
                                      (let ((_lp-tl161194161388_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161192161381_)))
                                            (_lp-hd161193161385_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161192161381_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd161193161385_))
                                            (let ((_e161201161391_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd161193161385_))))
                                              (let ((_tl161199161398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161201161391_)))
                                                    (_hd161200161395_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161201161391_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161199161398_))
                                                    (let ((_e161204161401_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161199161398_))))
                                                      (let ((_tl161202161408_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e161204161401_)))
                    (_hd161203161405_
                     (let () (declare (not safe)) (##car _e161204161401_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl161202161408_))
                    (_loop161191161369_
                     _lp-tl161194161388_
                     (let ()
                       (declare (not safe))
                       (cons _hd161203161405_ _dispatch161195161376_))
                     (let ()
                       (declare (not safe))
                       (cons _hd161200161395_ _arity161196161378_)))
                    (___match162792162793_
                     _e161183161339_
                     _hd161182161343_
                     _tl161181161346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162792162793_
                                                     _e161183161339_
                                                     _hd161182161343_
                                                     _tl161181161346_))))
                                            (___match162792162793_
                                             _e161183161339_
                                             _hd161182161343_
                                             _tl161181161346_))))
                                    (let ((_arity161198161414_
                                           (reverse _arity161196161378_))
                                          (_dispatch161197161411_
                                           (reverse _dispatch161195161376_)))
                                      (___kont162752162753_
                                       _dispatch161197161411_
                                       _arity161198161414_))))))
                      (_loop161191161369_ _target161188161363_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162749162750_))
                (let ((_e161183161339_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162749162750_))))
                  (let ((_tl161181161346_
                         (let () (declare (not safe)) (##cdr _e161183161339_)))
                        (_hd161182161343_
                         (let ()
                           (declare (not safe))
                           (##car _e161183161339_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161181161346_))
                        (let ((_e161186161349_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161181161346_))))
                          (let ((_tl161184161356_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161186161349_)))
                                (_hd161185161353_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161186161349_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd161185161353_))
                                (let ((_e161187161359_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd161185161353_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e161187161359_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl161184161356_))
                                          (let ((___splice162754162755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl161184161356_
                                                    '0))))
                                            (let ((_tl161190161366_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162754162755_
                                                      '1)))
                                                  (_target161188161363_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162754162755_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161190161366_))
                                                  (___match162786162787_
                                                   _e161183161339_
                                                   _hd161182161343_
                                                   _tl161181161346_
                                                   _e161186161349_
                                                   _hd161185161353_
                                                   _tl161184161356_
                                                   _e161187161359_
                                                   ___splice162754162755_
                                                   _target161188161363_
                                                   _tl161190161366_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161181161346_))
                                                      (let ((___splice162758162759_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161181161346_ '0))))
                (let ((_tl161212161252_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162758162759_ '1)))
                      (_target161210161249_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162758162759_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161212161252_))
                      (___match162800162801_
                       _e161183161339_
                       _hd161182161343_
                       _tl161181161346_
                       ___splice162758162759_
                       _target161210161249_
                       _tl161212161252_)
                      (let () (declare (not safe)) (_g161177161232_)))))
              (let () (declare (not safe)) (_g161177161232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl161181161346_))
                                              (let ((___splice162758162759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl161181161346_
                                                        '0))))
                                                (let ((_tl161212161252_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162758162759_
                                                          '1)))
                                                      (_target161210161249_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162758162759_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl161212161252_))
                                                      (___match162800162801_
                                                       _e161183161339_
                                                       _hd161182161343_
                                                       _tl161181161346_
                                                       ___splice162758162759_
                                                       _target161210161249_
                                                       _tl161212161252_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g161177161232_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g161177161232_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl161181161346_))
                                          (let ((___splice162758162759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl161181161346_
                                                    '0))))
                                            (let ((_tl161212161252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162758162759_
                                                      '1)))
                                                  (_target161210161249_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162758162759_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161212161252_))
                                                  (___match162800162801_
                                                   _e161183161339_
                                                   _hd161182161343_
                                                   _tl161181161346_
                                                   ___splice162758162759_
                                                   _target161210161249_
                                                   _tl161212161252_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g161177161232_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g161177161232_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161181161346_))
                                    (let ((___splice162758162759_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161181161346_
                                              '0))))
                                      (let ((_tl161212161252_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162758162759_
                                                '1)))
                                            (_target161210161249_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162758162759_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161212161252_))
                                            (___match162800162801_
                                             _e161183161339_
                                             _hd161182161343_
                                             _tl161181161346_
                                             ___splice162758162759_
                                             _target161210161249_
                                             _tl161212161252_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161177161232_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161177161232_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161181161346_))
                            (let ((___splice162758162759_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161181161346_
                                      '0))))
                              (let ((_tl161212161252_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162758162759_
                                        '1)))
                                    (_target161210161249_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162758162759_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161212161252_))
                                    (___match162800162801_
                                     _e161183161339_
                                     _hd161182161343_
                                     _tl161181161346_
                                     ___splice162758162759_
                                     _target161210161249_
                                     _tl161212161252_)
                                    (let ()
                                      (declare (not safe))
                                      (_g161177161232_)))))
                            (let () (declare (not safe)) (_g161177161232_))))))
                (let () (declare (not safe)) (_g161177161232_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx161454_)
      (let* ((_g161458161476_
              (lambda (_g161459161472_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161459161472_))))
             (_g161457161531_
              (lambda (_g161459161480_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161459161480_))
                    (let ((_e161464161483_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161459161480_))))
                      (let ((_hd161463161487_
                             (let ()
                               (declare (not safe))
                               (##car _e161464161483_)))
                            (_tl161462161490_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161464161483_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161462161490_))
                            (let ((_e161467161493_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161462161490_))))
                              (let ((_hd161466161497_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161467161493_)))
                                    (_tl161465161500_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161467161493_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161465161500_))
                                    (let ((_e161470161503_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161465161500_))))
                                      (let ((_hd161469161507_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161470161503_)))
                                            (_tl161468161510_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161470161503_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161468161510_))
                                            ((lambda (_L161513_ _L161515_)
                                               (let ((__tmp163198
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp163185
                                                      (let ((__tmp163194
                                                             (let ((__tmp163197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163195
                            (let ((__tmp163196
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp163196 '()))))
                       (declare (not safe))
                       (cons __tmp163197 __tmp163195)))
                    (__tmp163186
                     (let ((__tmp163191
                            (let ((__tmp163193
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163192
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161515_ '()))))
                              (declare (not safe))
                              (cons __tmp163193 __tmp163192)))
                           (__tmp163187
                            (let ((__tmp163188
                                   (let ((__tmp163190
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp163189
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161513_ '()))))
                                     (declare (not safe))
                                     (cons __tmp163190 __tmp163189))))
                              (declare (not safe))
                              (cons __tmp163188 '()))))
                       (declare (not safe))
                       (cons __tmp163191 __tmp163187))))
                (declare (not safe))
                (cons __tmp163194 __tmp163186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp163198
                                                       __tmp163185)))
                                             _hd161469161507_
                                             _hd161466161497_)
                                            (_g161458161476_
                                             _g161459161480_))))
                                    (_g161458161476_ _g161459161480_))))
                            (_g161458161476_ _g161459161480_))))
                    (_g161458161476_ _g161459161480_)))))
        (_g161457161531_ _$stx161454_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx161535_)
      (let* ((_g161539161557_
              (lambda (_g161540161553_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161540161553_))))
             (_g161538161612_
              (lambda (_g161540161561_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161540161561_))
                    (let ((_e161545161564_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161540161561_))))
                      (let ((_hd161544161568_
                             (let ()
                               (declare (not safe))
                               (##car _e161545161564_)))
                            (_tl161543161571_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161545161564_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161543161571_))
                            (let ((_e161548161574_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161543161571_))))
                              (let ((_hd161547161578_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161548161574_)))
                                    (_tl161546161581_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161548161574_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161546161581_))
                                    (let ((_e161551161584_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161546161581_))))
                                      (let ((_hd161550161588_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161551161584_)))
                                            (_tl161549161591_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161551161584_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161549161591_))
                                            ((lambda (_L161594_ _L161596_)
                                               (let ((__tmp163212
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp163199
                                                      (let ((__tmp163208
                                                             (let ((__tmp163211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163209
                            (let ((__tmp163210
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp163210 '()))))
                       (declare (not safe))
                       (cons __tmp163211 __tmp163209)))
                    (__tmp163200
                     (let ((__tmp163205
                            (let ((__tmp163207
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163206
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161596_ '()))))
                              (declare (not safe))
                              (cons __tmp163207 __tmp163206)))
                           (__tmp163201
                            (let ((__tmp163202
                                   (let ((__tmp163204
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp163203
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161594_ '()))))
                                     (declare (not safe))
                                     (cons __tmp163204 __tmp163203))))
                              (declare (not safe))
                              (cons __tmp163202 '()))))
                       (declare (not safe))
                       (cons __tmp163205 __tmp163201))))
                (declare (not safe))
                (cons __tmp163208 __tmp163200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp163212
                                                       __tmp163199)))
                                             _hd161550161588_
                                             _hd161547161578_)
                                            (_g161539161557_
                                             _g161540161561_))))
                                    (_g161539161557_ _g161540161561_))))
                            (_g161539161557_ _g161540161561_))))
                    (_g161539161557_ _g161540161561_)))))
        (_g161538161612_ _$stx161535_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx161616_)
      (let* ((___stx162803162804_ _$stx161616_)
             (_g161623161694_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162803162804_)))))
        (let ((___kont162806162807_
               (lambda (_L161985_ _L161987_)
                 (let ((__tmp163218
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163213
                        (let ((__tmp163214
                               (let ((__tmp163215
                                      (let ((__tmp163217
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163216
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161985_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163217 __tmp163216))))
                                 (declare (not safe))
                                 (cons __tmp163215 '()))))
                          (declare (not safe))
                          (cons _L161987_ __tmp163214))))
                   (declare (not safe))
                   (cons __tmp163218 __tmp163213))))
              (___kont162808162809_
               (lambda (_L161904_ _L161906_)
                 (let ((__tmp163227
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163219
                        (let ((__tmp163220
                               (let ((__tmp163221
                                      (let ((__tmp163226
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163222
                                             (let ((__tmp163223
                                                    (lambda (_g161925161928_
                                                             _g161926161931_)
                                                      (let ((__tmp163224
                                                             (let ((__tmp163225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161925161928_ __tmp163225))))
                (declare (not safe))
                (cons __tmp163224 _g161926161931_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp163223
                                                       '()
                                                       _L161904_))))
                                        (declare (not safe))
                                        (cons __tmp163226 __tmp163222))))
                                 (declare (not safe))
                                 (cons __tmp163221 '()))))
                          (declare (not safe))
                          (cons _L161906_ __tmp163220))))
                   (declare (not safe))
                   (cons __tmp163227 __tmp163219))))
              (___kont162812162813_
               (lambda (_L161816_ _L161818_)
                 (let ((__tmp163234
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163228
                        (let ((__tmp163229
                               (let ((__tmp163230
                                      (let ((__tmp163233
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163231
                                             (let ((__tmp163232
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161816_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp163232))))
                                        (declare (not safe))
                                        (cons __tmp163233 __tmp163231))))
                                 (declare (not safe))
                                 (cons __tmp163230 '()))))
                          (declare (not safe))
                          (cons _L161818_ __tmp163229))))
                   (declare (not safe))
                   (cons __tmp163234 __tmp163228))))
              (___kont162814162815_
               (lambda (_L161751_ _L161753_)
                 (let ((__tmp163244
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163235
                        (let ((__tmp163236
                               (let ((__tmp163237
                                      (let ((__tmp163243
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163238
                                             (let ((__tmp163239
                                                    (let ((__tmp163240
                                                           (lambda (_g161770161773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161771161776_)
                     (let ((__tmp163241
                            (let ((__tmp163242
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161770161773_ __tmp163242))))
                       (declare (not safe))
                       (cons __tmp163241 _g161771161776_)))))
              (declare (not safe))
              (foldr1 __tmp163240 '() _L161751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp163239))))
                                        (declare (not safe))
                                        (cons __tmp163243 __tmp163238))))
                                 (declare (not safe))
                                 (cons __tmp163237 '()))))
                          (declare (not safe))
                          (cons _L161753_ __tmp163236))))
                   (declare (not safe))
                   (cons __tmp163244 __tmp163235)))))
          (let* ((___match162922162923_
                  (lambda (_e161676161701_
                           _hd161675161705_
                           _tl161674161708_
                           _e161679161711_
                           _hd161678161715_
                           _tl161677161718_
                           ___splice162816162817_
                           _target161680161721_
                           _tl161682161724_)
                    (letrec ((_loop161683161727_
                              (lambda (_hd161681161731_ _arity161687161734_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161681161731_))
                                    (let ((_e161684161737_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161681161731_))))
                                      (let ((_lp-tl161686161744_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161684161737_)))
                                            (_lp-hd161685161741_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161684161737_))))
                                        (_loop161683161727_
                                         _lp-tl161686161744_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161685161741_
                                                 _arity161687161734_)))))
                                    (let ((_arity161688161747_
                                           (reverse _arity161687161734_)))
                                      (___kont162814162815_
                                       _arity161688161747_
                                       _hd161678161715_))))))
                      (_loop161683161727_ _target161680161721_ '()))))
                 (___match162882162883_
                  (lambda (_e161644161840_
                           _hd161643161844_
                           _tl161642161847_
                           _e161647161850_
                           _hd161646161854_
                           _tl161645161857_
                           _e161650161860_
                           _hd161649161864_
                           _tl161648161867_
                           _e161651161870_
                           ___splice162810162811_
                           _target161652161874_
                           _tl161654161877_)
                    (letrec ((_loop161655161880_
                              (lambda (_hd161653161884_ _arity161659161887_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161653161884_))
                                    (let ((_e161656161890_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161653161884_))))
                                      (let ((_lp-tl161658161897_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161656161890_)))
                                            (_lp-hd161657161894_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161656161890_))))
                                        (_loop161655161880_
                                         _lp-tl161658161897_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161657161894_
                                                 _arity161659161887_)))))
                                    (let ((_arity161660161900_
                                           (reverse _arity161659161887_)))
                                      (___kont162808162809_
                                       _arity161660161900_
                                       _hd161646161854_))))))
                      (_loop161655161880_ _target161652161874_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162803162804_))
                (let ((_e161629161941_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162803162804_))))
                  (let ((_tl161627161948_
                         (let () (declare (not safe)) (##cdr _e161629161941_)))
                        (_hd161628161945_
                         (let ()
                           (declare (not safe))
                           (##car _e161629161941_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161627161948_))
                        (let ((_e161632161951_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161627161948_))))
                          (let ((_tl161630161958_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161632161951_)))
                                (_hd161631161955_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161632161951_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161630161958_))
                                (let ((_e161635161961_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161630161958_))))
                                  (let ((_tl161633161968_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161635161961_)))
                                        (_hd161634161965_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161635161961_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd161634161965_))
                                        (let ((_e161636161971_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd161634161965_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e161636161971_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161633161968_))
                                                  (let ((_e161639161975_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161633161968_))))
                                                    (let ((_tl161637161982_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161639161975_)))
                                                          (_hd161638161979_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161639161975_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161637161982_))
                                                          (___kont162806162807_
                                                           _hd161638161979_
                                                           _hd161631161955_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl161633161968_))
                      (let ((___splice162810162811_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161633161968_ '0))))
                        (let ((_tl161654161877_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162810162811_ '1)))
                              (_target161652161874_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162810162811_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161654161877_))
                              (___match162882162883_
                               _e161629161941_
                               _hd161628161945_
                               _tl161627161948_
                               _e161632161951_
                               _hd161631161955_
                               _tl161630161958_
                               _e161635161961_
                               _hd161634161965_
                               _tl161633161968_
                               _e161636161971_
                               ___splice162810162811_
                               _target161652161874_
                               _tl161654161877_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl161630161958_))
                                  (let ((___splice162816162817_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl161630161958_
                                            '0))))
                                    (let ((_tl161682161724_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162816162817_
                                              '1)))
                                          (_target161680161721_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162816162817_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl161682161724_))
                                          (___match162922162923_
                                           _e161629161941_
                                           _hd161628161945_
                                           _tl161627161948_
                                           _e161632161951_
                                           _hd161631161955_
                                           _tl161630161958_
                                           ___splice162816162817_
                                           _target161680161721_
                                           _tl161682161724_)
                                          (let ()
                                            (declare (not safe))
                                            (_g161623161694_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g161623161694_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl161630161958_))
                          (let ((___splice162816162817_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl161630161958_
                                    '0))))
                            (let ((_tl161682161724_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162816162817_ '1)))
                                  (_target161680161721_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162816162817_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161682161724_))
                                  (___match162922162923_
                                   _e161629161941_
                                   _hd161628161945_
                                   _tl161627161948_
                                   _e161632161951_
                                   _hd161631161955_
                                   _tl161630161958_
                                   ___splice162816162817_
                                   _target161680161721_
                                   _tl161682161724_)
                                  (let ()
                                    (declare (not safe))
                                    (_g161623161694_)))))
                          (let () (declare (not safe)) (_g161623161694_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161633161968_))
                                                      (let ((___splice162810162811_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161633161968_ '0))))
                (let ((_tl161654161877_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162810162811_ '1)))
                      (_target161652161874_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162810162811_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161654161877_))
                      (___match162882162883_
                       _e161629161941_
                       _hd161628161945_
                       _tl161627161948_
                       _e161632161951_
                       _hd161631161955_
                       _tl161630161958_
                       _e161635161961_
                       _hd161634161965_
                       _tl161633161968_
                       _e161636161971_
                       ___splice162810162811_
                       _target161652161874_
                       _tl161654161877_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl161633161968_))
                          (___kont162812162813_
                           _hd161634161965_
                           _hd161631161955_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161630161958_))
                              (let ((___splice162816162817_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161630161958_
                                        '0))))
                                (let ((_tl161682161724_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162816162817_
                                          '1)))
                                      (_target161680161721_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162816162817_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161682161724_))
                                      (___match162922162923_
                                       _e161629161941_
                                       _hd161628161945_
                                       _tl161627161948_
                                       _e161632161951_
                                       _hd161631161955_
                                       _tl161630161958_
                                       ___splice162816162817_
                                       _target161680161721_
                                       _tl161682161724_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161623161694_)))))
                              (let ()
                                (declare (not safe))
                                (_g161623161694_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161633161968_))
                  (___kont162812162813_ _hd161634161965_ _hd161631161955_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl161630161958_))
                      (let ((___splice162816162817_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161630161958_ '0))))
                        (let ((_tl161682161724_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162816162817_ '1)))
                              (_target161680161721_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162816162817_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161682161724_))
                              (___match162922162923_
                               _e161629161941_
                               _hd161628161945_
                               _tl161627161948_
                               _e161632161951_
                               _hd161631161955_
                               _tl161630161958_
                               ___splice162816162817_
                               _target161680161721_
                               _tl161682161724_)
                              (let ()
                                (declare (not safe))
                                (_g161623161694_)))))
                      (let () (declare (not safe)) (_g161623161694_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161633161968_))
                                                  (___kont162812162813_
                                                   _hd161634161965_
                                                   _hd161631161955_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161630161958_))
                                                      (let ((___splice162816162817_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161630161958_ '0))))
                (let ((_tl161682161724_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162816162817_ '1)))
                      (_target161680161721_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162816162817_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161682161724_))
                      (___match162922162923_
                       _e161629161941_
                       _hd161628161945_
                       _tl161627161948_
                       _e161632161951_
                       _hd161631161955_
                       _tl161630161958_
                       ___splice162816162817_
                       _target161680161721_
                       _tl161682161724_)
                      (let () (declare (not safe)) (_g161623161694_)))))
              (let () (declare (not safe)) (_g161623161694_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161633161968_))
                                            (___kont162812162813_
                                             _hd161634161965_
                                             _hd161631161955_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl161630161958_))
                                                (let ((___splice162816162817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl161630161958_
                                                          '0))))
                                                  (let ((_tl161682161724_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162816162817_
                                                            '1)))
                                                        (_target161680161721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162816162817_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161682161724_))
                                                        (___match162922162923_
                                                         _e161629161941_
                                                         _hd161628161945_
                                                         _tl161627161948_
                                                         _e161632161951_
                                                         _hd161631161955_
                                                         _tl161630161958_
                                                         ___splice162816162817_
                                                         _target161680161721_
                                                         _tl161682161724_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161623161694_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g161623161694_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161630161958_))
                                    (let ((___splice162816162817_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161630161958_
                                              '0))))
                                      (let ((_tl161682161724_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162816162817_
                                                '1)))
                                            (_target161680161721_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162816162817_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161682161724_))
                                            (___match162922162923_
                                             _e161629161941_
                                             _hd161628161945_
                                             _tl161627161948_
                                             _e161632161951_
                                             _hd161631161955_
                                             _tl161630161958_
                                             ___splice162816162817_
                                             _target161680161721_
                                             _tl161682161724_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161623161694_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161623161694_))))))
                        (let () (declare (not safe)) (_g161623161694_)))))
                (let () (declare (not safe)) (_g161623161694_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx162011_)
      (let* ((___stx162925162926_ _$stx162011_)
             (_g162016162051_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162925162926_)))))
        (let ((___kont162928162929_
               (lambda (_L162173_ _L162175_)
                 (let ((__tmp163250
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163245
                        (let ((__tmp163246
                               (let ((__tmp163247
                                      (let ((__tmp163249
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163248
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162173_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163249 __tmp163248))))
                                 (declare (not safe))
                                 (cons __tmp163247 '()))))
                          (declare (not safe))
                          (cons _L162175_ __tmp163246))))
                   (declare (not safe))
                   (cons __tmp163250 __tmp163245))))
              (___kont162930162931_
               (lambda (_L162108_ _L162110_)
                 (let ((__tmp163259
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163251
                        (let ((__tmp163252
                               (let ((__tmp163253
                                      (let ((__tmp163258
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163254
                                             (let ((__tmp163255
                                                    (lambda (_g162127162130_
                                                             _g162128162133_)
                                                      (let ((__tmp163256
                                                             (let ((__tmp163257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g162127162130_ __tmp163257))))
                (declare (not safe))
                (cons __tmp163256 _g162128162133_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp163255
                                                       '()
                                                       _L162108_))))
                                        (declare (not safe))
                                        (cons __tmp163258 __tmp163254))))
                                 (declare (not safe))
                                 (cons __tmp163253 '()))))
                          (declare (not safe))
                          (cons _L162110_ __tmp163252))))
                   (declare (not safe))
                   (cons __tmp163259 __tmp163251)))))
          (let ((___match162974162975_
                 (lambda (_e162033162058_
                          _hd162032162062_
                          _tl162031162065_
                          _e162036162068_
                          _hd162035162072_
                          _tl162034162075_
                          ___splice162932162933_
                          _target162037162078_
                          _tl162039162081_)
                   (letrec ((_loop162040162084_
                             (lambda (_hd162038162088_ _arity162044162091_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd162038162088_))
                                   (let ((_e162041162094_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd162038162088_))))
                                     (let ((_lp-tl162043162101_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e162041162094_)))
                                           (_lp-hd162042162098_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e162041162094_))))
                                       (_loop162040162084_
                                        _lp-tl162043162101_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd162042162098_
                                                _arity162044162091_)))))
                                   (let ((_arity162045162104_
                                          (reverse _arity162044162091_)))
                                     (___kont162930162931_
                                      _arity162045162104_
                                      _hd162035162072_))))))
                     (_loop162040162084_ _target162037162078_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162925162926_))
                (let ((_e162022162143_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162925162926_))))
                  (let ((_tl162020162150_
                         (let () (declare (not safe)) (##cdr _e162022162143_)))
                        (_hd162021162147_
                         (let ()
                           (declare (not safe))
                           (##car _e162022162143_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162020162150_))
                        (let ((_e162025162153_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162020162150_))))
                          (let ((_tl162023162160_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162025162153_)))
                                (_hd162024162157_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162025162153_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162023162160_))
                                (let ((_e162028162163_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162023162160_))))
                                  (let ((_tl162026162170_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162028162163_)))
                                        (_hd162027162167_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162028162163_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162026162170_))
                                        (___kont162928162929_
                                         _hd162027162167_
                                         _hd162024162157_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl162023162160_))
                                            (let ((___splice162932162933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl162023162160_
                                                      '0))))
                                              (let ((_tl162039162081_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162932162933_
                                                        '1)))
                                                    (_target162037162078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162932162933_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162039162081_))
                                                    (___match162974162975_
                                                     _e162022162143_
                                                     _hd162021162147_
                                                     _tl162020162150_
                                                     _e162025162153_
                                                     _hd162024162157_
                                                     _tl162023162160_
                                                     ___splice162932162933_
                                                     _target162037162078_
                                                     _tl162039162081_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162016162051_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162016162051_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162023162160_))
                                    (let ((___splice162932162933_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162023162160_
                                              '0))))
                                      (let ((_tl162039162081_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162932162933_
                                                '1)))
                                            (_target162037162078_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162932162933_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162039162081_))
                                            (___match162974162975_
                                             _e162022162143_
                                             _hd162021162147_
                                             _tl162020162150_
                                             _e162025162153_
                                             _hd162024162157_
                                             _tl162023162160_
                                             ___splice162932162933_
                                             _target162037162078_
                                             _tl162039162081_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162016162051_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162016162051_))))))
                        (let () (declare (not safe)) (_g162016162051_)))))
                (let () (declare (not safe)) (_g162016162051_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx162195_)
      (let* ((_g162199162234_
              (lambda (_g162200162230_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162200162230_))))
             (_g162198162362_
              (lambda (_g162200162238_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162200162238_))
                    (let ((_e162205162241_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162200162238_))))
                      (let ((_hd162204162245_
                             (let ()
                               (declare (not safe))
                               (##car _e162205162241_)))
                            (_tl162203162248_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162205162241_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162203162248_))
                            (let ((_g163260_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162203162248_
                                      '0))))
                              (begin
                                (let ((_g163261_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163260_)
                                             (##vector-length _g163260_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163261_ 2)))
                                      (error "Context expects 2 values"
                                             _g163261_)))
                                (let ((_target162206162251_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163260_ 0)))
                                      (_tl162208162254_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163260_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162208162254_))
                                      (letrec ((_loop162209162257_
                                                (lambda (_hd162207162261_
                                                         _arity162213162264_
                                                         _prim162214162266_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd162207162261_))
                                                      (let ((_e162210162269_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd162207162261_))))
                (let ((_lp-hd162211162273_
                       (let () (declare (not safe)) (##car _e162210162269_)))
                      (_lp-tl162212162276_
                       (let () (declare (not safe)) (##cdr _e162210162269_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd162211162273_))
                      (let ((_e162219162279_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd162211162273_))))
                        (let ((_hd162218162283_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162219162279_)))
                              (_tl162217162286_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162219162279_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162217162286_))
                              (let ((_g163270_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162217162286_
                                        '0))))
                                (begin
                                  (let ((_g163271_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g163270_)
                                               (##vector-length _g163270_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g163271_ 2)))
                                        (error "Context expects 2 values"
                                               _g163271_)))
                                  (let ((_target162220162289_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163270_ 0)))
                                        (_tl162222162292_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163270_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162222162292_))
                                        (letrec ((_loop162223162295_
                                                  (lambda (_hd162221162299_
                                                           _arity162227162302_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162221162299_))
                                                        (let ((_e162224162305_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162221162299_))))
                  (let ((_lp-hd162225162309_
                         (let () (declare (not safe)) (##car _e162224162305_)))
                        (_lp-tl162226162312_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162224162305_))))
                    (_loop162223162295_
                     _lp-tl162226162312_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd162225162309_ _arity162227162302_)))))
                (let ((_arity162228162315_ (reverse _arity162227162302_)))
                  (_loop162209162257_
                   _lp-tl162212162276_
                   (let ()
                     (declare (not safe))
                     (cons _arity162228162315_ _arity162213162264_))
                   (let ()
                     (declare (not safe))
                     (cons _hd162218162283_ _prim162214162266_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162223162295_
                                           _target162220162289_
                                           '()))
                                        (_g162199162234_ _g162200162238_)))))
                              (_g162199162234_ _g162200162238_))))
                      (_g162199162234_ _g162200162238_))))
              (let ((_arity162215162319_ (reverse _arity162213162264_))
                    (_prim162216162322_ (reverse _prim162214162266_)))
                ((lambda (_L162325_ _L162327_)
                   (let ((__tmp163269
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163262
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162325_
                               _L162327_))
                            (let ((__tmp163263
                                   (lambda (_g162342162348_
                                            _g162343162351_
                                            _g162344162353_)
                                     (let ((__tmp163264
                                            (let ((__tmp163268
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp163265
                                                   (let ((__tmp163266
                                                          (let ((__tmp163267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162345162356_ _g162346162359_)
                           (let ()
                             (declare (not safe))
                             (cons _g162345162356_ _g162346162359_)))))
                    (declare (not safe))
                    (foldr1 __tmp163267 '() _g162342162348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162343162351_
                                                           __tmp163266))))
                                              (declare (not safe))
                                              (cons __tmp163268 __tmp163265))))
                                       (declare (not safe))
                                       (cons __tmp163264 _g162344162353_)))))
                              (declare (not safe))
                              (foldr2 __tmp163263 '() _L162325_ _L162327_)))))
                     (declare (not safe))
                     (cons __tmp163269 __tmp163262)))
                 _arity162215162319_
                 _prim162216162322_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop162209162257_
                                         _target162206162251_
                                         '()
                                         '()))
                                      (_g162199162234_ _g162200162238_)))))
                            (_g162199162234_ _g162200162238_))))
                    (_g162199162234_ _g162200162238_)))))
        (_g162198162362_ _$stx162195_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx162368_)
      (let* ((_g162372162407_
              (lambda (_g162373162403_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162373162403_))))
             (_g162371162535_
              (lambda (_g162373162411_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162373162411_))
                    (let ((_e162378162414_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162373162411_))))
                      (let ((_hd162377162418_
                             (let ()
                               (declare (not safe))
                               (##car _e162378162414_)))
                            (_tl162376162421_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162378162414_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162376162421_))
                            (let ((_g163272_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162376162421_
                                      '0))))
                              (begin
                                (let ((_g163273_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163272_)
                                             (##vector-length _g163272_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163273_ 2)))
                                      (error "Context expects 2 values"
                                             _g163273_)))
                                (let ((_target162379162424_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163272_ 0)))
                                      (_tl162381162427_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163272_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162381162427_))
                                      (letrec ((_loop162382162430_
                                                (lambda (_hd162380162434_
                                                         _arity162386162437_
                                                         _prim162387162439_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd162380162434_))
                                                      (let ((_e162383162442_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd162380162434_))))
                (let ((_lp-hd162384162446_
                       (let () (declare (not safe)) (##car _e162383162442_)))
                      (_lp-tl162385162449_
                       (let () (declare (not safe)) (##cdr _e162383162442_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd162384162446_))
                      (let ((_e162392162452_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd162384162446_))))
                        (let ((_hd162391162456_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162392162452_)))
                              (_tl162390162459_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162392162452_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162390162459_))
                              (let ((_g163282_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162390162459_
                                        '0))))
                                (begin
                                  (let ((_g163283_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g163282_)
                                               (##vector-length _g163282_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g163283_ 2)))
                                        (error "Context expects 2 values"
                                               _g163283_)))
                                  (let ((_target162393162462_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163282_ 0)))
                                        (_tl162395162465_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163282_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162395162465_))
                                        (letrec ((_loop162396162468_
                                                  (lambda (_hd162394162472_
                                                           _arity162400162475_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162394162472_))
                                                        (let ((_e162397162478_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162394162472_))))
                  (let ((_lp-hd162398162482_
                         (let () (declare (not safe)) (##car _e162397162478_)))
                        (_lp-tl162399162485_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162397162478_))))
                    (_loop162396162468_
                     _lp-tl162399162485_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd162398162482_ _arity162400162475_)))))
                (let ((_arity162401162488_ (reverse _arity162400162475_)))
                  (_loop162382162430_
                   _lp-tl162385162449_
                   (let ()
                     (declare (not safe))
                     (cons _arity162401162488_ _arity162386162437_))
                   (let ()
                     (declare (not safe))
                     (cons _hd162391162456_ _prim162387162439_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162396162468_
                                           _target162393162462_
                                           '()))
                                        (_g162372162407_ _g162373162411_)))))
                              (_g162372162407_ _g162373162411_))))
                      (_g162372162407_ _g162373162411_))))
              (let ((_arity162388162492_ (reverse _arity162386162437_))
                    (_prim162389162495_ (reverse _prim162387162439_)))
                ((lambda (_L162498_ _L162500_)
                   (let ((__tmp163281
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163274
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162498_
                               _L162500_))
                            (let ((__tmp163275
                                   (lambda (_g162515162521_
                                            _g162516162524_
                                            _g162517162526_)
                                     (let ((__tmp163276
                                            (let ((__tmp163280
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp163277
                                                   (let ((__tmp163278
                                                          (let ((__tmp163279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162518162529_ _g162519162532_)
                           (let ()
                             (declare (not safe))
                             (cons _g162518162529_ _g162519162532_)))))
                    (declare (not safe))
                    (foldr1 __tmp163279 '() _g162515162521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162516162524_
                                                           __tmp163278))))
                                              (declare (not safe))
                                              (cons __tmp163280 __tmp163277))))
                                       (declare (not safe))
                                       (cons __tmp163276 _g162517162526_)))))
                              (declare (not safe))
                              (foldr2 __tmp163275 '() _L162498_ _L162500_)))))
                     (declare (not safe))
                     (cons __tmp163281 __tmp163274)))
                 _arity162388162492_
                 _prim162389162495_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop162382162430_
                                         _target162379162424_
                                         '()
                                         '()))
                                      (_g162372162407_ _g162373162411_)))))
                            (_g162372162407_ _g162373162411_))))
                    (_g162372162407_ _g162373162411_)))))
        (_g162371162535_ _$stx162368_)))))
