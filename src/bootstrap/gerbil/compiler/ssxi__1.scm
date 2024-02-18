(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx300134_)
      (let* ((_g300138300156_
              (lambda (_g300139300152_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300139300152_))))
             (_g300137300211_
              (lambda (_g300139300160_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300139300160_))
                    (let ((_e300144300163_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300139300160_))))
                      (let ((_hd300143300167_
                             (let ()
                               (declare (not safe))
                               (##car _e300144300163_)))
                            (_tl300142300170_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300144300163_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300142300170_))
                            (let ((_e300147300173_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300142300170_))))
                              (let ((_hd300146300177_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300147300173_)))
                                    (_tl300145300180_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300147300173_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300145300180_))
                                    (let ((_e300150300183_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300145300180_))))
                                      (let ((_hd300149300187_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300150300183_)))
                                            (_tl300148300190_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300150300183_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300148300190_))
                                            ((lambda (_L300193_ _L300195_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L300195_))
                                                   (let ((__tmp307742
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp307737
                                                          (let ((__tmp307739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp307741
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp307740
                                (let ()
                                  (declare (not safe))
                                  (cons _L300195_ '()))))
                           (declare (not safe))
                           (cons __tmp307741 __tmp307740)))
                        (__tmp307738
                         (let () (declare (not safe)) (cons _L300193_ '()))))
                    (declare (not safe))
                    (cons __tmp307739 __tmp307738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp307742
                                                           __tmp307737))
                                                   (_g300138300156_
                                                    _g300139300160_)))
                                             _hd300149300187_
                                             _hd300146300177_)
                                            (_g300138300156_
                                             _g300139300160_))))
                                    (_g300138300156_ _g300139300160_))))
                            (_g300138300156_ _g300139300160_))))
                    (_g300138300156_ _g300139300160_)))))
        (_g300137300211_ _$stx300134_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx300215_)
      (let* ((_g300219300248_
              (lambda (_g300220300244_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300220300244_))))
             (_g300218300348_
              (lambda (_g300220300252_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300220300252_))
                    (let ((_e300225300255_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300220300252_))))
                      (let ((_hd300224300259_
                             (let ()
                               (declare (not safe))
                               (##car _e300225300255_)))
                            (_tl300223300262_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300225300255_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300223300262_))
                            (let ((_g307743_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300223300262_
                                      '0))))
                              (begin
                                (let ((_g307744_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g307743_)
                                             (##vector-length _g307743_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g307744_ 2)))
                                      (error "Context expects 2 values"
                                             _g307744_)))
                                (let ((_target300226300265_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g307743_ 0)))
                                      (_tl300228300268_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g307743_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300228300268_))
                                      (letrec ((_loop300229300271_
                                                (lambda (_hd300227300275_
                                                         _type300233300278_
                                                         _symbol300234300280_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300227300275_))
                                                      (let ((_e300230300283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300227300275_))))
                (let ((_lp-hd300231300287_
                       (let () (declare (not safe)) (##car _e300230300283_)))
                      (_lp-tl300232300290_
                       (let () (declare (not safe)) (##cdr _e300230300283_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300231300287_))
                      (let ((_e300239300293_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300231300287_))))
                        (let ((_hd300238300297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300239300293_)))
                              (_tl300237300300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300239300293_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl300237300300_))
                              (let ((_e300242300303_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl300237300300_))))
                                (let ((_hd300241300307_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e300242300303_)))
                                      (_tl300240300310_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e300242300303_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300240300310_))
                                      (_loop300229300271_
                                       _lp-tl300232300290_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd300241300307_
                                               _type300233300278_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd300238300297_
                                               _symbol300234300280_)))
                                      (_g300219300248_ _g300220300252_))))
                              (_g300219300248_ _g300220300252_))))
                      (_g300219300248_ _g300220300252_))))
              (let ((_type300235300313_ (reverse _type300233300278_))
                    (_symbol300236300316_ (reverse _symbol300234300280_)))
                ((lambda (_L300319_ _L300321_)
                   (let ((__tmp307751
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp307745
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L300319_
                               _L300321_))
                            (let ((__tmp307746
                                   (lambda (_g300336300340_
                                            _g300337300343_
                                            _g300338300345_)
                                     (let ((__tmp307747
                                            (let ((__tmp307750
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp307748
                                                   (let ((__tmp307749
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g300336300340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g300337300343_
                                                           __tmp307749))))
                                              (declare (not safe))
                                              (cons __tmp307750 __tmp307748))))
                                       (declare (not safe))
                                       (cons __tmp307747 _g300338300345_)))))
                              (declare (not safe))
                              (foldr2 __tmp307746 '() _L300319_ _L300321_)))))
                     (declare (not safe))
                     (cons __tmp307751 __tmp307745)))
                 _type300235300313_
                 _symbol300236300316_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300229300271_
                                         _target300226300265_
                                         '()
                                         '()))
                                      (_g300219300248_ _g300220300252_)))))
                            (_g300219300248_ _g300220300252_))))
                    (_g300219300248_ _g300220300252_)))))
        (_g300218300348_ _$stx300215_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx300353_)
      (let* ((___stx307302307303_ _$stx300353_)
             (_g300358300400_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx307302307303_)))))
        (let ((___kont307305307306_
               (lambda (_L300528_ _L300530_ _L300531_ _L300532_)
                 (let ((__tmp307765
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp307752
                        (let ((__tmp307762
                               (let ((__tmp307764
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp307763
                                      (let ()
                                        (declare (not safe))
                                        (cons _L300532_ '()))))
                                 (declare (not safe))
                                 (cons __tmp307764 __tmp307763)))
                              (__tmp307753
                               (let ((__tmp307759
                                      (let ((__tmp307761
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp307760
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300531_ '()))))
                                        (declare (not safe))
                                        (cons __tmp307761 __tmp307760)))
                                     (__tmp307754
                                      (let ((__tmp307756
                                             (let ((__tmp307758
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp307757
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L300530_ '()))))
                                               (declare (not safe))
                                               (cons __tmp307758 __tmp307757)))
                                            (__tmp307755
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300528_ '()))))
                                        (declare (not safe))
                                        (cons __tmp307756 __tmp307755))))
                                 (declare (not safe))
                                 (cons __tmp307759 __tmp307754))))
                          (declare (not safe))
                          (cons __tmp307762 __tmp307753))))
                   (declare (not safe))
                   (cons __tmp307765 __tmp307752))))
              (___kont307307307308_
               (lambda (_L300447_ _L300449_ _L300450_ _L300451_)
                 (let ((__tmp307766
                        (let ((__tmp307767
                               (let ((__tmp307768
                                      (let ((__tmp307769
                                             (let ((__tmp307770
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp307770 '()))))
                                        (declare (not safe))
                                        (cons _L300447_ __tmp307769))))
                                 (declare (not safe))
                                 (cons _L300449_ __tmp307768))))
                          (declare (not safe))
                          (cons _L300450_ __tmp307767))))
                   (declare (not safe))
                   (cons _L300451_ __tmp307766)))))
          (let ((___match307341307342_
                 (lambda (_e300366300478_
                          _hd300365300482_
                          _tl300364300485_
                          _e300369300488_
                          _hd300368300492_
                          _tl300367300495_
                          _e300372300498_
                          _hd300371300502_
                          _tl300370300505_
                          _e300375300508_
                          _hd300374300512_
                          _tl300373300515_
                          _e300378300518_
                          _hd300377300522_
                          _tl300376300525_)
                   (let ((_L300528_ _hd300377300522_)
                         (_L300530_ _hd300374300512_)
                         (_L300531_ _hd300371300502_)
                         (_L300532_ _hd300368300492_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L300532_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L300531_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L300530_)))
                         (___kont307305307306_
                          _L300528_
                          _L300530_
                          _L300531_
                          _L300532_)
                         (let () (declare (not safe)) (_g300358300400_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx307302307303_))
                (let ((_e300366300478_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx307302307303_))))
                  (let ((_tl300364300485_
                         (let () (declare (not safe)) (##cdr _e300366300478_)))
                        (_hd300365300482_
                         (let ()
                           (declare (not safe))
                           (##car _e300366300478_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300364300485_))
                        (let ((_e300369300488_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300364300485_))))
                          (let ((_tl300367300495_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300369300488_)))
                                (_hd300368300492_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300369300488_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300367300495_))
                                (let ((_e300372300498_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300367300495_))))
                                  (let ((_tl300370300505_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300372300498_)))
                                        (_hd300371300502_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300372300498_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl300370300505_))
                                        (let ((_e300375300508_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl300370300505_))))
                                          (let ((_tl300373300515_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e300375300508_)))
                                                (_hd300374300512_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e300375300508_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl300373300515_))
                                                (let ((_e300378300518_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl300373300515_))))
                                                  (let ((_tl300376300525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e300378300518_)))
                                                        (_hd300377300522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e300378300518_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl300376300525_))
                                                        (___match307341307342_
                                                         _e300366300478_
                                                         _hd300365300482_
                                                         _tl300364300485_
                                                         _e300369300488_
                                                         _hd300368300492_
                                                         _tl300367300495_
                                                         _e300372300498_
                                                         _hd300371300502_
                                                         _tl300370300505_
                                                         _e300375300508_
                                                         _hd300374300512_
                                                         _tl300373300515_
                                                         _e300378300518_
                                                         _hd300377300522_
                                                         _tl300376300525_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g300358300400_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300373300515_))
                                                    (___kont307307307308_
                                                     _hd300374300512_
                                                     _hd300371300502_
                                                     _hd300368300492_
                                                     _hd300365300482_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300358300400_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g300358300400_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g300358300400_)))))
                        (let () (declare (not safe)) (_g300358300400_)))))
                (let () (declare (not safe)) (_g300358300400_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx300557_)
      (let* ((_g300561300596_
              (lambda (_g300562300592_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300562300592_))))
             (_g300560300715_
              (lambda (_g300562300600_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300562300600_))
                    (let ((_e300568300603_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300562300600_))))
                      (let ((_hd300567300607_
                             (let ()
                               (declare (not safe))
                               (##car _e300568300603_)))
                            (_tl300566300610_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300568300603_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300566300610_))
                            (let ((_g307771_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300566300610_
                                      '0))))
                              (begin
                                (let ((_g307772_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g307771_)
                                             (##vector-length _g307771_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g307772_ 2)))
                                      (error "Context expects 2 values"
                                             _g307772_)))
                                (let ((_target300569300613_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g307771_ 0)))
                                      (_tl300571300616_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g307771_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300571300616_))
                                      (letrec ((_loop300572300619_
                                                (lambda (_hd300570300623_
                                                         _symbol300576300626_
                                                         _method300577300628_
                                                         _type-t300578300630_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300570300623_))
                                                      (let ((_e300573300633_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300570300623_))))
                (let ((_lp-hd300574300637_
                       (let () (declare (not safe)) (##car _e300573300633_)))
                      (_lp-tl300575300640_
                       (let () (declare (not safe)) (##cdr _e300573300633_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300574300637_))
                      (let ((_e300584300643_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300574300637_))))
                        (let ((_hd300583300647_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300584300643_)))
                              (_tl300582300650_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300584300643_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl300582300650_))
                              (let ((_e300587300653_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl300582300650_))))
                                (let ((_hd300586300657_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e300587300653_)))
                                      (_tl300585300660_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e300587300653_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl300585300660_))
                                      (let ((_e300590300663_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl300585300660_))))
                                        (let ((_hd300589300667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e300590300663_)))
                                              (_tl300588300670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e300590300663_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl300588300670_))
                                              (_loop300572300619_
                                               _lp-tl300575300640_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd300589300667_
                                                       _symbol300576300626_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd300586300657_
                                                       _method300577300628_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd300583300647_
                                                       _type-t300578300630_)))
                                              (_g300561300596_
                                               _g300562300600_))))
                                      (_g300561300596_ _g300562300600_))))
                              (_g300561300596_ _g300562300600_))))
                      (_g300561300596_ _g300562300600_))))
              (let ((_symbol300579300673_ (reverse _symbol300576300626_))
                    (_method300580300676_ (reverse _method300577300628_))
                    (_type-t300581300678_ (reverse _type-t300578300630_)))
                ((lambda (_L300681_ _L300683_ _L300684_)
                   (let ((__tmp307780
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp307773
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L300681_
                               _L300683_
                               _L300684_))
                            (let ((__tmp307774
                                   (lambda (_g300700300705_
                                            _g300701300708_
                                            _g300702300710_
                                            _g300703300712_)
                                     (let ((__tmp307775
                                            (let ((__tmp307779
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp307776
                                                   (let ((__tmp307777
                                                          (let ((__tmp307778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g300700300705_ '()))))
                    (declare (not safe))
                    (cons _g300701300708_ __tmp307778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g300702300710_
                                                           __tmp307777))))
                                              (declare (not safe))
                                              (cons __tmp307779 __tmp307776))))
                                       (declare (not safe))
                                       (cons __tmp307775 _g300703300712_)))))
                              (declare (not safe))
                              (foldr* __tmp307774
                                      '()
                                      _L300681_
                                      _L300683_
                                      _L300684_)))))
                     (declare (not safe))
                     (cons __tmp307780 __tmp307773)))
                 _symbol300579300673_
                 _method300580300676_
                 _type-t300581300678_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300572300619_
                                         _target300569300613_
                                         '()
                                         '()
                                         '()))
                                      (_g300561300596_ _g300562300600_)))))
                            (_g300561300596_ _g300562300600_))))
                    (_g300561300596_ _g300562300600_)))))
        (_g300560300715_ _$stx300557_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx300720_)
      (let* ((_g300724300757_
              (lambda (_g300725300753_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300725300753_))))
             (_g300723300871_
              (lambda (_g300725300761_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300725300761_))
                    (let ((_e300731300764_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300725300761_))))
                      (let ((_hd300730300768_
                             (let ()
                               (declare (not safe))
                               (##car _e300731300764_)))
                            (_tl300729300771_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300731300764_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300729300771_))
                            (let ((_e300734300774_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300729300771_))))
                              (let ((_hd300733300778_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300734300774_)))
                                    (_tl300732300781_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300734300774_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300732300781_))
                                    (let ((_g307781_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300732300781_
                                              '0))))
                                      (begin
                                        (let ((_g307782_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g307781_)
                                                     (##vector-length
                                                      _g307781_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g307782_ 2)))
                                              (error "Context expects 2 values"
                                                     _g307782_)))
                                        (let ((_target300735300784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g307781_ 0)))
                                              (_tl300737300787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g307781_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl300737300787_))
                                              (letrec ((_loop300738300790_
                                                        (lambda (_hd300736300794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol300742300797_
                         _method300743300799_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd300736300794_))
                      (let ((_e300739300802_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd300736300794_))))
                        (let ((_lp-hd300740300806_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300739300802_)))
                              (_lp-tl300741300809_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300739300802_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd300740300806_))
                              (let ((_e300748300812_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd300740300806_))))
                                (let ((_hd300747300816_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e300748300812_)))
                                      (_tl300746300819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e300748300812_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl300746300819_))
                                      (let ((_e300751300822_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl300746300819_))))
                                        (let ((_hd300750300826_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e300751300822_)))
                                              (_tl300749300829_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e300751300822_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl300749300829_))
                                              (_loop300738300790_
                                               _lp-tl300741300809_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd300750300826_
                                                       _symbol300742300797_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd300747300816_
                                                       _method300743300799_)))
                                              (_g300724300757_
                                               _g300725300761_))))
                                      (_g300724300757_ _g300725300761_))))
                              (_g300724300757_ _g300725300761_))))
                      (let ((_symbol300744300832_
                             (reverse _symbol300742300797_))
                            (_method300745300835_
                             (reverse _method300743300799_)))
                        ((lambda (_L300838_ _L300840_ _L300841_)
                           (let ((__tmp307790
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp307783
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L300838_
                                       _L300840_))
                                    (let ((__tmp307784
                                           (lambda (_g300859300863_
                                                    _g300860300866_
                                                    _g300861300868_)
                                             (let ((__tmp307785
                                                    (let ((__tmp307789
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp307786
                                                           (let ((__tmp307787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp307788
                                 (let ()
                                   (declare (not safe))
                                   (cons _g300859300863_ '()))))
                            (declare (not safe))
                            (cons _g300860300866_ __tmp307788))))
                     (declare (not safe))
                     (cons _L300841_ __tmp307787))))
              (declare (not safe))
              (cons __tmp307789 __tmp307786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp307785
                                                     _g300861300868_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp307784
                                              '()
                                              _L300838_
                                              _L300840_)))))
                             (declare (not safe))
                             (cons __tmp307790 __tmp307783)))
                         _symbol300744300832_
                         _method300745300835_
                         _hd300733300778_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop300738300790_
                                                 _target300735300784_
                                                 '()
                                                 '()))
                                              (_g300724300757_
                                               _g300725300761_)))))
                                    (_g300724300757_ _g300725300761_))))
                            (_g300724300757_ _g300725300761_))))
                    (_g300724300757_ _g300725300761_)))))
        (_g300723300871_ _$stx300720_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx300876_)
      (let* ((_g300880300894_
              (lambda (_g300881300890_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300881300890_))))
             (_g300879300935_
              (lambda (_g300881300898_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300881300898_))
                    (let ((_e300885300901_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300881300898_))))
                      (let ((_hd300884300905_
                             (let ()
                               (declare (not safe))
                               (##car _e300885300901_)))
                            (_tl300883300908_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300885300901_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300883300908_))
                            (let ((_e300888300911_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300883300908_))))
                              (let ((_hd300887300915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300888300911_)))
                                    (_tl300886300918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300888300911_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl300886300918_))
                                    ((lambda (_L300921_)
                                       (let ((__tmp307795
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp307791
                                              (let ((__tmp307792
                                                     (let ((__tmp307794
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp307793
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L300921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp307794 __tmp307793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp307792 '()))))
                                         (declare (not safe))
                                         (cons __tmp307795 __tmp307791)))
                                     _hd300887300915_)
                                    (_g300880300894_ _g300881300898_))))
                            (_g300880300894_ _g300881300898_))))
                    (_g300880300894_ _g300881300898_)))))
        (_g300879300935_ _$stx300876_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx300939_)
      (let* ((_g300943300993_
              (lambda (_g300944300989_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300944300989_))))
             (_g300942301160_
              (lambda (_g300944300997_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300944300997_))
                    (let ((_e300957301000_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300944300997_))))
                      (let ((_hd300956301004_
                             (let ()
                               (declare (not safe))
                               (##car _e300957301000_)))
                            (_tl300955301007_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300957301000_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300955301007_))
                            (let ((_e300960301010_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300955301007_))))
                              (let ((_hd300959301014_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300960301010_)))
                                    (_tl300958301017_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300960301010_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300958301017_))
                                    (let ((_e300963301020_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300958301017_))))
                                      (let ((_hd300962301024_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300963301020_)))
                                            (_tl300961301027_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300963301020_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl300961301027_))
                                            (let ((_e300966301030_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl300961301027_))))
                                              (let ((_hd300965301034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e300966301030_)))
                                                    (_tl300964301037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e300966301030_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl300964301037_))
                                                    (let ((_e300969301040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl300964301037_))))
                                                      (let ((_hd300968301044_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e300969301040_)))
                    (_tl300967301047_
                     (let () (declare (not safe)) (##cdr _e300969301040_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl300967301047_))
                    (let ((_e300972301050_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl300967301047_))))
                      (let ((_hd300971301054_
                             (let ()
                               (declare (not safe))
                               (##car _e300972301050_)))
                            (_tl300970301057_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300972301050_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300970301057_))
                            (let ((_e300975301060_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300970301057_))))
                              (let ((_hd300974301064_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300975301060_)))
                                    (_tl300973301067_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300975301060_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300973301067_))
                                    (let ((_e300978301070_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300973301067_))))
                                      (let ((_hd300977301074_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300978301070_)))
                                            (_tl300976301077_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300978301070_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl300976301077_))
                                            (let ((_e300981301080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl300976301077_))))
                                              (let ((_hd300980301084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e300981301080_)))
                                                    (_tl300979301087_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e300981301080_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl300979301087_))
                                                    (let ((_e300984301090_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl300979301087_))))
                                                      (let ((_hd300983301094_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e300984301090_)))
                    (_tl300982301097_
                     (let () (declare (not safe)) (##cdr _e300984301090_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl300982301097_))
                    (let ((_e300987301100_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl300982301097_))))
                      (let ((_hd300986301104_
                             (let ()
                               (declare (not safe))
                               (##car _e300987301100_)))
                            (_tl300985301107_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300987301100_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl300985301107_))
                            ((lambda (_L301110_
                                      _L301112_
                                      _L301113_
                                      _L301114_
                                      _L301115_
                                      _L301116_
                                      _L301117_
                                      _L301118_
                                      _L301119_
                                      _L301120_)
                               (let ((__tmp307830
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp307796
                                      (let ((__tmp307827
                                             (let ((__tmp307829
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp307828
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L301120_ '()))))
                                               (declare (not safe))
                                               (cons __tmp307829 __tmp307828)))
                                            (__tmp307797
                                             (let ((__tmp307824
                                                    (let ((__tmp307826
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp307825
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L301119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp307826 __tmp307825)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp307798
                                                    (let ((__tmp307821
                                                           (let ((__tmp307823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp307822
                          (let () (declare (not safe)) (cons _L301118_ '()))))
                     (declare (not safe))
                     (cons __tmp307823 __tmp307822)))
                  (__tmp307799
                   (let ((__tmp307818
                          (let ((__tmp307820
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp307819
                                 (let ()
                                   (declare (not safe))
                                   (cons _L301117_ '()))))
                            (declare (not safe))
                            (cons __tmp307820 __tmp307819)))
                         (__tmp307800
                          (let ((__tmp307815
                                 (let ((__tmp307817
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp307816
                                        (let ()
                                          (declare (not safe))
                                          (cons _L301116_ '()))))
                                   (declare (not safe))
                                   (cons __tmp307817 __tmp307816)))
                                (__tmp307801
                                 (let ((__tmp307812
                                        (let ((__tmp307814
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp307813
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L301115_ '()))))
                                          (declare (not safe))
                                          (cons __tmp307814 __tmp307813)))
                                       (__tmp307802
                                        (let ((__tmp307803
                                               (let ((__tmp307804
                                                      (let ((__tmp307809
                                                             (let ((__tmp307811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp307810
                            (let ()
                              (declare (not safe))
                              (cons _L301112_ '()))))
                       (declare (not safe))
                       (cons __tmp307811 __tmp307810)))
                    (__tmp307805
                     (let ((__tmp307806
                            (let ((__tmp307808
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp307807
                                   (let ()
                                     (declare (not safe))
                                     (cons _L301110_ '()))))
                              (declare (not safe))
                              (cons __tmp307808 __tmp307807))))
                       (declare (not safe))
                       (cons __tmp307806 '()))))
                (declare (not safe))
                (cons __tmp307809 __tmp307805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L301113_
                                                       __tmp307804))))
                                          (declare (not safe))
                                          (cons _L301114_ __tmp307803))))
                                   (declare (not safe))
                                   (cons __tmp307812 __tmp307802))))
                            (declare (not safe))
                            (cons __tmp307815 __tmp307801))))
                     (declare (not safe))
                     (cons __tmp307818 __tmp307800))))
              (declare (not safe))
              (cons __tmp307821 __tmp307799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp307824
                                                     __tmp307798))))
                                        (declare (not safe))
                                        (cons __tmp307827 __tmp307797))))
                                 (declare (not safe))
                                 (cons __tmp307830 __tmp307796)))
                             _hd300986301104_
                             _hd300983301094_
                             _hd300980301084_
                             _hd300977301074_
                             _hd300974301064_
                             _hd300971301054_
                             _hd300968301044_
                             _hd300965301034_
                             _hd300962301024_
                             _hd300959301014_)
                            (_g300943300993_ _g300944300997_))))
                    (_g300943300993_ _g300944300997_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g300943300993_
                                                     _g300944300997_))))
                                            (_g300943300993_
                                             _g300944300997_))))
                                    (_g300943300993_ _g300944300997_))))
                            (_g300943300993_ _g300944300997_))))
                    (_g300943300993_ _g300944300997_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g300943300993_
                                                     _g300944300997_))))
                                            (_g300943300993_
                                             _g300944300997_))))
                                    (_g300943300993_ _g300944300997_))))
                            (_g300943300993_ _g300944300997_))))
                    (_g300943300993_ _g300944300997_)))))
        (_g300942301160_ _$stx300939_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx301164_)
      (let* ((_g301168301182_
              (lambda (_g301169301178_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301169301178_))))
             (_g301167301223_
              (lambda (_g301169301186_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301169301186_))
                    (let ((_e301173301189_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301169301186_))))
                      (let ((_hd301172301193_
                             (let ()
                               (declare (not safe))
                               (##car _e301173301189_)))
                            (_tl301171301196_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301173301189_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301171301196_))
                            (let ((_e301176301199_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301171301196_))))
                              (let ((_hd301175301203_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301176301199_)))
                                    (_tl301174301206_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301176301199_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl301174301206_))
                                    ((lambda (_L301209_)
                                       (let ((__tmp307835
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp307831
                                              (let ((__tmp307832
                                                     (let ((__tmp307834
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp307833
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L301209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp307834 __tmp307833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp307832 '()))))
                                         (declare (not safe))
                                         (cons __tmp307835 __tmp307831)))
                                     _hd301175301203_)
                                    (_g301168301182_ _g301169301186_))))
                            (_g301168301182_ _g301169301186_))))
                    (_g301168301182_ _g301169301186_)))))
        (_g301167301223_ _$stx301164_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx301227_)
      (let* ((_g301231301245_
              (lambda (_g301232301241_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301232301241_))))
             (_g301230301286_
              (lambda (_g301232301249_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301232301249_))
                    (let ((_e301236301252_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301232301249_))))
                      (let ((_hd301235301256_
                             (let ()
                               (declare (not safe))
                               (##car _e301236301252_)))
                            (_tl301234301259_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301236301252_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301234301259_))
                            (let ((_e301239301262_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301234301259_))))
                              (let ((_hd301238301266_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301239301262_)))
                                    (_tl301237301269_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301239301262_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl301237301269_))
                                    ((lambda (_L301272_)
                                       (let ((__tmp307840
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp307836
                                              (let ((__tmp307837
                                                     (let ((__tmp307839
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp307838
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L301272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp307839 __tmp307838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp307837 '()))))
                                         (declare (not safe))
                                         (cons __tmp307840 __tmp307836)))
                                     _hd301238301266_)
                                    (_g301231301245_ _g301232301249_))))
                            (_g301231301245_ _g301232301249_))))
                    (_g301231301245_ _g301232301249_)))))
        (_g301230301286_ _$stx301227_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx301290_)
      (let* ((_g301294301316_
              (lambda (_g301295301312_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301295301312_))))
             (_g301293301385_
              (lambda (_g301295301320_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301295301320_))
                    (let ((_e301301301323_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301295301320_))))
                      (let ((_hd301300301327_
                             (let ()
                               (declare (not safe))
                               (##car _e301301301323_)))
                            (_tl301299301330_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301301301323_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301299301330_))
                            (let ((_e301304301333_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301299301330_))))
                              (let ((_hd301303301337_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301304301333_)))
                                    (_tl301302301340_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301304301333_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl301302301340_))
                                    (let ((_e301307301343_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl301302301340_))))
                                      (let ((_hd301306301347_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e301307301343_)))
                                            (_tl301305301350_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e301307301343_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl301305301350_))
                                            (let ((_e301310301353_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl301305301350_))))
                                              (let ((_hd301309301357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e301310301353_)))
                                                    (_tl301308301360_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e301310301353_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl301308301360_))
                                                    ((lambda (_L301363_
                                                              _L301365_
                                                              _L301366_)
                                                       (let ((__tmp307850
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp307841
                      (let ((__tmp307847
                             (let ((__tmp307849
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp307848
                                    (let ()
                                      (declare (not safe))
                                      (cons _L301366_ '()))))
                               (declare (not safe))
                               (cons __tmp307849 __tmp307848)))
                            (__tmp307842
                             (let ((__tmp307844
                                    (let ((__tmp307846
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp307845
                                           (let ()
                                             (declare (not safe))
                                             (cons _L301365_ '()))))
                                      (declare (not safe))
                                      (cons __tmp307846 __tmp307845)))
                                   (__tmp307843
                                    (let ()
                                      (declare (not safe))
                                      (cons _L301363_ '()))))
                               (declare (not safe))
                               (cons __tmp307844 __tmp307843))))
                        (declare (not safe))
                        (cons __tmp307847 __tmp307842))))
                 (declare (not safe))
                 (cons __tmp307850 __tmp307841)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd301309301357_
                                                     _hd301306301347_
                                                     _hd301303301337_)
                                                    (_g301294301316_
                                                     _g301295301320_))))
                                            (_g301294301316_
                                             _g301295301320_))))
                                    (_g301294301316_ _g301295301320_))))
                            (_g301294301316_ _g301295301320_))))
                    (_g301294301316_ _g301295301320_)))))
        (_g301293301385_ _$stx301290_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx301389_)
      (let* ((_g301393301415_
              (lambda (_g301394301411_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301394301411_))))
             (_g301392301484_
              (lambda (_g301394301419_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301394301419_))
                    (let ((_e301400301422_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301394301419_))))
                      (let ((_hd301399301426_
                             (let ()
                               (declare (not safe))
                               (##car _e301400301422_)))
                            (_tl301398301429_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301400301422_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301398301429_))
                            (let ((_e301403301432_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301398301429_))))
                              (let ((_hd301402301436_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301403301432_)))
                                    (_tl301401301439_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301403301432_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl301401301439_))
                                    (let ((_e301406301442_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl301401301439_))))
                                      (let ((_hd301405301446_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e301406301442_)))
                                            (_tl301404301449_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e301406301442_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl301404301449_))
                                            (let ((_e301409301452_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl301404301449_))))
                                              (let ((_hd301408301456_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e301409301452_)))
                                                    (_tl301407301459_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e301409301452_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl301407301459_))
                                                    ((lambda (_L301462_
                                                              _L301464_
                                                              _L301465_)
                                                       (let ((__tmp307860
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp307851
                      (let ((__tmp307857
                             (let ((__tmp307859
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp307858
                                    (let ()
                                      (declare (not safe))
                                      (cons _L301465_ '()))))
                               (declare (not safe))
                               (cons __tmp307859 __tmp307858)))
                            (__tmp307852
                             (let ((__tmp307854
                                    (let ((__tmp307856
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp307855
                                           (let ()
                                             (declare (not safe))
                                             (cons _L301464_ '()))))
                                      (declare (not safe))
                                      (cons __tmp307856 __tmp307855)))
                                   (__tmp307853
                                    (let ()
                                      (declare (not safe))
                                      (cons _L301462_ '()))))
                               (declare (not safe))
                               (cons __tmp307854 __tmp307853))))
                        (declare (not safe))
                        (cons __tmp307857 __tmp307852))))
                 (declare (not safe))
                 (cons __tmp307860 __tmp307851)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd301408301456_
                                                     _hd301405301446_
                                                     _hd301402301436_)
                                                    (_g301393301415_
                                                     _g301394301419_))))
                                            (_g301393301415_
                                             _g301394301419_))))
                                    (_g301393301415_ _g301394301419_))))
                            (_g301393301415_ _g301394301419_))))
                    (_g301393301415_ _g301394301419_)))))
        (_g301392301484_ _$stx301389_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx301488_)
      (let* ((___stx307370307371_ _$stx301488_)
             (_g301496301564_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx307370307371_)))))
        (let ((___kont307373307374_
               (lambda (_L301842_ _L301844_)
                 (let ((__tmp307876
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp307861
                        (let ((__tmp307872
                               (let ((__tmp307875
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp307873
                                      (let ((__tmp307874
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp307874 '()))))
                                 (declare (not safe))
                                 (cons __tmp307875 __tmp307873)))
                              (__tmp307862
                               (let ((__tmp307869
                                      (let ((__tmp307871
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp307870
                                             (let ()
                                               (declare (not safe))
                                               (cons _L301844_ '()))))
                                        (declare (not safe))
                                        (cons __tmp307871 __tmp307870)))
                                     (__tmp307863
                                      (let ((__tmp307864
                                             (let ((__tmp307865
                                                    (let ((__tmp307866
                                                           (let ((__tmp307868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp307867
                          (let () (declare (not safe)) (cons _L301842_ '()))))
                     (declare (not safe))
                     (cons __tmp307868 __tmp307867))))
              (declare (not safe))
              (cons __tmp307866 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L301842_ __tmp307865))))
                                        (declare (not safe))
                                        (cons '#f __tmp307864))))
                                 (declare (not safe))
                                 (cons __tmp307869 __tmp307863))))
                          (declare (not safe))
                          (cons __tmp307872 __tmp307862))))
                   (declare (not safe))
                   (cons __tmp307876 __tmp307861))))
              (___kont307375307376_
               (lambda (_L301773_ _L301775_)
                 (let ((__tmp307877
                        (let ((__tmp307878
                               (let ((__tmp307879
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L301773_ __tmp307879))))
                          (declare (not safe))
                          (cons 'primitive: __tmp307878))))
                   (declare (not safe))
                   (cons _L301775_ __tmp307877))))
              (___kont307377307378_
               (lambda (_L301712_ _L301714_)
                 (let ((__tmp307893
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp307880
                        (let ((__tmp307889
                               (let ((__tmp307892
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp307890
                                      (let ((__tmp307891
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp307891 '()))))
                                 (declare (not safe))
                                 (cons __tmp307892 __tmp307890)))
                              (__tmp307881
                               (let ((__tmp307886
                                      (let ((__tmp307888
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp307887
                                             (let ()
                                               (declare (not safe))
                                               (cons _L301714_ '()))))
                                        (declare (not safe))
                                        (cons __tmp307888 __tmp307887)))
                                     (__tmp307882
                                      (let ((__tmp307883
                                             (let ((__tmp307885
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp307884
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L301712_ '()))))
                                               (declare (not safe))
                                               (cons __tmp307885
                                                     __tmp307884))))
                                        (declare (not safe))
                                        (cons __tmp307883 '()))))
                                 (declare (not safe))
                                 (cons __tmp307886 __tmp307882))))
                          (declare (not safe))
                          (cons __tmp307889 __tmp307881))))
                   (declare (not safe))
                   (cons __tmp307893 __tmp307880))))
              (___kont307379307380_
               (lambda (_L301644_ _L301646_)
                 (let ((__tmp307907
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp307894
                        (let ((__tmp307903
                               (let ((__tmp307906
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp307904
                                      (let ((__tmp307905
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp307905 '()))))
                                 (declare (not safe))
                                 (cons __tmp307906 __tmp307904)))
                              (__tmp307895
                               (let ((__tmp307900
                                      (let ((__tmp307902
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp307901
                                             (let ()
                                               (declare (not safe))
                                               (cons _L301646_ '()))))
                                        (declare (not safe))
                                        (cons __tmp307902 __tmp307901)))
                                     (__tmp307896
                                      (let ((__tmp307897
                                             (let ((__tmp307899
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp307898
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L301644_ '()))))
                                               (declare (not safe))
                                               (cons __tmp307899
                                                     __tmp307898))))
                                        (declare (not safe))
                                        (cons __tmp307897 '()))))
                                 (declare (not safe))
                                 (cons __tmp307900 __tmp307896))))
                          (declare (not safe))
                          (cons __tmp307903 __tmp307895))))
                   (declare (not safe))
                   (cons __tmp307907 __tmp307894))))
              (___kont307381307382_
               (lambda (_L301591_ _L301593_)
                 (let ((__tmp307908
                        (let ((__tmp307909
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L301591_ __tmp307909))))
                   (declare (not safe))
                   (cons _L301593_ __tmp307908)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx307370307371_))
              (let ((_e301502301798_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx307370307371_))))
                (let ((_tl301500301805_
                       (let () (declare (not safe)) (##cdr _e301502301798_)))
                      (_hd301501301802_
                       (let () (declare (not safe)) (##car _e301502301798_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl301500301805_))
                      (let ((_e301505301808_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl301500301805_))))
                        (let ((_tl301503301815_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301505301808_)))
                              (_hd301504301812_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301505301808_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl301503301815_))
                              (let ((_e301508301818_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl301503301815_))))
                                (let ((_tl301506301825_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e301508301818_)))
                                      (_hd301507301822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e301508301818_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd301507301822_))
                                      (let ((_e301509301828_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd301507301822_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e301509301828_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl301506301825_))
                                                (let ((_e301512301832_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl301506301825_))))
                                                  (let ((_tl301510301839_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e301512301832_)))
                                                        (_hd301511301836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e301512301832_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl301510301839_))
                                                        (___kont307373307374_
                                                         _hd301511301836_
                                                         _hd301504301812_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd301504301812_))
                                                            (let ((_e301521301759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd301504301812_))))
                      (declare (not safe))
                      (_g301496301564_))
                    (let () (declare (not safe)) (_g301496301564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd301504301812_))
                                                    (let ((_e301521301759_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd301504301812_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e301521301759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl301506301825_))
                      (___kont307375307376_ _hd301507301822_ _hd301501301802_)
                      (let () (declare (not safe)) (_g301496301564_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl301506301825_))
                      (___kont307379307380_ _hd301507301822_ _hd301504301812_)
                      (let () (declare (not safe)) (_g301496301564_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl301506301825_))
                                                        (___kont307379307380_
                                                         _hd301507301822_
                                                         _hd301504301812_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g301496301564_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd301504301812_))
                                                (let ((_e301521301759_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd301504301812_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e301521301759_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl301506301825_))
                                                          (___kont307375307376_
                                                           _hd301507301822_
                                                           _hd301501301802_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl301506301825_))
                      (let ((_e301539301702_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl301506301825_))))
                        (let ((_tl301537301709_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301539301702_)))
                              (_hd301538301706_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301539301702_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl301537301709_))
                              (___kont307377307378_
                               _hd301538301706_
                               _hd301507301822_)
                              (let ()
                                (declare (not safe))
                                (_g301496301564_)))))
                      (let () (declare (not safe)) (_g301496301564_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl301506301825_))
                  (___kont307379307380_ _hd301507301822_ _hd301504301812_)
                  (let () (declare (not safe)) (_g301496301564_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl301506301825_))
                                                    (___kont307379307380_
                                                     _hd301507301822_
                                                     _hd301504301812_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g301496301564_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd301504301812_))
                                          (let ((_e301521301759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd301504301812_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e301521301759_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl301506301825_))
                                                    (___kont307375307376_
                                                     _hd301507301822_
                                                     _hd301501301802_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl301506301825_))
                                                        (let ((_e301539301702_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl301506301825_))))
                  (let ((_tl301537301709_
                         (let () (declare (not safe)) (##cdr _e301539301702_)))
                        (_hd301538301706_
                         (let ()
                           (declare (not safe))
                           (##car _e301539301702_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl301537301709_))
                        (___kont307377307378_
                         _hd301538301706_
                         _hd301507301822_)
                        (let () (declare (not safe)) (_g301496301564_)))))
                (let () (declare (not safe)) (_g301496301564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl301506301825_))
                                                    (___kont307379307380_
                                                     _hd301507301822_
                                                     _hd301504301812_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g301496301564_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl301506301825_))
                                              (___kont307379307380_
                                               _hd301507301822_
                                               _hd301504301812_)
                                              (let ()
                                                (declare (not safe))
                                                (_g301496301564_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd301504301812_))
                                  (let ((_e301521301759_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd301504301812_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl301503301815_))
                                        (___kont307381307382_
                                         _hd301504301812_
                                         _hd301501301802_)
                                        (let ()
                                          (declare (not safe))
                                          (_g301496301564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301503301815_))
                                      (___kont307381307382_
                                       _hd301504301812_
                                       _hd301501301802_)
                                      (let ()
                                        (declare (not safe))
                                        (_g301496301564_)))))))
                      (let () (declare (not safe)) (_g301496301564_)))))
              (let () (declare (not safe)) (_g301496301564_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx301866_)
      (let* ((___stx307510307511_ _$stx301866_)
             (_g301871301926_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx307510307511_)))))
        (let ((___kont307513307514_
               (lambda (_L302111_ _L302113_)
                 (let ((__tmp307925
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp307910
                        (let ((__tmp307921
                               (let ((__tmp307924
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp307922
                                      (let ((__tmp307923
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp307923 '()))))
                                 (declare (not safe))
                                 (cons __tmp307924 __tmp307922)))
                              (__tmp307911
                               (let ((__tmp307912
                                      (let ((__tmp307920
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp307913
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L302111_
                                                  _L302113_))
                                               (let ((__tmp307914
                                                      (lambda (_g302130302134_
                                                               _g302131302137_
                                                               _g302132302139_)
                                                        (let ((__tmp307915
                                                               (let ((__tmp307919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp307916
                              (let ((__tmp307917
                                     (let ((__tmp307918
                                            (let ()
                                              (declare (not safe))
                                              (cons _g302130302134_ '()))))
                                       (declare (not safe))
                                       (cons _g302131302137_ __tmp307918))))
                                (declare (not safe))
                                (cons 'primitive: __tmp307917))))
                         (declare (not safe))
                         (cons __tmp307919 __tmp307916))))
                  (declare (not safe))
                  (cons __tmp307915 _g302132302139_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp307914
                                                         '()
                                                         _L302111_
                                                         _L302113_)))))
                                        (declare (not safe))
                                        (cons __tmp307920 __tmp307913))))
                                 (declare (not safe))
                                 (cons __tmp307912 '()))))
                          (declare (not safe))
                          (cons __tmp307921 __tmp307911))))
                   (declare (not safe))
                   (cons __tmp307925 __tmp307910))))
              (___kont307517307518_
               (lambda (_L301997_ _L301999_)
                 (let ((__tmp307940
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp307926
                        (let ((__tmp307936
                               (let ((__tmp307939
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp307937
                                      (let ((__tmp307938
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp307938 '()))))
                                 (declare (not safe))
                                 (cons __tmp307939 __tmp307937)))
                              (__tmp307927
                               (let ((__tmp307928
                                      (let ((__tmp307935
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp307929
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L301997_
                                                  _L301999_))
                                               (let ((__tmp307930
                                                      (lambda (_g302014302018_
                                                               _g302015302021_
                                                               _g302016302023_)
                                                        (let ((__tmp307931
                                                               (let ((__tmp307934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp307932
                              (let ((__tmp307933
                                     (let ()
                                       (declare (not safe))
                                       (cons _g302014302018_ '()))))
                                (declare (not safe))
                                (cons _g302015302021_ __tmp307933))))
                         (declare (not safe))
                         (cons __tmp307934 __tmp307932))))
                  (declare (not safe))
                  (cons __tmp307931 _g302016302023_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp307930
                                                         '()
                                                         _L301997_
                                                         _L301999_)))))
                                        (declare (not safe))
                                        (cons __tmp307935 __tmp307929))))
                                 (declare (not safe))
                                 (cons __tmp307928 '()))))
                          (declare (not safe))
                          (cons __tmp307936 __tmp307927))))
                   (declare (not safe))
                   (cons __tmp307940 __tmp307926)))))
          (let* ((___match307561307562_
                  (lambda (_e301903301933_
                           _hd301902301937_
                           _tl301901301940_
                           ___splice307519307520_
                           _target301904301943_
                           _tl301906301946_)
                    (letrec ((_loop301907301949_
                              (lambda (_hd301905301953_
                                       _dispatch301911301956_
                                       _arity301912301958_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd301905301953_))
                                    (let ((_e301908301961_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd301905301953_))))
                                      (let ((_lp-tl301910301968_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e301908301961_)))
                                            (_lp-hd301909301965_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e301908301961_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd301909301965_))
                                            (let ((_e301917301971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd301909301965_))))
                                              (let ((_tl301915301978_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e301917301971_)))
                                                    (_hd301916301975_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e301917301971_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl301915301978_))
                                                    (let ((_e301920301981_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl301915301978_))))
                                                      (let ((_tl301918301988_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e301920301981_)))
                    (_hd301919301985_
                     (let () (declare (not safe)) (##car _e301920301981_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl301918301988_))
                    (_loop301907301949_
                     _lp-tl301910301968_
                     (let ()
                       (declare (not safe))
                       (cons _hd301919301985_ _dispatch301911301956_))
                     (let ()
                       (declare (not safe))
                       (cons _hd301916301975_ _arity301912301958_)))
                    (let () (declare (not safe)) (_g301871301926_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g301871301926_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g301871301926_)))))
                                    (let ((_arity301914301994_
                                           (reverse _arity301912301958_))
                                          (_dispatch301913301991_
                                           (reverse _dispatch301911301956_)))
                                      (___kont307517307518_
                                       _dispatch301913301991_
                                       _arity301914301994_))))))
                      (_loop301907301949_ _target301904301943_ '() '()))))
                 (___match307553307554_
                  (lambda (_e301903301933_ _hd301902301937_ _tl301901301940_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl301901301940_))
                        (let ((___splice307519307520_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl301901301940_
                                  '0))))
                          (let ((_tl301906301946_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice307519307520_ '1)))
                                (_target301904301943_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice307519307520_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl301906301946_))
                                (___match307561307562_
                                 _e301903301933_
                                 _hd301902301937_
                                 _tl301901301940_
                                 ___splice307519307520_
                                 _target301904301943_
                                 _tl301906301946_)
                                (let ()
                                  (declare (not safe))
                                  (_g301871301926_)))))
                        (let () (declare (not safe)) (_g301871301926_)))))
                 (___match307547307548_
                  (lambda (_e301877302033_
                           _hd301876302037_
                           _tl301875302040_
                           _e301880302043_
                           _hd301879302047_
                           _tl301878302050_
                           _e301881302053_
                           ___splice307515307516_
                           _target301882302057_
                           _tl301884302060_)
                    (letrec ((_loop301885302063_
                              (lambda (_hd301883302067_
                                       _dispatch301889302070_
                                       _arity301890302072_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd301883302067_))
                                    (let ((_e301886302075_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd301883302067_))))
                                      (let ((_lp-tl301888302082_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e301886302075_)))
                                            (_lp-hd301887302079_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e301886302075_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd301887302079_))
                                            (let ((_e301895302085_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd301887302079_))))
                                              (let ((_tl301893302092_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e301895302085_)))
                                                    (_hd301894302089_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e301895302085_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl301893302092_))
                                                    (let ((_e301898302095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl301893302092_))))
                                                      (let ((_tl301896302102_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e301898302095_)))
                    (_hd301897302099_
                     (let () (declare (not safe)) (##car _e301898302095_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl301896302102_))
                    (_loop301885302063_
                     _lp-tl301888302082_
                     (let ()
                       (declare (not safe))
                       (cons _hd301897302099_ _dispatch301889302070_))
                     (let ()
                       (declare (not safe))
                       (cons _hd301894302089_ _arity301890302072_)))
                    (___match307553307554_
                     _e301877302033_
                     _hd301876302037_
                     _tl301875302040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match307553307554_
                                                     _e301877302033_
                                                     _hd301876302037_
                                                     _tl301875302040_))))
                                            (___match307553307554_
                                             _e301877302033_
                                             _hd301876302037_
                                             _tl301875302040_))))
                                    (let ((_arity301892302108_
                                           (reverse _arity301890302072_))
                                          (_dispatch301891302105_
                                           (reverse _dispatch301889302070_)))
                                      (___kont307513307514_
                                       _dispatch301891302105_
                                       _arity301892302108_))))))
                      (_loop301885302063_ _target301882302057_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx307510307511_))
                (let ((_e301877302033_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx307510307511_))))
                  (let ((_tl301875302040_
                         (let () (declare (not safe)) (##cdr _e301877302033_)))
                        (_hd301876302037_
                         (let ()
                           (declare (not safe))
                           (##car _e301877302033_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl301875302040_))
                        (let ((_e301880302043_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl301875302040_))))
                          (let ((_tl301878302050_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e301880302043_)))
                                (_hd301879302047_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e301880302043_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd301879302047_))
                                (let ((_e301881302053_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd301879302047_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e301881302053_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl301878302050_))
                                          (let ((___splice307515307516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl301878302050_
                                                    '0))))
                                            (let ((_tl301884302060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice307515307516_
                                                      '1)))
                                                  (_target301882302057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice307515307516_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl301884302060_))
                                                  (___match307547307548_
                                                   _e301877302033_
                                                   _hd301876302037_
                                                   _tl301875302040_
                                                   _e301880302043_
                                                   _hd301879302047_
                                                   _tl301878302050_
                                                   _e301881302053_
                                                   ___splice307515307516_
                                                   _target301882302057_
                                                   _tl301884302060_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl301875302040_))
                                                      (let ((___splice307519307520_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl301875302040_ '0))))
                (let ((_tl301906301946_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice307519307520_ '1)))
                      (_target301904301943_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice307519307520_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl301906301946_))
                      (___match307561307562_
                       _e301877302033_
                       _hd301876302037_
                       _tl301875302040_
                       ___splice307519307520_
                       _target301904301943_
                       _tl301906301946_)
                      (let () (declare (not safe)) (_g301871301926_)))))
              (let () (declare (not safe)) (_g301871301926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl301875302040_))
                                              (let ((___splice307519307520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl301875302040_
                                                        '0))))
                                                (let ((_tl301906301946_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice307519307520_
                                                          '1)))
                                                      (_target301904301943_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice307519307520_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl301906301946_))
                                                      (___match307561307562_
                                                       _e301877302033_
                                                       _hd301876302037_
                                                       _tl301875302040_
                                                       ___splice307519307520_
                                                       _target301904301943_
                                                       _tl301906301946_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g301871301926_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g301871301926_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl301875302040_))
                                          (let ((___splice307519307520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl301875302040_
                                                    '0))))
                                            (let ((_tl301906301946_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice307519307520_
                                                      '1)))
                                                  (_target301904301943_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice307519307520_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl301906301946_))
                                                  (___match307561307562_
                                                   _e301877302033_
                                                   _hd301876302037_
                                                   _tl301875302040_
                                                   ___splice307519307520_
                                                   _target301904301943_
                                                   _tl301906301946_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g301871301926_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g301871301926_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl301875302040_))
                                    (let ((___splice307519307520_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl301875302040_
                                              '0))))
                                      (let ((_tl301906301946_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice307519307520_
                                                '1)))
                                            (_target301904301943_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice307519307520_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl301906301946_))
                                            (___match307561307562_
                                             _e301877302033_
                                             _hd301876302037_
                                             _tl301875302040_
                                             ___splice307519307520_
                                             _target301904301943_
                                             _tl301906301946_)
                                            (let ()
                                              (declare (not safe))
                                              (_g301871301926_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g301871301926_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301875302040_))
                            (let ((___splice307519307520_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301875302040_
                                      '0))))
                              (let ((_tl301906301946_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice307519307520_
                                        '1)))
                                    (_target301904301943_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice307519307520_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl301906301946_))
                                    (___match307561307562_
                                     _e301877302033_
                                     _hd301876302037_
                                     _tl301875302040_
                                     ___splice307519307520_
                                     _target301904301943_
                                     _tl301906301946_)
                                    (let ()
                                      (declare (not safe))
                                      (_g301871301926_)))))
                            (let () (declare (not safe)) (_g301871301926_))))))
                (let () (declare (not safe)) (_g301871301926_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx302148_)
      (let* ((_g302152302170_
              (lambda (_g302153302166_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302153302166_))))
             (_g302151302225_
              (lambda (_g302153302174_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302153302174_))
                    (let ((_e302158302177_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302153302174_))))
                      (let ((_hd302157302181_
                             (let ()
                               (declare (not safe))
                               (##car _e302158302177_)))
                            (_tl302156302184_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302158302177_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302156302184_))
                            (let ((_e302161302187_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302156302184_))))
                              (let ((_hd302160302191_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302161302187_)))
                                    (_tl302159302194_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302161302187_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302159302194_))
                                    (let ((_e302164302197_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302159302194_))))
                                      (let ((_hd302163302201_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302164302197_)))
                                            (_tl302162302204_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302164302197_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl302162302204_))
                                            ((lambda (_L302207_ _L302209_)
                                               (let ((__tmp307954
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp307941
                                                      (let ((__tmp307950
                                                             (let ((__tmp307953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp307951
                            (let ((__tmp307952
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp307952 '()))))
                       (declare (not safe))
                       (cons __tmp307953 __tmp307951)))
                    (__tmp307942
                     (let ((__tmp307947
                            (let ((__tmp307949
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp307948
                                   (let ()
                                     (declare (not safe))
                                     (cons _L302209_ '()))))
                              (declare (not safe))
                              (cons __tmp307949 __tmp307948)))
                           (__tmp307943
                            (let ((__tmp307944
                                   (let ((__tmp307946
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp307945
                                          (let ()
                                            (declare (not safe))
                                            (cons _L302207_ '()))))
                                     (declare (not safe))
                                     (cons __tmp307946 __tmp307945))))
                              (declare (not safe))
                              (cons __tmp307944 '()))))
                       (declare (not safe))
                       (cons __tmp307947 __tmp307943))))
                (declare (not safe))
                (cons __tmp307950 __tmp307942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp307954
                                                       __tmp307941)))
                                             _hd302163302201_
                                             _hd302160302191_)
                                            (_g302152302170_
                                             _g302153302174_))))
                                    (_g302152302170_ _g302153302174_))))
                            (_g302152302170_ _g302153302174_))))
                    (_g302152302170_ _g302153302174_)))))
        (_g302151302225_ _$stx302148_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx302229_)
      (let* ((_g302233302251_
              (lambda (_g302234302247_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302234302247_))))
             (_g302232302306_
              (lambda (_g302234302255_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302234302255_))
                    (let ((_e302239302258_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302234302255_))))
                      (let ((_hd302238302262_
                             (let ()
                               (declare (not safe))
                               (##car _e302239302258_)))
                            (_tl302237302265_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302239302258_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302237302265_))
                            (let ((_e302242302268_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302237302265_))))
                              (let ((_hd302241302272_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302242302268_)))
                                    (_tl302240302275_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302242302268_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302240302275_))
                                    (let ((_e302245302278_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302240302275_))))
                                      (let ((_hd302244302282_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302245302278_)))
                                            (_tl302243302285_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302245302278_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl302243302285_))
                                            ((lambda (_L302288_ _L302290_)
                                               (let ((__tmp307968
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp307955
                                                      (let ((__tmp307964
                                                             (let ((__tmp307967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp307965
                            (let ((__tmp307966
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp307966 '()))))
                       (declare (not safe))
                       (cons __tmp307967 __tmp307965)))
                    (__tmp307956
                     (let ((__tmp307961
                            (let ((__tmp307963
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp307962
                                   (let ()
                                     (declare (not safe))
                                     (cons _L302290_ '()))))
                              (declare (not safe))
                              (cons __tmp307963 __tmp307962)))
                           (__tmp307957
                            (let ((__tmp307958
                                   (let ((__tmp307960
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp307959
                                          (let ()
                                            (declare (not safe))
                                            (cons _L302288_ '()))))
                                     (declare (not safe))
                                     (cons __tmp307960 __tmp307959))))
                              (declare (not safe))
                              (cons __tmp307958 '()))))
                       (declare (not safe))
                       (cons __tmp307961 __tmp307957))))
                (declare (not safe))
                (cons __tmp307964 __tmp307956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp307968
                                                       __tmp307955)))
                                             _hd302244302282_
                                             _hd302241302272_)
                                            (_g302233302251_
                                             _g302234302255_))))
                                    (_g302233302251_ _g302234302255_))))
                            (_g302233302251_ _g302234302255_))))
                    (_g302233302251_ _g302234302255_)))))
        (_g302232302306_ _$stx302229_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx302310_)
      (let* ((___stx307564307565_ _$stx302310_)
             (_g302317302388_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx307564307565_)))))
        (let ((___kont307567307568_
               (lambda (_L302679_ _L302681_)
                 (let ((__tmp307974
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp307969
                        (let ((__tmp307970
                               (let ((__tmp307971
                                      (let ((__tmp307973
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp307972
                                             (let ()
                                               (declare (not safe))
                                               (cons _L302679_ '()))))
                                        (declare (not safe))
                                        (cons __tmp307973 __tmp307972))))
                                 (declare (not safe))
                                 (cons __tmp307971 '()))))
                          (declare (not safe))
                          (cons _L302681_ __tmp307970))))
                   (declare (not safe))
                   (cons __tmp307974 __tmp307969))))
              (___kont307569307570_
               (lambda (_L302598_ _L302600_)
                 (let ((__tmp307983
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp307975
                        (let ((__tmp307976
                               (let ((__tmp307977
                                      (let ((__tmp307982
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp307978
                                             (let ((__tmp307979
                                                    (lambda (_g302619302622_
                                                             _g302620302625_)
                                                      (let ((__tmp307980
                                                             (let ((__tmp307981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g302619302622_ __tmp307981))))
                (declare (not safe))
                (cons __tmp307980 _g302620302625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp307979
                                                       '()
                                                       _L302598_))))
                                        (declare (not safe))
                                        (cons __tmp307982 __tmp307978))))
                                 (declare (not safe))
                                 (cons __tmp307977 '()))))
                          (declare (not safe))
                          (cons _L302600_ __tmp307976))))
                   (declare (not safe))
                   (cons __tmp307983 __tmp307975))))
              (___kont307573307574_
               (lambda (_L302510_ _L302512_)
                 (let ((__tmp307990
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp307984
                        (let ((__tmp307985
                               (let ((__tmp307986
                                      (let ((__tmp307989
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp307987
                                             (let ((__tmp307988
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L302510_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp307988))))
                                        (declare (not safe))
                                        (cons __tmp307989 __tmp307987))))
                                 (declare (not safe))
                                 (cons __tmp307986 '()))))
                          (declare (not safe))
                          (cons _L302512_ __tmp307985))))
                   (declare (not safe))
                   (cons __tmp307990 __tmp307984))))
              (___kont307575307576_
               (lambda (_L302445_ _L302447_)
                 (let ((__tmp308000
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp307991
                        (let ((__tmp307992
                               (let ((__tmp307993
                                      (let ((__tmp307999
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp307994
                                             (let ((__tmp307995
                                                    (let ((__tmp307996
                                                           (lambda (_g302464302467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g302465302470_)
                     (let ((__tmp307997
                            (let ((__tmp307998
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g302464302467_ __tmp307998))))
                       (declare (not safe))
                       (cons __tmp307997 _g302465302470_)))))
              (declare (not safe))
              (foldr1 __tmp307996 '() _L302445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp307995))))
                                        (declare (not safe))
                                        (cons __tmp307999 __tmp307994))))
                                 (declare (not safe))
                                 (cons __tmp307993 '()))))
                          (declare (not safe))
                          (cons _L302447_ __tmp307992))))
                   (declare (not safe))
                   (cons __tmp308000 __tmp307991)))))
          (let* ((___match307683307684_
                  (lambda (_e302370302395_
                           _hd302369302399_
                           _tl302368302402_
                           _e302373302405_
                           _hd302372302409_
                           _tl302371302412_
                           ___splice307577307578_
                           _target302374302415_
                           _tl302376302418_)
                    (letrec ((_loop302377302421_
                              (lambda (_hd302375302425_ _arity302381302428_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd302375302425_))
                                    (let ((_e302378302431_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd302375302425_))))
                                      (let ((_lp-tl302380302438_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302378302431_)))
                                            (_lp-hd302379302435_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302378302431_))))
                                        (_loop302377302421_
                                         _lp-tl302380302438_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd302379302435_
                                                 _arity302381302428_)))))
                                    (let ((_arity302382302441_
                                           (reverse _arity302381302428_)))
                                      (___kont307575307576_
                                       _arity302382302441_
                                       _hd302372302409_))))))
                      (_loop302377302421_ _target302374302415_ '()))))
                 (___match307643307644_
                  (lambda (_e302338302534_
                           _hd302337302538_
                           _tl302336302541_
                           _e302341302544_
                           _hd302340302548_
                           _tl302339302551_
                           _e302344302554_
                           _hd302343302558_
                           _tl302342302561_
                           _e302345302564_
                           ___splice307571307572_
                           _target302346302568_
                           _tl302348302571_)
                    (letrec ((_loop302349302574_
                              (lambda (_hd302347302578_ _arity302353302581_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd302347302578_))
                                    (let ((_e302350302584_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd302347302578_))))
                                      (let ((_lp-tl302352302591_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302350302584_)))
                                            (_lp-hd302351302588_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302350302584_))))
                                        (_loop302349302574_
                                         _lp-tl302352302591_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd302351302588_
                                                 _arity302353302581_)))))
                                    (let ((_arity302354302594_
                                           (reverse _arity302353302581_)))
                                      (___kont307569307570_
                                       _arity302354302594_
                                       _hd302340302548_))))))
                      (_loop302349302574_ _target302346302568_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx307564307565_))
                (let ((_e302323302635_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx307564307565_))))
                  (let ((_tl302321302642_
                         (let () (declare (not safe)) (##cdr _e302323302635_)))
                        (_hd302322302639_
                         (let ()
                           (declare (not safe))
                           (##car _e302323302635_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl302321302642_))
                        (let ((_e302326302645_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl302321302642_))))
                          (let ((_tl302324302652_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e302326302645_)))
                                (_hd302325302649_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e302326302645_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl302324302652_))
                                (let ((_e302329302655_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl302324302652_))))
                                  (let ((_tl302327302662_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e302329302655_)))
                                        (_hd302328302659_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e302329302655_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd302328302659_))
                                        (let ((_e302330302665_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd302328302659_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e302330302665_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl302327302662_))
                                                  (let ((_e302333302669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl302327302662_))))
                                                    (let ((_tl302331302676_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e302333302669_)))
                                                          (_hd302332302673_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e302333302669_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl302331302676_))
                                                          (___kont307567307568_
                                                           _hd302332302673_
                                                           _hd302325302649_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl302327302662_))
                      (let ((___splice307571307572_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl302327302662_ '0))))
                        (let ((_tl302348302571_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice307571307572_ '1)))
                              (_target302346302568_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice307571307572_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl302348302571_))
                              (___match307643307644_
                               _e302323302635_
                               _hd302322302639_
                               _tl302321302642_
                               _e302326302645_
                               _hd302325302649_
                               _tl302324302652_
                               _e302329302655_
                               _hd302328302659_
                               _tl302327302662_
                               _e302330302665_
                               ___splice307571307572_
                               _target302346302568_
                               _tl302348302571_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl302324302652_))
                                  (let ((___splice307577307578_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl302324302652_
                                            '0))))
                                    (let ((_tl302376302418_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice307577307578_
                                              '1)))
                                          (_target302374302415_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice307577307578_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl302376302418_))
                                          (___match307683307684_
                                           _e302323302635_
                                           _hd302322302639_
                                           _tl302321302642_
                                           _e302326302645_
                                           _hd302325302649_
                                           _tl302324302652_
                                           ___splice307577307578_
                                           _target302374302415_
                                           _tl302376302418_)
                                          (let ()
                                            (declare (not safe))
                                            (_g302317302388_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g302317302388_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl302324302652_))
                          (let ((___splice307577307578_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl302324302652_
                                    '0))))
                            (let ((_tl302376302418_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice307577307578_ '1)))
                                  (_target302374302415_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice307577307578_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl302376302418_))
                                  (___match307683307684_
                                   _e302323302635_
                                   _hd302322302639_
                                   _tl302321302642_
                                   _e302326302645_
                                   _hd302325302649_
                                   _tl302324302652_
                                   ___splice307577307578_
                                   _target302374302415_
                                   _tl302376302418_)
                                  (let ()
                                    (declare (not safe))
                                    (_g302317302388_)))))
                          (let () (declare (not safe)) (_g302317302388_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl302327302662_))
                                                      (let ((___splice307571307572_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl302327302662_ '0))))
                (let ((_tl302348302571_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice307571307572_ '1)))
                      (_target302346302568_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice307571307572_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl302348302571_))
                      (___match307643307644_
                       _e302323302635_
                       _hd302322302639_
                       _tl302321302642_
                       _e302326302645_
                       _hd302325302649_
                       _tl302324302652_
                       _e302329302655_
                       _hd302328302659_
                       _tl302327302662_
                       _e302330302665_
                       ___splice307571307572_
                       _target302346302568_
                       _tl302348302571_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl302327302662_))
                          (___kont307573307574_
                           _hd302328302659_
                           _hd302325302649_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl302324302652_))
                              (let ((___splice307577307578_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl302324302652_
                                        '0))))
                                (let ((_tl302376302418_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice307577307578_
                                          '1)))
                                      (_target302374302415_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice307577307578_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl302376302418_))
                                      (___match307683307684_
                                       _e302323302635_
                                       _hd302322302639_
                                       _tl302321302642_
                                       _e302326302645_
                                       _hd302325302649_
                                       _tl302324302652_
                                       ___splice307577307578_
                                       _target302374302415_
                                       _tl302376302418_)
                                      (let ()
                                        (declare (not safe))
                                        (_g302317302388_)))))
                              (let ()
                                (declare (not safe))
                                (_g302317302388_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl302327302662_))
                  (___kont307573307574_ _hd302328302659_ _hd302325302649_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl302324302652_))
                      (let ((___splice307577307578_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl302324302652_ '0))))
                        (let ((_tl302376302418_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice307577307578_ '1)))
                              (_target302374302415_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice307577307578_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl302376302418_))
                              (___match307683307684_
                               _e302323302635_
                               _hd302322302639_
                               _tl302321302642_
                               _e302326302645_
                               _hd302325302649_
                               _tl302324302652_
                               ___splice307577307578_
                               _target302374302415_
                               _tl302376302418_)
                              (let ()
                                (declare (not safe))
                                (_g302317302388_)))))
                      (let () (declare (not safe)) (_g302317302388_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl302327302662_))
                                                  (___kont307573307574_
                                                   _hd302328302659_
                                                   _hd302325302649_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl302324302652_))
                                                      (let ((___splice307577307578_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl302324302652_ '0))))
                (let ((_tl302376302418_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice307577307578_ '1)))
                      (_target302374302415_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice307577307578_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl302376302418_))
                      (___match307683307684_
                       _e302323302635_
                       _hd302322302639_
                       _tl302321302642_
                       _e302326302645_
                       _hd302325302649_
                       _tl302324302652_
                       ___splice307577307578_
                       _target302374302415_
                       _tl302376302418_)
                      (let () (declare (not safe)) (_g302317302388_)))))
              (let () (declare (not safe)) (_g302317302388_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl302327302662_))
                                            (___kont307573307574_
                                             _hd302328302659_
                                             _hd302325302649_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl302324302652_))
                                                (let ((___splice307577307578_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl302324302652_
                                                          '0))))
                                                  (let ((_tl302376302418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice307577307578_
                                                            '1)))
                                                        (_target302374302415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice307577307578_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl302376302418_))
                                                        (___match307683307684_
                                                         _e302323302635_
                                                         _hd302322302639_
                                                         _tl302321302642_
                                                         _e302326302645_
                                                         _hd302325302649_
                                                         _tl302324302652_
                                                         ___splice307577307578_
                                                         _target302374302415_
                                                         _tl302376302418_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g302317302388_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g302317302388_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl302324302652_))
                                    (let ((___splice307577307578_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl302324302652_
                                              '0))))
                                      (let ((_tl302376302418_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice307577307578_
                                                '1)))
                                            (_target302374302415_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice307577307578_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl302376302418_))
                                            (___match307683307684_
                                             _e302323302635_
                                             _hd302322302639_
                                             _tl302321302642_
                                             _e302326302645_
                                             _hd302325302649_
                                             _tl302324302652_
                                             ___splice307577307578_
                                             _target302374302415_
                                             _tl302376302418_)
                                            (let ()
                                              (declare (not safe))
                                              (_g302317302388_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g302317302388_))))))
                        (let () (declare (not safe)) (_g302317302388_)))))
                (let () (declare (not safe)) (_g302317302388_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx302705_)
      (let* ((___stx307686307687_ _$stx302705_)
             (_g302710302745_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx307686307687_)))))
        (let ((___kont307689307690_
               (lambda (_L302867_ _L302869_)
                 (let ((__tmp308006
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp308001
                        (let ((__tmp308002
                               (let ((__tmp308003
                                      (let ((__tmp308005
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp308004
                                             (let ()
                                               (declare (not safe))
                                               (cons _L302867_ '()))))
                                        (declare (not safe))
                                        (cons __tmp308005 __tmp308004))))
                                 (declare (not safe))
                                 (cons __tmp308003 '()))))
                          (declare (not safe))
                          (cons _L302869_ __tmp308002))))
                   (declare (not safe))
                   (cons __tmp308006 __tmp308001))))
              (___kont307691307692_
               (lambda (_L302802_ _L302804_)
                 (let ((__tmp308015
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp308007
                        (let ((__tmp308008
                               (let ((__tmp308009
                                      (let ((__tmp308014
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp308010
                                             (let ((__tmp308011
                                                    (lambda (_g302821302824_
                                                             _g302822302827_)
                                                      (let ((__tmp308012
                                                             (let ((__tmp308013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g302821302824_ __tmp308013))))
                (declare (not safe))
                (cons __tmp308012 _g302822302827_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp308011
                                                       '()
                                                       _L302802_))))
                                        (declare (not safe))
                                        (cons __tmp308014 __tmp308010))))
                                 (declare (not safe))
                                 (cons __tmp308009 '()))))
                          (declare (not safe))
                          (cons _L302804_ __tmp308008))))
                   (declare (not safe))
                   (cons __tmp308015 __tmp308007)))))
          (let ((___match307735307736_
                 (lambda (_e302727302752_
                          _hd302726302756_
                          _tl302725302759_
                          _e302730302762_
                          _hd302729302766_
                          _tl302728302769_
                          ___splice307693307694_
                          _target302731302772_
                          _tl302733302775_)
                   (letrec ((_loop302734302778_
                             (lambda (_hd302732302782_ _arity302738302785_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd302732302782_))
                                   (let ((_e302735302788_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd302732302782_))))
                                     (let ((_lp-tl302737302795_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e302735302788_)))
                                           (_lp-hd302736302792_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e302735302788_))))
                                       (_loop302734302778_
                                        _lp-tl302737302795_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd302736302792_
                                                _arity302738302785_)))))
                                   (let ((_arity302739302798_
                                          (reverse _arity302738302785_)))
                                     (___kont307691307692_
                                      _arity302739302798_
                                      _hd302729302766_))))))
                     (_loop302734302778_ _target302731302772_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx307686307687_))
                (let ((_e302716302837_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx307686307687_))))
                  (let ((_tl302714302844_
                         (let () (declare (not safe)) (##cdr _e302716302837_)))
                        (_hd302715302841_
                         (let ()
                           (declare (not safe))
                           (##car _e302716302837_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl302714302844_))
                        (let ((_e302719302847_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl302714302844_))))
                          (let ((_tl302717302854_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e302719302847_)))
                                (_hd302718302851_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e302719302847_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl302717302854_))
                                (let ((_e302722302857_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl302717302854_))))
                                  (let ((_tl302720302864_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e302722302857_)))
                                        (_hd302721302861_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e302722302857_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl302720302864_))
                                        (___kont307689307690_
                                         _hd302721302861_
                                         _hd302718302851_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl302717302854_))
                                            (let ((___splice307693307694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl302717302854_
                                                      '0))))
                                              (let ((_tl302733302775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice307693307694_
                                                        '1)))
                                                    (_target302731302772_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice307693307694_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl302733302775_))
                                                    (___match307735307736_
                                                     _e302716302837_
                                                     _hd302715302841_
                                                     _tl302714302844_
                                                     _e302719302847_
                                                     _hd302718302851_
                                                     _tl302717302854_
                                                     ___splice307693307694_
                                                     _target302731302772_
                                                     _tl302733302775_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g302710302745_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g302710302745_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl302717302854_))
                                    (let ((___splice307693307694_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl302717302854_
                                              '0))))
                                      (let ((_tl302733302775_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice307693307694_
                                                '1)))
                                            (_target302731302772_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice307693307694_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl302733302775_))
                                            (___match307735307736_
                                             _e302716302837_
                                             _hd302715302841_
                                             _tl302714302844_
                                             _e302719302847_
                                             _hd302718302851_
                                             _tl302717302854_
                                             ___splice307693307694_
                                             _target302731302772_
                                             _tl302733302775_)
                                            (let ()
                                              (declare (not safe))
                                              (_g302710302745_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g302710302745_))))))
                        (let () (declare (not safe)) (_g302710302745_)))))
                (let () (declare (not safe)) (_g302710302745_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx302889_)
      (let* ((_g302893302928_
              (lambda (_g302894302924_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302894302924_))))
             (_g302892303056_
              (lambda (_g302894302932_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302894302932_))
                    (let ((_e302899302935_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302894302932_))))
                      (let ((_hd302898302939_
                             (let ()
                               (declare (not safe))
                               (##car _e302899302935_)))
                            (_tl302897302942_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302899302935_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl302897302942_))
                            (let ((_g308016_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl302897302942_
                                      '0))))
                              (begin
                                (let ((_g308017_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g308016_)
                                             (##vector-length _g308016_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g308017_ 2)))
                                      (error "Context expects 2 values"
                                             _g308017_)))
                                (let ((_target302900302945_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308016_ 0)))
                                      (_tl302902302948_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308016_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl302902302948_))
                                      (letrec ((_loop302903302951_
                                                (lambda (_hd302901302955_
                                                         _arity302907302958_
                                                         _prim302908302960_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd302901302955_))
                                                      (let ((_e302904302963_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd302901302955_))))
                (let ((_lp-hd302905302967_
                       (let () (declare (not safe)) (##car _e302904302963_)))
                      (_lp-tl302906302970_
                       (let () (declare (not safe)) (##cdr _e302904302963_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd302905302967_))
                      (let ((_e302913302973_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd302905302967_))))
                        (let ((_hd302912302977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e302913302973_)))
                              (_tl302911302980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e302913302973_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl302911302980_))
                              (let ((_g308026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl302911302980_
                                        '0))))
                                (begin
                                  (let ((_g308027_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g308026_)
                                               (##vector-length _g308026_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g308027_ 2)))
                                        (error "Context expects 2 values"
                                               _g308027_)))
                                  (let ((_target302914302983_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g308026_ 0)))
                                        (_tl302916302986_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g308026_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl302916302986_))
                                        (letrec ((_loop302917302989_
                                                  (lambda (_hd302915302993_
                                                           _arity302921302996_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd302915302993_))
                                                        (let ((_e302918302999_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd302915302993_))))
                  (let ((_lp-hd302919303003_
                         (let () (declare (not safe)) (##car _e302918302999_)))
                        (_lp-tl302920303006_
                         (let ()
                           (declare (not safe))
                           (##cdr _e302918302999_))))
                    (_loop302917302989_
                     _lp-tl302920303006_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd302919303003_ _arity302921302996_)))))
                (let ((_arity302922303009_ (reverse _arity302921302996_)))
                  (_loop302903302951_
                   _lp-tl302906302970_
                   (let ()
                     (declare (not safe))
                     (cons _arity302922303009_ _arity302907302958_))
                   (let ()
                     (declare (not safe))
                     (cons _hd302912302977_ _prim302908302960_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop302917302989_
                                           _target302914302983_
                                           '()))
                                        (_g302893302928_ _g302894302932_)))))
                              (_g302893302928_ _g302894302932_))))
                      (_g302893302928_ _g302894302932_))))
              (let ((_arity302909303013_ (reverse _arity302907302958_))
                    (_prim302910303016_ (reverse _prim302908302960_)))
                ((lambda (_L303019_ _L303021_)
                   (let ((__tmp308025
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp308018
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L303019_
                               _L303021_))
                            (let ((__tmp308019
                                   (lambda (_g303036303042_
                                            _g303037303045_
                                            _g303038303047_)
                                     (let ((__tmp308020
                                            (let ((__tmp308024
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp308021
                                                   (let ((__tmp308022
                                                          (let ((__tmp308023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g303039303050_ _g303040303053_)
                           (let ()
                             (declare (not safe))
                             (cons _g303039303050_ _g303040303053_)))))
                    (declare (not safe))
                    (foldr1 __tmp308023 '() _g303036303042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g303037303045_
                                                           __tmp308022))))
                                              (declare (not safe))
                                              (cons __tmp308024 __tmp308021))))
                                       (declare (not safe))
                                       (cons __tmp308020 _g303038303047_)))))
                              (declare (not safe))
                              (foldr2 __tmp308019 '() _L303019_ _L303021_)))))
                     (declare (not safe))
                     (cons __tmp308025 __tmp308018)))
                 _arity302909303013_
                 _prim302910303016_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop302903302951_
                                         _target302900302945_
                                         '()
                                         '()))
                                      (_g302893302928_ _g302894302932_)))))
                            (_g302893302928_ _g302894302932_))))
                    (_g302893302928_ _g302894302932_)))))
        (_g302892303056_ _$stx302889_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx303062_)
      (let* ((_g303066303101_
              (lambda (_g303067303097_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g303067303097_))))
             (_g303065303229_
              (lambda (_g303067303105_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g303067303105_))
                    (let ((_e303072303108_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g303067303105_))))
                      (let ((_hd303071303112_
                             (let ()
                               (declare (not safe))
                               (##car _e303072303108_)))
                            (_tl303070303115_
                             (let ()
                               (declare (not safe))
                               (##cdr _e303072303108_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl303070303115_))
                            (let ((_g308028_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl303070303115_
                                      '0))))
                              (begin
                                (let ((_g308029_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g308028_)
                                             (##vector-length _g308028_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g308029_ 2)))
                                      (error "Context expects 2 values"
                                             _g308029_)))
                                (let ((_target303073303118_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308028_ 0)))
                                      (_tl303075303121_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308028_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl303075303121_))
                                      (letrec ((_loop303076303124_
                                                (lambda (_hd303074303128_
                                                         _arity303080303131_
                                                         _prim303081303133_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd303074303128_))
                                                      (let ((_e303077303136_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd303074303128_))))
                (let ((_lp-hd303078303140_
                       (let () (declare (not safe)) (##car _e303077303136_)))
                      (_lp-tl303079303143_
                       (let () (declare (not safe)) (##cdr _e303077303136_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd303078303140_))
                      (let ((_e303086303146_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd303078303140_))))
                        (let ((_hd303085303150_
                               (let ()
                                 (declare (not safe))
                                 (##car _e303086303146_)))
                              (_tl303084303153_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e303086303146_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl303084303153_))
                              (let ((_g308038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl303084303153_
                                        '0))))
                                (begin
                                  (let ((_g308039_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g308038_)
                                               (##vector-length _g308038_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g308039_ 2)))
                                        (error "Context expects 2 values"
                                               _g308039_)))
                                  (let ((_target303087303156_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g308038_ 0)))
                                        (_tl303089303159_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g308038_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl303089303159_))
                                        (letrec ((_loop303090303162_
                                                  (lambda (_hd303088303166_
                                                           _arity303094303169_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd303088303166_))
                                                        (let ((_e303091303172_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd303088303166_))))
                  (let ((_lp-hd303092303176_
                         (let () (declare (not safe)) (##car _e303091303172_)))
                        (_lp-tl303093303179_
                         (let ()
                           (declare (not safe))
                           (##cdr _e303091303172_))))
                    (_loop303090303162_
                     _lp-tl303093303179_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd303092303176_ _arity303094303169_)))))
                (let ((_arity303095303182_ (reverse _arity303094303169_)))
                  (_loop303076303124_
                   _lp-tl303079303143_
                   (let ()
                     (declare (not safe))
                     (cons _arity303095303182_ _arity303080303131_))
                   (let ()
                     (declare (not safe))
                     (cons _hd303085303150_ _prim303081303133_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop303090303162_
                                           _target303087303156_
                                           '()))
                                        (_g303066303101_ _g303067303105_)))))
                              (_g303066303101_ _g303067303105_))))
                      (_g303066303101_ _g303067303105_))))
              (let ((_arity303082303186_ (reverse _arity303080303131_))
                    (_prim303083303189_ (reverse _prim303081303133_)))
                ((lambda (_L303192_ _L303194_)
                   (let ((__tmp308037
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp308030
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L303192_
                               _L303194_))
                            (let ((__tmp308031
                                   (lambda (_g303209303215_
                                            _g303210303218_
                                            _g303211303220_)
                                     (let ((__tmp308032
                                            (let ((__tmp308036
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp308033
                                                   (let ((__tmp308034
                                                          (let ((__tmp308035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g303212303223_ _g303213303226_)
                           (let ()
                             (declare (not safe))
                             (cons _g303212303223_ _g303213303226_)))))
                    (declare (not safe))
                    (foldr1 __tmp308035 '() _g303209303215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g303210303218_
                                                           __tmp308034))))
                                              (declare (not safe))
                                              (cons __tmp308036 __tmp308033))))
                                       (declare (not safe))
                                       (cons __tmp308032 _g303211303220_)))))
                              (declare (not safe))
                              (foldr2 __tmp308031 '() _L303192_ _L303194_)))))
                     (declare (not safe))
                     (cons __tmp308037 __tmp308030)))
                 _arity303082303186_
                 _prim303083303189_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop303076303124_
                                         _target303073303118_
                                         '()
                                         '()))
                                      (_g303066303101_ _g303067303105_)))))
                            (_g303066303101_ _g303067303105_))))
                    (_g303066303101_ _g303067303105_)))))
        (_g303065303229_ _$stx303062_)))))
