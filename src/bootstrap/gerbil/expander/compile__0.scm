(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12713_)
      (let* ((_e1271412721_ _stx12713_)
             (_E1271612725_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1271412721_)))
             (_E1271512739_
              (lambda ()
                (if (gx#stx-pair? _e1271412721_)
                    (let ((_e1271712729_ (gx#syntax-e _e1271412721_)))
                      (let ((_hd1271812732_ (##car _e1271712729_))
                            (_tl1271912734_ (##cdr _e1271712729_)))
                        (let ((_form12737_ _hd1271812732_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form12737_)
                               'compile-top-syntax
                               _stx12713_)
                              (_E1271612725_)))))
                    (_E1271612725_)))))
        (_E1271512739_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12673_ _stx12674_)
      (let* ((_self1267512683_ _self12673_)
             (_E1267712687_
              (lambda () (error '"No clause matching" _self1267512683_)))
             (_K1267812699_
              (lambda (_K12690_)
                (let ((_$e12692_ (gx#stx-source _stx12674_)))
                  (if _$e12692_
                      ((lambda (_g1269412696_)
                         (gx#stx-wrap-source
                          (_K12690_ _stx12674_)
                          _g1269412696_))
                       _$e12692_)
                      (_K12690_ _stx12674_))))))
        (if (##structure-instance-of?
             _self1267512683_
             (##type-id gx#core-expander::t))
            (let* ((_e1267912702_ (##vector-ref _self1267512683_ '1))
                   (_e1268012705_ (##vector-ref _self1267512683_ '2))
                   (_e1268112708_ (##vector-ref _self1267512683_ '3))
                   (_K12711_ _e1268112708_))
              (_K1267812699_ _K12711_))
            (_E1267712687_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12671_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12671_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12641_)
      (let* ((_e1264212649_ _stx12641_)
             (_E1264412653_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1264212649_)))
             (_E1264312667_
              (lambda ()
                (if (gx#stx-pair? _e1264212649_)
                    (let ((_e1264512657_ (gx#syntax-e _e1264212649_)))
                      (let ((_hd1264612660_ (##car _e1264512657_))
                            (_tl1264712662_ (##cdr _e1264512657_)))
                        (let ((_body12665_ _tl1264712662_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body12665_))
                              (_E1264412653_)))))
                    (_E1264412653_)))))
        (_E1264312667_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12610_)
      (let* ((_e1261112618_ _stx12610_)
             (_E1261312622_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1261112618_)))
             (_E1261212637_
              (lambda ()
                (if (gx#stx-pair? _e1261112618_)
                    (let ((_e1261412626_ (gx#syntax-e _e1261112618_)))
                      (let ((_hd1261512629_ (##car _e1261412626_))
                            (_tl1261612631_ (##cdr _e1261412626_)))
                        (let ((_body12634_ _tl1261612631_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12634_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1261312622_)))))
                    (_E1261312622_)))))
        (_E1261212637_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12580_)
      (let* ((_e1258112588_ _stx12580_)
             (_E1258312592_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1258112588_)))
             (_E1258212606_
              (lambda ()
                (if (gx#stx-pair? _e1258112588_)
                    (let ((_e1258412596_ (gx#syntax-e _e1258112588_)))
                      (let ((_hd1258512599_ (##car _e1258412596_))
                            (_tl1258612601_ (##cdr _e1258412596_)))
                        (let ((_body12604_ _tl1258612601_))
                          (if '#t
                              (cons '%#begin-foreign _body12604_)
                              (_E1258312592_)))))
                    (_E1258312592_)))))
        (_E1258212606_))))
  (define gx#core-compile-top-import%
    (lambda (_stx12550_)
      (let* ((_e1255112558_ _stx12550_)
             (_E1255312562_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1255112558_)))
             (_E1255212576_
              (lambda ()
                (if (gx#stx-pair? _e1255112558_)
                    (let ((_e1255412566_ (gx#syntax-e _e1255112558_)))
                      (let ((_hd1255512569_ (##car _e1255412566_))
                            (_tl1255612571_ (##cdr _e1255412566_)))
                        (let ((_body12574_ _tl1255612571_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body12574_))
                              (_E1255312562_)))))
                    (_E1255312562_)))))
        (_E1255212576_))))
  (define gx#core-compile-top-module%
    (lambda (_stx12507_)
      (let* ((_e1250812518_ _stx12507_)
             (_E1251012522_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1250812518_)))
             (_E1250912546_
              (lambda ()
                (if (gx#stx-pair? _e1250812518_)
                    (let ((_e1251112526_ (gx#syntax-e _e1250812518_)))
                      (let ((_hd1251212529_ (##car _e1251112526_))
                            (_tl1251312531_ (##cdr _e1251112526_)))
                        (if (gx#stx-pair? _tl1251312531_)
                            (let ((_e1251412534_ (gx#syntax-e _tl1251312531_)))
                              (let ((_hd1251512537_ (##car _e1251412534_))
                                    (_tl1251612539_ (##cdr _e1251412534_)))
                                (let* ((_hd12542_ _hd1251512537_)
                                       (_body12544_ _tl1251612539_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd12542_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body12544_))
                                      (_E1251012522_)))))
                            (_E1251012522_))))
                    (_E1251012522_)))))
        (_E1250912546_))))
  (define gx#core-compile-top-export%
    (lambda (_stx12477_)
      (let* ((_e1247812485_ _stx12477_)
             (_E1248012489_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1247812485_)))
             (_E1247912503_
              (lambda ()
                (if (gx#stx-pair? _e1247812485_)
                    (let ((_e1248112493_ (gx#syntax-e _e1247812485_)))
                      (let ((_hd1248212496_ (##car _e1248112493_))
                            (_tl1248312498_ (##cdr _e1248112493_)))
                        (let ((_body12501_ _tl1248312498_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body12501_))
                              (_E1248012489_)))))
                    (_E1248012489_)))))
        (_E1247912503_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12447_)
      (let* ((_e1244812455_ _stx12447_)
             (_E1245012459_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1244812455_)))
             (_E1244912473_
              (lambda ()
                (if (gx#stx-pair? _e1244812455_)
                    (let ((_e1245112463_ (gx#syntax-e _e1244812455_)))
                      (let ((_hd1245212466_ (##car _e1245112463_))
                            (_tl1245312468_ (##cdr _e1245112463_)))
                        (let ((_body12471_ _tl1245312468_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body12471_))
                              (_E1245012459_)))))
                    (_E1245012459_)))))
        (_E1244912473_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12372_)
      (letrec ((_generate12374_
                (lambda (_hd12404_)
                  (let* ((_e1240512415_ _hd12404_)
                         (_E1240712419_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1240512415_)))
                         (_E1240612443_
                          (lambda ()
                            (if (gx#stx-pair? _e1240512415_)
                                (let ((_e1240812423_
                                       (gx#syntax-e _e1240512415_)))
                                  (let ((_hd1240912426_ (##car _e1240812423_))
                                        (_tl1241012428_ (##cdr _e1240812423_)))
                                    (let ((_id12431_ _hd1240912426_))
                                      (if (gx#stx-pair? _tl1241012428_)
                                          (let ((_e1241112433_
                                                 (gx#syntax-e _tl1241012428_)))
                                            (let ((_hd1241212436_
                                                   (##car _e1241112433_))
                                                  (_tl1241312438_
                                                   (##cdr _e1241112433_)))
                                              (let ((_eid12441_
                                                     _hd1241212436_))
                                                (if (gx#stx-null?
                                                     _tl1241312438_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12431_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12441_)
                            '()))
                (_E1240712419_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1240712419_)))))
                                          (_E1240712419_)))))
                                (_E1240712419_)))))
                    (_E1240612443_)))))
        (let* ((_e1237512382_ _stx12372_)
               (_E1237712386_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1237512382_)))
               (_E1237612400_
                (lambda ()
                  (if (gx#stx-pair? _e1237512382_)
                      (let ((_e1237812390_ (gx#syntax-e _e1237512382_)))
                        (let ((_hd1237912393_ (##car _e1237812390_))
                              (_tl1238012395_ (##cdr _e1237812390_)))
                          (let ((_body12398_ _tl1238012395_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate12374_
                                       _body12398_))
                                (_E1237712386_)))))
                      (_E1237712386_)))))
          (_E1237612400_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12318_)
      (let* ((_e1231912332_ _stx12318_)
             (_E1232112336_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1231912332_)))
             (_E1232012368_
              (lambda ()
                (if (gx#stx-pair? _e1231912332_)
                    (let ((_e1232212340_ (gx#syntax-e _e1231912332_)))
                      (let ((_hd1232312343_ (##car _e1232212340_))
                            (_tl1232412345_ (##cdr _e1232212340_)))
                        (if (gx#stx-pair? _tl1232412345_)
                            (let ((_e1232512348_ (gx#syntax-e _tl1232412345_)))
                              (let ((_hd1232612351_ (##car _e1232512348_))
                                    (_tl1232712353_ (##cdr _e1232512348_)))
                                (let ((_hd12356_ _hd1232612351_))
                                  (if (gx#stx-pair? _tl1232712353_)
                                      (let ((_e1232812358_
                                             (gx#syntax-e _tl1232712353_)))
                                        (let ((_hd1232912361_
                                               (##car _e1232812358_))
                                              (_tl1233012363_
                                               (##cdr _e1232812358_)))
                                          (let ((_expr12366_ _hd1232912361_))
                                            (if (gx#stx-null? _tl1233012363_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd12356_)
                        (cons (gx#core-compile-top-syntax _expr12366_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1232112336_))
                                                (_E1232112336_)))))
                                      (_E1232112336_)))))
                            (_E1232112336_))))
                    (_E1232112336_)))))
        (_E1232012368_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12263_)
      (let* ((_e1226412277_ _stx12263_)
             (_E1226612281_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1226412277_)))
             (_E1226512314_
              (lambda ()
                (if (gx#stx-pair? _e1226412277_)
                    (let ((_e1226712285_ (gx#syntax-e _e1226412277_)))
                      (let ((_hd1226812288_ (##car _e1226712285_))
                            (_tl1226912290_ (##cdr _e1226712285_)))
                        (if (gx#stx-pair? _tl1226912290_)
                            (let ((_e1227012293_ (gx#syntax-e _tl1226912290_)))
                              (let ((_hd1227112296_ (##car _e1227012293_))
                                    (_tl1227212298_ (##cdr _e1227012293_)))
                                (let ((_hd12301_ _hd1227112296_))
                                  (if (gx#stx-pair? _tl1227212298_)
                                      (let ((_e1227312303_
                                             (gx#syntax-e _tl1227212298_)))
                                        (let ((_hd1227412306_
                                               (##car _e1227312303_))
                                              (_tl1227512308_
                                               (##cdr _e1227312303_)))
                                          (let ((_expr12311_ _hd1227412306_))
                                            (if (gx#stx-null? _tl1227512308_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12301_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr12311_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1226612281_))
                                                (_E1226612281_)))))
                                      (_E1226612281_)))))
                            (_E1226612281_))))
                    (_E1226612281_)))))
        (_E1226512314_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12209_)
      (let* ((_e1221012223_ _stx12209_)
             (_E1221212227_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1221012223_)))
             (_E1221112259_
              (lambda ()
                (if (gx#stx-pair? _e1221012223_)
                    (let ((_e1221312231_ (gx#syntax-e _e1221012223_)))
                      (let ((_hd1221412234_ (##car _e1221312231_))
                            (_tl1221512236_ (##cdr _e1221312231_)))
                        (if (gx#stx-pair? _tl1221512236_)
                            (let ((_e1221612239_ (gx#syntax-e _tl1221512236_)))
                              (let ((_hd1221712242_ (##car _e1221612239_))
                                    (_tl1221812244_ (##cdr _e1221612239_)))
                                (let ((_hd12247_ _hd1221712242_))
                                  (if (gx#stx-pair? _tl1221812244_)
                                      (let ((_e1221912249_
                                             (gx#syntax-e _tl1221812244_)))
                                        (let ((_hd1222012252_
                                               (##car _e1221912249_))
                                              (_tl1222112254_
                                               (##cdr _e1221912249_)))
                                          (let ((_alias-id12257_
                                                 _hd1222012252_))
                                            (if (gx#stx-null? _tl1222112254_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12247_)
                        (cons (gx#core-quote-syntax__0 _alias-id12257_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1221212227_))
                                                (_E1221212227_)))))
                                      (_E1221212227_)))))
                            (_E1221212227_))))
                    (_E1221212227_)))))
        (_E1221112259_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12155_)
      (let* ((_e1215612169_ _stx12155_)
             (_E1215812173_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1215612169_)))
             (_E1215712205_
              (lambda ()
                (if (gx#stx-pair? _e1215612169_)
                    (let ((_e1215912177_ (gx#syntax-e _e1215612169_)))
                      (let ((_hd1216012180_ (##car _e1215912177_))
                            (_tl1216112182_ (##cdr _e1215912177_)))
                        (if (gx#stx-pair? _tl1216112182_)
                            (let ((_e1216212185_ (gx#syntax-e _tl1216112182_)))
                              (let ((_hd1216312188_ (##car _e1216212185_))
                                    (_tl1216412190_ (##cdr _e1216212185_)))
                                (let ((_id12193_ _hd1216312188_))
                                  (if (gx#stx-pair? _tl1216412190_)
                                      (let ((_e1216512195_
                                             (gx#syntax-e _tl1216412190_)))
                                        (let ((_hd1216612198_
                                               (##car _e1216512195_))
                                              (_tl1216712200_
                                               (##cdr _e1216512195_)))
                                          (let ((_binding-id12203_
                                                 _hd1216612198_))
                                            (if (gx#stx-null? _tl1216712200_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id12193_)
                        (cons (gx#core-quote-syntax__0 _binding-id12203_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1215812173_))
                                                (_E1215812173_)))))
                                      (_E1215812173_)))))
                            (_E1215812173_))))
                    (_E1215812173_)))))
        (_E1215712205_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12125_)
      (let* ((_e1212612133_ _stx12125_)
             (_E1212812137_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1212612133_)))
             (_E1212712151_
              (lambda ()
                (if (gx#stx-pair? _e1212612133_)
                    (let ((_e1212912141_ (gx#syntax-e _e1212612133_)))
                      (let ((_hd1213012144_ (##car _e1212912141_))
                            (_tl1213112146_ (##cdr _e1212912141_)))
                        (let ((_decls12149_ _tl1213112146_))
                          (if '#t
                              (cons '%#declare _decls12149_)
                              (_E1212812137_)))))
                    (_E1212812137_)))))
        (_E1212712151_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12095_)
      (let* ((_e1209612103_ _stx12095_)
             (_E1209812107_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1209612103_)))
             (_E1209712121_
              (lambda ()
                (if (gx#stx-pair? _e1209612103_)
                    (let ((_e1209912111_ (gx#syntax-e _e1209612103_)))
                      (let ((_hd1210012114_ (##car _e1209912111_))
                            (_tl1210112116_ (##cdr _e1209912111_)))
                        (let ((_clause12119_ _tl1210112116_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause12119_))
                              (_E1209812107_)))))
                    (_E1209812107_)))))
        (_E1209712121_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx12052_)
      (let* ((_e1205312063_ _stx12052_)
             (_E1205512067_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1205312063_)))
             (_E1205412091_
              (lambda ()
                (if (gx#stx-pair? _e1205312063_)
                    (let ((_e1205612071_ (gx#syntax-e _e1205312063_)))
                      (let ((_hd1205712074_ (##car _e1205612071_))
                            (_tl1205812076_ (##cdr _e1205612071_)))
                        (let ((_hd12079_ _hd1205712074_))
                          (if (gx#stx-pair? _tl1205812076_)
                              (let ((_e1205912081_
                                     (gx#syntax-e _tl1205812076_)))
                                (let ((_hd1206012084_ (##car _e1205912081_))
                                      (_tl1206112086_ (##cdr _e1205912081_)))
                                  (let ((_body12089_ _hd1206012084_))
                                    (if (gx#stx-null? _tl1206112086_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd12079_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body12089_)
                                                        '()))
                                            (_E1205512067_))
                                        (_E1205512067_)))))
                              (_E1205512067_)))))
                    (_E1205512067_)))))
        (_E1205412091_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx12022_)
      (let* ((_e1202312030_ _stx12022_)
             (_E1202512034_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1202312030_)))
             (_E1202412048_
              (lambda ()
                (if (gx#stx-pair? _e1202312030_)
                    (let ((_e1202612038_ (gx#syntax-e _e1202312030_)))
                      (let ((_hd1202712041_ (##car _e1202612038_))
                            (_tl1202812043_ (##cdr _e1202612038_)))
                        (let ((_clauses12046_ _tl1202812043_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses12046_))
                              (_E1202512034_)))))
                    (_E1202512034_)))))
        (_E1202412048_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11955
      (lambda (_stx11957_ _form11958_)
        (let* ((_e1195911972_ _stx11957_)
               (_E1196111976_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1195911972_)))
               (_E1196012008_
                (lambda ()
                  (if (gx#stx-pair? _e1195911972_)
                      (let ((_e1196211980_ (gx#syntax-e _e1195911972_)))
                        (let ((_hd1196311983_ (##car _e1196211980_))
                              (_tl1196411985_ (##cdr _e1196211980_)))
                          (if (gx#stx-pair? _tl1196411985_)
                              (let ((_e1196511988_
                                     (gx#syntax-e _tl1196411985_)))
                                (let ((_hd1196611991_ (##car _e1196511988_))
                                      (_tl1196711993_ (##cdr _e1196511988_)))
                                  (let ((_hd11996_ _hd1196611991_))
                                    (if (gx#stx-pair? _tl1196711993_)
                                        (let ((_e1196811998_
                                               (gx#syntax-e _tl1196711993_)))
                                          (let ((_hd1196912001_
                                                 (##car _e1196811998_))
                                                (_tl1197012003_
                                                 (##cdr _e1196811998_)))
                                            (let ((_body12006_ _hd1196912001_))
                                              (if (gx#stx-null? _tl1197012003_)
                                                  (if '#t
                                                      (cons _form11958_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd11996_)
                          (cons (gx#core-compile-top-syntax _body12006_) '())))
              (_E1196111976_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1196111976_)))))
                                        (_E1196111976_)))))
                              (_E1196111976_))))
                      (_E1196111976_)))))
          (_E1196012008_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx12015_)
          (let ((_form12017_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11955
             _stx12015_
             _form12017_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12743_
          (let ((_g12742_ (length _g12743_)))
            (cond ((fx= _g12742_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12743_))
                  ((fx= _g12742_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11955
                          _g12743_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g12743_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11954_)
      (gx#core-compile-top-let-values%__opt-lambda11955
       _stx11954_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11952_)
      (gx#core-compile-top-let-values%__opt-lambda11955
       _stx11952_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11911_)
      (let* ((_e1191211922_ _stx11911_)
             (_E1191411926_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1191211922_)))
             (_E1191311948_
              (lambda ()
                (if (gx#stx-pair? _e1191211922_)
                    (let ((_e1191511930_ (gx#syntax-e _e1191211922_)))
                      (let ((_hd1191611933_ (##car _e1191511930_))
                            (_tl1191711935_ (##cdr _e1191511930_)))
                        (if (gx#stx-pair? _tl1191711935_)
                            (let ((_e1191811938_ (gx#syntax-e _tl1191711935_)))
                              (let ((_hd1191911941_ (##car _e1191811938_))
                                    (_tl1192011943_ (##cdr _e1191811938_)))
                                (let ((_e11946_ _hd1191911941_))
                                  (if (gx#stx-null? _tl1192011943_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e11946_)
                                                      '()))
                                          (_E1191411926_))
                                      (_E1191411926_)))))
                            (_E1191411926_))))
                    (_E1191411926_)))))
        (_E1191311948_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11870_)
      (let* ((_e1187111881_ _stx11870_)
             (_E1187311885_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1187111881_)))
             (_E1187211907_
              (lambda ()
                (if (gx#stx-pair? _e1187111881_)
                    (let ((_e1187411889_ (gx#syntax-e _e1187111881_)))
                      (let ((_hd1187511892_ (##car _e1187411889_))
                            (_tl1187611894_ (##cdr _e1187411889_)))
                        (if (gx#stx-pair? _tl1187611894_)
                            (let ((_e1187711897_ (gx#syntax-e _tl1187611894_)))
                              (let ((_hd1187811900_ (##car _e1187711897_))
                                    (_tl1187911902_ (##cdr _e1187711897_)))
                                (let ((_e11905_ _hd1187811900_))
                                  (if (gx#stx-null? _tl1187911902_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e11905_)
                                                      '()))
                                          (_E1187311885_))
                                      (_E1187311885_)))))
                            (_E1187311885_))))
                    (_E1187311885_)))))
        (_E1187211907_))))
  (define gx#core-compile-top-call%
    (lambda (_stx11827_)
      (let* ((_e1182811838_ _stx11827_)
             (_E1183011842_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1182811838_)))
             (_E1182911866_
              (lambda ()
                (if (gx#stx-pair? _e1182811838_)
                    (let ((_e1183111846_ (gx#syntax-e _e1182811838_)))
                      (let ((_hd1183211849_ (##car _e1183111846_))
                            (_tl1183311851_ (##cdr _e1183111846_)))
                        (if (gx#stx-pair? _tl1183311851_)
                            (let ((_e1183411854_ (gx#syntax-e _tl1183311851_)))
                              (let ((_hd1183511857_ (##car _e1183411854_))
                                    (_tl1183611859_ (##cdr _e1183411854_)))
                                (let* ((_rator11862_ _hd1183511857_)
                                       (_args11864_ _tl1183611859_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator11862_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args11864_))
                                      (_E1183011842_)))))
                            (_E1183011842_))))
                    (_E1183011842_)))))
        (_E1182911866_))))
  (define gx#core-compile-top-if%
    (lambda (_stx11760_)
      (let* ((_e1176111777_ _stx11760_)
             (_E1176311781_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1176111777_)))
             (_E1176211823_
              (lambda ()
                (if (gx#stx-pair? _e1176111777_)
                    (let ((_e1176411785_ (gx#syntax-e _e1176111777_)))
                      (let ((_hd1176511788_ (##car _e1176411785_))
                            (_tl1176611790_ (##cdr _e1176411785_)))
                        (if (gx#stx-pair? _tl1176611790_)
                            (let ((_e1176711793_ (gx#syntax-e _tl1176611790_)))
                              (let ((_hd1176811796_ (##car _e1176711793_))
                                    (_tl1176911798_ (##cdr _e1176711793_)))
                                (let ((_test11801_ _hd1176811796_))
                                  (if (gx#stx-pair? _tl1176911798_)
                                      (let ((_e1177011803_
                                             (gx#syntax-e _tl1176911798_)))
                                        (let ((_hd1177111806_
                                               (##car _e1177011803_))
                                              (_tl1177211808_
                                               (##cdr _e1177011803_)))
                                          (let ((_K11811_ _hd1177111806_))
                                            (if (gx#stx-pair? _tl1177211808_)
                                                (let ((_e1177311813_
                                                       (gx#syntax-e
                                                        _tl1177211808_)))
                                                  (let ((_hd1177411816_
                                                         (##car _e1177311813_))
                                                        (_tl1177511818_
                                                         (##cdr _e1177311813_)))
                                                    (let ((_E11821_
                                                           _hd1177411816_))
                                                      (if (gx#stx-null?
                                                           _tl1177511818_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test11801_)
                                  (cons (gx#core-compile-top-syntax _K11811_)
                                        (cons (gx#core-compile-top-syntax
                                               _E11821_)
                                              '()))))
                      (_E1176311781_))
                  (_E1176311781_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1176311781_)))))
                                      (_E1176311781_)))))
                            (_E1176311781_))))
                    (_E1176311781_)))))
        (_E1176211823_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11719_)
      (let* ((_e1172011730_ _stx11719_)
             (_E1172211734_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1172011730_)))
             (_E1172111756_
              (lambda ()
                (if (gx#stx-pair? _e1172011730_)
                    (let ((_e1172311738_ (gx#syntax-e _e1172011730_)))
                      (let ((_hd1172411741_ (##car _e1172311738_))
                            (_tl1172511743_ (##cdr _e1172311738_)))
                        (if (gx#stx-pair? _tl1172511743_)
                            (let ((_e1172611746_ (gx#syntax-e _tl1172511743_)))
                              (let ((_hd1172711749_ (##car _e1172611746_))
                                    (_tl1172811751_ (##cdr _e1172611746_)))
                                (let ((_id11754_ _hd1172711749_))
                                  (if (gx#stx-null? _tl1172811751_)
                                      (if (gx#identifier? _id11754_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id11754_)
                                                      '()))
                                          (_E1172211734_))
                                      (_E1172211734_)))))
                            (_E1172211734_))))
                    (_E1172211734_)))))
        (_E1172111756_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11665_)
      (let* ((_e1166611679_ _stx11665_)
             (_E1166811683_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1166611679_)))
             (_E1166711715_
              (lambda ()
                (if (gx#stx-pair? _e1166611679_)
                    (let ((_e1166911687_ (gx#syntax-e _e1166611679_)))
                      (let ((_hd1167011690_ (##car _e1166911687_))
                            (_tl1167111692_ (##cdr _e1166911687_)))
                        (if (gx#stx-pair? _tl1167111692_)
                            (let ((_e1167211695_ (gx#syntax-e _tl1167111692_)))
                              (let ((_hd1167311698_ (##car _e1167211695_))
                                    (_tl1167411700_ (##cdr _e1167211695_)))
                                (let ((_id11703_ _hd1167311698_))
                                  (if (gx#stx-pair? _tl1167411700_)
                                      (let ((_e1167511705_
                                             (gx#syntax-e _tl1167411700_)))
                                        (let ((_hd1167611708_
                                               (##car _e1167511705_))
                                              (_tl1167711710_
                                               (##cdr _e1167511705_)))
                                          (let ((_expr11713_ _hd1167611708_))
                                            (if (gx#stx-null? _tl1167711710_)
                                                (if (gx#identifier? _id11703_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id11703_)
                        (cons (gx#core-compile-top-syntax _expr11713_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1166811683_))
                                                (_E1166811683_)))))
                                      (_E1166811683_)))))
                            (_E1166811683_))))
                    (_E1166811683_)))))
        (_E1166711715_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11660_)
      (let ((_$e11662_ (gx#resolve-identifier__0 _id11660_)))
        (if _$e11662_
            (##structure-ref _$e11662_ '1 gx#binding::t '#f)
            _id11660_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11658_)
      (if (gx#identifier? _hd11658_)
          (gx#core-compile-top-runtime-ref _hd11658_)
          '#f))))
