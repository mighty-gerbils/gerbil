(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx159437_)
      (let* ((_g159441159459_
              (lambda (_g159442159455_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159442159455_))))
             (_g159440159514_
              (lambda (_g159442159463_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159442159463_))
                    (let ((_e159447159466_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159442159463_))))
                      (let ((_hd159446159470_
                             (let ()
                               (declare (not safe))
                               (##car _e159447159466_)))
                            (_tl159445159473_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159447159466_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159445159473_))
                            (let ((_e159450159476_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159445159473_))))
                              (let ((_hd159449159480_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159450159476_)))
                                    (_tl159448159483_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159450159476_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159448159483_))
                                    (let ((_e159453159486_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159448159483_))))
                                      (let ((_hd159452159490_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159453159486_)))
                                            (_tl159451159493_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159453159486_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159451159493_))
                                            ((lambda (_L159496_ _L159498_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L159498_))
                                                   (let ((__tmp162978
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp162973
                                                          (let ((__tmp162975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162977
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162976
                                (let ()
                                  (declare (not safe))
                                  (cons _L159498_ '()))))
                           (declare (not safe))
                           (cons __tmp162977 __tmp162976)))
                        (__tmp162974
                         (let () (declare (not safe)) (cons _L159496_ '()))))
                    (declare (not safe))
                    (cons __tmp162975 __tmp162974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162978
                                                           __tmp162973))
                                                   (_g159441159459_
                                                    _g159442159463_)))
                                             _hd159452159490_
                                             _hd159449159480_)
                                            (_g159441159459_
                                             _g159442159463_))))
                                    (_g159441159459_ _g159442159463_))))
                            (_g159441159459_ _g159442159463_))))
                    (_g159441159459_ _g159442159463_)))))
        (_g159440159514_ _$stx159437_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx159518_)
      (let* ((_g159522159551_
              (lambda (_g159523159547_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159523159547_))))
             (_g159521159651_
              (lambda (_g159523159555_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159523159555_))
                    (let ((_e159528159558_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159523159555_))))
                      (let ((_hd159527159562_
                             (let ()
                               (declare (not safe))
                               (##car _e159528159558_)))
                            (_tl159526159565_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159528159558_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159526159565_))
                            (let ((_g162979_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159526159565_
                                      '0))))
                              (begin
                                (let ((_g162980_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162979_)
                                             (##vector-length _g162979_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162980_ 2)))
                                      (error "Context expects 2 values"
                                             _g162980_)))
                                (let ((_target159529159568_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162979_ 0)))
                                      (_tl159531159571_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162979_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159531159571_))
                                      (letrec ((_loop159532159574_
                                                (lambda (_hd159530159578_
                                                         _type159536159581_
                                                         _symbol159537159583_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159530159578_))
                                                      (let ((_e159533159586_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159530159578_))))
                (let ((_lp-hd159534159590_
                       (let () (declare (not safe)) (##car _e159533159586_)))
                      (_lp-tl159535159593_
                       (let () (declare (not safe)) (##cdr _e159533159586_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159534159590_))
                      (let ((_e159542159596_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159534159590_))))
                        (let ((_hd159541159600_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159542159596_)))
                              (_tl159540159603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159542159596_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159540159603_))
                              (let ((_e159545159606_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159540159603_))))
                                (let ((_hd159544159610_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159545159606_)))
                                      (_tl159543159613_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159545159606_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159543159613_))
                                      (_loop159532159574_
                                       _lp-tl159535159593_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159544159610_
                                               _type159536159581_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159541159600_
                                               _symbol159537159583_)))
                                      (_g159522159551_ _g159523159555_))))
                              (_g159522159551_ _g159523159555_))))
                      (_g159522159551_ _g159523159555_))))
              (let ((_type159538159616_ (reverse _type159536159581_))
                    (_symbol159539159619_ (reverse _symbol159537159583_)))
                ((lambda (_L159622_ _L159624_)
                   (let ((__tmp162987
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162981
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159622_
                               _L159624_))
                            (let ((__tmp162982
                                   (lambda (_g159639159643_
                                            _g159640159646_
                                            _g159641159648_)
                                     (let ((__tmp162983
                                            (let ((__tmp162986
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162984
                                                   (let ((__tmp162985
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g159639159643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159640159646_
                                                           __tmp162985))))
                                              (declare (not safe))
                                              (cons __tmp162986 __tmp162984))))
                                       (declare (not safe))
                                       (cons __tmp162983 _g159641159648_)))))
                              (declare (not safe))
                              (foldr2 __tmp162982 '() _L159622_ _L159624_)))))
                     (declare (not safe))
                     (cons __tmp162987 __tmp162981)))
                 _type159538159616_
                 _symbol159539159619_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159532159574_
                                         _target159529159568_
                                         '()
                                         '()))
                                      (_g159522159551_ _g159523159555_)))))
                            (_g159522159551_ _g159523159555_))))
                    (_g159522159551_ _g159523159555_)))))
        (_g159521159651_ _$stx159518_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx159656_)
      (let* ((___stx162538162539_ _$stx159656_)
             (_g159661159703_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162538162539_)))))
        (let ((___kont162541162542_
               (lambda (_L159831_ _L159833_ _L159834_ _L159835_)
                 (let ((__tmp163001
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162988
                        (let ((__tmp162998
                               (let ((__tmp163000
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162999
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159835_ '()))))
                                 (declare (not safe))
                                 (cons __tmp163000 __tmp162999)))
                              (__tmp162989
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
                                               (cons _L159834_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162997 __tmp162996)))
                                     (__tmp162990
                                      (let ((__tmp162992
                                             (let ((__tmp162994
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162993
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159833_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162994 __tmp162993)))
                                            (__tmp162991
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159831_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162992 __tmp162991))))
                                 (declare (not safe))
                                 (cons __tmp162995 __tmp162990))))
                          (declare (not safe))
                          (cons __tmp162998 __tmp162989))))
                   (declare (not safe))
                   (cons __tmp163001 __tmp162988))))
              (___kont162543162544_
               (lambda (_L159750_ _L159752_ _L159753_ _L159754_)
                 (let ((__tmp163002
                        (let ((__tmp163003
                               (let ((__tmp163004
                                      (let ((__tmp163005
                                             (let ((__tmp163006
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp163006 '()))))
                                        (declare (not safe))
                                        (cons _L159750_ __tmp163005))))
                                 (declare (not safe))
                                 (cons _L159752_ __tmp163004))))
                          (declare (not safe))
                          (cons _L159753_ __tmp163003))))
                   (declare (not safe))
                   (cons _L159754_ __tmp163002)))))
          (let ((___match162577162578_
                 (lambda (_e159669159781_
                          _hd159668159785_
                          _tl159667159788_
                          _e159672159791_
                          _hd159671159795_
                          _tl159670159798_
                          _e159675159801_
                          _hd159674159805_
                          _tl159673159808_
                          _e159678159811_
                          _hd159677159815_
                          _tl159676159818_
                          _e159681159821_
                          _hd159680159825_
                          _tl159679159828_)
                   (let ((_L159831_ _hd159680159825_)
                         (_L159833_ _hd159677159815_)
                         (_L159834_ _hd159674159805_)
                         (_L159835_ _hd159671159795_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159835_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159834_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159833_)))
                         (___kont162541162542_
                          _L159831_
                          _L159833_
                          _L159834_
                          _L159835_)
                         (let () (declare (not safe)) (_g159661159703_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162538162539_))
                (let ((_e159669159781_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162538162539_))))
                  (let ((_tl159667159788_
                         (let () (declare (not safe)) (##cdr _e159669159781_)))
                        (_hd159668159785_
                         (let ()
                           (declare (not safe))
                           (##car _e159669159781_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159667159788_))
                        (let ((_e159672159791_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159667159788_))))
                          (let ((_tl159670159798_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159672159791_)))
                                (_hd159671159795_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159672159791_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159670159798_))
                                (let ((_e159675159801_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159670159798_))))
                                  (let ((_tl159673159808_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159675159801_)))
                                        (_hd159674159805_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159675159801_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl159673159808_))
                                        (let ((_e159678159811_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl159673159808_))))
                                          (let ((_tl159676159818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e159678159811_)))
                                                (_hd159677159815_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e159678159811_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159676159818_))
                                                (let ((_e159681159821_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159676159818_))))
                                                  (let ((_tl159679159828_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159681159821_)))
                                                        (_hd159680159825_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159681159821_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159679159828_))
                                                        (___match162577162578_
                                                         _e159669159781_
                                                         _hd159668159785_
                                                         _tl159667159788_
                                                         _e159672159791_
                                                         _hd159671159795_
                                                         _tl159670159798_
                                                         _e159675159801_
                                                         _hd159674159805_
                                                         _tl159673159808_
                                                         _e159678159811_
                                                         _hd159677159815_
                                                         _tl159676159818_
                                                         _e159681159821_
                                                         _hd159680159825_
                                                         _tl159679159828_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159661159703_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159676159818_))
                                                    (___kont162543162544_
                                                     _hd159677159815_
                                                     _hd159674159805_
                                                     _hd159671159795_
                                                     _hd159668159785_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159661159703_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g159661159703_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g159661159703_)))))
                        (let () (declare (not safe)) (_g159661159703_)))))
                (let () (declare (not safe)) (_g159661159703_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159860_)
      (let* ((_g159864159899_
              (lambda (_g159865159895_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159865159895_))))
             (_g159863160018_
              (lambda (_g159865159903_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159865159903_))
                    (let ((_e159871159906_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159865159903_))))
                      (let ((_hd159870159910_
                             (let ()
                               (declare (not safe))
                               (##car _e159871159906_)))
                            (_tl159869159913_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159871159906_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159869159913_))
                            (let ((_g163007_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159869159913_
                                      '0))))
                              (begin
                                (let ((_g163008_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163007_)
                                             (##vector-length _g163007_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163008_ 2)))
                                      (error "Context expects 2 values"
                                             _g163008_)))
                                (let ((_target159872159916_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163007_ 0)))
                                      (_tl159874159919_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163007_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159874159919_))
                                      (letrec ((_loop159875159922_
                                                (lambda (_hd159873159926_
                                                         _symbol159879159929_
                                                         _method159880159931_
                                                         _type-t159881159933_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159873159926_))
                                                      (let ((_e159876159936_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159873159926_))))
                (let ((_lp-hd159877159940_
                       (let () (declare (not safe)) (##car _e159876159936_)))
                      (_lp-tl159878159943_
                       (let () (declare (not safe)) (##cdr _e159876159936_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159877159940_))
                      (let ((_e159887159946_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159877159940_))))
                        (let ((_hd159886159950_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159887159946_)))
                              (_tl159885159953_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159887159946_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159885159953_))
                              (let ((_e159890159956_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159885159953_))))
                                (let ((_hd159889159960_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159890159956_)))
                                      (_tl159888159963_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159890159956_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159888159963_))
                                      (let ((_e159893159966_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159888159963_))))
                                        (let ((_hd159892159970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159893159966_)))
                                              (_tl159891159973_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159893159966_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159891159973_))
                                              (_loop159875159922_
                                               _lp-tl159878159943_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159892159970_
                                                       _symbol159879159929_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159889159960_
                                                       _method159880159931_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159886159950_
                                                       _type-t159881159933_)))
                                              (_g159864159899_
                                               _g159865159903_))))
                                      (_g159864159899_ _g159865159903_))))
                              (_g159864159899_ _g159865159903_))))
                      (_g159864159899_ _g159865159903_))))
              (let ((_symbol159882159976_ (reverse _symbol159879159929_))
                    (_method159883159979_ (reverse _method159880159931_))
                    (_type-t159884159981_ (reverse _type-t159881159933_)))
                ((lambda (_L159984_ _L159986_ _L159987_)
                   (let ((__tmp163016
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163009
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159984_
                               _L159986_
                               _L159987_))
                            (let ((__tmp163010
                                   (lambda (_g160003160008_
                                            _g160004160011_
                                            _g160005160013_
                                            _g160006160015_)
                                     (let ((__tmp163011
                                            (let ((__tmp163015
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp163012
                                                   (let ((__tmp163013
                                                          (let ((__tmp163014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g160003160008_ '()))))
                    (declare (not safe))
                    (cons _g160004160011_ __tmp163014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160005160013_
                                                           __tmp163013))))
                                              (declare (not safe))
                                              (cons __tmp163015 __tmp163012))))
                                       (declare (not safe))
                                       (cons __tmp163011 _g160006160015_)))))
                              (declare (not safe))
                              (foldr* __tmp163010
                                      '()
                                      _L159984_
                                      _L159986_
                                      _L159987_)))))
                     (declare (not safe))
                     (cons __tmp163016 __tmp163009)))
                 _symbol159882159976_
                 _method159883159979_
                 _type-t159884159981_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159875159922_
                                         _target159872159916_
                                         '()
                                         '()
                                         '()))
                                      (_g159864159899_ _g159865159903_)))))
                            (_g159864159899_ _g159865159903_))))
                    (_g159864159899_ _g159865159903_)))))
        (_g159863160018_ _$stx159860_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx160023_)
      (let* ((_g160027160060_
              (lambda (_g160028160056_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160028160056_))))
             (_g160026160174_
              (lambda (_g160028160064_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160028160064_))
                    (let ((_e160034160067_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160028160064_))))
                      (let ((_hd160033160071_
                             (let ()
                               (declare (not safe))
                               (##car _e160034160067_)))
                            (_tl160032160074_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160034160067_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160032160074_))
                            (let ((_e160037160077_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160032160074_))))
                              (let ((_hd160036160081_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160037160077_)))
                                    (_tl160035160084_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160037160077_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160035160084_))
                                    (let ((_g163017_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160035160084_
                                              '0))))
                                      (begin
                                        (let ((_g163018_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g163017_)
                                                     (##vector-length
                                                      _g163017_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g163018_ 2)))
                                              (error "Context expects 2 values"
                                                     _g163018_)))
                                        (let ((_target160038160087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163017_ 0)))
                                              (_tl160040160090_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163017_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160040160090_))
                                              (letrec ((_loop160041160093_
                                                        (lambda (_hd160039160097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol160045160100_
                         _method160046160102_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd160039160097_))
                      (let ((_e160042160105_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd160039160097_))))
                        (let ((_lp-hd160043160109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160042160105_)))
                              (_lp-tl160044160112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160042160105_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd160043160109_))
                              (let ((_e160051160115_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd160043160109_))))
                                (let ((_hd160050160119_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160051160115_)))
                                      (_tl160049160122_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160051160115_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160049160122_))
                                      (let ((_e160054160125_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160049160122_))))
                                        (let ((_hd160053160129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160054160125_)))
                                              (_tl160052160132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160054160125_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160052160132_))
                                              (_loop160041160093_
                                               _lp-tl160044160112_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160053160129_
                                                       _symbol160045160100_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160050160119_
                                                       _method160046160102_)))
                                              (_g160027160060_
                                               _g160028160064_))))
                                      (_g160027160060_ _g160028160064_))))
                              (_g160027160060_ _g160028160064_))))
                      (let ((_symbol160047160135_
                             (reverse _symbol160045160100_))
                            (_method160048160138_
                             (reverse _method160046160102_)))
                        ((lambda (_L160141_ _L160143_ _L160144_)
                           (let ((__tmp163026
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp163019
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L160141_
                                       _L160143_))
                                    (let ((__tmp163020
                                           (lambda (_g160162160166_
                                                    _g160163160169_
                                                    _g160164160171_)
                                             (let ((__tmp163021
                                                    (let ((__tmp163025
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp163022
                                                           (let ((__tmp163023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp163024
                                 (let ()
                                   (declare (not safe))
                                   (cons _g160162160166_ '()))))
                            (declare (not safe))
                            (cons _g160163160169_ __tmp163024))))
                     (declare (not safe))
                     (cons _L160144_ __tmp163023))))
              (declare (not safe))
              (cons __tmp163025 __tmp163022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163021
                                                     _g160164160171_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp163020
                                              '()
                                              _L160141_
                                              _L160143_)))))
                             (declare (not safe))
                             (cons __tmp163026 __tmp163019)))
                         _symbol160047160135_
                         _method160048160138_
                         _hd160036160081_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop160041160093_
                                                 _target160038160087_
                                                 '()
                                                 '()))
                                              (_g160027160060_
                                               _g160028160064_)))))
                                    (_g160027160060_ _g160028160064_))))
                            (_g160027160060_ _g160028160064_))))
                    (_g160027160060_ _g160028160064_)))))
        (_g160026160174_ _$stx160023_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx160179_)
      (let* ((_g160183160197_
              (lambda (_g160184160193_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160184160193_))))
             (_g160182160238_
              (lambda (_g160184160201_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160184160201_))
                    (let ((_e160188160204_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160184160201_))))
                      (let ((_hd160187160208_
                             (let ()
                               (declare (not safe))
                               (##car _e160188160204_)))
                            (_tl160186160211_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160188160204_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160186160211_))
                            (let ((_e160191160214_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160186160211_))))
                              (let ((_hd160190160218_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160191160214_)))
                                    (_tl160189160221_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160191160214_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160189160221_))
                                    ((lambda (_L160224_)
                                       (let ((__tmp163031
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp163027
                                              (let ((__tmp163028
                                                     (let ((__tmp163030
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163029
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163030 __tmp163029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163028 '()))))
                                         (declare (not safe))
                                         (cons __tmp163031 __tmp163027)))
                                     _hd160190160218_)
                                    (_g160183160197_ _g160184160201_))))
                            (_g160183160197_ _g160184160201_))))
                    (_g160183160197_ _g160184160201_)))))
        (_g160182160238_ _$stx160179_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx160242_)
      (let* ((_g160246160296_
              (lambda (_g160247160292_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160247160292_))))
             (_g160245160463_
              (lambda (_g160247160300_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160247160300_))
                    (let ((_e160260160303_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160247160300_))))
                      (let ((_hd160259160307_
                             (let ()
                               (declare (not safe))
                               (##car _e160260160303_)))
                            (_tl160258160310_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160260160303_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160258160310_))
                            (let ((_e160263160313_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160258160310_))))
                              (let ((_hd160262160317_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160263160313_)))
                                    (_tl160261160320_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160263160313_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160261160320_))
                                    (let ((_e160266160323_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160261160320_))))
                                      (let ((_hd160265160327_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160266160323_)))
                                            (_tl160264160330_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160266160323_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160264160330_))
                                            (let ((_e160269160333_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160264160330_))))
                                              (let ((_hd160268160337_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160269160333_)))
                                                    (_tl160267160340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160269160333_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160267160340_))
                                                    (let ((_e160272160343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160267160340_))))
                                                      (let ((_hd160271160347_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e160272160343_)))
                    (_tl160270160350_
                     (let () (declare (not safe)) (##cdr _e160272160343_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl160270160350_))
                    (let ((_e160275160353_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl160270160350_))))
                      (let ((_hd160274160357_
                             (let ()
                               (declare (not safe))
                               (##car _e160275160353_)))
                            (_tl160273160360_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160275160353_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160273160360_))
                            (let ((_e160278160363_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160273160360_))))
                              (let ((_hd160277160367_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160278160363_)))
                                    (_tl160276160370_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160278160363_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160276160370_))
                                    (let ((_e160281160373_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160276160370_))))
                                      (let ((_hd160280160377_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160281160373_)))
                                            (_tl160279160380_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160281160373_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160279160380_))
                                            (let ((_e160284160383_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160279160380_))))
                                              (let ((_hd160283160387_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160284160383_)))
                                                    (_tl160282160390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160284160383_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160282160390_))
                                                    (let ((_e160287160393_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160282160390_))))
                                                      (let ((_hd160286160397_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e160287160393_)))
                    (_tl160285160400_
                     (let () (declare (not safe)) (##cdr _e160287160393_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl160285160400_))
                    (let ((_e160290160403_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl160285160400_))))
                      (let ((_hd160289160407_
                             (let ()
                               (declare (not safe))
                               (##car _e160290160403_)))
                            (_tl160288160410_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160290160403_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl160288160410_))
                            ((lambda (_L160413_
                                      _L160415_
                                      _L160416_
                                      _L160417_
                                      _L160418_
                                      _L160419_
                                      _L160420_
                                      _L160421_
                                      _L160422_
                                      _L160423_)
                               (let ((__tmp163066
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp163032
                                      (let ((__tmp163063
                                             (let ((__tmp163065
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163064
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160423_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163065 __tmp163064)))
                                            (__tmp163033
                                             (let ((__tmp163060
                                                    (let ((__tmp163062
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp163061
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L160422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp163062 __tmp163061)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp163034
                                                    (let ((__tmp163057
                                                           (let ((__tmp163059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp163058
                          (let () (declare (not safe)) (cons _L160421_ '()))))
                     (declare (not safe))
                     (cons __tmp163059 __tmp163058)))
                  (__tmp163035
                   (let ((__tmp163054
                          (let ((__tmp163056
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp163055
                                 (let ()
                                   (declare (not safe))
                                   (cons _L160420_ '()))))
                            (declare (not safe))
                            (cons __tmp163056 __tmp163055)))
                         (__tmp163036
                          (let ((__tmp163051
                                 (let ((__tmp163053
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp163052
                                        (let ()
                                          (declare (not safe))
                                          (cons _L160419_ '()))))
                                   (declare (not safe))
                                   (cons __tmp163053 __tmp163052)))
                                (__tmp163037
                                 (let ((__tmp163048
                                        (let ((__tmp163050
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp163049
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L160418_ '()))))
                                          (declare (not safe))
                                          (cons __tmp163050 __tmp163049)))
                                       (__tmp163038
                                        (let ((__tmp163039
                                               (let ((__tmp163040
                                                      (let ((__tmp163045
                                                             (let ((__tmp163047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163046
                            (let ()
                              (declare (not safe))
                              (cons _L160415_ '()))))
                       (declare (not safe))
                       (cons __tmp163047 __tmp163046)))
                    (__tmp163041
                     (let ((__tmp163042
                            (let ((__tmp163044
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163043
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160413_ '()))))
                              (declare (not safe))
                              (cons __tmp163044 __tmp163043))))
                       (declare (not safe))
                       (cons __tmp163042 '()))))
                (declare (not safe))
                (cons __tmp163045 __tmp163041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L160416_
                                                       __tmp163040))))
                                          (declare (not safe))
                                          (cons _L160417_ __tmp163039))))
                                   (declare (not safe))
                                   (cons __tmp163048 __tmp163038))))
                            (declare (not safe))
                            (cons __tmp163051 __tmp163037))))
                     (declare (not safe))
                     (cons __tmp163054 __tmp163036))))
              (declare (not safe))
              (cons __tmp163057 __tmp163035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163060
                                                     __tmp163034))))
                                        (declare (not safe))
                                        (cons __tmp163063 __tmp163033))))
                                 (declare (not safe))
                                 (cons __tmp163066 __tmp163032)))
                             _hd160289160407_
                             _hd160286160397_
                             _hd160283160387_
                             _hd160280160377_
                             _hd160277160367_
                             _hd160274160357_
                             _hd160271160347_
                             _hd160268160337_
                             _hd160265160327_
                             _hd160262160317_)
                            (_g160246160296_ _g160247160300_))))
                    (_g160246160296_ _g160247160300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g160246160296_
                                                     _g160247160300_))))
                                            (_g160246160296_
                                             _g160247160300_))))
                                    (_g160246160296_ _g160247160300_))))
                            (_g160246160296_ _g160247160300_))))
                    (_g160246160296_ _g160247160300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g160246160296_
                                                     _g160247160300_))))
                                            (_g160246160296_
                                             _g160247160300_))))
                                    (_g160246160296_ _g160247160300_))))
                            (_g160246160296_ _g160247160300_))))
                    (_g160246160296_ _g160247160300_)))))
        (_g160245160463_ _$stx160242_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx160467_)
      (let* ((_g160471160485_
              (lambda (_g160472160481_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160472160481_))))
             (_g160470160526_
              (lambda (_g160472160489_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160472160489_))
                    (let ((_e160476160492_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160472160489_))))
                      (let ((_hd160475160496_
                             (let ()
                               (declare (not safe))
                               (##car _e160476160492_)))
                            (_tl160474160499_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160476160492_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160474160499_))
                            (let ((_e160479160502_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160474160499_))))
                              (let ((_hd160478160506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160479160502_)))
                                    (_tl160477160509_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160479160502_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160477160509_))
                                    ((lambda (_L160512_)
                                       (let ((__tmp163071
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp163067
                                              (let ((__tmp163068
                                                     (let ((__tmp163070
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163069
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163070 __tmp163069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163068 '()))))
                                         (declare (not safe))
                                         (cons __tmp163071 __tmp163067)))
                                     _hd160478160506_)
                                    (_g160471160485_ _g160472160489_))))
                            (_g160471160485_ _g160472160489_))))
                    (_g160471160485_ _g160472160489_)))))
        (_g160470160526_ _$stx160467_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx160530_)
      (let* ((_g160534160548_
              (lambda (_g160535160544_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160535160544_))))
             (_g160533160589_
              (lambda (_g160535160552_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160535160552_))
                    (let ((_e160539160555_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160535160552_))))
                      (let ((_hd160538160559_
                             (let ()
                               (declare (not safe))
                               (##car _e160539160555_)))
                            (_tl160537160562_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160539160555_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160537160562_))
                            (let ((_e160542160565_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160537160562_))))
                              (let ((_hd160541160569_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160542160565_)))
                                    (_tl160540160572_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160542160565_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160540160572_))
                                    ((lambda (_L160575_)
                                       (let ((__tmp163076
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp163072
                                              (let ((__tmp163073
                                                     (let ((__tmp163075
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163074
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163075 __tmp163074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163073 '()))))
                                         (declare (not safe))
                                         (cons __tmp163076 __tmp163072)))
                                     _hd160541160569_)
                                    (_g160534160548_ _g160535160552_))))
                            (_g160534160548_ _g160535160552_))))
                    (_g160534160548_ _g160535160552_)))))
        (_g160533160589_ _$stx160530_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx160593_)
      (let* ((_g160597160619_
              (lambda (_g160598160615_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160598160615_))))
             (_g160596160688_
              (lambda (_g160598160623_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160598160623_))
                    (let ((_e160604160626_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160598160623_))))
                      (let ((_hd160603160630_
                             (let ()
                               (declare (not safe))
                               (##car _e160604160626_)))
                            (_tl160602160633_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160604160626_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160602160633_))
                            (let ((_e160607160636_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160602160633_))))
                              (let ((_hd160606160640_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160607160636_)))
                                    (_tl160605160643_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160607160636_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160605160643_))
                                    (let ((_e160610160646_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160605160643_))))
                                      (let ((_hd160609160650_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160610160646_)))
                                            (_tl160608160653_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160610160646_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160608160653_))
                                            (let ((_e160613160656_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160608160653_))))
                                              (let ((_hd160612160660_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160613160656_)))
                                                    (_tl160611160663_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160613160656_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160611160663_))
                                                    ((lambda (_L160666_
                                                              _L160668_
                                                              _L160669_)
                                                       (let ((__tmp163086
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp163077
                      (let ((__tmp163083
                             (let ((__tmp163085
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163084
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160669_ '()))))
                               (declare (not safe))
                               (cons __tmp163085 __tmp163084)))
                            (__tmp163078
                             (let ((__tmp163080
                                    (let ((__tmp163082
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163081
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160668_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163082 __tmp163081)))
                                   (__tmp163079
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160666_ '()))))
                               (declare (not safe))
                               (cons __tmp163080 __tmp163079))))
                        (declare (not safe))
                        (cons __tmp163083 __tmp163078))))
                 (declare (not safe))
                 (cons __tmp163086 __tmp163077)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160612160660_
                                                     _hd160609160650_
                                                     _hd160606160640_)
                                                    (_g160597160619_
                                                     _g160598160623_))))
                                            (_g160597160619_
                                             _g160598160623_))))
                                    (_g160597160619_ _g160598160623_))))
                            (_g160597160619_ _g160598160623_))))
                    (_g160597160619_ _g160598160623_)))))
        (_g160596160688_ _$stx160593_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx160692_)
      (let* ((_g160696160718_
              (lambda (_g160697160714_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160697160714_))))
             (_g160695160787_
              (lambda (_g160697160722_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160697160722_))
                    (let ((_e160703160725_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160697160722_))))
                      (let ((_hd160702160729_
                             (let ()
                               (declare (not safe))
                               (##car _e160703160725_)))
                            (_tl160701160732_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160703160725_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160701160732_))
                            (let ((_e160706160735_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160701160732_))))
                              (let ((_hd160705160739_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160706160735_)))
                                    (_tl160704160742_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160706160735_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160704160742_))
                                    (let ((_e160709160745_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160704160742_))))
                                      (let ((_hd160708160749_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160709160745_)))
                                            (_tl160707160752_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160709160745_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160707160752_))
                                            (let ((_e160712160755_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160707160752_))))
                                              (let ((_hd160711160759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160712160755_)))
                                                    (_tl160710160762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160712160755_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160710160762_))
                                                    ((lambda (_L160765_
                                                              _L160767_
                                                              _L160768_)
                                                       (let ((__tmp163096
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp163087
                      (let ((__tmp163093
                             (let ((__tmp163095
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163094
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160768_ '()))))
                               (declare (not safe))
                               (cons __tmp163095 __tmp163094)))
                            (__tmp163088
                             (let ((__tmp163090
                                    (let ((__tmp163092
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163091
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160767_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163092 __tmp163091)))
                                   (__tmp163089
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160765_ '()))))
                               (declare (not safe))
                               (cons __tmp163090 __tmp163089))))
                        (declare (not safe))
                        (cons __tmp163093 __tmp163088))))
                 (declare (not safe))
                 (cons __tmp163096 __tmp163087)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160711160759_
                                                     _hd160708160749_
                                                     _hd160705160739_)
                                                    (_g160696160718_
                                                     _g160697160722_))))
                                            (_g160696160718_
                                             _g160697160722_))))
                                    (_g160696160718_ _g160697160722_))))
                            (_g160696160718_ _g160697160722_))))
                    (_g160696160718_ _g160697160722_)))))
        (_g160695160787_ _$stx160692_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160791_)
      (let* ((___stx162606162607_ _$stx160791_)
             (_g160799160867_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162606162607_)))))
        (let ((___kont162609162610_
               (lambda (_L161145_ _L161147_)
                 (let ((__tmp163117
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp163097
                        (let ((__tmp163113
                               (let ((__tmp163116
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163114
                                      (let ((__tmp163115
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163115 '()))))
                                 (declare (not safe))
                                 (cons __tmp163116 __tmp163114)))
                              (__tmp163098
                               (let ((__tmp163110
                                      (let ((__tmp163112
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163111
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161147_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163112 __tmp163111)))
                                     (__tmp163099
                                      (let ((__tmp163100
                                             (let ((__tmp163101
                                                    (let ((__tmp163102
                                                           (let ((__tmp163109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp163103
                          (let ((__tmp163104
                                 (let ((__tmp163108
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp163105
                                        (let ((__tmp163106
                                               (let ((__tmp163107
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L161145_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp163107))))
                                          (declare (not safe))
                                          (cons _L161147_ __tmp163106))))
                                   (declare (not safe))
                                   (cons __tmp163108 __tmp163105))))
                            (declare (not safe))
                            (cons __tmp163104 '()))))
                     (declare (not safe))
                     (cons __tmp163109 __tmp163103))))
              (declare (not safe))
              (cons __tmp163102 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L161145_ __tmp163101))))
                                        (declare (not safe))
                                        (cons '#f __tmp163100))))
                                 (declare (not safe))
                                 (cons __tmp163110 __tmp163099))))
                          (declare (not safe))
                          (cons __tmp163113 __tmp163098))))
                   (declare (not safe))
                   (cons __tmp163117 __tmp163097))))
              (___kont162611162612_
               (lambda (_L161076_ _L161078_)
                 (let ((__tmp163118
                        (let ((__tmp163119
                               (let ((__tmp163120
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L161076_ __tmp163120))))
                          (declare (not safe))
                          (cons 'primitive: __tmp163119))))
                   (declare (not safe))
                   (cons _L161078_ __tmp163118))))
              (___kont162613162614_
               (lambda (_L161015_ _L161017_)
                 (let ((__tmp163134
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp163121
                        (let ((__tmp163130
                               (let ((__tmp163133
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163131
                                      (let ((__tmp163132
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163132 '()))))
                                 (declare (not safe))
                                 (cons __tmp163133 __tmp163131)))
                              (__tmp163122
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
                                               (cons _L161017_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163129 __tmp163128)))
                                     (__tmp163123
                                      (let ((__tmp163124
                                             (let ((__tmp163126
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163125
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161015_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163126
                                                     __tmp163125))))
                                        (declare (not safe))
                                        (cons __tmp163124 '()))))
                                 (declare (not safe))
                                 (cons __tmp163127 __tmp163123))))
                          (declare (not safe))
                          (cons __tmp163130 __tmp163122))))
                   (declare (not safe))
                   (cons __tmp163134 __tmp163121))))
              (___kont162615162616_
               (lambda (_L160947_ _L160949_)
                 (let ((__tmp163148
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp163135
                        (let ((__tmp163144
                               (let ((__tmp163147
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163145
                                      (let ((__tmp163146
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163146 '()))))
                                 (declare (not safe))
                                 (cons __tmp163147 __tmp163145)))
                              (__tmp163136
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
                                               (cons _L160949_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163143 __tmp163142)))
                                     (__tmp163137
                                      (let ((__tmp163138
                                             (let ((__tmp163140
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163139
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160947_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163140
                                                     __tmp163139))))
                                        (declare (not safe))
                                        (cons __tmp163138 '()))))
                                 (declare (not safe))
                                 (cons __tmp163141 __tmp163137))))
                          (declare (not safe))
                          (cons __tmp163144 __tmp163136))))
                   (declare (not safe))
                   (cons __tmp163148 __tmp163135))))
              (___kont162617162618_
               (lambda (_L160894_ _L160896_)
                 (let ((__tmp163149
                        (let ((__tmp163150
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160894_ __tmp163150))))
                   (declare (not safe))
                   (cons _L160896_ __tmp163149)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx162606162607_))
              (let ((_e160805161101_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx162606162607_))))
                (let ((_tl160803161108_
                       (let () (declare (not safe)) (##cdr _e160805161101_)))
                      (_hd160804161105_
                       (let () (declare (not safe)) (##car _e160805161101_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160803161108_))
                      (let ((_e160808161111_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160803161108_))))
                        (let ((_tl160806161118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160808161111_)))
                              (_hd160807161115_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160808161111_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160806161118_))
                              (let ((_e160811161121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160806161118_))))
                                (let ((_tl160809161128_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160811161121_)))
                                      (_hd160810161125_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160811161121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160810161125_))
                                      (let ((_e160812161131_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160810161125_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160812161131_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160809161128_))
                                                (let ((_e160815161135_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160809161128_))))
                                                  (let ((_tl160813161142_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160815161135_)))
                                                        (_hd160814161139_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160815161135_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160813161142_))
                                                        (___kont162609162610_
                                                         _hd160814161139_
                                                         _hd160807161115_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160807161115_))
                                                            (let ((_e160824161062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160807161115_))))
                      (declare (not safe))
                      (_g160799160867_))
                    (let () (declare (not safe)) (_g160799160867_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160807161115_))
                                                    (let ((_e160824161062_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160807161115_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160824161062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160809161128_))
                      (___kont162611162612_ _hd160810161125_ _hd160804161105_)
                      (let () (declare (not safe)) (_g160799160867_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160809161128_))
                      (___kont162615162616_ _hd160810161125_ _hd160807161115_)
                      (let () (declare (not safe)) (_g160799160867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160809161128_))
                                                        (___kont162615162616_
                                                         _hd160810161125_
                                                         _hd160807161115_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160799160867_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160807161115_))
                                                (let ((_e160824161062_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160807161115_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160824161062_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160809161128_))
                                                          (___kont162611162612_
                                                           _hd160810161125_
                                                           _hd160804161105_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160809161128_))
                      (let ((_e160842161005_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160809161128_))))
                        (let ((_tl160840161012_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160842161005_)))
                              (_hd160841161009_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160842161005_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160840161012_))
                              (___kont162613162614_
                               _hd160841161009_
                               _hd160810161125_)
                              (let ()
                                (declare (not safe))
                                (_g160799160867_)))))
                      (let () (declare (not safe)) (_g160799160867_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160809161128_))
                  (___kont162615162616_ _hd160810161125_ _hd160807161115_)
                  (let () (declare (not safe)) (_g160799160867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160809161128_))
                                                    (___kont162615162616_
                                                     _hd160810161125_
                                                     _hd160807161115_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160799160867_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160807161115_))
                                          (let ((_e160824161062_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160807161115_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160824161062_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160809161128_))
                                                    (___kont162611162612_
                                                     _hd160810161125_
                                                     _hd160804161105_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160809161128_))
                                                        (let ((_e160842161005_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160809161128_))))
                  (let ((_tl160840161012_
                         (let () (declare (not safe)) (##cdr _e160842161005_)))
                        (_hd160841161009_
                         (let ()
                           (declare (not safe))
                           (##car _e160842161005_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160840161012_))
                        (___kont162613162614_
                         _hd160841161009_
                         _hd160810161125_)
                        (let () (declare (not safe)) (_g160799160867_)))))
                (let () (declare (not safe)) (_g160799160867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160809161128_))
                                                    (___kont162615162616_
                                                     _hd160810161125_
                                                     _hd160807161115_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160799160867_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160809161128_))
                                              (___kont162615162616_
                                               _hd160810161125_
                                               _hd160807161115_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160799160867_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160807161115_))
                                  (let ((_e160824161062_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160807161115_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160806161118_))
                                        (___kont162617162618_
                                         _hd160807161115_
                                         _hd160804161105_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160799160867_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160806161118_))
                                      (___kont162617162618_
                                       _hd160807161115_
                                       _hd160804161105_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160799160867_)))))))
                      (let () (declare (not safe)) (_g160799160867_)))))
              (let () (declare (not safe)) (_g160799160867_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx161169_)
      (let* ((___stx162746162747_ _$stx161169_)
             (_g161174161229_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162746162747_)))))
        (let ((___kont162749162750_
               (lambda (_L161414_ _L161416_)
                 (let ((__tmp163166
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp163151
                        (let ((__tmp163162
                               (let ((__tmp163165
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163163
                                      (let ((__tmp163164
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp163164 '()))))
                                 (declare (not safe))
                                 (cons __tmp163165 __tmp163163)))
                              (__tmp163152
                               (let ((__tmp163153
                                      (let ((__tmp163161
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp163154
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L161414_
                                                  _L161416_))
                                               (let ((__tmp163155
                                                      (lambda (_g161433161437_
                                                               _g161434161440_
                                                               _g161435161442_)
                                                        (let ((__tmp163156
                                                               (let ((__tmp163160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp163157
                              (let ((__tmp163158
                                     (let ((__tmp163159
                                            (let ()
                                              (declare (not safe))
                                              (cons _g161433161437_ '()))))
                                       (declare (not safe))
                                       (cons _g161434161440_ __tmp163159))))
                                (declare (not safe))
                                (cons 'primitive: __tmp163158))))
                         (declare (not safe))
                         (cons __tmp163160 __tmp163157))))
                  (declare (not safe))
                  (cons __tmp163156 _g161435161442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp163155
                                                         '()
                                                         _L161414_
                                                         _L161416_)))))
                                        (declare (not safe))
                                        (cons __tmp163161 __tmp163154))))
                                 (declare (not safe))
                                 (cons __tmp163153 '()))))
                          (declare (not safe))
                          (cons __tmp163162 __tmp163152))))
                   (declare (not safe))
                   (cons __tmp163166 __tmp163151))))
              (___kont162753162754_
               (lambda (_L161300_ _L161302_)
                 (let ((__tmp163181
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp163167
                        (let ((__tmp163177
                               (let ((__tmp163180
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163178
                                      (let ((__tmp163179
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp163179 '()))))
                                 (declare (not safe))
                                 (cons __tmp163180 __tmp163178)))
                              (__tmp163168
                               (let ((__tmp163169
                                      (let ((__tmp163176
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp163170
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L161300_
                                                  _L161302_))
                                               (let ((__tmp163171
                                                      (lambda (_g161317161321_
                                                               _g161318161324_
                                                               _g161319161326_)
                                                        (let ((__tmp163172
                                                               (let ((__tmp163175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp163173
                              (let ((__tmp163174
                                     (let ()
                                       (declare (not safe))
                                       (cons _g161317161321_ '()))))
                                (declare (not safe))
                                (cons _g161318161324_ __tmp163174))))
                         (declare (not safe))
                         (cons __tmp163175 __tmp163173))))
                  (declare (not safe))
                  (cons __tmp163172 _g161319161326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp163171
                                                         '()
                                                         _L161300_
                                                         _L161302_)))))
                                        (declare (not safe))
                                        (cons __tmp163176 __tmp163170))))
                                 (declare (not safe))
                                 (cons __tmp163169 '()))))
                          (declare (not safe))
                          (cons __tmp163177 __tmp163168))))
                   (declare (not safe))
                   (cons __tmp163181 __tmp163167)))))
          (let* ((___match162797162798_
                  (lambda (_e161206161236_
                           _hd161205161240_
                           _tl161204161243_
                           ___splice162755162756_
                           _target161207161246_
                           _tl161209161249_)
                    (letrec ((_loop161210161252_
                              (lambda (_hd161208161256_
                                       _dispatch161214161259_
                                       _arity161215161261_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161208161256_))
                                    (let ((_e161211161264_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161208161256_))))
                                      (let ((_lp-tl161213161271_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161211161264_)))
                                            (_lp-hd161212161268_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161211161264_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd161212161268_))
                                            (let ((_e161220161274_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd161212161268_))))
                                              (let ((_tl161218161281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161220161274_)))
                                                    (_hd161219161278_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161220161274_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161218161281_))
                                                    (let ((_e161223161284_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161218161281_))))
                                                      (let ((_tl161221161291_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e161223161284_)))
                    (_hd161222161288_
                     (let () (declare (not safe)) (##car _e161223161284_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl161221161291_))
                    (_loop161210161252_
                     _lp-tl161213161271_
                     (let ()
                       (declare (not safe))
                       (cons _hd161222161288_ _dispatch161214161259_))
                     (let ()
                       (declare (not safe))
                       (cons _hd161219161278_ _arity161215161261_)))
                    (let () (declare (not safe)) (_g161174161229_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161174161229_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161174161229_)))))
                                    (let ((_arity161217161297_
                                           (reverse _arity161215161261_))
                                          (_dispatch161216161294_
                                           (reverse _dispatch161214161259_)))
                                      (___kont162753162754_
                                       _dispatch161216161294_
                                       _arity161217161297_))))))
                      (_loop161210161252_ _target161207161246_ '() '()))))
                 (___match162789162790_
                  (lambda (_e161206161236_ _hd161205161240_ _tl161204161243_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl161204161243_))
                        (let ((___splice162755162756_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl161204161243_
                                  '0))))
                          (let ((_tl161209161249_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162755162756_ '1)))
                                (_target161207161246_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162755162756_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl161209161249_))
                                (___match162797162798_
                                 _e161206161236_
                                 _hd161205161240_
                                 _tl161204161243_
                                 ___splice162755162756_
                                 _target161207161246_
                                 _tl161209161249_)
                                (let ()
                                  (declare (not safe))
                                  (_g161174161229_)))))
                        (let () (declare (not safe)) (_g161174161229_)))))
                 (___match162783162784_
                  (lambda (_e161180161336_
                           _hd161179161340_
                           _tl161178161343_
                           _e161183161346_
                           _hd161182161350_
                           _tl161181161353_
                           _e161184161356_
                           ___splice162751162752_
                           _target161185161360_
                           _tl161187161363_)
                    (letrec ((_loop161188161366_
                              (lambda (_hd161186161370_
                                       _dispatch161192161373_
                                       _arity161193161375_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161186161370_))
                                    (let ((_e161189161378_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161186161370_))))
                                      (let ((_lp-tl161191161385_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161189161378_)))
                                            (_lp-hd161190161382_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161189161378_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd161190161382_))
                                            (let ((_e161198161388_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd161190161382_))))
                                              (let ((_tl161196161395_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161198161388_)))
                                                    (_hd161197161392_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161198161388_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161196161395_))
                                                    (let ((_e161201161398_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161196161395_))))
                                                      (let ((_tl161199161405_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e161201161398_)))
                    (_hd161200161402_
                     (let () (declare (not safe)) (##car _e161201161398_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl161199161405_))
                    (_loop161188161366_
                     _lp-tl161191161385_
                     (let ()
                       (declare (not safe))
                       (cons _hd161200161402_ _dispatch161192161373_))
                     (let ()
                       (declare (not safe))
                       (cons _hd161197161392_ _arity161193161375_)))
                    (___match162789162790_
                     _e161180161336_
                     _hd161179161340_
                     _tl161178161343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162789162790_
                                                     _e161180161336_
                                                     _hd161179161340_
                                                     _tl161178161343_))))
                                            (___match162789162790_
                                             _e161180161336_
                                             _hd161179161340_
                                             _tl161178161343_))))
                                    (let ((_arity161195161411_
                                           (reverse _arity161193161375_))
                                          (_dispatch161194161408_
                                           (reverse _dispatch161192161373_)))
                                      (___kont162749162750_
                                       _dispatch161194161408_
                                       _arity161195161411_))))))
                      (_loop161188161366_ _target161185161360_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162746162747_))
                (let ((_e161180161336_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162746162747_))))
                  (let ((_tl161178161343_
                         (let () (declare (not safe)) (##cdr _e161180161336_)))
                        (_hd161179161340_
                         (let ()
                           (declare (not safe))
                           (##car _e161180161336_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161178161343_))
                        (let ((_e161183161346_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161178161343_))))
                          (let ((_tl161181161353_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161183161346_)))
                                (_hd161182161350_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161183161346_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd161182161350_))
                                (let ((_e161184161356_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd161182161350_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e161184161356_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl161181161353_))
                                          (let ((___splice162751162752_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl161181161353_
                                                    '0))))
                                            (let ((_tl161187161363_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162751162752_
                                                      '1)))
                                                  (_target161185161360_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162751162752_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161187161363_))
                                                  (___match162783162784_
                                                   _e161180161336_
                                                   _hd161179161340_
                                                   _tl161178161343_
                                                   _e161183161346_
                                                   _hd161182161350_
                                                   _tl161181161353_
                                                   _e161184161356_
                                                   ___splice162751162752_
                                                   _target161185161360_
                                                   _tl161187161363_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161178161343_))
                                                      (let ((___splice162755162756_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161178161343_ '0))))
                (let ((_tl161209161249_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162755162756_ '1)))
                      (_target161207161246_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162755162756_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161209161249_))
                      (___match162797162798_
                       _e161180161336_
                       _hd161179161340_
                       _tl161178161343_
                       ___splice162755162756_
                       _target161207161246_
                       _tl161209161249_)
                      (let () (declare (not safe)) (_g161174161229_)))))
              (let () (declare (not safe)) (_g161174161229_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl161178161343_))
                                              (let ((___splice162755162756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl161178161343_
                                                        '0))))
                                                (let ((_tl161209161249_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162755162756_
                                                          '1)))
                                                      (_target161207161246_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162755162756_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl161209161249_))
                                                      (___match162797162798_
                                                       _e161180161336_
                                                       _hd161179161340_
                                                       _tl161178161343_
                                                       ___splice162755162756_
                                                       _target161207161246_
                                                       _tl161209161249_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g161174161229_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g161174161229_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl161178161343_))
                                          (let ((___splice162755162756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl161178161343_
                                                    '0))))
                                            (let ((_tl161209161249_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162755162756_
                                                      '1)))
                                                  (_target161207161246_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162755162756_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161209161249_))
                                                  (___match162797162798_
                                                   _e161180161336_
                                                   _hd161179161340_
                                                   _tl161178161343_
                                                   ___splice162755162756_
                                                   _target161207161246_
                                                   _tl161209161249_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g161174161229_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g161174161229_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161178161343_))
                                    (let ((___splice162755162756_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161178161343_
                                              '0))))
                                      (let ((_tl161209161249_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162755162756_
                                                '1)))
                                            (_target161207161246_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162755162756_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161209161249_))
                                            (___match162797162798_
                                             _e161180161336_
                                             _hd161179161340_
                                             _tl161178161343_
                                             ___splice162755162756_
                                             _target161207161246_
                                             _tl161209161249_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161174161229_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161174161229_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161178161343_))
                            (let ((___splice162755162756_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161178161343_
                                      '0))))
                              (let ((_tl161209161249_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162755162756_
                                        '1)))
                                    (_target161207161246_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162755162756_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161209161249_))
                                    (___match162797162798_
                                     _e161180161336_
                                     _hd161179161340_
                                     _tl161178161343_
                                     ___splice162755162756_
                                     _target161207161246_
                                     _tl161209161249_)
                                    (let ()
                                      (declare (not safe))
                                      (_g161174161229_)))))
                            (let () (declare (not safe)) (_g161174161229_))))))
                (let () (declare (not safe)) (_g161174161229_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx161451_)
      (let* ((_g161455161473_
              (lambda (_g161456161469_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161456161469_))))
             (_g161454161528_
              (lambda (_g161456161477_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161456161477_))
                    (let ((_e161461161480_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161456161477_))))
                      (let ((_hd161460161484_
                             (let ()
                               (declare (not safe))
                               (##car _e161461161480_)))
                            (_tl161459161487_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161461161480_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161459161487_))
                            (let ((_e161464161490_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161459161487_))))
                              (let ((_hd161463161494_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161464161490_)))
                                    (_tl161462161497_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161464161490_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161462161497_))
                                    (let ((_e161467161500_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161462161497_))))
                                      (let ((_hd161466161504_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161467161500_)))
                                            (_tl161465161507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161467161500_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161465161507_))
                                            ((lambda (_L161510_ _L161512_)
                                               (let ((__tmp163195
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp163182
                                                      (let ((__tmp163191
                                                             (let ((__tmp163194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163192
                            (let ((__tmp163193
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp163193 '()))))
                       (declare (not safe))
                       (cons __tmp163194 __tmp163192)))
                    (__tmp163183
                     (let ((__tmp163188
                            (let ((__tmp163190
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163189
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161512_ '()))))
                              (declare (not safe))
                              (cons __tmp163190 __tmp163189)))
                           (__tmp163184
                            (let ((__tmp163185
                                   (let ((__tmp163187
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp163186
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161510_ '()))))
                                     (declare (not safe))
                                     (cons __tmp163187 __tmp163186))))
                              (declare (not safe))
                              (cons __tmp163185 '()))))
                       (declare (not safe))
                       (cons __tmp163188 __tmp163184))))
                (declare (not safe))
                (cons __tmp163191 __tmp163183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp163195
                                                       __tmp163182)))
                                             _hd161466161504_
                                             _hd161463161494_)
                                            (_g161455161473_
                                             _g161456161477_))))
                                    (_g161455161473_ _g161456161477_))))
                            (_g161455161473_ _g161456161477_))))
                    (_g161455161473_ _g161456161477_)))))
        (_g161454161528_ _$stx161451_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx161532_)
      (let* ((_g161536161554_
              (lambda (_g161537161550_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161537161550_))))
             (_g161535161609_
              (lambda (_g161537161558_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161537161558_))
                    (let ((_e161542161561_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161537161558_))))
                      (let ((_hd161541161565_
                             (let ()
                               (declare (not safe))
                               (##car _e161542161561_)))
                            (_tl161540161568_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161542161561_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161540161568_))
                            (let ((_e161545161571_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161540161568_))))
                              (let ((_hd161544161575_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161545161571_)))
                                    (_tl161543161578_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161545161571_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161543161578_))
                                    (let ((_e161548161581_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161543161578_))))
                                      (let ((_hd161547161585_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161548161581_)))
                                            (_tl161546161588_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161548161581_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161546161588_))
                                            ((lambda (_L161591_ _L161593_)
                                               (let ((__tmp163209
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp163196
                                                      (let ((__tmp163205
                                                             (let ((__tmp163208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163206
                            (let ((__tmp163207
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp163207 '()))))
                       (declare (not safe))
                       (cons __tmp163208 __tmp163206)))
                    (__tmp163197
                     (let ((__tmp163202
                            (let ((__tmp163204
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163203
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161593_ '()))))
                              (declare (not safe))
                              (cons __tmp163204 __tmp163203)))
                           (__tmp163198
                            (let ((__tmp163199
                                   (let ((__tmp163201
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp163200
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161591_ '()))))
                                     (declare (not safe))
                                     (cons __tmp163201 __tmp163200))))
                              (declare (not safe))
                              (cons __tmp163199 '()))))
                       (declare (not safe))
                       (cons __tmp163202 __tmp163198))))
                (declare (not safe))
                (cons __tmp163205 __tmp163197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp163209
                                                       __tmp163196)))
                                             _hd161547161585_
                                             _hd161544161575_)
                                            (_g161536161554_
                                             _g161537161558_))))
                                    (_g161536161554_ _g161537161558_))))
                            (_g161536161554_ _g161537161558_))))
                    (_g161536161554_ _g161537161558_)))))
        (_g161535161609_ _$stx161532_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx161613_)
      (let* ((___stx162800162801_ _$stx161613_)
             (_g161620161691_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162800162801_)))))
        (let ((___kont162803162804_
               (lambda (_L161982_ _L161984_)
                 (let ((__tmp163215
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163210
                        (let ((__tmp163211
                               (let ((__tmp163212
                                      (let ((__tmp163214
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163213
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161982_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163214 __tmp163213))))
                                 (declare (not safe))
                                 (cons __tmp163212 '()))))
                          (declare (not safe))
                          (cons _L161984_ __tmp163211))))
                   (declare (not safe))
                   (cons __tmp163215 __tmp163210))))
              (___kont162805162806_
               (lambda (_L161901_ _L161903_)
                 (let ((__tmp163224
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163216
                        (let ((__tmp163217
                               (let ((__tmp163218
                                      (let ((__tmp163223
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163219
                                             (let ((__tmp163220
                                                    (lambda (_g161922161925_
                                                             _g161923161928_)
                                                      (let ((__tmp163221
                                                             (let ((__tmp163222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161922161925_ __tmp163222))))
                (declare (not safe))
                (cons __tmp163221 _g161923161928_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp163220
                                                       '()
                                                       _L161901_))))
                                        (declare (not safe))
                                        (cons __tmp163223 __tmp163219))))
                                 (declare (not safe))
                                 (cons __tmp163218 '()))))
                          (declare (not safe))
                          (cons _L161903_ __tmp163217))))
                   (declare (not safe))
                   (cons __tmp163224 __tmp163216))))
              (___kont162809162810_
               (lambda (_L161813_ _L161815_)
                 (let ((__tmp163231
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163225
                        (let ((__tmp163226
                               (let ((__tmp163227
                                      (let ((__tmp163230
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163228
                                             (let ((__tmp163229
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161813_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp163229))))
                                        (declare (not safe))
                                        (cons __tmp163230 __tmp163228))))
                                 (declare (not safe))
                                 (cons __tmp163227 '()))))
                          (declare (not safe))
                          (cons _L161815_ __tmp163226))))
                   (declare (not safe))
                   (cons __tmp163231 __tmp163225))))
              (___kont162811162812_
               (lambda (_L161748_ _L161750_)
                 (let ((__tmp163241
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163232
                        (let ((__tmp163233
                               (let ((__tmp163234
                                      (let ((__tmp163240
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163235
                                             (let ((__tmp163236
                                                    (let ((__tmp163237
                                                           (lambda (_g161767161770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161768161773_)
                     (let ((__tmp163238
                            (let ((__tmp163239
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161767161770_ __tmp163239))))
                       (declare (not safe))
                       (cons __tmp163238 _g161768161773_)))))
              (declare (not safe))
              (foldr1 __tmp163237 '() _L161748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp163236))))
                                        (declare (not safe))
                                        (cons __tmp163240 __tmp163235))))
                                 (declare (not safe))
                                 (cons __tmp163234 '()))))
                          (declare (not safe))
                          (cons _L161750_ __tmp163233))))
                   (declare (not safe))
                   (cons __tmp163241 __tmp163232)))))
          (let* ((___match162919162920_
                  (lambda (_e161673161698_
                           _hd161672161702_
                           _tl161671161705_
                           _e161676161708_
                           _hd161675161712_
                           _tl161674161715_
                           ___splice162813162814_
                           _target161677161718_
                           _tl161679161721_)
                    (letrec ((_loop161680161724_
                              (lambda (_hd161678161728_ _arity161684161731_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161678161728_))
                                    (let ((_e161681161734_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161678161728_))))
                                      (let ((_lp-tl161683161741_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161681161734_)))
                                            (_lp-hd161682161738_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161681161734_))))
                                        (_loop161680161724_
                                         _lp-tl161683161741_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161682161738_
                                                 _arity161684161731_)))))
                                    (let ((_arity161685161744_
                                           (reverse _arity161684161731_)))
                                      (___kont162811162812_
                                       _arity161685161744_
                                       _hd161675161712_))))))
                      (_loop161680161724_ _target161677161718_ '()))))
                 (___match162879162880_
                  (lambda (_e161641161837_
                           _hd161640161841_
                           _tl161639161844_
                           _e161644161847_
                           _hd161643161851_
                           _tl161642161854_
                           _e161647161857_
                           _hd161646161861_
                           _tl161645161864_
                           _e161648161867_
                           ___splice162807162808_
                           _target161649161871_
                           _tl161651161874_)
                    (letrec ((_loop161652161877_
                              (lambda (_hd161650161881_ _arity161656161884_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161650161881_))
                                    (let ((_e161653161887_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161650161881_))))
                                      (let ((_lp-tl161655161894_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161653161887_)))
                                            (_lp-hd161654161891_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161653161887_))))
                                        (_loop161652161877_
                                         _lp-tl161655161894_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161654161891_
                                                 _arity161656161884_)))))
                                    (let ((_arity161657161897_
                                           (reverse _arity161656161884_)))
                                      (___kont162805162806_
                                       _arity161657161897_
                                       _hd161643161851_))))))
                      (_loop161652161877_ _target161649161871_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162800162801_))
                (let ((_e161626161938_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162800162801_))))
                  (let ((_tl161624161945_
                         (let () (declare (not safe)) (##cdr _e161626161938_)))
                        (_hd161625161942_
                         (let ()
                           (declare (not safe))
                           (##car _e161626161938_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161624161945_))
                        (let ((_e161629161948_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161624161945_))))
                          (let ((_tl161627161955_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161629161948_)))
                                (_hd161628161952_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161629161948_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161627161955_))
                                (let ((_e161632161958_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161627161955_))))
                                  (let ((_tl161630161965_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161632161958_)))
                                        (_hd161631161962_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161632161958_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd161631161962_))
                                        (let ((_e161633161968_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd161631161962_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e161633161968_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161630161965_))
                                                  (let ((_e161636161972_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161630161965_))))
                                                    (let ((_tl161634161979_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161636161972_)))
                                                          (_hd161635161976_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161636161972_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161634161979_))
                                                          (___kont162803162804_
                                                           _hd161635161976_
                                                           _hd161628161952_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl161630161965_))
                      (let ((___splice162807162808_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161630161965_ '0))))
                        (let ((_tl161651161874_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162807162808_ '1)))
                              (_target161649161871_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162807162808_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161651161874_))
                              (___match162879162880_
                               _e161626161938_
                               _hd161625161942_
                               _tl161624161945_
                               _e161629161948_
                               _hd161628161952_
                               _tl161627161955_
                               _e161632161958_
                               _hd161631161962_
                               _tl161630161965_
                               _e161633161968_
                               ___splice162807162808_
                               _target161649161871_
                               _tl161651161874_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl161627161955_))
                                  (let ((___splice162813162814_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl161627161955_
                                            '0))))
                                    (let ((_tl161679161721_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162813162814_
                                              '1)))
                                          (_target161677161718_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162813162814_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl161679161721_))
                                          (___match162919162920_
                                           _e161626161938_
                                           _hd161625161942_
                                           _tl161624161945_
                                           _e161629161948_
                                           _hd161628161952_
                                           _tl161627161955_
                                           ___splice162813162814_
                                           _target161677161718_
                                           _tl161679161721_)
                                          (let ()
                                            (declare (not safe))
                                            (_g161620161691_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g161620161691_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl161627161955_))
                          (let ((___splice162813162814_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl161627161955_
                                    '0))))
                            (let ((_tl161679161721_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162813162814_ '1)))
                                  (_target161677161718_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162813162814_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161679161721_))
                                  (___match162919162920_
                                   _e161626161938_
                                   _hd161625161942_
                                   _tl161624161945_
                                   _e161629161948_
                                   _hd161628161952_
                                   _tl161627161955_
                                   ___splice162813162814_
                                   _target161677161718_
                                   _tl161679161721_)
                                  (let ()
                                    (declare (not safe))
                                    (_g161620161691_)))))
                          (let () (declare (not safe)) (_g161620161691_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161630161965_))
                                                      (let ((___splice162807162808_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161630161965_ '0))))
                (let ((_tl161651161874_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162807162808_ '1)))
                      (_target161649161871_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162807162808_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161651161874_))
                      (___match162879162880_
                       _e161626161938_
                       _hd161625161942_
                       _tl161624161945_
                       _e161629161948_
                       _hd161628161952_
                       _tl161627161955_
                       _e161632161958_
                       _hd161631161962_
                       _tl161630161965_
                       _e161633161968_
                       ___splice162807162808_
                       _target161649161871_
                       _tl161651161874_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl161630161965_))
                          (___kont162809162810_
                           _hd161631161962_
                           _hd161628161952_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161627161955_))
                              (let ((___splice162813162814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161627161955_
                                        '0))))
                                (let ((_tl161679161721_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162813162814_
                                          '1)))
                                      (_target161677161718_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162813162814_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161679161721_))
                                      (___match162919162920_
                                       _e161626161938_
                                       _hd161625161942_
                                       _tl161624161945_
                                       _e161629161948_
                                       _hd161628161952_
                                       _tl161627161955_
                                       ___splice162813162814_
                                       _target161677161718_
                                       _tl161679161721_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161620161691_)))))
                              (let ()
                                (declare (not safe))
                                (_g161620161691_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161630161965_))
                  (___kont162809162810_ _hd161631161962_ _hd161628161952_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl161627161955_))
                      (let ((___splice162813162814_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161627161955_ '0))))
                        (let ((_tl161679161721_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162813162814_ '1)))
                              (_target161677161718_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162813162814_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161679161721_))
                              (___match162919162920_
                               _e161626161938_
                               _hd161625161942_
                               _tl161624161945_
                               _e161629161948_
                               _hd161628161952_
                               _tl161627161955_
                               ___splice162813162814_
                               _target161677161718_
                               _tl161679161721_)
                              (let ()
                                (declare (not safe))
                                (_g161620161691_)))))
                      (let () (declare (not safe)) (_g161620161691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161630161965_))
                                                  (___kont162809162810_
                                                   _hd161631161962_
                                                   _hd161628161952_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161627161955_))
                                                      (let ((___splice162813162814_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161627161955_ '0))))
                (let ((_tl161679161721_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162813162814_ '1)))
                      (_target161677161718_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162813162814_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161679161721_))
                      (___match162919162920_
                       _e161626161938_
                       _hd161625161942_
                       _tl161624161945_
                       _e161629161948_
                       _hd161628161952_
                       _tl161627161955_
                       ___splice162813162814_
                       _target161677161718_
                       _tl161679161721_)
                      (let () (declare (not safe)) (_g161620161691_)))))
              (let () (declare (not safe)) (_g161620161691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161630161965_))
                                            (___kont162809162810_
                                             _hd161631161962_
                                             _hd161628161952_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl161627161955_))
                                                (let ((___splice162813162814_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl161627161955_
                                                          '0))))
                                                  (let ((_tl161679161721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162813162814_
                                                            '1)))
                                                        (_target161677161718_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162813162814_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161679161721_))
                                                        (___match162919162920_
                                                         _e161626161938_
                                                         _hd161625161942_
                                                         _tl161624161945_
                                                         _e161629161948_
                                                         _hd161628161952_
                                                         _tl161627161955_
                                                         ___splice162813162814_
                                                         _target161677161718_
                                                         _tl161679161721_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161620161691_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g161620161691_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161627161955_))
                                    (let ((___splice162813162814_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161627161955_
                                              '0))))
                                      (let ((_tl161679161721_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162813162814_
                                                '1)))
                                            (_target161677161718_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162813162814_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161679161721_))
                                            (___match162919162920_
                                             _e161626161938_
                                             _hd161625161942_
                                             _tl161624161945_
                                             _e161629161948_
                                             _hd161628161952_
                                             _tl161627161955_
                                             ___splice162813162814_
                                             _target161677161718_
                                             _tl161679161721_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161620161691_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161620161691_))))))
                        (let () (declare (not safe)) (_g161620161691_)))))
                (let () (declare (not safe)) (_g161620161691_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx162008_)
      (let* ((___stx162922162923_ _$stx162008_)
             (_g162013162048_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162922162923_)))))
        (let ((___kont162925162926_
               (lambda (_L162170_ _L162172_)
                 (let ((__tmp163247
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163242
                        (let ((__tmp163243
                               (let ((__tmp163244
                                      (let ((__tmp163246
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163245
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162170_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163246 __tmp163245))))
                                 (declare (not safe))
                                 (cons __tmp163244 '()))))
                          (declare (not safe))
                          (cons _L162172_ __tmp163243))))
                   (declare (not safe))
                   (cons __tmp163247 __tmp163242))))
              (___kont162927162928_
               (lambda (_L162105_ _L162107_)
                 (let ((__tmp163256
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163248
                        (let ((__tmp163249
                               (let ((__tmp163250
                                      (let ((__tmp163255
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163251
                                             (let ((__tmp163252
                                                    (lambda (_g162124162127_
                                                             _g162125162130_)
                                                      (let ((__tmp163253
                                                             (let ((__tmp163254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g162124162127_ __tmp163254))))
                (declare (not safe))
                (cons __tmp163253 _g162125162130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp163252
                                                       '()
                                                       _L162105_))))
                                        (declare (not safe))
                                        (cons __tmp163255 __tmp163251))))
                                 (declare (not safe))
                                 (cons __tmp163250 '()))))
                          (declare (not safe))
                          (cons _L162107_ __tmp163249))))
                   (declare (not safe))
                   (cons __tmp163256 __tmp163248)))))
          (let ((___match162971162972_
                 (lambda (_e162030162055_
                          _hd162029162059_
                          _tl162028162062_
                          _e162033162065_
                          _hd162032162069_
                          _tl162031162072_
                          ___splice162929162930_
                          _target162034162075_
                          _tl162036162078_)
                   (letrec ((_loop162037162081_
                             (lambda (_hd162035162085_ _arity162041162088_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd162035162085_))
                                   (let ((_e162038162091_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd162035162085_))))
                                     (let ((_lp-tl162040162098_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e162038162091_)))
                                           (_lp-hd162039162095_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e162038162091_))))
                                       (_loop162037162081_
                                        _lp-tl162040162098_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd162039162095_
                                                _arity162041162088_)))))
                                   (let ((_arity162042162101_
                                          (reverse _arity162041162088_)))
                                     (___kont162927162928_
                                      _arity162042162101_
                                      _hd162032162069_))))))
                     (_loop162037162081_ _target162034162075_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162922162923_))
                (let ((_e162019162140_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162922162923_))))
                  (let ((_tl162017162147_
                         (let () (declare (not safe)) (##cdr _e162019162140_)))
                        (_hd162018162144_
                         (let ()
                           (declare (not safe))
                           (##car _e162019162140_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162017162147_))
                        (let ((_e162022162150_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162017162147_))))
                          (let ((_tl162020162157_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162022162150_)))
                                (_hd162021162154_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162022162150_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162020162157_))
                                (let ((_e162025162160_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162020162157_))))
                                  (let ((_tl162023162167_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162025162160_)))
                                        (_hd162024162164_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162025162160_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162023162167_))
                                        (___kont162925162926_
                                         _hd162024162164_
                                         _hd162021162154_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl162020162157_))
                                            (let ((___splice162929162930_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl162020162157_
                                                      '0))))
                                              (let ((_tl162036162078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162929162930_
                                                        '1)))
                                                    (_target162034162075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162929162930_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162036162078_))
                                                    (___match162971162972_
                                                     _e162019162140_
                                                     _hd162018162144_
                                                     _tl162017162147_
                                                     _e162022162150_
                                                     _hd162021162154_
                                                     _tl162020162157_
                                                     ___splice162929162930_
                                                     _target162034162075_
                                                     _tl162036162078_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162013162048_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162013162048_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162020162157_))
                                    (let ((___splice162929162930_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162020162157_
                                              '0))))
                                      (let ((_tl162036162078_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162929162930_
                                                '1)))
                                            (_target162034162075_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162929162930_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162036162078_))
                                            (___match162971162972_
                                             _e162019162140_
                                             _hd162018162144_
                                             _tl162017162147_
                                             _e162022162150_
                                             _hd162021162154_
                                             _tl162020162157_
                                             ___splice162929162930_
                                             _target162034162075_
                                             _tl162036162078_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162013162048_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162013162048_))))))
                        (let () (declare (not safe)) (_g162013162048_)))))
                (let () (declare (not safe)) (_g162013162048_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx162192_)
      (let* ((_g162196162231_
              (lambda (_g162197162227_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162197162227_))))
             (_g162195162359_
              (lambda (_g162197162235_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162197162235_))
                    (let ((_e162202162238_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162197162235_))))
                      (let ((_hd162201162242_
                             (let ()
                               (declare (not safe))
                               (##car _e162202162238_)))
                            (_tl162200162245_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162202162238_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162200162245_))
                            (let ((_g163257_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162200162245_
                                      '0))))
                              (begin
                                (let ((_g163258_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163257_)
                                             (##vector-length _g163257_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163258_ 2)))
                                      (error "Context expects 2 values"
                                             _g163258_)))
                                (let ((_target162203162248_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163257_ 0)))
                                      (_tl162205162251_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163257_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162205162251_))
                                      (letrec ((_loop162206162254_
                                                (lambda (_hd162204162258_
                                                         _arity162210162261_
                                                         _prim162211162263_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd162204162258_))
                                                      (let ((_e162207162266_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd162204162258_))))
                (let ((_lp-hd162208162270_
                       (let () (declare (not safe)) (##car _e162207162266_)))
                      (_lp-tl162209162273_
                       (let () (declare (not safe)) (##cdr _e162207162266_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd162208162270_))
                      (let ((_e162216162276_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd162208162270_))))
                        (let ((_hd162215162280_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162216162276_)))
                              (_tl162214162283_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162216162276_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162214162283_))
                              (let ((_g163267_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162214162283_
                                        '0))))
                                (begin
                                  (let ((_g163268_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g163267_)
                                               (##vector-length _g163267_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g163268_ 2)))
                                        (error "Context expects 2 values"
                                               _g163268_)))
                                  (let ((_target162217162286_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163267_ 0)))
                                        (_tl162219162289_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163267_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162219162289_))
                                        (letrec ((_loop162220162292_
                                                  (lambda (_hd162218162296_
                                                           _arity162224162299_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162218162296_))
                                                        (let ((_e162221162302_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162218162296_))))
                  (let ((_lp-hd162222162306_
                         (let () (declare (not safe)) (##car _e162221162302_)))
                        (_lp-tl162223162309_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162221162302_))))
                    (_loop162220162292_
                     _lp-tl162223162309_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd162222162306_ _arity162224162299_)))))
                (let ((_arity162225162312_ (reverse _arity162224162299_)))
                  (_loop162206162254_
                   _lp-tl162209162273_
                   (let ()
                     (declare (not safe))
                     (cons _arity162225162312_ _arity162210162261_))
                   (let ()
                     (declare (not safe))
                     (cons _hd162215162280_ _prim162211162263_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162220162292_
                                           _target162217162286_
                                           '()))
                                        (_g162196162231_ _g162197162235_)))))
                              (_g162196162231_ _g162197162235_))))
                      (_g162196162231_ _g162197162235_))))
              (let ((_arity162212162316_ (reverse _arity162210162261_))
                    (_prim162213162319_ (reverse _prim162211162263_)))
                ((lambda (_L162322_ _L162324_)
                   (let ((__tmp163266
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163259
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162322_
                               _L162324_))
                            (let ((__tmp163260
                                   (lambda (_g162339162345_
                                            _g162340162348_
                                            _g162341162350_)
                                     (let ((__tmp163261
                                            (let ((__tmp163265
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp163262
                                                   (let ((__tmp163263
                                                          (let ((__tmp163264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162342162353_ _g162343162356_)
                           (let ()
                             (declare (not safe))
                             (cons _g162342162353_ _g162343162356_)))))
                    (declare (not safe))
                    (foldr1 __tmp163264 '() _g162339162345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162340162348_
                                                           __tmp163263))))
                                              (declare (not safe))
                                              (cons __tmp163265 __tmp163262))))
                                       (declare (not safe))
                                       (cons __tmp163261 _g162341162350_)))))
                              (declare (not safe))
                              (foldr2 __tmp163260 '() _L162322_ _L162324_)))))
                     (declare (not safe))
                     (cons __tmp163266 __tmp163259)))
                 _arity162212162316_
                 _prim162213162319_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop162206162254_
                                         _target162203162248_
                                         '()
                                         '()))
                                      (_g162196162231_ _g162197162235_)))))
                            (_g162196162231_ _g162197162235_))))
                    (_g162196162231_ _g162197162235_)))))
        (_g162195162359_ _$stx162192_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx162365_)
      (let* ((_g162369162404_
              (lambda (_g162370162400_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162370162400_))))
             (_g162368162532_
              (lambda (_g162370162408_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162370162408_))
                    (let ((_e162375162411_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162370162408_))))
                      (let ((_hd162374162415_
                             (let ()
                               (declare (not safe))
                               (##car _e162375162411_)))
                            (_tl162373162418_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162375162411_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162373162418_))
                            (let ((_g163269_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162373162418_
                                      '0))))
                              (begin
                                (let ((_g163270_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163269_)
                                             (##vector-length _g163269_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163270_ 2)))
                                      (error "Context expects 2 values"
                                             _g163270_)))
                                (let ((_target162376162421_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163269_ 0)))
                                      (_tl162378162424_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163269_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162378162424_))
                                      (letrec ((_loop162379162427_
                                                (lambda (_hd162377162431_
                                                         _arity162383162434_
                                                         _prim162384162436_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd162377162431_))
                                                      (let ((_e162380162439_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd162377162431_))))
                (let ((_lp-hd162381162443_
                       (let () (declare (not safe)) (##car _e162380162439_)))
                      (_lp-tl162382162446_
                       (let () (declare (not safe)) (##cdr _e162380162439_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd162381162443_))
                      (let ((_e162389162449_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd162381162443_))))
                        (let ((_hd162388162453_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162389162449_)))
                              (_tl162387162456_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162389162449_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162387162456_))
                              (let ((_g163279_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162387162456_
                                        '0))))
                                (begin
                                  (let ((_g163280_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g163279_)
                                               (##vector-length _g163279_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g163280_ 2)))
                                        (error "Context expects 2 values"
                                               _g163280_)))
                                  (let ((_target162390162459_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163279_ 0)))
                                        (_tl162392162462_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163279_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162392162462_))
                                        (letrec ((_loop162393162465_
                                                  (lambda (_hd162391162469_
                                                           _arity162397162472_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162391162469_))
                                                        (let ((_e162394162475_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162391162469_))))
                  (let ((_lp-hd162395162479_
                         (let () (declare (not safe)) (##car _e162394162475_)))
                        (_lp-tl162396162482_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162394162475_))))
                    (_loop162393162465_
                     _lp-tl162396162482_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd162395162479_ _arity162397162472_)))))
                (let ((_arity162398162485_ (reverse _arity162397162472_)))
                  (_loop162379162427_
                   _lp-tl162382162446_
                   (let ()
                     (declare (not safe))
                     (cons _arity162398162485_ _arity162383162434_))
                   (let ()
                     (declare (not safe))
                     (cons _hd162388162453_ _prim162384162436_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162393162465_
                                           _target162390162459_
                                           '()))
                                        (_g162369162404_ _g162370162408_)))))
                              (_g162369162404_ _g162370162408_))))
                      (_g162369162404_ _g162370162408_))))
              (let ((_arity162385162489_ (reverse _arity162383162434_))
                    (_prim162386162492_ (reverse _prim162384162436_)))
                ((lambda (_L162495_ _L162497_)
                   (let ((__tmp163278
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163271
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162495_
                               _L162497_))
                            (let ((__tmp163272
                                   (lambda (_g162512162518_
                                            _g162513162521_
                                            _g162514162523_)
                                     (let ((__tmp163273
                                            (let ((__tmp163277
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp163274
                                                   (let ((__tmp163275
                                                          (let ((__tmp163276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162515162526_ _g162516162529_)
                           (let ()
                             (declare (not safe))
                             (cons _g162515162526_ _g162516162529_)))))
                    (declare (not safe))
                    (foldr1 __tmp163276 '() _g162512162518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162513162521_
                                                           __tmp163275))))
                                              (declare (not safe))
                                              (cons __tmp163277 __tmp163274))))
                                       (declare (not safe))
                                       (cons __tmp163273 _g162514162523_)))))
                              (declare (not safe))
                              (foldr2 __tmp163272 '() _L162495_ _L162497_)))))
                     (declare (not safe))
                     (cons __tmp163278 __tmp163271)))
                 _arity162385162489_
                 _prim162386162492_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop162379162427_
                                         _target162376162421_
                                         '()
                                         '()))
                                      (_g162369162404_ _g162370162408_)))))
                            (_g162369162404_ _g162370162408_))))
                    (_g162369162404_ _g162370162408_)))))
        (_g162368162532_ _$stx162365_)))))
