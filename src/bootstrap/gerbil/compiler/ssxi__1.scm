(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx159515_)
      (let* ((_g159519159537_
              (lambda (_g159520159533_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159520159533_))))
             (_g159518159592_
              (lambda (_g159520159541_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159520159541_))
                    (let ((_e159525159544_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159520159541_))))
                      (let ((_hd159524159548_
                             (let ()
                               (declare (not safe))
                               (##car _e159525159544_)))
                            (_tl159523159551_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159525159544_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159523159551_))
                            (let ((_e159528159554_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159523159551_))))
                              (let ((_hd159527159558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159528159554_)))
                                    (_tl159526159561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159528159554_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159526159561_))
                                    (let ((_e159531159564_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159526159561_))))
                                      (let ((_hd159530159568_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159531159564_)))
                                            (_tl159529159571_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159531159564_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159529159571_))
                                            ((lambda (_L159574_ _L159576_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L159576_))
                                                   (let ((__tmp163056
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp163051
                                                          (let ((__tmp163053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp163055
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp163054
                                (let ()
                                  (declare (not safe))
                                  (cons _L159576_ '()))))
                           (declare (not safe))
                           (cons __tmp163055 __tmp163054)))
                        (__tmp163052
                         (let () (declare (not safe)) (cons _L159574_ '()))))
                    (declare (not safe))
                    (cons __tmp163053 __tmp163052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp163056
                                                           __tmp163051))
                                                   (_g159519159537_
                                                    _g159520159541_)))
                                             _hd159530159568_
                                             _hd159527159558_)
                                            (_g159519159537_
                                             _g159520159541_))))
                                    (_g159519159537_ _g159520159541_))))
                            (_g159519159537_ _g159520159541_))))
                    (_g159519159537_ _g159520159541_)))))
        (_g159518159592_ _$stx159515_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx159596_)
      (let* ((_g159600159629_
              (lambda (_g159601159625_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159601159625_))))
             (_g159599159729_
              (lambda (_g159601159633_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159601159633_))
                    (let ((_e159606159636_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159601159633_))))
                      (let ((_hd159605159640_
                             (let ()
                               (declare (not safe))
                               (##car _e159606159636_)))
                            (_tl159604159643_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159606159636_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159604159643_))
                            (let ((_g163057_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159604159643_
                                      '0))))
                              (begin
                                (let ((_g163058_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163057_)
                                             (##vector-length _g163057_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163058_ 2)))
                                      (error "Context expects 2 values"
                                             _g163058_)))
                                (let ((_target159607159646_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163057_ 0)))
                                      (_tl159609159649_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163057_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159609159649_))
                                      (letrec ((_loop159610159652_
                                                (lambda (_hd159608159656_
                                                         _type159614159659_
                                                         _symbol159615159661_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159608159656_))
                                                      (let ((_e159611159664_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159608159656_))))
                (let ((_lp-hd159612159668_
                       (let () (declare (not safe)) (##car _e159611159664_)))
                      (_lp-tl159613159671_
                       (let () (declare (not safe)) (##cdr _e159611159664_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159612159668_))
                      (let ((_e159620159674_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159612159668_))))
                        (let ((_hd159619159678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159620159674_)))
                              (_tl159618159681_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159620159674_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159618159681_))
                              (let ((_e159623159684_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159618159681_))))
                                (let ((_hd159622159688_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159623159684_)))
                                      (_tl159621159691_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159623159684_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159621159691_))
                                      (_loop159610159652_
                                       _lp-tl159613159671_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159622159688_
                                               _type159614159659_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159619159678_
                                               _symbol159615159661_)))
                                      (_g159600159629_ _g159601159633_))))
                              (_g159600159629_ _g159601159633_))))
                      (_g159600159629_ _g159601159633_))))
              (let ((_type159616159694_ (reverse _type159614159659_))
                    (_symbol159617159697_ (reverse _symbol159615159661_)))
                ((lambda (_L159700_ _L159702_)
                   (let ((__tmp163065
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163059
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159700_
                               _L159702_))
                            (let ((__tmp163060
                                   (lambda (_g159717159721_
                                            _g159718159724_
                                            _g159719159726_)
                                     (let ((__tmp163061
                                            (let ((__tmp163064
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp163062
                                                   (let ((__tmp163063
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g159717159721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159718159724_
                                                           __tmp163063))))
                                              (declare (not safe))
                                              (cons __tmp163064 __tmp163062))))
                                       (declare (not safe))
                                       (cons __tmp163061 _g159719159726_)))))
                              (declare (not safe))
                              (foldr2 __tmp163060 '() _L159700_ _L159702_)))))
                     (declare (not safe))
                     (cons __tmp163065 __tmp163059)))
                 _type159616159694_
                 _symbol159617159697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159610159652_
                                         _target159607159646_
                                         '()
                                         '()))
                                      (_g159600159629_ _g159601159633_)))))
                            (_g159600159629_ _g159601159633_))))
                    (_g159600159629_ _g159601159633_)))))
        (_g159599159729_ _$stx159596_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx159734_)
      (let* ((___stx162616162617_ _$stx159734_)
             (_g159739159781_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162616162617_)))))
        (let ((___kont162619162620_
               (lambda (_L159909_ _L159911_ _L159912_ _L159913_)
                 (let ((__tmp163079
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp163066
                        (let ((__tmp163076
                               (let ((__tmp163078
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163077
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159913_ '()))))
                                 (declare (not safe))
                                 (cons __tmp163078 __tmp163077)))
                              (__tmp163067
                               (let ((__tmp163073
                                      (let ((__tmp163075
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163074
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159912_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163075 __tmp163074)))
                                     (__tmp163068
                                      (let ((__tmp163070
                                             (let ((__tmp163072
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163071
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159911_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163072 __tmp163071)))
                                            (__tmp163069
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159909_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163070 __tmp163069))))
                                 (declare (not safe))
                                 (cons __tmp163073 __tmp163068))))
                          (declare (not safe))
                          (cons __tmp163076 __tmp163067))))
                   (declare (not safe))
                   (cons __tmp163079 __tmp163066))))
              (___kont162621162622_
               (lambda (_L159828_ _L159830_ _L159831_ _L159832_)
                 (let ((__tmp163080
                        (let ((__tmp163081
                               (let ((__tmp163082
                                      (let ((__tmp163083
                                             (let ((__tmp163084
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp163084 '()))))
                                        (declare (not safe))
                                        (cons _L159828_ __tmp163083))))
                                 (declare (not safe))
                                 (cons _L159830_ __tmp163082))))
                          (declare (not safe))
                          (cons _L159831_ __tmp163081))))
                   (declare (not safe))
                   (cons _L159832_ __tmp163080)))))
          (let ((___match162655162656_
                 (lambda (_e159747159859_
                          _hd159746159863_
                          _tl159745159866_
                          _e159750159869_
                          _hd159749159873_
                          _tl159748159876_
                          _e159753159879_
                          _hd159752159883_
                          _tl159751159886_
                          _e159756159889_
                          _hd159755159893_
                          _tl159754159896_
                          _e159759159899_
                          _hd159758159903_
                          _tl159757159906_)
                   (let ((_L159909_ _hd159758159903_)
                         (_L159911_ _hd159755159893_)
                         (_L159912_ _hd159752159883_)
                         (_L159913_ _hd159749159873_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159913_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159912_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159911_)))
                         (___kont162619162620_
                          _L159909_
                          _L159911_
                          _L159912_
                          _L159913_)
                         (let () (declare (not safe)) (_g159739159781_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162616162617_))
                (let ((_e159747159859_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162616162617_))))
                  (let ((_tl159745159866_
                         (let () (declare (not safe)) (##cdr _e159747159859_)))
                        (_hd159746159863_
                         (let ()
                           (declare (not safe))
                           (##car _e159747159859_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159745159866_))
                        (let ((_e159750159869_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159745159866_))))
                          (let ((_tl159748159876_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159750159869_)))
                                (_hd159749159873_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159750159869_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159748159876_))
                                (let ((_e159753159879_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159748159876_))))
                                  (let ((_tl159751159886_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159753159879_)))
                                        (_hd159752159883_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159753159879_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl159751159886_))
                                        (let ((_e159756159889_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl159751159886_))))
                                          (let ((_tl159754159896_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e159756159889_)))
                                                (_hd159755159893_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e159756159889_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159754159896_))
                                                (let ((_e159759159899_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159754159896_))))
                                                  (let ((_tl159757159906_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159759159899_)))
                                                        (_hd159758159903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159759159899_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159757159906_))
                                                        (___match162655162656_
                                                         _e159747159859_
                                                         _hd159746159863_
                                                         _tl159745159866_
                                                         _e159750159869_
                                                         _hd159749159873_
                                                         _tl159748159876_
                                                         _e159753159879_
                                                         _hd159752159883_
                                                         _tl159751159886_
                                                         _e159756159889_
                                                         _hd159755159893_
                                                         _tl159754159896_
                                                         _e159759159899_
                                                         _hd159758159903_
                                                         _tl159757159906_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159739159781_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159754159896_))
                                                    (___kont162621162622_
                                                     _hd159755159893_
                                                     _hd159752159883_
                                                     _hd159749159873_
                                                     _hd159746159863_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159739159781_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g159739159781_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g159739159781_)))))
                        (let () (declare (not safe)) (_g159739159781_)))))
                (let () (declare (not safe)) (_g159739159781_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159938_)
      (let* ((_g159942159977_
              (lambda (_g159943159973_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159943159973_))))
             (_g159941160096_
              (lambda (_g159943159981_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159943159981_))
                    (let ((_e159949159984_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159943159981_))))
                      (let ((_hd159948159988_
                             (let ()
                               (declare (not safe))
                               (##car _e159949159984_)))
                            (_tl159947159991_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159949159984_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159947159991_))
                            (let ((_g163085_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159947159991_
                                      '0))))
                              (begin
                                (let ((_g163086_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163085_)
                                             (##vector-length _g163085_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163086_ 2)))
                                      (error "Context expects 2 values"
                                             _g163086_)))
                                (let ((_target159950159994_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163085_ 0)))
                                      (_tl159952159997_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163085_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159952159997_))
                                      (letrec ((_loop159953160000_
                                                (lambda (_hd159951160004_
                                                         _symbol159957160007_
                                                         _method159958160009_
                                                         _type-t159959160011_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159951160004_))
                                                      (let ((_e159954160014_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159951160004_))))
                (let ((_lp-hd159955160018_
                       (let () (declare (not safe)) (##car _e159954160014_)))
                      (_lp-tl159956160021_
                       (let () (declare (not safe)) (##cdr _e159954160014_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159955160018_))
                      (let ((_e159965160024_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159955160018_))))
                        (let ((_hd159964160028_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159965160024_)))
                              (_tl159963160031_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159965160024_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159963160031_))
                              (let ((_e159968160034_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159963160031_))))
                                (let ((_hd159967160038_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159968160034_)))
                                      (_tl159966160041_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159968160034_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159966160041_))
                                      (let ((_e159971160044_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159966160041_))))
                                        (let ((_hd159970160048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159971160044_)))
                                              (_tl159969160051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159971160044_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159969160051_))
                                              (_loop159953160000_
                                               _lp-tl159956160021_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159970160048_
                                                       _symbol159957160007_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159967160038_
                                                       _method159958160009_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159964160028_
                                                       _type-t159959160011_)))
                                              (_g159942159977_
                                               _g159943159981_))))
                                      (_g159942159977_ _g159943159981_))))
                              (_g159942159977_ _g159943159981_))))
                      (_g159942159977_ _g159943159981_))))
              (let ((_symbol159960160054_ (reverse _symbol159957160007_))
                    (_method159961160057_ (reverse _method159958160009_))
                    (_type-t159962160059_ (reverse _type-t159959160011_)))
                ((lambda (_L160062_ _L160064_ _L160065_)
                   (let ((__tmp163094
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163087
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160062_
                               _L160064_
                               _L160065_))
                            (let ((__tmp163088
                                   (lambda (_g160081160086_
                                            _g160082160089_
                                            _g160083160091_
                                            _g160084160093_)
                                     (let ((__tmp163089
                                            (let ((__tmp163093
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp163090
                                                   (let ((__tmp163091
                                                          (let ((__tmp163092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g160081160086_ '()))))
                    (declare (not safe))
                    (cons _g160082160089_ __tmp163092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160083160091_
                                                           __tmp163091))))
                                              (declare (not safe))
                                              (cons __tmp163093 __tmp163090))))
                                       (declare (not safe))
                                       (cons __tmp163089 _g160084160093_)))))
                              (declare (not safe))
                              (foldr* __tmp163088
                                      '()
                                      _L160062_
                                      _L160064_
                                      _L160065_)))))
                     (declare (not safe))
                     (cons __tmp163094 __tmp163087)))
                 _symbol159960160054_
                 _method159961160057_
                 _type-t159962160059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159953160000_
                                         _target159950159994_
                                         '()
                                         '()
                                         '()))
                                      (_g159942159977_ _g159943159981_)))))
                            (_g159942159977_ _g159943159981_))))
                    (_g159942159977_ _g159943159981_)))))
        (_g159941160096_ _$stx159938_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx160101_)
      (let* ((_g160105160138_
              (lambda (_g160106160134_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160106160134_))))
             (_g160104160252_
              (lambda (_g160106160142_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160106160142_))
                    (let ((_e160112160145_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160106160142_))))
                      (let ((_hd160111160149_
                             (let ()
                               (declare (not safe))
                               (##car _e160112160145_)))
                            (_tl160110160152_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160112160145_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160110160152_))
                            (let ((_e160115160155_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160110160152_))))
                              (let ((_hd160114160159_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160115160155_)))
                                    (_tl160113160162_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160115160155_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160113160162_))
                                    (let ((_g163095_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160113160162_
                                              '0))))
                                      (begin
                                        (let ((_g163096_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g163095_)
                                                     (##vector-length
                                                      _g163095_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g163096_ 2)))
                                              (error "Context expects 2 values"
                                                     _g163096_)))
                                        (let ((_target160116160165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163095_ 0)))
                                              (_tl160118160168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163095_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160118160168_))
                                              (letrec ((_loop160119160171_
                                                        (lambda (_hd160117160175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol160123160178_
                         _method160124160180_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd160117160175_))
                      (let ((_e160120160183_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd160117160175_))))
                        (let ((_lp-hd160121160187_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160120160183_)))
                              (_lp-tl160122160190_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160120160183_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd160121160187_))
                              (let ((_e160129160193_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd160121160187_))))
                                (let ((_hd160128160197_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160129160193_)))
                                      (_tl160127160200_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160129160193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160127160200_))
                                      (let ((_e160132160203_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160127160200_))))
                                        (let ((_hd160131160207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160132160203_)))
                                              (_tl160130160210_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160132160203_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160130160210_))
                                              (_loop160119160171_
                                               _lp-tl160122160190_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160131160207_
                                                       _symbol160123160178_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160128160197_
                                                       _method160124160180_)))
                                              (_g160105160138_
                                               _g160106160142_))))
                                      (_g160105160138_ _g160106160142_))))
                              (_g160105160138_ _g160106160142_))))
                      (let ((_symbol160125160213_
                             (reverse _symbol160123160178_))
                            (_method160126160216_
                             (reverse _method160124160180_)))
                        ((lambda (_L160219_ _L160221_ _L160222_)
                           (let ((__tmp163104
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp163097
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L160219_
                                       _L160221_))
                                    (let ((__tmp163098
                                           (lambda (_g160240160244_
                                                    _g160241160247_
                                                    _g160242160249_)
                                             (let ((__tmp163099
                                                    (let ((__tmp163103
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp163100
                                                           (let ((__tmp163101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp163102
                                 (let ()
                                   (declare (not safe))
                                   (cons _g160240160244_ '()))))
                            (declare (not safe))
                            (cons _g160241160247_ __tmp163102))))
                     (declare (not safe))
                     (cons _L160222_ __tmp163101))))
              (declare (not safe))
              (cons __tmp163103 __tmp163100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163099
                                                     _g160242160249_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp163098
                                              '()
                                              _L160219_
                                              _L160221_)))))
                             (declare (not safe))
                             (cons __tmp163104 __tmp163097)))
                         _symbol160125160213_
                         _method160126160216_
                         _hd160114160159_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop160119160171_
                                                 _target160116160165_
                                                 '()
                                                 '()))
                                              (_g160105160138_
                                               _g160106160142_)))))
                                    (_g160105160138_ _g160106160142_))))
                            (_g160105160138_ _g160106160142_))))
                    (_g160105160138_ _g160106160142_)))))
        (_g160104160252_ _$stx160101_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx160257_)
      (let* ((_g160261160275_
              (lambda (_g160262160271_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160262160271_))))
             (_g160260160316_
              (lambda (_g160262160279_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160262160279_))
                    (let ((_e160266160282_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160262160279_))))
                      (let ((_hd160265160286_
                             (let ()
                               (declare (not safe))
                               (##car _e160266160282_)))
                            (_tl160264160289_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160266160282_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160264160289_))
                            (let ((_e160269160292_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160264160289_))))
                              (let ((_hd160268160296_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160269160292_)))
                                    (_tl160267160299_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160269160292_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160267160299_))
                                    ((lambda (_L160302_)
                                       (let ((__tmp163109
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp163105
                                              (let ((__tmp163106
                                                     (let ((__tmp163108
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163107
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163108 __tmp163107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163106 '()))))
                                         (declare (not safe))
                                         (cons __tmp163109 __tmp163105)))
                                     _hd160268160296_)
                                    (_g160261160275_ _g160262160279_))))
                            (_g160261160275_ _g160262160279_))))
                    (_g160261160275_ _g160262160279_)))))
        (_g160260160316_ _$stx160257_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx160320_)
      (let* ((_g160324160374_
              (lambda (_g160325160370_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160325160370_))))
             (_g160323160541_
              (lambda (_g160325160378_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160325160378_))
                    (let ((_e160338160381_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160325160378_))))
                      (let ((_hd160337160385_
                             (let ()
                               (declare (not safe))
                               (##car _e160338160381_)))
                            (_tl160336160388_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160338160381_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160336160388_))
                            (let ((_e160341160391_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160336160388_))))
                              (let ((_hd160340160395_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160341160391_)))
                                    (_tl160339160398_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160341160391_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160339160398_))
                                    (let ((_e160344160401_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160339160398_))))
                                      (let ((_hd160343160405_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160344160401_)))
                                            (_tl160342160408_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160344160401_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160342160408_))
                                            (let ((_e160347160411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160342160408_))))
                                              (let ((_hd160346160415_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160347160411_)))
                                                    (_tl160345160418_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160347160411_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160345160418_))
                                                    (let ((_e160350160421_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160345160418_))))
                                                      (let ((_hd160349160425_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e160350160421_)))
                    (_tl160348160428_
                     (let () (declare (not safe)) (##cdr _e160350160421_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl160348160428_))
                    (let ((_e160353160431_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl160348160428_))))
                      (let ((_hd160352160435_
                             (let ()
                               (declare (not safe))
                               (##car _e160353160431_)))
                            (_tl160351160438_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160353160431_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160351160438_))
                            (let ((_e160356160441_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160351160438_))))
                              (let ((_hd160355160445_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160356160441_)))
                                    (_tl160354160448_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160356160441_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160354160448_))
                                    (let ((_e160359160451_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160354160448_))))
                                      (let ((_hd160358160455_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160359160451_)))
                                            (_tl160357160458_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160359160451_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160357160458_))
                                            (let ((_e160362160461_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160357160458_))))
                                              (let ((_hd160361160465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160362160461_)))
                                                    (_tl160360160468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160362160461_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160360160468_))
                                                    (let ((_e160365160471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160360160468_))))
                                                      (let ((_hd160364160475_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e160365160471_)))
                    (_tl160363160478_
                     (let () (declare (not safe)) (##cdr _e160365160471_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl160363160478_))
                    (let ((_e160368160481_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl160363160478_))))
                      (let ((_hd160367160485_
                             (let ()
                               (declare (not safe))
                               (##car _e160368160481_)))
                            (_tl160366160488_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160368160481_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl160366160488_))
                            ((lambda (_L160491_
                                      _L160493_
                                      _L160494_
                                      _L160495_
                                      _L160496_
                                      _L160497_
                                      _L160498_
                                      _L160499_
                                      _L160500_
                                      _L160501_)
                               (let ((__tmp163144
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp163110
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
                                                      (cons _L160501_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163143 __tmp163142)))
                                            (__tmp163111
                                             (let ((__tmp163138
                                                    (let ((__tmp163140
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp163139
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L160500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp163140 __tmp163139)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp163112
                                                    (let ((__tmp163135
                                                           (let ((__tmp163137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp163136
                          (let () (declare (not safe)) (cons _L160499_ '()))))
                     (declare (not safe))
                     (cons __tmp163137 __tmp163136)))
                  (__tmp163113
                   (let ((__tmp163132
                          (let ((__tmp163134
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp163133
                                 (let ()
                                   (declare (not safe))
                                   (cons _L160498_ '()))))
                            (declare (not safe))
                            (cons __tmp163134 __tmp163133)))
                         (__tmp163114
                          (let ((__tmp163129
                                 (let ((__tmp163131
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp163130
                                        (let ()
                                          (declare (not safe))
                                          (cons _L160497_ '()))))
                                   (declare (not safe))
                                   (cons __tmp163131 __tmp163130)))
                                (__tmp163115
                                 (let ((__tmp163126
                                        (let ((__tmp163128
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp163127
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L160496_ '()))))
                                          (declare (not safe))
                                          (cons __tmp163128 __tmp163127)))
                                       (__tmp163116
                                        (let ((__tmp163117
                                               (let ((__tmp163118
                                                      (let ((__tmp163123
                                                             (let ((__tmp163125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163124
                            (let ()
                              (declare (not safe))
                              (cons _L160493_ '()))))
                       (declare (not safe))
                       (cons __tmp163125 __tmp163124)))
                    (__tmp163119
                     (let ((__tmp163120
                            (let ((__tmp163122
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163121
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160491_ '()))))
                              (declare (not safe))
                              (cons __tmp163122 __tmp163121))))
                       (declare (not safe))
                       (cons __tmp163120 '()))))
                (declare (not safe))
                (cons __tmp163123 __tmp163119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L160494_
                                                       __tmp163118))))
                                          (declare (not safe))
                                          (cons _L160495_ __tmp163117))))
                                   (declare (not safe))
                                   (cons __tmp163126 __tmp163116))))
                            (declare (not safe))
                            (cons __tmp163129 __tmp163115))))
                     (declare (not safe))
                     (cons __tmp163132 __tmp163114))))
              (declare (not safe))
              (cons __tmp163135 __tmp163113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163138
                                                     __tmp163112))))
                                        (declare (not safe))
                                        (cons __tmp163141 __tmp163111))))
                                 (declare (not safe))
                                 (cons __tmp163144 __tmp163110)))
                             _hd160367160485_
                             _hd160364160475_
                             _hd160361160465_
                             _hd160358160455_
                             _hd160355160445_
                             _hd160352160435_
                             _hd160349160425_
                             _hd160346160415_
                             _hd160343160405_
                             _hd160340160395_)
                            (_g160324160374_ _g160325160378_))))
                    (_g160324160374_ _g160325160378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g160324160374_
                                                     _g160325160378_))))
                                            (_g160324160374_
                                             _g160325160378_))))
                                    (_g160324160374_ _g160325160378_))))
                            (_g160324160374_ _g160325160378_))))
                    (_g160324160374_ _g160325160378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g160324160374_
                                                     _g160325160378_))))
                                            (_g160324160374_
                                             _g160325160378_))))
                                    (_g160324160374_ _g160325160378_))))
                            (_g160324160374_ _g160325160378_))))
                    (_g160324160374_ _g160325160378_)))))
        (_g160323160541_ _$stx160320_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx160545_)
      (let* ((_g160549160563_
              (lambda (_g160550160559_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160550160559_))))
             (_g160548160604_
              (lambda (_g160550160567_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160550160567_))
                    (let ((_e160554160570_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160550160567_))))
                      (let ((_hd160553160574_
                             (let ()
                               (declare (not safe))
                               (##car _e160554160570_)))
                            (_tl160552160577_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160554160570_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160552160577_))
                            (let ((_e160557160580_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160552160577_))))
                              (let ((_hd160556160584_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160557160580_)))
                                    (_tl160555160587_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160557160580_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160555160587_))
                                    ((lambda (_L160590_)
                                       (let ((__tmp163149
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp163145
                                              (let ((__tmp163146
                                                     (let ((__tmp163148
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163147
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163148 __tmp163147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163146 '()))))
                                         (declare (not safe))
                                         (cons __tmp163149 __tmp163145)))
                                     _hd160556160584_)
                                    (_g160549160563_ _g160550160567_))))
                            (_g160549160563_ _g160550160567_))))
                    (_g160549160563_ _g160550160567_)))))
        (_g160548160604_ _$stx160545_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx160608_)
      (let* ((_g160612160626_
              (lambda (_g160613160622_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160613160622_))))
             (_g160611160667_
              (lambda (_g160613160630_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160613160630_))
                    (let ((_e160617160633_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160613160630_))))
                      (let ((_hd160616160637_
                             (let ()
                               (declare (not safe))
                               (##car _e160617160633_)))
                            (_tl160615160640_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160617160633_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160615160640_))
                            (let ((_e160620160643_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160615160640_))))
                              (let ((_hd160619160647_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160620160643_)))
                                    (_tl160618160650_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160620160643_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160618160650_))
                                    ((lambda (_L160653_)
                                       (let ((__tmp163154
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp163150
                                              (let ((__tmp163151
                                                     (let ((__tmp163153
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163152
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163153 __tmp163152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163151 '()))))
                                         (declare (not safe))
                                         (cons __tmp163154 __tmp163150)))
                                     _hd160619160647_)
                                    (_g160612160626_ _g160613160630_))))
                            (_g160612160626_ _g160613160630_))))
                    (_g160612160626_ _g160613160630_)))))
        (_g160611160667_ _$stx160608_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx160671_)
      (let* ((_g160675160697_
              (lambda (_g160676160693_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160676160693_))))
             (_g160674160766_
              (lambda (_g160676160701_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160676160701_))
                    (let ((_e160682160704_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160676160701_))))
                      (let ((_hd160681160708_
                             (let ()
                               (declare (not safe))
                               (##car _e160682160704_)))
                            (_tl160680160711_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160682160704_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160680160711_))
                            (let ((_e160685160714_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160680160711_))))
                              (let ((_hd160684160718_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160685160714_)))
                                    (_tl160683160721_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160685160714_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160683160721_))
                                    (let ((_e160688160724_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160683160721_))))
                                      (let ((_hd160687160728_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160688160724_)))
                                            (_tl160686160731_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160688160724_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160686160731_))
                                            (let ((_e160691160734_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160686160731_))))
                                              (let ((_hd160690160738_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160691160734_)))
                                                    (_tl160689160741_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160691160734_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160689160741_))
                                                    ((lambda (_L160744_
                                                              _L160746_
                                                              _L160747_)
                                                       (let ((__tmp163164
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp163155
                      (let ((__tmp163161
                             (let ((__tmp163163
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163162
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160747_ '()))))
                               (declare (not safe))
                               (cons __tmp163163 __tmp163162)))
                            (__tmp163156
                             (let ((__tmp163158
                                    (let ((__tmp163160
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163159
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160746_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163160 __tmp163159)))
                                   (__tmp163157
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160744_ '()))))
                               (declare (not safe))
                               (cons __tmp163158 __tmp163157))))
                        (declare (not safe))
                        (cons __tmp163161 __tmp163156))))
                 (declare (not safe))
                 (cons __tmp163164 __tmp163155)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160690160738_
                                                     _hd160687160728_
                                                     _hd160684160718_)
                                                    (_g160675160697_
                                                     _g160676160701_))))
                                            (_g160675160697_
                                             _g160676160701_))))
                                    (_g160675160697_ _g160676160701_))))
                            (_g160675160697_ _g160676160701_))))
                    (_g160675160697_ _g160676160701_)))))
        (_g160674160766_ _$stx160671_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx160770_)
      (let* ((_g160774160796_
              (lambda (_g160775160792_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160775160792_))))
             (_g160773160865_
              (lambda (_g160775160800_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160775160800_))
                    (let ((_e160781160803_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160775160800_))))
                      (let ((_hd160780160807_
                             (let ()
                               (declare (not safe))
                               (##car _e160781160803_)))
                            (_tl160779160810_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160781160803_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160779160810_))
                            (let ((_e160784160813_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160779160810_))))
                              (let ((_hd160783160817_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160784160813_)))
                                    (_tl160782160820_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160784160813_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160782160820_))
                                    (let ((_e160787160823_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160782160820_))))
                                      (let ((_hd160786160827_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160787160823_)))
                                            (_tl160785160830_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160787160823_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160785160830_))
                                            (let ((_e160790160833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160785160830_))))
                                              (let ((_hd160789160837_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160790160833_)))
                                                    (_tl160788160840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160790160833_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160788160840_))
                                                    ((lambda (_L160843_
                                                              _L160845_
                                                              _L160846_)
                                                       (let ((__tmp163174
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp163165
                      (let ((__tmp163171
                             (let ((__tmp163173
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163172
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160846_ '()))))
                               (declare (not safe))
                               (cons __tmp163173 __tmp163172)))
                            (__tmp163166
                             (let ((__tmp163168
                                    (let ((__tmp163170
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163169
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160845_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163170 __tmp163169)))
                                   (__tmp163167
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160843_ '()))))
                               (declare (not safe))
                               (cons __tmp163168 __tmp163167))))
                        (declare (not safe))
                        (cons __tmp163171 __tmp163166))))
                 (declare (not safe))
                 (cons __tmp163174 __tmp163165)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160789160837_
                                                     _hd160786160827_
                                                     _hd160783160817_)
                                                    (_g160774160796_
                                                     _g160775160800_))))
                                            (_g160774160796_
                                             _g160775160800_))))
                                    (_g160774160796_ _g160775160800_))))
                            (_g160774160796_ _g160775160800_))))
                    (_g160774160796_ _g160775160800_)))))
        (_g160773160865_ _$stx160770_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160869_)
      (let* ((___stx162684162685_ _$stx160869_)
             (_g160877160945_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162684162685_)))))
        (let ((___kont162687162688_
               (lambda (_L161223_ _L161225_)
                 (let ((__tmp163195
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp163175
                        (let ((__tmp163191
                               (let ((__tmp163194
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163192
                                      (let ((__tmp163193
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163193 '()))))
                                 (declare (not safe))
                                 (cons __tmp163194 __tmp163192)))
                              (__tmp163176
                               (let ((__tmp163188
                                      (let ((__tmp163190
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163189
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161225_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163190 __tmp163189)))
                                     (__tmp163177
                                      (let ((__tmp163178
                                             (let ((__tmp163179
                                                    (let ((__tmp163180
                                                           (let ((__tmp163187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp163181
                          (let ((__tmp163182
                                 (let ((__tmp163186
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp163183
                                        (let ((__tmp163184
                                               (let ((__tmp163185
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L161223_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp163185))))
                                          (declare (not safe))
                                          (cons _L161225_ __tmp163184))))
                                   (declare (not safe))
                                   (cons __tmp163186 __tmp163183))))
                            (declare (not safe))
                            (cons __tmp163182 '()))))
                     (declare (not safe))
                     (cons __tmp163187 __tmp163181))))
              (declare (not safe))
              (cons __tmp163180 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L161223_ __tmp163179))))
                                        (declare (not safe))
                                        (cons '#f __tmp163178))))
                                 (declare (not safe))
                                 (cons __tmp163188 __tmp163177))))
                          (declare (not safe))
                          (cons __tmp163191 __tmp163176))))
                   (declare (not safe))
                   (cons __tmp163195 __tmp163175))))
              (___kont162689162690_
               (lambda (_L161154_ _L161156_)
                 (let ((__tmp163196
                        (let ((__tmp163197
                               (let ((__tmp163198
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L161154_ __tmp163198))))
                          (declare (not safe))
                          (cons 'primitive: __tmp163197))))
                   (declare (not safe))
                   (cons _L161156_ __tmp163196))))
              (___kont162691162692_
               (lambda (_L161093_ _L161095_)
                 (let ((__tmp163212
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp163199
                        (let ((__tmp163208
                               (let ((__tmp163211
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163209
                                      (let ((__tmp163210
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163210 '()))))
                                 (declare (not safe))
                                 (cons __tmp163211 __tmp163209)))
                              (__tmp163200
                               (let ((__tmp163205
                                      (let ((__tmp163207
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163206
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161095_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163207 __tmp163206)))
                                     (__tmp163201
                                      (let ((__tmp163202
                                             (let ((__tmp163204
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163203
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161093_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163204
                                                     __tmp163203))))
                                        (declare (not safe))
                                        (cons __tmp163202 '()))))
                                 (declare (not safe))
                                 (cons __tmp163205 __tmp163201))))
                          (declare (not safe))
                          (cons __tmp163208 __tmp163200))))
                   (declare (not safe))
                   (cons __tmp163212 __tmp163199))))
              (___kont162693162694_
               (lambda (_L161025_ _L161027_)
                 (let ((__tmp163226
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp163213
                        (let ((__tmp163222
                               (let ((__tmp163225
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163223
                                      (let ((__tmp163224
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp163224 '()))))
                                 (declare (not safe))
                                 (cons __tmp163225 __tmp163223)))
                              (__tmp163214
                               (let ((__tmp163219
                                      (let ((__tmp163221
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163220
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161027_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163221 __tmp163220)))
                                     (__tmp163215
                                      (let ((__tmp163216
                                             (let ((__tmp163218
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163217
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161025_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163218
                                                     __tmp163217))))
                                        (declare (not safe))
                                        (cons __tmp163216 '()))))
                                 (declare (not safe))
                                 (cons __tmp163219 __tmp163215))))
                          (declare (not safe))
                          (cons __tmp163222 __tmp163214))))
                   (declare (not safe))
                   (cons __tmp163226 __tmp163213))))
              (___kont162695162696_
               (lambda (_L160972_ _L160974_)
                 (let ((__tmp163227
                        (let ((__tmp163228
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160972_ __tmp163228))))
                   (declare (not safe))
                   (cons _L160974_ __tmp163227)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx162684162685_))
              (let ((_e160883161179_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx162684162685_))))
                (let ((_tl160881161186_
                       (let () (declare (not safe)) (##cdr _e160883161179_)))
                      (_hd160882161183_
                       (let () (declare (not safe)) (##car _e160883161179_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160881161186_))
                      (let ((_e160886161189_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160881161186_))))
                        (let ((_tl160884161196_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160886161189_)))
                              (_hd160885161193_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160886161189_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160884161196_))
                              (let ((_e160889161199_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160884161196_))))
                                (let ((_tl160887161206_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160889161199_)))
                                      (_hd160888161203_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160889161199_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160888161203_))
                                      (let ((_e160890161209_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160888161203_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160890161209_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160887161206_))
                                                (let ((_e160893161213_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160887161206_))))
                                                  (let ((_tl160891161220_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160893161213_)))
                                                        (_hd160892161217_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160893161213_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160891161220_))
                                                        (___kont162687162688_
                                                         _hd160892161217_
                                                         _hd160885161193_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160885161193_))
                                                            (let ((_e160902161140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160885161193_))))
                      (declare (not safe))
                      (_g160877160945_))
                    (let () (declare (not safe)) (_g160877160945_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160885161193_))
                                                    (let ((_e160902161140_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160885161193_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160902161140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160887161206_))
                      (___kont162689162690_ _hd160888161203_ _hd160882161183_)
                      (let () (declare (not safe)) (_g160877160945_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160887161206_))
                      (___kont162693162694_ _hd160888161203_ _hd160885161193_)
                      (let () (declare (not safe)) (_g160877160945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160887161206_))
                                                        (___kont162693162694_
                                                         _hd160888161203_
                                                         _hd160885161193_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160877160945_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160885161193_))
                                                (let ((_e160902161140_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160885161193_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160902161140_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160887161206_))
                                                          (___kont162689162690_
                                                           _hd160888161203_
                                                           _hd160882161183_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160887161206_))
                      (let ((_e160920161083_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160887161206_))))
                        (let ((_tl160918161090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160920161083_)))
                              (_hd160919161087_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160920161083_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160918161090_))
                              (___kont162691162692_
                               _hd160919161087_
                               _hd160888161203_)
                              (let ()
                                (declare (not safe))
                                (_g160877160945_)))))
                      (let () (declare (not safe)) (_g160877160945_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160887161206_))
                  (___kont162693162694_ _hd160888161203_ _hd160885161193_)
                  (let () (declare (not safe)) (_g160877160945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160887161206_))
                                                    (___kont162693162694_
                                                     _hd160888161203_
                                                     _hd160885161193_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160877160945_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160885161193_))
                                          (let ((_e160902161140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160885161193_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160902161140_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160887161206_))
                                                    (___kont162689162690_
                                                     _hd160888161203_
                                                     _hd160882161183_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160887161206_))
                                                        (let ((_e160920161083_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160887161206_))))
                  (let ((_tl160918161090_
                         (let () (declare (not safe)) (##cdr _e160920161083_)))
                        (_hd160919161087_
                         (let ()
                           (declare (not safe))
                           (##car _e160920161083_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160918161090_))
                        (___kont162691162692_
                         _hd160919161087_
                         _hd160888161203_)
                        (let () (declare (not safe)) (_g160877160945_)))))
                (let () (declare (not safe)) (_g160877160945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160887161206_))
                                                    (___kont162693162694_
                                                     _hd160888161203_
                                                     _hd160885161193_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160877160945_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160887161206_))
                                              (___kont162693162694_
                                               _hd160888161203_
                                               _hd160885161193_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160877160945_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160885161193_))
                                  (let ((_e160902161140_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160885161193_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160884161196_))
                                        (___kont162695162696_
                                         _hd160885161193_
                                         _hd160882161183_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160877160945_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160884161196_))
                                      (___kont162695162696_
                                       _hd160885161193_
                                       _hd160882161183_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160877160945_)))))))
                      (let () (declare (not safe)) (_g160877160945_)))))
              (let () (declare (not safe)) (_g160877160945_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx161247_)
      (let* ((___stx162824162825_ _$stx161247_)
             (_g161252161307_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162824162825_)))))
        (let ((___kont162827162828_
               (lambda (_L161492_ _L161494_)
                 (let ((__tmp163244
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp163229
                        (let ((__tmp163240
                               (let ((__tmp163243
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163241
                                      (let ((__tmp163242
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp163242 '()))))
                                 (declare (not safe))
                                 (cons __tmp163243 __tmp163241)))
                              (__tmp163230
                               (let ((__tmp163231
                                      (let ((__tmp163239
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp163232
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L161492_
                                                  _L161494_))
                                               (let ((__tmp163233
                                                      (lambda (_g161511161515_
                                                               _g161512161518_
                                                               _g161513161520_)
                                                        (let ((__tmp163234
                                                               (let ((__tmp163238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp163235
                              (let ((__tmp163236
                                     (let ((__tmp163237
                                            (let ()
                                              (declare (not safe))
                                              (cons _g161511161515_ '()))))
                                       (declare (not safe))
                                       (cons _g161512161518_ __tmp163237))))
                                (declare (not safe))
                                (cons 'primitive: __tmp163236))))
                         (declare (not safe))
                         (cons __tmp163238 __tmp163235))))
                  (declare (not safe))
                  (cons __tmp163234 _g161513161520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp163233
                                                         '()
                                                         _L161492_
                                                         _L161494_)))))
                                        (declare (not safe))
                                        (cons __tmp163239 __tmp163232))))
                                 (declare (not safe))
                                 (cons __tmp163231 '()))))
                          (declare (not safe))
                          (cons __tmp163240 __tmp163230))))
                   (declare (not safe))
                   (cons __tmp163244 __tmp163229))))
              (___kont162831162832_
               (lambda (_L161378_ _L161380_)
                 (let ((__tmp163259
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp163245
                        (let ((__tmp163255
                               (let ((__tmp163258
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163256
                                      (let ((__tmp163257
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp163257 '()))))
                                 (declare (not safe))
                                 (cons __tmp163258 __tmp163256)))
                              (__tmp163246
                               (let ((__tmp163247
                                      (let ((__tmp163254
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp163248
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L161378_
                                                  _L161380_))
                                               (let ((__tmp163249
                                                      (lambda (_g161395161399_
                                                               _g161396161402_
                                                               _g161397161404_)
                                                        (let ((__tmp163250
                                                               (let ((__tmp163253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp163251
                              (let ((__tmp163252
                                     (let ()
                                       (declare (not safe))
                                       (cons _g161395161399_ '()))))
                                (declare (not safe))
                                (cons _g161396161402_ __tmp163252))))
                         (declare (not safe))
                         (cons __tmp163253 __tmp163251))))
                  (declare (not safe))
                  (cons __tmp163250 _g161397161404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp163249
                                                         '()
                                                         _L161378_
                                                         _L161380_)))))
                                        (declare (not safe))
                                        (cons __tmp163254 __tmp163248))))
                                 (declare (not safe))
                                 (cons __tmp163247 '()))))
                          (declare (not safe))
                          (cons __tmp163255 __tmp163246))))
                   (declare (not safe))
                   (cons __tmp163259 __tmp163245)))))
          (let* ((___match162875162876_
                  (lambda (_e161284161314_
                           _hd161283161318_
                           _tl161282161321_
                           ___splice162833162834_
                           _target161285161324_
                           _tl161287161327_)
                    (letrec ((_loop161288161330_
                              (lambda (_hd161286161334_
                                       _dispatch161292161337_
                                       _arity161293161339_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161286161334_))
                                    (let ((_e161289161342_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161286161334_))))
                                      (let ((_lp-tl161291161349_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161289161342_)))
                                            (_lp-hd161290161346_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161289161342_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd161290161346_))
                                            (let ((_e161298161352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd161290161346_))))
                                              (let ((_tl161296161359_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161298161352_)))
                                                    (_hd161297161356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161298161352_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161296161359_))
                                                    (let ((_e161301161362_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161296161359_))))
                                                      (let ((_tl161299161369_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e161301161362_)))
                    (_hd161300161366_
                     (let () (declare (not safe)) (##car _e161301161362_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl161299161369_))
                    (_loop161288161330_
                     _lp-tl161291161349_
                     (let ()
                       (declare (not safe))
                       (cons _hd161300161366_ _dispatch161292161337_))
                     (let ()
                       (declare (not safe))
                       (cons _hd161297161356_ _arity161293161339_)))
                    (let () (declare (not safe)) (_g161252161307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161252161307_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161252161307_)))))
                                    (let ((_arity161295161375_
                                           (reverse _arity161293161339_))
                                          (_dispatch161294161372_
                                           (reverse _dispatch161292161337_)))
                                      (___kont162831162832_
                                       _dispatch161294161372_
                                       _arity161295161375_))))))
                      (_loop161288161330_ _target161285161324_ '() '()))))
                 (___match162867162868_
                  (lambda (_e161284161314_ _hd161283161318_ _tl161282161321_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl161282161321_))
                        (let ((___splice162833162834_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl161282161321_
                                  '0))))
                          (let ((_tl161287161327_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162833162834_ '1)))
                                (_target161285161324_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162833162834_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl161287161327_))
                                (___match162875162876_
                                 _e161284161314_
                                 _hd161283161318_
                                 _tl161282161321_
                                 ___splice162833162834_
                                 _target161285161324_
                                 _tl161287161327_)
                                (let ()
                                  (declare (not safe))
                                  (_g161252161307_)))))
                        (let () (declare (not safe)) (_g161252161307_)))))
                 (___match162861162862_
                  (lambda (_e161258161414_
                           _hd161257161418_
                           _tl161256161421_
                           _e161261161424_
                           _hd161260161428_
                           _tl161259161431_
                           _e161262161434_
                           ___splice162829162830_
                           _target161263161438_
                           _tl161265161441_)
                    (letrec ((_loop161266161444_
                              (lambda (_hd161264161448_
                                       _dispatch161270161451_
                                       _arity161271161453_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161264161448_))
                                    (let ((_e161267161456_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161264161448_))))
                                      (let ((_lp-tl161269161463_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161267161456_)))
                                            (_lp-hd161268161460_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161267161456_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd161268161460_))
                                            (let ((_e161276161466_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd161268161460_))))
                                              (let ((_tl161274161473_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161276161466_)))
                                                    (_hd161275161470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161276161466_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161274161473_))
                                                    (let ((_e161279161476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161274161473_))))
                                                      (let ((_tl161277161483_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e161279161476_)))
                    (_hd161278161480_
                     (let () (declare (not safe)) (##car _e161279161476_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl161277161483_))
                    (_loop161266161444_
                     _lp-tl161269161463_
                     (let ()
                       (declare (not safe))
                       (cons _hd161278161480_ _dispatch161270161451_))
                     (let ()
                       (declare (not safe))
                       (cons _hd161275161470_ _arity161271161453_)))
                    (___match162867162868_
                     _e161258161414_
                     _hd161257161418_
                     _tl161256161421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162867162868_
                                                     _e161258161414_
                                                     _hd161257161418_
                                                     _tl161256161421_))))
                                            (___match162867162868_
                                             _e161258161414_
                                             _hd161257161418_
                                             _tl161256161421_))))
                                    (let ((_arity161273161489_
                                           (reverse _arity161271161453_))
                                          (_dispatch161272161486_
                                           (reverse _dispatch161270161451_)))
                                      (___kont162827162828_
                                       _dispatch161272161486_
                                       _arity161273161489_))))))
                      (_loop161266161444_ _target161263161438_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162824162825_))
                (let ((_e161258161414_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162824162825_))))
                  (let ((_tl161256161421_
                         (let () (declare (not safe)) (##cdr _e161258161414_)))
                        (_hd161257161418_
                         (let ()
                           (declare (not safe))
                           (##car _e161258161414_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161256161421_))
                        (let ((_e161261161424_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161256161421_))))
                          (let ((_tl161259161431_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161261161424_)))
                                (_hd161260161428_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161261161424_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd161260161428_))
                                (let ((_e161262161434_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd161260161428_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e161262161434_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl161259161431_))
                                          (let ((___splice162829162830_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl161259161431_
                                                    '0))))
                                            (let ((_tl161265161441_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162829162830_
                                                      '1)))
                                                  (_target161263161438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162829162830_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161265161441_))
                                                  (___match162861162862_
                                                   _e161258161414_
                                                   _hd161257161418_
                                                   _tl161256161421_
                                                   _e161261161424_
                                                   _hd161260161428_
                                                   _tl161259161431_
                                                   _e161262161434_
                                                   ___splice162829162830_
                                                   _target161263161438_
                                                   _tl161265161441_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161256161421_))
                                                      (let ((___splice162833162834_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161256161421_ '0))))
                (let ((_tl161287161327_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162833162834_ '1)))
                      (_target161285161324_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162833162834_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161287161327_))
                      (___match162875162876_
                       _e161258161414_
                       _hd161257161418_
                       _tl161256161421_
                       ___splice162833162834_
                       _target161285161324_
                       _tl161287161327_)
                      (let () (declare (not safe)) (_g161252161307_)))))
              (let () (declare (not safe)) (_g161252161307_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl161256161421_))
                                              (let ((___splice162833162834_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl161256161421_
                                                        '0))))
                                                (let ((_tl161287161327_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162833162834_
                                                          '1)))
                                                      (_target161285161324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162833162834_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl161287161327_))
                                                      (___match162875162876_
                                                       _e161258161414_
                                                       _hd161257161418_
                                                       _tl161256161421_
                                                       ___splice162833162834_
                                                       _target161285161324_
                                                       _tl161287161327_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g161252161307_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g161252161307_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl161256161421_))
                                          (let ((___splice162833162834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl161256161421_
                                                    '0))))
                                            (let ((_tl161287161327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162833162834_
                                                      '1)))
                                                  (_target161285161324_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162833162834_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161287161327_))
                                                  (___match162875162876_
                                                   _e161258161414_
                                                   _hd161257161418_
                                                   _tl161256161421_
                                                   ___splice162833162834_
                                                   _target161285161324_
                                                   _tl161287161327_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g161252161307_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g161252161307_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161256161421_))
                                    (let ((___splice162833162834_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161256161421_
                                              '0))))
                                      (let ((_tl161287161327_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162833162834_
                                                '1)))
                                            (_target161285161324_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162833162834_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161287161327_))
                                            (___match162875162876_
                                             _e161258161414_
                                             _hd161257161418_
                                             _tl161256161421_
                                             ___splice162833162834_
                                             _target161285161324_
                                             _tl161287161327_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161252161307_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161252161307_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161256161421_))
                            (let ((___splice162833162834_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161256161421_
                                      '0))))
                              (let ((_tl161287161327_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162833162834_
                                        '1)))
                                    (_target161285161324_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162833162834_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161287161327_))
                                    (___match162875162876_
                                     _e161258161414_
                                     _hd161257161418_
                                     _tl161256161421_
                                     ___splice162833162834_
                                     _target161285161324_
                                     _tl161287161327_)
                                    (let ()
                                      (declare (not safe))
                                      (_g161252161307_)))))
                            (let () (declare (not safe)) (_g161252161307_))))))
                (let () (declare (not safe)) (_g161252161307_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx161529_)
      (let* ((_g161533161551_
              (lambda (_g161534161547_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161534161547_))))
             (_g161532161606_
              (lambda (_g161534161555_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161534161555_))
                    (let ((_e161539161558_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161534161555_))))
                      (let ((_hd161538161562_
                             (let ()
                               (declare (not safe))
                               (##car _e161539161558_)))
                            (_tl161537161565_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161539161558_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161537161565_))
                            (let ((_e161542161568_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161537161565_))))
                              (let ((_hd161541161572_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161542161568_)))
                                    (_tl161540161575_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161542161568_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161540161575_))
                                    (let ((_e161545161578_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161540161575_))))
                                      (let ((_hd161544161582_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161545161578_)))
                                            (_tl161543161585_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161545161578_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161543161585_))
                                            ((lambda (_L161588_ _L161590_)
                                               (let ((__tmp163273
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp163260
                                                      (let ((__tmp163269
                                                             (let ((__tmp163272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163270
                            (let ((__tmp163271
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp163271 '()))))
                       (declare (not safe))
                       (cons __tmp163272 __tmp163270)))
                    (__tmp163261
                     (let ((__tmp163266
                            (let ((__tmp163268
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163267
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161590_ '()))))
                              (declare (not safe))
                              (cons __tmp163268 __tmp163267)))
                           (__tmp163262
                            (let ((__tmp163263
                                   (let ((__tmp163265
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp163264
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161588_ '()))))
                                     (declare (not safe))
                                     (cons __tmp163265 __tmp163264))))
                              (declare (not safe))
                              (cons __tmp163263 '()))))
                       (declare (not safe))
                       (cons __tmp163266 __tmp163262))))
                (declare (not safe))
                (cons __tmp163269 __tmp163261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp163273
                                                       __tmp163260)))
                                             _hd161544161582_
                                             _hd161541161572_)
                                            (_g161533161551_
                                             _g161534161555_))))
                                    (_g161533161551_ _g161534161555_))))
                            (_g161533161551_ _g161534161555_))))
                    (_g161533161551_ _g161534161555_)))))
        (_g161532161606_ _$stx161529_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx161610_)
      (let* ((_g161614161632_
              (lambda (_g161615161628_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161615161628_))))
             (_g161613161687_
              (lambda (_g161615161636_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161615161636_))
                    (let ((_e161620161639_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161615161636_))))
                      (let ((_hd161619161643_
                             (let ()
                               (declare (not safe))
                               (##car _e161620161639_)))
                            (_tl161618161646_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161620161639_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161618161646_))
                            (let ((_e161623161649_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161618161646_))))
                              (let ((_hd161622161653_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161623161649_)))
                                    (_tl161621161656_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161623161649_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161621161656_))
                                    (let ((_e161626161659_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161621161656_))))
                                      (let ((_hd161625161663_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161626161659_)))
                                            (_tl161624161666_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161626161659_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161624161666_))
                                            ((lambda (_L161669_ _L161671_)
                                               (let ((__tmp163287
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp163274
                                                      (let ((__tmp163283
                                                             (let ((__tmp163286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp163284
                            (let ((__tmp163285
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp163285 '()))))
                       (declare (not safe))
                       (cons __tmp163286 __tmp163284)))
                    (__tmp163275
                     (let ((__tmp163280
                            (let ((__tmp163282
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp163281
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161671_ '()))))
                              (declare (not safe))
                              (cons __tmp163282 __tmp163281)))
                           (__tmp163276
                            (let ((__tmp163277
                                   (let ((__tmp163279
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp163278
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161669_ '()))))
                                     (declare (not safe))
                                     (cons __tmp163279 __tmp163278))))
                              (declare (not safe))
                              (cons __tmp163277 '()))))
                       (declare (not safe))
                       (cons __tmp163280 __tmp163276))))
                (declare (not safe))
                (cons __tmp163283 __tmp163275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp163287
                                                       __tmp163274)))
                                             _hd161625161663_
                                             _hd161622161653_)
                                            (_g161614161632_
                                             _g161615161636_))))
                                    (_g161614161632_ _g161615161636_))))
                            (_g161614161632_ _g161615161636_))))
                    (_g161614161632_ _g161615161636_)))))
        (_g161613161687_ _$stx161610_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx161691_)
      (let* ((___stx162878162879_ _$stx161691_)
             (_g161698161769_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162878162879_)))))
        (let ((___kont162881162882_
               (lambda (_L162060_ _L162062_)
                 (let ((__tmp163293
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163288
                        (let ((__tmp163289
                               (let ((__tmp163290
                                      (let ((__tmp163292
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163291
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162060_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163292 __tmp163291))))
                                 (declare (not safe))
                                 (cons __tmp163290 '()))))
                          (declare (not safe))
                          (cons _L162062_ __tmp163289))))
                   (declare (not safe))
                   (cons __tmp163293 __tmp163288))))
              (___kont162883162884_
               (lambda (_L161979_ _L161981_)
                 (let ((__tmp163302
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163294
                        (let ((__tmp163295
                               (let ((__tmp163296
                                      (let ((__tmp163301
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163297
                                             (let ((__tmp163298
                                                    (lambda (_g162000162003_
                                                             _g162001162006_)
                                                      (let ((__tmp163299
                                                             (let ((__tmp163300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g162000162003_ __tmp163300))))
                (declare (not safe))
                (cons __tmp163299 _g162001162006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp163298
                                                       '()
                                                       _L161979_))))
                                        (declare (not safe))
                                        (cons __tmp163301 __tmp163297))))
                                 (declare (not safe))
                                 (cons __tmp163296 '()))))
                          (declare (not safe))
                          (cons _L161981_ __tmp163295))))
                   (declare (not safe))
                   (cons __tmp163302 __tmp163294))))
              (___kont162887162888_
               (lambda (_L161891_ _L161893_)
                 (let ((__tmp163309
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163303
                        (let ((__tmp163304
                               (let ((__tmp163305
                                      (let ((__tmp163308
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163306
                                             (let ((__tmp163307
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161891_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp163307))))
                                        (declare (not safe))
                                        (cons __tmp163308 __tmp163306))))
                                 (declare (not safe))
                                 (cons __tmp163305 '()))))
                          (declare (not safe))
                          (cons _L161893_ __tmp163304))))
                   (declare (not safe))
                   (cons __tmp163309 __tmp163303))))
              (___kont162889162890_
               (lambda (_L161826_ _L161828_)
                 (let ((__tmp163319
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163310
                        (let ((__tmp163311
                               (let ((__tmp163312
                                      (let ((__tmp163318
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163313
                                             (let ((__tmp163314
                                                    (let ((__tmp163315
                                                           (lambda (_g161845161848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161846161851_)
                     (let ((__tmp163316
                            (let ((__tmp163317
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161845161848_ __tmp163317))))
                       (declare (not safe))
                       (cons __tmp163316 _g161846161851_)))))
              (declare (not safe))
              (foldr1 __tmp163315 '() _L161826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp163314))))
                                        (declare (not safe))
                                        (cons __tmp163318 __tmp163313))))
                                 (declare (not safe))
                                 (cons __tmp163312 '()))))
                          (declare (not safe))
                          (cons _L161828_ __tmp163311))))
                   (declare (not safe))
                   (cons __tmp163319 __tmp163310)))))
          (let* ((___match162997162998_
                  (lambda (_e161751161776_
                           _hd161750161780_
                           _tl161749161783_
                           _e161754161786_
                           _hd161753161790_
                           _tl161752161793_
                           ___splice162891162892_
                           _target161755161796_
                           _tl161757161799_)
                    (letrec ((_loop161758161802_
                              (lambda (_hd161756161806_ _arity161762161809_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161756161806_))
                                    (let ((_e161759161812_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161756161806_))))
                                      (let ((_lp-tl161761161819_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161759161812_)))
                                            (_lp-hd161760161816_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161759161812_))))
                                        (_loop161758161802_
                                         _lp-tl161761161819_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161760161816_
                                                 _arity161762161809_)))))
                                    (let ((_arity161763161822_
                                           (reverse _arity161762161809_)))
                                      (___kont162889162890_
                                       _arity161763161822_
                                       _hd161753161790_))))))
                      (_loop161758161802_ _target161755161796_ '()))))
                 (___match162957162958_
                  (lambda (_e161719161915_
                           _hd161718161919_
                           _tl161717161922_
                           _e161722161925_
                           _hd161721161929_
                           _tl161720161932_
                           _e161725161935_
                           _hd161724161939_
                           _tl161723161942_
                           _e161726161945_
                           ___splice162885162886_
                           _target161727161949_
                           _tl161729161952_)
                    (letrec ((_loop161730161955_
                              (lambda (_hd161728161959_ _arity161734161962_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161728161959_))
                                    (let ((_e161731161965_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161728161959_))))
                                      (let ((_lp-tl161733161972_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161731161965_)))
                                            (_lp-hd161732161969_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161731161965_))))
                                        (_loop161730161955_
                                         _lp-tl161733161972_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161732161969_
                                                 _arity161734161962_)))))
                                    (let ((_arity161735161975_
                                           (reverse _arity161734161962_)))
                                      (___kont162883162884_
                                       _arity161735161975_
                                       _hd161721161929_))))))
                      (_loop161730161955_ _target161727161949_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162878162879_))
                (let ((_e161704162016_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162878162879_))))
                  (let ((_tl161702162023_
                         (let () (declare (not safe)) (##cdr _e161704162016_)))
                        (_hd161703162020_
                         (let ()
                           (declare (not safe))
                           (##car _e161704162016_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161702162023_))
                        (let ((_e161707162026_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161702162023_))))
                          (let ((_tl161705162033_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161707162026_)))
                                (_hd161706162030_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161707162026_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161705162033_))
                                (let ((_e161710162036_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161705162033_))))
                                  (let ((_tl161708162043_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161710162036_)))
                                        (_hd161709162040_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161710162036_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd161709162040_))
                                        (let ((_e161711162046_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd161709162040_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e161711162046_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161708162043_))
                                                  (let ((_e161714162050_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161708162043_))))
                                                    (let ((_tl161712162057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161714162050_)))
                                                          (_hd161713162054_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161714162050_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161712162057_))
                                                          (___kont162881162882_
                                                           _hd161713162054_
                                                           _hd161706162030_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl161708162043_))
                      (let ((___splice162885162886_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161708162043_ '0))))
                        (let ((_tl161729161952_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162885162886_ '1)))
                              (_target161727161949_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162885162886_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161729161952_))
                              (___match162957162958_
                               _e161704162016_
                               _hd161703162020_
                               _tl161702162023_
                               _e161707162026_
                               _hd161706162030_
                               _tl161705162033_
                               _e161710162036_
                               _hd161709162040_
                               _tl161708162043_
                               _e161711162046_
                               ___splice162885162886_
                               _target161727161949_
                               _tl161729161952_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl161705162033_))
                                  (let ((___splice162891162892_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl161705162033_
                                            '0))))
                                    (let ((_tl161757161799_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162891162892_
                                              '1)))
                                          (_target161755161796_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162891162892_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl161757161799_))
                                          (___match162997162998_
                                           _e161704162016_
                                           _hd161703162020_
                                           _tl161702162023_
                                           _e161707162026_
                                           _hd161706162030_
                                           _tl161705162033_
                                           ___splice162891162892_
                                           _target161755161796_
                                           _tl161757161799_)
                                          (let ()
                                            (declare (not safe))
                                            (_g161698161769_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g161698161769_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl161705162033_))
                          (let ((___splice162891162892_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl161705162033_
                                    '0))))
                            (let ((_tl161757161799_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162891162892_ '1)))
                                  (_target161755161796_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162891162892_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161757161799_))
                                  (___match162997162998_
                                   _e161704162016_
                                   _hd161703162020_
                                   _tl161702162023_
                                   _e161707162026_
                                   _hd161706162030_
                                   _tl161705162033_
                                   ___splice162891162892_
                                   _target161755161796_
                                   _tl161757161799_)
                                  (let ()
                                    (declare (not safe))
                                    (_g161698161769_)))))
                          (let () (declare (not safe)) (_g161698161769_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161708162043_))
                                                      (let ((___splice162885162886_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161708162043_ '0))))
                (let ((_tl161729161952_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162885162886_ '1)))
                      (_target161727161949_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162885162886_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161729161952_))
                      (___match162957162958_
                       _e161704162016_
                       _hd161703162020_
                       _tl161702162023_
                       _e161707162026_
                       _hd161706162030_
                       _tl161705162033_
                       _e161710162036_
                       _hd161709162040_
                       _tl161708162043_
                       _e161711162046_
                       ___splice162885162886_
                       _target161727161949_
                       _tl161729161952_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl161708162043_))
                          (___kont162887162888_
                           _hd161709162040_
                           _hd161706162030_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161705162033_))
                              (let ((___splice162891162892_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161705162033_
                                        '0))))
                                (let ((_tl161757161799_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162891162892_
                                          '1)))
                                      (_target161755161796_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162891162892_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161757161799_))
                                      (___match162997162998_
                                       _e161704162016_
                                       _hd161703162020_
                                       _tl161702162023_
                                       _e161707162026_
                                       _hd161706162030_
                                       _tl161705162033_
                                       ___splice162891162892_
                                       _target161755161796_
                                       _tl161757161799_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161698161769_)))))
                              (let ()
                                (declare (not safe))
                                (_g161698161769_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161708162043_))
                  (___kont162887162888_ _hd161709162040_ _hd161706162030_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl161705162033_))
                      (let ((___splice162891162892_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161705162033_ '0))))
                        (let ((_tl161757161799_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162891162892_ '1)))
                              (_target161755161796_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162891162892_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161757161799_))
                              (___match162997162998_
                               _e161704162016_
                               _hd161703162020_
                               _tl161702162023_
                               _e161707162026_
                               _hd161706162030_
                               _tl161705162033_
                               ___splice162891162892_
                               _target161755161796_
                               _tl161757161799_)
                              (let ()
                                (declare (not safe))
                                (_g161698161769_)))))
                      (let () (declare (not safe)) (_g161698161769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161708162043_))
                                                  (___kont162887162888_
                                                   _hd161709162040_
                                                   _hd161706162030_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161705162033_))
                                                      (let ((___splice162891162892_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161705162033_ '0))))
                (let ((_tl161757161799_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162891162892_ '1)))
                      (_target161755161796_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162891162892_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161757161799_))
                      (___match162997162998_
                       _e161704162016_
                       _hd161703162020_
                       _tl161702162023_
                       _e161707162026_
                       _hd161706162030_
                       _tl161705162033_
                       ___splice162891162892_
                       _target161755161796_
                       _tl161757161799_)
                      (let () (declare (not safe)) (_g161698161769_)))))
              (let () (declare (not safe)) (_g161698161769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161708162043_))
                                            (___kont162887162888_
                                             _hd161709162040_
                                             _hd161706162030_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl161705162033_))
                                                (let ((___splice162891162892_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl161705162033_
                                                          '0))))
                                                  (let ((_tl161757161799_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162891162892_
                                                            '1)))
                                                        (_target161755161796_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162891162892_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161757161799_))
                                                        (___match162997162998_
                                                         _e161704162016_
                                                         _hd161703162020_
                                                         _tl161702162023_
                                                         _e161707162026_
                                                         _hd161706162030_
                                                         _tl161705162033_
                                                         ___splice162891162892_
                                                         _target161755161796_
                                                         _tl161757161799_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161698161769_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g161698161769_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161705162033_))
                                    (let ((___splice162891162892_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161705162033_
                                              '0))))
                                      (let ((_tl161757161799_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162891162892_
                                                '1)))
                                            (_target161755161796_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162891162892_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161757161799_))
                                            (___match162997162998_
                                             _e161704162016_
                                             _hd161703162020_
                                             _tl161702162023_
                                             _e161707162026_
                                             _hd161706162030_
                                             _tl161705162033_
                                             ___splice162891162892_
                                             _target161755161796_
                                             _tl161757161799_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161698161769_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161698161769_))))))
                        (let () (declare (not safe)) (_g161698161769_)))))
                (let () (declare (not safe)) (_g161698161769_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx162086_)
      (let* ((___stx163000163001_ _$stx162086_)
             (_g162091162126_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163000163001_)))))
        (let ((___kont163003163004_
               (lambda (_L162248_ _L162250_)
                 (let ((__tmp163325
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163320
                        (let ((__tmp163321
                               (let ((__tmp163322
                                      (let ((__tmp163324
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp163323
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162248_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163324 __tmp163323))))
                                 (declare (not safe))
                                 (cons __tmp163322 '()))))
                          (declare (not safe))
                          (cons _L162250_ __tmp163321))))
                   (declare (not safe))
                   (cons __tmp163325 __tmp163320))))
              (___kont163005163006_
               (lambda (_L162183_ _L162185_)
                 (let ((__tmp163334
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp163326
                        (let ((__tmp163327
                               (let ((__tmp163328
                                      (let ((__tmp163333
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp163329
                                             (let ((__tmp163330
                                                    (lambda (_g162202162205_
                                                             _g162203162208_)
                                                      (let ((__tmp163331
                                                             (let ((__tmp163332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g162202162205_ __tmp163332))))
                (declare (not safe))
                (cons __tmp163331 _g162203162208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp163330
                                                       '()
                                                       _L162183_))))
                                        (declare (not safe))
                                        (cons __tmp163333 __tmp163329))))
                                 (declare (not safe))
                                 (cons __tmp163328 '()))))
                          (declare (not safe))
                          (cons _L162185_ __tmp163327))))
                   (declare (not safe))
                   (cons __tmp163334 __tmp163326)))))
          (let ((___match163049163050_
                 (lambda (_e162108162133_
                          _hd162107162137_
                          _tl162106162140_
                          _e162111162143_
                          _hd162110162147_
                          _tl162109162150_
                          ___splice163007163008_
                          _target162112162153_
                          _tl162114162156_)
                   (letrec ((_loop162115162159_
                             (lambda (_hd162113162163_ _arity162119162166_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd162113162163_))
                                   (let ((_e162116162169_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd162113162163_))))
                                     (let ((_lp-tl162118162176_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e162116162169_)))
                                           (_lp-hd162117162173_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e162116162169_))))
                                       (_loop162115162159_
                                        _lp-tl162118162176_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd162117162173_
                                                _arity162119162166_)))))
                                   (let ((_arity162120162179_
                                          (reverse _arity162119162166_)))
                                     (___kont163005163006_
                                      _arity162120162179_
                                      _hd162110162147_))))))
                     (_loop162115162159_ _target162112162153_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163000163001_))
                (let ((_e162097162218_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163000163001_))))
                  (let ((_tl162095162225_
                         (let () (declare (not safe)) (##cdr _e162097162218_)))
                        (_hd162096162222_
                         (let ()
                           (declare (not safe))
                           (##car _e162097162218_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162095162225_))
                        (let ((_e162100162228_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162095162225_))))
                          (let ((_tl162098162235_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162100162228_)))
                                (_hd162099162232_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162100162228_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162098162235_))
                                (let ((_e162103162238_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162098162235_))))
                                  (let ((_tl162101162245_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162103162238_)))
                                        (_hd162102162242_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162103162238_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162101162245_))
                                        (___kont163003163004_
                                         _hd162102162242_
                                         _hd162099162232_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl162098162235_))
                                            (let ((___splice163007163008_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl162098162235_
                                                      '0))))
                                              (let ((_tl162114162156_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice163007163008_
                                                        '1)))
                                                    (_target162112162153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice163007163008_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162114162156_))
                                                    (___match163049163050_
                                                     _e162097162218_
                                                     _hd162096162222_
                                                     _tl162095162225_
                                                     _e162100162228_
                                                     _hd162099162232_
                                                     _tl162098162235_
                                                     ___splice163007163008_
                                                     _target162112162153_
                                                     _tl162114162156_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162091162126_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162091162126_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162098162235_))
                                    (let ((___splice163007163008_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162098162235_
                                              '0))))
                                      (let ((_tl162114162156_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163007163008_
                                                '1)))
                                            (_target162112162153_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163007163008_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162114162156_))
                                            (___match163049163050_
                                             _e162097162218_
                                             _hd162096162222_
                                             _tl162095162225_
                                             _e162100162228_
                                             _hd162099162232_
                                             _tl162098162235_
                                             ___splice163007163008_
                                             _target162112162153_
                                             _tl162114162156_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162091162126_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162091162126_))))))
                        (let () (declare (not safe)) (_g162091162126_)))))
                (let () (declare (not safe)) (_g162091162126_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx162270_)
      (let* ((_g162274162309_
              (lambda (_g162275162305_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162275162305_))))
             (_g162273162437_
              (lambda (_g162275162313_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162275162313_))
                    (let ((_e162280162316_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162275162313_))))
                      (let ((_hd162279162320_
                             (let ()
                               (declare (not safe))
                               (##car _e162280162316_)))
                            (_tl162278162323_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162280162316_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162278162323_))
                            (let ((_g163335_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162278162323_
                                      '0))))
                              (begin
                                (let ((_g163336_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163335_)
                                             (##vector-length _g163335_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163336_ 2)))
                                      (error "Context expects 2 values"
                                             _g163336_)))
                                (let ((_target162281162326_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163335_ 0)))
                                      (_tl162283162329_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163335_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162283162329_))
                                      (letrec ((_loop162284162332_
                                                (lambda (_hd162282162336_
                                                         _arity162288162339_
                                                         _prim162289162341_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd162282162336_))
                                                      (let ((_e162285162344_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd162282162336_))))
                (let ((_lp-hd162286162348_
                       (let () (declare (not safe)) (##car _e162285162344_)))
                      (_lp-tl162287162351_
                       (let () (declare (not safe)) (##cdr _e162285162344_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd162286162348_))
                      (let ((_e162294162354_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd162286162348_))))
                        (let ((_hd162293162358_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162294162354_)))
                              (_tl162292162361_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162294162354_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162292162361_))
                              (let ((_g163345_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162292162361_
                                        '0))))
                                (begin
                                  (let ((_g163346_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g163345_)
                                               (##vector-length _g163345_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g163346_ 2)))
                                        (error "Context expects 2 values"
                                               _g163346_)))
                                  (let ((_target162295162364_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163345_ 0)))
                                        (_tl162297162367_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163345_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162297162367_))
                                        (letrec ((_loop162298162370_
                                                  (lambda (_hd162296162374_
                                                           _arity162302162377_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162296162374_))
                                                        (let ((_e162299162380_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162296162374_))))
                  (let ((_lp-hd162300162384_
                         (let () (declare (not safe)) (##car _e162299162380_)))
                        (_lp-tl162301162387_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162299162380_))))
                    (_loop162298162370_
                     _lp-tl162301162387_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd162300162384_ _arity162302162377_)))))
                (let ((_arity162303162390_ (reverse _arity162302162377_)))
                  (_loop162284162332_
                   _lp-tl162287162351_
                   (let ()
                     (declare (not safe))
                     (cons _arity162303162390_ _arity162288162339_))
                   (let ()
                     (declare (not safe))
                     (cons _hd162293162358_ _prim162289162341_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162298162370_
                                           _target162295162364_
                                           '()))
                                        (_g162274162309_ _g162275162313_)))))
                              (_g162274162309_ _g162275162313_))))
                      (_g162274162309_ _g162275162313_))))
              (let ((_arity162290162394_ (reverse _arity162288162339_))
                    (_prim162291162397_ (reverse _prim162289162341_)))
                ((lambda (_L162400_ _L162402_)
                   (let ((__tmp163344
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163337
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162400_
                               _L162402_))
                            (let ((__tmp163338
                                   (lambda (_g162417162423_
                                            _g162418162426_
                                            _g162419162428_)
                                     (let ((__tmp163339
                                            (let ((__tmp163343
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp163340
                                                   (let ((__tmp163341
                                                          (let ((__tmp163342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162420162431_ _g162421162434_)
                           (let ()
                             (declare (not safe))
                             (cons _g162420162431_ _g162421162434_)))))
                    (declare (not safe))
                    (foldr1 __tmp163342 '() _g162417162423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162418162426_
                                                           __tmp163341))))
                                              (declare (not safe))
                                              (cons __tmp163343 __tmp163340))))
                                       (declare (not safe))
                                       (cons __tmp163339 _g162419162428_)))))
                              (declare (not safe))
                              (foldr2 __tmp163338 '() _L162400_ _L162402_)))))
                     (declare (not safe))
                     (cons __tmp163344 __tmp163337)))
                 _arity162290162394_
                 _prim162291162397_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop162284162332_
                                         _target162281162326_
                                         '()
                                         '()))
                                      (_g162274162309_ _g162275162313_)))))
                            (_g162274162309_ _g162275162313_))))
                    (_g162274162309_ _g162275162313_)))))
        (_g162273162437_ _$stx162270_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx162443_)
      (let* ((_g162447162482_
              (lambda (_g162448162478_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162448162478_))))
             (_g162446162610_
              (lambda (_g162448162486_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162448162486_))
                    (let ((_e162453162489_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162448162486_))))
                      (let ((_hd162452162493_
                             (let ()
                               (declare (not safe))
                               (##car _e162453162489_)))
                            (_tl162451162496_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162453162489_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162451162496_))
                            (let ((_g163347_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162451162496_
                                      '0))))
                              (begin
                                (let ((_g163348_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163347_)
                                             (##vector-length _g163347_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163348_ 2)))
                                      (error "Context expects 2 values"
                                             _g163348_)))
                                (let ((_target162454162499_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163347_ 0)))
                                      (_tl162456162502_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163347_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162456162502_))
                                      (letrec ((_loop162457162505_
                                                (lambda (_hd162455162509_
                                                         _arity162461162512_
                                                         _prim162462162514_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd162455162509_))
                                                      (let ((_e162458162517_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd162455162509_))))
                (let ((_lp-hd162459162521_
                       (let () (declare (not safe)) (##car _e162458162517_)))
                      (_lp-tl162460162524_
                       (let () (declare (not safe)) (##cdr _e162458162517_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd162459162521_))
                      (let ((_e162467162527_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd162459162521_))))
                        (let ((_hd162466162531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162467162527_)))
                              (_tl162465162534_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162467162527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162465162534_))
                              (let ((_g163357_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162465162534_
                                        '0))))
                                (begin
                                  (let ((_g163358_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g163357_)
                                               (##vector-length _g163357_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g163358_ 2)))
                                        (error "Context expects 2 values"
                                               _g163358_)))
                                  (let ((_target162468162537_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163357_ 0)))
                                        (_tl162470162540_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g163357_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162470162540_))
                                        (letrec ((_loop162471162543_
                                                  (lambda (_hd162469162547_
                                                           _arity162475162550_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162469162547_))
                                                        (let ((_e162472162553_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162469162547_))))
                  (let ((_lp-hd162473162557_
                         (let () (declare (not safe)) (##car _e162472162553_)))
                        (_lp-tl162474162560_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162472162553_))))
                    (_loop162471162543_
                     _lp-tl162474162560_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd162473162557_ _arity162475162550_)))))
                (let ((_arity162476162563_ (reverse _arity162475162550_)))
                  (_loop162457162505_
                   _lp-tl162460162524_
                   (let ()
                     (declare (not safe))
                     (cons _arity162476162563_ _arity162461162512_))
                   (let ()
                     (declare (not safe))
                     (cons _hd162466162531_ _prim162462162514_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162471162543_
                                           _target162468162537_
                                           '()))
                                        (_g162447162482_ _g162448162486_)))))
                              (_g162447162482_ _g162448162486_))))
                      (_g162447162482_ _g162448162486_))))
              (let ((_arity162463162567_ (reverse _arity162461162512_))
                    (_prim162464162570_ (reverse _prim162462162514_)))
                ((lambda (_L162573_ _L162575_)
                   (let ((__tmp163356
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163349
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162573_
                               _L162575_))
                            (let ((__tmp163350
                                   (lambda (_g162590162596_
                                            _g162591162599_
                                            _g162592162601_)
                                     (let ((__tmp163351
                                            (let ((__tmp163355
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp163352
                                                   (let ((__tmp163353
                                                          (let ((__tmp163354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162593162604_ _g162594162607_)
                           (let ()
                             (declare (not safe))
                             (cons _g162593162604_ _g162594162607_)))))
                    (declare (not safe))
                    (foldr1 __tmp163354 '() _g162590162596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162591162599_
                                                           __tmp163353))))
                                              (declare (not safe))
                                              (cons __tmp163355 __tmp163352))))
                                       (declare (not safe))
                                       (cons __tmp163351 _g162592162601_)))))
                              (declare (not safe))
                              (foldr2 __tmp163350 '() _L162573_ _L162575_)))))
                     (declare (not safe))
                     (cons __tmp163356 __tmp163349)))
                 _arity162463162567_
                 _prim162464162570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop162457162505_
                                         _target162454162499_
                                         '()
                                         '()))
                                      (_g162447162482_ _g162448162486_)))))
                            (_g162447162482_ _g162448162486_))))
                    (_g162447162482_ _g162448162486_)))))
        (_g162446162610_ _$stx162443_)))))
