(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12859_)
      (let* ((_e1286012867_ _stx12859_)
             (_E1286212871_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1286012867_)))
             (_E1286112885_
              (lambda ()
                (if (gx#stx-pair? _e1286012867_)
                    (let ((_e1286312875_ (gx#syntax-e _e1286012867_)))
                      (let ((_hd1286412878_ (##car _e1286312875_))
                            (_tl1286512880_ (##cdr _e1286312875_)))
                        (let ((_form12883_ _hd1286412878_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form12883_)
                               'compile-top-syntax
                               _stx12859_)
                              (_E1286212871_)))))
                    (_E1286212871_)))))
        (_E1286112885_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12819_ _stx12820_)
      (let* ((_self1282112829_ _self12819_)
             (_E1282312833_
              (lambda () (error '"No clause matching" _self1282112829_)))
             (_K1282412845_
              (lambda (_K12836_)
                (let ((_$e12838_ (gx#stx-source _stx12820_)))
                  (if _$e12838_
                      ((lambda (_g1284012842_)
                         (gx#stx-wrap-source
                          (_K12836_ _stx12820_)
                          _g1284012842_))
                       _$e12838_)
                      (_K12836_ _stx12820_))))))
        (if (##structure-instance-of?
             _self1282112829_
             (##type-id gx#core-expander::t))
            (let* ((_e1282512848_ (##vector-ref _self1282112829_ '1))
                   (_e1282612851_ (##vector-ref _self1282112829_ '2))
                   (_e1282712854_ (##vector-ref _self1282112829_ '3))
                   (_K12857_ _e1282712854_))
              (_K1282412845_ _K12857_))
            (_E1282312833_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12817_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12817_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12787_)
      (let* ((_e1278812795_ _stx12787_)
             (_E1279012799_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1278812795_)))
             (_E1278912813_
              (lambda ()
                (if (gx#stx-pair? _e1278812795_)
                    (let ((_e1279112803_ (gx#syntax-e _e1278812795_)))
                      (let ((_hd1279212806_ (##car _e1279112803_))
                            (_tl1279312808_ (##cdr _e1279112803_)))
                        (let ((_body12811_ _tl1279312808_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body12811_))
                              (_E1279012799_)))))
                    (_E1279012799_)))))
        (_E1278912813_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12756_)
      (let* ((_e1275712764_ _stx12756_)
             (_E1275912768_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1275712764_)))
             (_E1275812783_
              (lambda ()
                (if (gx#stx-pair? _e1275712764_)
                    (let ((_e1276012772_ (gx#syntax-e _e1275712764_)))
                      (let ((_hd1276112775_ (##car _e1276012772_))
                            (_tl1276212777_ (##cdr _e1276012772_)))
                        (let ((_body12780_ _tl1276212777_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12780_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1275912768_)))))
                    (_E1275912768_)))))
        (_E1275812783_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12726_)
      (let* ((_e1272712734_ _stx12726_)
             (_E1272912738_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1272712734_)))
             (_E1272812752_
              (lambda ()
                (if (gx#stx-pair? _e1272712734_)
                    (let ((_e1273012742_ (gx#syntax-e _e1272712734_)))
                      (let ((_hd1273112745_ (##car _e1273012742_))
                            (_tl1273212747_ (##cdr _e1273012742_)))
                        (let ((_body12750_ _tl1273212747_))
                          (if '#t
                              (cons '%#begin-foreign _body12750_)
                              (_E1272912738_)))))
                    (_E1272912738_)))))
        (_E1272812752_))))
  (define gx#core-compile-top-import%
    (lambda (_stx12696_)
      (let* ((_e1269712704_ _stx12696_)
             (_E1269912708_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1269712704_)))
             (_E1269812722_
              (lambda ()
                (if (gx#stx-pair? _e1269712704_)
                    (let ((_e1270012712_ (gx#syntax-e _e1269712704_)))
                      (let ((_hd1270112715_ (##car _e1270012712_))
                            (_tl1270212717_ (##cdr _e1270012712_)))
                        (let ((_body12720_ _tl1270212717_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body12720_))
                              (_E1269912708_)))))
                    (_E1269912708_)))))
        (_E1269812722_))))
  (define gx#core-compile-top-module%
    (lambda (_stx12653_)
      (let* ((_e1265412664_ _stx12653_)
             (_E1265612668_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1265412664_)))
             (_E1265512692_
              (lambda ()
                (if (gx#stx-pair? _e1265412664_)
                    (let ((_e1265712672_ (gx#syntax-e _e1265412664_)))
                      (let ((_hd1265812675_ (##car _e1265712672_))
                            (_tl1265912677_ (##cdr _e1265712672_)))
                        (if (gx#stx-pair? _tl1265912677_)
                            (let ((_e1266012680_ (gx#syntax-e _tl1265912677_)))
                              (let ((_hd1266112683_ (##car _e1266012680_))
                                    (_tl1266212685_ (##cdr _e1266012680_)))
                                (let* ((_hd12688_ _hd1266112683_)
                                       (_body12690_ _tl1266212685_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd12688_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body12690_))
                                      (_E1265612668_)))))
                            (_E1265612668_))))
                    (_E1265612668_)))))
        (_E1265512692_))))
  (define gx#core-compile-top-export%
    (lambda (_stx12623_)
      (let* ((_e1262412631_ _stx12623_)
             (_E1262612635_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1262412631_)))
             (_E1262512649_
              (lambda ()
                (if (gx#stx-pair? _e1262412631_)
                    (let ((_e1262712639_ (gx#syntax-e _e1262412631_)))
                      (let ((_hd1262812642_ (##car _e1262712639_))
                            (_tl1262912644_ (##cdr _e1262712639_)))
                        (let ((_body12647_ _tl1262912644_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body12647_))
                              (_E1262612635_)))))
                    (_E1262612635_)))))
        (_E1262512649_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12593_)
      (let* ((_e1259412601_ _stx12593_)
             (_E1259612605_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1259412601_)))
             (_E1259512619_
              (lambda ()
                (if (gx#stx-pair? _e1259412601_)
                    (let ((_e1259712609_ (gx#syntax-e _e1259412601_)))
                      (let ((_hd1259812612_ (##car _e1259712609_))
                            (_tl1259912614_ (##cdr _e1259712609_)))
                        (let ((_body12617_ _tl1259912614_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body12617_))
                              (_E1259612605_)))))
                    (_E1259612605_)))))
        (_E1259512619_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12518_)
      (letrec ((_generate12520_
                (lambda (_hd12550_)
                  (let* ((_e1255112561_ _hd12550_)
                         (_E1255312565_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1255112561_)))
                         (_E1255212589_
                          (lambda ()
                            (if (gx#stx-pair? _e1255112561_)
                                (let ((_e1255412569_
                                       (gx#syntax-e _e1255112561_)))
                                  (let ((_hd1255512572_ (##car _e1255412569_))
                                        (_tl1255612574_ (##cdr _e1255412569_)))
                                    (let ((_id12577_ _hd1255512572_))
                                      (if (gx#stx-pair? _tl1255612574_)
                                          (let ((_e1255712579_
                                                 (gx#syntax-e _tl1255612574_)))
                                            (let ((_hd1255812582_
                                                   (##car _e1255712579_))
                                                  (_tl1255912584_
                                                   (##cdr _e1255712579_)))
                                              (let ((_eid12587_
                                                     _hd1255812582_))
                                                (if (gx#stx-null?
                                                     _tl1255912584_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12577_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12587_)
                            '()))
                (_E1255312565_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1255312565_)))))
                                          (_E1255312565_)))))
                                (_E1255312565_)))))
                    (_E1255212589_)))))
        (let* ((_e1252112528_ _stx12518_)
               (_E1252312532_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1252112528_)))
               (_E1252212546_
                (lambda ()
                  (if (gx#stx-pair? _e1252112528_)
                      (let ((_e1252412536_ (gx#syntax-e _e1252112528_)))
                        (let ((_hd1252512539_ (##car _e1252412536_))
                              (_tl1252612541_ (##cdr _e1252412536_)))
                          (let ((_body12544_ _tl1252612541_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate12520_
                                       _body12544_))
                                (_E1252312532_)))))
                      (_E1252312532_)))))
          (_E1252212546_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12464_)
      (let* ((_e1246512478_ _stx12464_)
             (_E1246712482_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1246512478_)))
             (_E1246612514_
              (lambda ()
                (if (gx#stx-pair? _e1246512478_)
                    (let ((_e1246812486_ (gx#syntax-e _e1246512478_)))
                      (let ((_hd1246912489_ (##car _e1246812486_))
                            (_tl1247012491_ (##cdr _e1246812486_)))
                        (if (gx#stx-pair? _tl1247012491_)
                            (let ((_e1247112494_ (gx#syntax-e _tl1247012491_)))
                              (let ((_hd1247212497_ (##car _e1247112494_))
                                    (_tl1247312499_ (##cdr _e1247112494_)))
                                (let ((_hd12502_ _hd1247212497_))
                                  (if (gx#stx-pair? _tl1247312499_)
                                      (let ((_e1247412504_
                                             (gx#syntax-e _tl1247312499_)))
                                        (let ((_hd1247512507_
                                               (##car _e1247412504_))
                                              (_tl1247612509_
                                               (##cdr _e1247412504_)))
                                          (let ((_expr12512_ _hd1247512507_))
                                            (if (gx#stx-null? _tl1247612509_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd12502_)
                        (cons (gx#core-compile-top-syntax _expr12512_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1246712482_))
                                                (_E1246712482_)))))
                                      (_E1246712482_)))))
                            (_E1246712482_))))
                    (_E1246712482_)))))
        (_E1246612514_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12409_)
      (let* ((_e1241012423_ _stx12409_)
             (_E1241212427_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1241012423_)))
             (_E1241112460_
              (lambda ()
                (if (gx#stx-pair? _e1241012423_)
                    (let ((_e1241312431_ (gx#syntax-e _e1241012423_)))
                      (let ((_hd1241412434_ (##car _e1241312431_))
                            (_tl1241512436_ (##cdr _e1241312431_)))
                        (if (gx#stx-pair? _tl1241512436_)
                            (let ((_e1241612439_ (gx#syntax-e _tl1241512436_)))
                              (let ((_hd1241712442_ (##car _e1241612439_))
                                    (_tl1241812444_ (##cdr _e1241612439_)))
                                (let ((_hd12447_ _hd1241712442_))
                                  (if (gx#stx-pair? _tl1241812444_)
                                      (let ((_e1241912449_
                                             (gx#syntax-e _tl1241812444_)))
                                        (let ((_hd1242012452_
                                               (##car _e1241912449_))
                                              (_tl1242112454_
                                               (##cdr _e1241912449_)))
                                          (let ((_expr12457_ _hd1242012452_))
                                            (if (gx#stx-null? _tl1242112454_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12447_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr12457_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1241212427_))
                                                (_E1241212427_)))))
                                      (_E1241212427_)))))
                            (_E1241212427_))))
                    (_E1241212427_)))))
        (_E1241112460_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12355_)
      (let* ((_e1235612369_ _stx12355_)
             (_E1235812373_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1235612369_)))
             (_E1235712405_
              (lambda ()
                (if (gx#stx-pair? _e1235612369_)
                    (let ((_e1235912377_ (gx#syntax-e _e1235612369_)))
                      (let ((_hd1236012380_ (##car _e1235912377_))
                            (_tl1236112382_ (##cdr _e1235912377_)))
                        (if (gx#stx-pair? _tl1236112382_)
                            (let ((_e1236212385_ (gx#syntax-e _tl1236112382_)))
                              (let ((_hd1236312388_ (##car _e1236212385_))
                                    (_tl1236412390_ (##cdr _e1236212385_)))
                                (let ((_hd12393_ _hd1236312388_))
                                  (if (gx#stx-pair? _tl1236412390_)
                                      (let ((_e1236512395_
                                             (gx#syntax-e _tl1236412390_)))
                                        (let ((_hd1236612398_
                                               (##car _e1236512395_))
                                              (_tl1236712400_
                                               (##cdr _e1236512395_)))
                                          (let ((_alias-id12403_
                                                 _hd1236612398_))
                                            (if (gx#stx-null? _tl1236712400_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12393_)
                        (cons (gx#core-quote-syntax__0 _alias-id12403_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1235812373_))
                                                (_E1235812373_)))))
                                      (_E1235812373_)))))
                            (_E1235812373_))))
                    (_E1235812373_)))))
        (_E1235712405_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12301_)
      (let* ((_e1230212315_ _stx12301_)
             (_E1230412319_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1230212315_)))
             (_E1230312351_
              (lambda ()
                (if (gx#stx-pair? _e1230212315_)
                    (let ((_e1230512323_ (gx#syntax-e _e1230212315_)))
                      (let ((_hd1230612326_ (##car _e1230512323_))
                            (_tl1230712328_ (##cdr _e1230512323_)))
                        (if (gx#stx-pair? _tl1230712328_)
                            (let ((_e1230812331_ (gx#syntax-e _tl1230712328_)))
                              (let ((_hd1230912334_ (##car _e1230812331_))
                                    (_tl1231012336_ (##cdr _e1230812331_)))
                                (let ((_id12339_ _hd1230912334_))
                                  (if (gx#stx-pair? _tl1231012336_)
                                      (let ((_e1231112341_
                                             (gx#syntax-e _tl1231012336_)))
                                        (let ((_hd1231212344_
                                               (##car _e1231112341_))
                                              (_tl1231312346_
                                               (##cdr _e1231112341_)))
                                          (let ((_binding-id12349_
                                                 _hd1231212344_))
                                            (if (gx#stx-null? _tl1231312346_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id12339_)
                        (cons (gx#core-quote-syntax__0 _binding-id12349_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1230412319_))
                                                (_E1230412319_)))))
                                      (_E1230412319_)))))
                            (_E1230412319_))))
                    (_E1230412319_)))))
        (_E1230312351_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12271_)
      (let* ((_e1227212279_ _stx12271_)
             (_E1227412283_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1227212279_)))
             (_E1227312297_
              (lambda ()
                (if (gx#stx-pair? _e1227212279_)
                    (let ((_e1227512287_ (gx#syntax-e _e1227212279_)))
                      (let ((_hd1227612290_ (##car _e1227512287_))
                            (_tl1227712292_ (##cdr _e1227512287_)))
                        (let ((_decls12295_ _tl1227712292_))
                          (if '#t
                              (cons '%#declare _decls12295_)
                              (_E1227412283_)))))
                    (_E1227412283_)))))
        (_E1227312297_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12241_)
      (let* ((_e1224212249_ _stx12241_)
             (_E1224412253_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1224212249_)))
             (_E1224312267_
              (lambda ()
                (if (gx#stx-pair? _e1224212249_)
                    (let ((_e1224512257_ (gx#syntax-e _e1224212249_)))
                      (let ((_hd1224612260_ (##car _e1224512257_))
                            (_tl1224712262_ (##cdr _e1224512257_)))
                        (let ((_clause12265_ _tl1224712262_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause12265_))
                              (_E1224412253_)))))
                    (_E1224412253_)))))
        (_E1224312267_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx12198_)
      (let* ((_e1219912209_ _stx12198_)
             (_E1220112213_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1219912209_)))
             (_E1220012237_
              (lambda ()
                (if (gx#stx-pair? _e1219912209_)
                    (let ((_e1220212217_ (gx#syntax-e _e1219912209_)))
                      (let ((_hd1220312220_ (##car _e1220212217_))
                            (_tl1220412222_ (##cdr _e1220212217_)))
                        (let ((_hd12225_ _hd1220312220_))
                          (if (gx#stx-pair? _tl1220412222_)
                              (let ((_e1220512227_
                                     (gx#syntax-e _tl1220412222_)))
                                (let ((_hd1220612230_ (##car _e1220512227_))
                                      (_tl1220712232_ (##cdr _e1220512227_)))
                                  (let ((_body12235_ _hd1220612230_))
                                    (if (gx#stx-null? _tl1220712232_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd12225_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body12235_)
                                                        '()))
                                            (_E1220112213_))
                                        (_E1220112213_)))))
                              (_E1220112213_)))))
                    (_E1220112213_)))))
        (_E1220012237_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx12168_)
      (let* ((_e1216912176_ _stx12168_)
             (_E1217112180_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1216912176_)))
             (_E1217012194_
              (lambda ()
                (if (gx#stx-pair? _e1216912176_)
                    (let ((_e1217212184_ (gx#syntax-e _e1216912176_)))
                      (let ((_hd1217312187_ (##car _e1217212184_))
                            (_tl1217412189_ (##cdr _e1217212184_)))
                        (let ((_clauses12192_ _tl1217412189_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses12192_))
                              (_E1217112180_)))))
                    (_E1217112180_)))))
        (_E1217012194_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda12101
      (lambda (_stx12103_ _form12104_)
        (let* ((_e1210512118_ _stx12103_)
               (_E1210712122_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1210512118_)))
               (_E1210612154_
                (lambda ()
                  (if (gx#stx-pair? _e1210512118_)
                      (let ((_e1210812126_ (gx#syntax-e _e1210512118_)))
                        (let ((_hd1210912129_ (##car _e1210812126_))
                              (_tl1211012131_ (##cdr _e1210812126_)))
                          (if (gx#stx-pair? _tl1211012131_)
                              (let ((_e1211112134_
                                     (gx#syntax-e _tl1211012131_)))
                                (let ((_hd1211212137_ (##car _e1211112134_))
                                      (_tl1211312139_ (##cdr _e1211112134_)))
                                  (let ((_hd12142_ _hd1211212137_))
                                    (if (gx#stx-pair? _tl1211312139_)
                                        (let ((_e1211412144_
                                               (gx#syntax-e _tl1211312139_)))
                                          (let ((_hd1211512147_
                                                 (##car _e1211412144_))
                                                (_tl1211612149_
                                                 (##cdr _e1211412144_)))
                                            (let ((_body12152_ _hd1211512147_))
                                              (if (gx#stx-null? _tl1211612149_)
                                                  (if '#t
                                                      (cons _form12104_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd12142_)
                          (cons (gx#core-compile-top-syntax _body12152_) '())))
              (_E1210712122_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1210712122_)))))
                                        (_E1210712122_)))))
                              (_E1210712122_))))
                      (_E1210712122_)))))
          (_E1210612154_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx12161_)
          (let ((_form12163_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda12101
             _stx12161_
             _form12163_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12889_
          (let ((_g12888_ (length _g12889_)))
            (cond ((fx= _g12888_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12889_))
                  ((fx= _g12888_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda12101
                          _g12889_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g12889_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx12100_)
      (gx#core-compile-top-let-values%__opt-lambda12101
       _stx12100_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx12098_)
      (gx#core-compile-top-let-values%__opt-lambda12101
       _stx12098_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx12057_)
      (let* ((_e1205812068_ _stx12057_)
             (_E1206012072_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1205812068_)))
             (_E1205912094_
              (lambda ()
                (if (gx#stx-pair? _e1205812068_)
                    (let ((_e1206112076_ (gx#syntax-e _e1205812068_)))
                      (let ((_hd1206212079_ (##car _e1206112076_))
                            (_tl1206312081_ (##cdr _e1206112076_)))
                        (if (gx#stx-pair? _tl1206312081_)
                            (let ((_e1206412084_ (gx#syntax-e _tl1206312081_)))
                              (let ((_hd1206512087_ (##car _e1206412084_))
                                    (_tl1206612089_ (##cdr _e1206412084_)))
                                (let ((_e12092_ _hd1206512087_))
                                  (if (gx#stx-null? _tl1206612089_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e12092_)
                                                      '()))
                                          (_E1206012072_))
                                      (_E1206012072_)))))
                            (_E1206012072_))))
                    (_E1206012072_)))))
        (_E1205912094_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx12016_)
      (let* ((_e1201712027_ _stx12016_)
             (_E1201912031_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1201712027_)))
             (_E1201812053_
              (lambda ()
                (if (gx#stx-pair? _e1201712027_)
                    (let ((_e1202012035_ (gx#syntax-e _e1201712027_)))
                      (let ((_hd1202112038_ (##car _e1202012035_))
                            (_tl1202212040_ (##cdr _e1202012035_)))
                        (if (gx#stx-pair? _tl1202212040_)
                            (let ((_e1202312043_ (gx#syntax-e _tl1202212040_)))
                              (let ((_hd1202412046_ (##car _e1202312043_))
                                    (_tl1202512048_ (##cdr _e1202312043_)))
                                (let ((_e12051_ _hd1202412046_))
                                  (if (gx#stx-null? _tl1202512048_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e12051_)
                                                      '()))
                                          (_E1201912031_))
                                      (_E1201912031_)))))
                            (_E1201912031_))))
                    (_E1201912031_)))))
        (_E1201812053_))))
  (define gx#core-compile-top-call%
    (lambda (_stx11973_)
      (let* ((_e1197411984_ _stx11973_)
             (_E1197611988_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1197411984_)))
             (_E1197512012_
              (lambda ()
                (if (gx#stx-pair? _e1197411984_)
                    (let ((_e1197711992_ (gx#syntax-e _e1197411984_)))
                      (let ((_hd1197811995_ (##car _e1197711992_))
                            (_tl1197911997_ (##cdr _e1197711992_)))
                        (if (gx#stx-pair? _tl1197911997_)
                            (let ((_e1198012000_ (gx#syntax-e _tl1197911997_)))
                              (let ((_hd1198112003_ (##car _e1198012000_))
                                    (_tl1198212005_ (##cdr _e1198012000_)))
                                (let* ((_rator12008_ _hd1198112003_)
                                       (_args12010_ _tl1198212005_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator12008_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args12010_))
                                      (_E1197611988_)))))
                            (_E1197611988_))))
                    (_E1197611988_)))))
        (_E1197512012_))))
  (define gx#core-compile-top-if%
    (lambda (_stx11906_)
      (let* ((_e1190711923_ _stx11906_)
             (_E1190911927_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1190711923_)))
             (_E1190811969_
              (lambda ()
                (if (gx#stx-pair? _e1190711923_)
                    (let ((_e1191011931_ (gx#syntax-e _e1190711923_)))
                      (let ((_hd1191111934_ (##car _e1191011931_))
                            (_tl1191211936_ (##cdr _e1191011931_)))
                        (if (gx#stx-pair? _tl1191211936_)
                            (let ((_e1191311939_ (gx#syntax-e _tl1191211936_)))
                              (let ((_hd1191411942_ (##car _e1191311939_))
                                    (_tl1191511944_ (##cdr _e1191311939_)))
                                (let ((_test11947_ _hd1191411942_))
                                  (if (gx#stx-pair? _tl1191511944_)
                                      (let ((_e1191611949_
                                             (gx#syntax-e _tl1191511944_)))
                                        (let ((_hd1191711952_
                                               (##car _e1191611949_))
                                              (_tl1191811954_
                                               (##cdr _e1191611949_)))
                                          (let ((_K11957_ _hd1191711952_))
                                            (if (gx#stx-pair? _tl1191811954_)
                                                (let ((_e1191911959_
                                                       (gx#syntax-e
                                                        _tl1191811954_)))
                                                  (let ((_hd1192011962_
                                                         (##car _e1191911959_))
                                                        (_tl1192111964_
                                                         (##cdr _e1191911959_)))
                                                    (let ((_E11967_
                                                           _hd1192011962_))
                                                      (if (gx#stx-null?
                                                           _tl1192111964_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test11947_)
                                  (cons (gx#core-compile-top-syntax _K11957_)
                                        (cons (gx#core-compile-top-syntax
                                               _E11967_)
                                              '()))))
                      (_E1190911927_))
                  (_E1190911927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1190911927_)))))
                                      (_E1190911927_)))))
                            (_E1190911927_))))
                    (_E1190911927_)))))
        (_E1190811969_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11865_)
      (let* ((_e1186611876_ _stx11865_)
             (_E1186811880_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1186611876_)))
             (_E1186711902_
              (lambda ()
                (if (gx#stx-pair? _e1186611876_)
                    (let ((_e1186911884_ (gx#syntax-e _e1186611876_)))
                      (let ((_hd1187011887_ (##car _e1186911884_))
                            (_tl1187111889_ (##cdr _e1186911884_)))
                        (if (gx#stx-pair? _tl1187111889_)
                            (let ((_e1187211892_ (gx#syntax-e _tl1187111889_)))
                              (let ((_hd1187311895_ (##car _e1187211892_))
                                    (_tl1187411897_ (##cdr _e1187211892_)))
                                (let ((_id11900_ _hd1187311895_))
                                  (if (gx#stx-null? _tl1187411897_)
                                      (if (gx#identifier? _id11900_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id11900_)
                                                      '()))
                                          (_E1186811880_))
                                      (_E1186811880_)))))
                            (_E1186811880_))))
                    (_E1186811880_)))))
        (_E1186711902_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11811_)
      (let* ((_e1181211825_ _stx11811_)
             (_E1181411829_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1181211825_)))
             (_E1181311861_
              (lambda ()
                (if (gx#stx-pair? _e1181211825_)
                    (let ((_e1181511833_ (gx#syntax-e _e1181211825_)))
                      (let ((_hd1181611836_ (##car _e1181511833_))
                            (_tl1181711838_ (##cdr _e1181511833_)))
                        (if (gx#stx-pair? _tl1181711838_)
                            (let ((_e1181811841_ (gx#syntax-e _tl1181711838_)))
                              (let ((_hd1181911844_ (##car _e1181811841_))
                                    (_tl1182011846_ (##cdr _e1181811841_)))
                                (let ((_id11849_ _hd1181911844_))
                                  (if (gx#stx-pair? _tl1182011846_)
                                      (let ((_e1182111851_
                                             (gx#syntax-e _tl1182011846_)))
                                        (let ((_hd1182211854_
                                               (##car _e1182111851_))
                                              (_tl1182311856_
                                               (##cdr _e1182111851_)))
                                          (let ((_expr11859_ _hd1182211854_))
                                            (if (gx#stx-null? _tl1182311856_)
                                                (if (gx#identifier? _id11849_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id11849_)
                        (cons (gx#core-compile-top-syntax _expr11859_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1181411829_))
                                                (_E1181411829_)))))
                                      (_E1181411829_)))))
                            (_E1181411829_))))
                    (_E1181411829_)))))
        (_E1181311861_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11806_)
      (let ((_$e11808_ (gx#resolve-identifier__0 _id11806_)))
        (if _$e11808_
            (##structure-ref _$e11808_ '1 gx#binding::t '#f)
            _id11806_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11804_)
      (if (gx#identifier? _hd11804_)
          (gx#core-compile-top-runtime-ref _hd11804_)
          '#f))))
