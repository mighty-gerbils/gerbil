(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12283_)
      (let ((_e1228412291_ _stx12283_))
        (let ((_E1228612295_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1228412291_))))
          (let ((_E1228512309_
                 (lambda ()
                   (if (gx#stx-pair? _e1228412291_)
                       (let ((_e1228712299_ (gx#syntax-e _e1228412291_)))
                         (let ((_hd1228812302_ (##car _e1228712299_))
                               (_tl1228912304_ (##cdr _e1228712299_)))
                           (let ((_form12307_ _hd1228812302_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12307_)
                                  'compile-top-syntax
                                  _stx12283_)
                                 (_E1228612295_)))))
                       (_E1228612295_)))))
            (let () (_E1228512309_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12243_ _stx12244_)
      (let ((_self1224512253_ _self12243_))
        (let ((_E1224712257_
               (lambda () (error '"No clause matching" _self1224512253_))))
          (let ((_K1224812269_
                 (lambda (_K12260_)
                   (let ((_$e12262_ (gx#stx-source _stx12244_)))
                     (if _$e12262_
                         ((lambda (_g1226412266_)
                            (gx#stx-wrap-source
                             (_K12260_ _stx12244_)
                             _g1226412266_))
                          _$e12262_)
                         (_K12260_ _stx12244_))))))
            (if (struct-instance? gx#core-expander::t _self1224512253_)
                (let ((_e1224912272_ (##vector-ref _self1224512253_ '1)))
                  (let ((_e1225012275_ (##vector-ref _self1224512253_ '2)))
                    (let ((_e1225112278_ (##vector-ref _self1224512253_ '3)))
                      (let ((_K12281_ _e1225112278_))
                        (_K1224812269_ _K12281_)))))
                (_E1224712257_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12241_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12241_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12211_)
      (let ((_e1221212219_ _stx12211_))
        (let ((_E1221412223_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1221212219_))))
          (let ((_E1221312237_
                 (lambda ()
                   (if (gx#stx-pair? _e1221212219_)
                       (let ((_e1221512227_ (gx#syntax-e _e1221212219_)))
                         (let ((_hd1221612230_ (##car _e1221512227_))
                               (_tl1221712232_ (##cdr _e1221512227_)))
                           (let ((_body12235_ _tl1221712232_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12235_))
                                 (_E1221412223_)))))
                       (_E1221412223_)))))
            (let () (_E1221312237_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12180_)
      (let ((_e1218112188_ _stx12180_))
        (let ((_E1218312192_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1218112188_))))
          (let ((_E1218212207_
                 (lambda ()
                   (if (gx#stx-pair? _e1218112188_)
                       (let ((_e1218412196_ (gx#syntax-e _e1218112188_)))
                         (let ((_hd1218512199_ (##car _e1218412196_))
                               (_tl1218612201_ (##cdr _e1218412196_)))
                           (let ((_body12204_ _tl1218612201_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12204_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1218312192_)))))
                       (_E1218312192_)))))
            (let () (_E1218212207_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12150_)
      (let ((_e1215112158_ _stx12150_))
        (let ((_E1215312162_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1215112158_))))
          (let ((_E1215212176_
                 (lambda ()
                   (if (gx#stx-pair? _e1215112158_)
                       (let ((_e1215412166_ (gx#syntax-e _e1215112158_)))
                         (let ((_hd1215512169_ (##car _e1215412166_))
                               (_tl1215612171_ (##cdr _e1215412166_)))
                           (let ((_body12174_ _tl1215612171_))
                             (if '#t
                                 (cons '%#begin-foreign _body12174_)
                                 (_E1215312162_)))))
                       (_E1215312162_)))))
            (let () (_E1215212176_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12120_)
      (let ((_e1212112128_ _stx12120_))
        (let ((_E1212312132_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1212112128_))))
          (let ((_E1212212146_
                 (lambda ()
                   (if (gx#stx-pair? _e1212112128_)
                       (let ((_e1212412136_ (gx#syntax-e _e1212112128_)))
                         (let ((_hd1212512139_ (##car _e1212412136_))
                               (_tl1212612141_ (##cdr _e1212412136_)))
                           (let ((_body12144_ _tl1212612141_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12144_))
                                 (_E1212312132_)))))
                       (_E1212312132_)))))
            (let () (_E1212212146_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12077_)
      (let ((_e1207812088_ _stx12077_))
        (let ((_E1208012092_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1207812088_))))
          (let ((_E1207912116_
                 (lambda ()
                   (if (gx#stx-pair? _e1207812088_)
                       (let ((_e1208112096_ (gx#syntax-e _e1207812088_)))
                         (let ((_hd1208212099_ (##car _e1208112096_))
                               (_tl1208312101_ (##cdr _e1208112096_)))
                           (if (gx#stx-pair? _tl1208312101_)
                               (let ((_e1208412104_
                                      (gx#syntax-e _tl1208312101_)))
                                 (let ((_hd1208512107_ (##car _e1208412104_))
                                       (_tl1208612109_ (##cdr _e1208412104_)))
                                   (let ((_hd12112_ _hd1208512107_))
                                     (let ((_body12114_ _tl1208612109_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12112_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12114_))
                                           (_E1208012092_))))))
                               (_E1208012092_))))
                       (_E1208012092_)))))
            (let () (_E1207912116_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12047_)
      (let ((_e1204812055_ _stx12047_))
        (let ((_E1205012059_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1204812055_))))
          (let ((_E1204912073_
                 (lambda ()
                   (if (gx#stx-pair? _e1204812055_)
                       (let ((_e1205112063_ (gx#syntax-e _e1204812055_)))
                         (let ((_hd1205212066_ (##car _e1205112063_))
                               (_tl1205312068_ (##cdr _e1205112063_)))
                           (let ((_body12071_ _tl1205312068_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12071_))
                                 (_E1205012059_)))))
                       (_E1205012059_)))))
            (let () (_E1204912073_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12017_)
      (let ((_e1201812025_ _stx12017_))
        (let ((_E1202012029_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1201812025_))))
          (let ((_E1201912043_
                 (lambda ()
                   (if (gx#stx-pair? _e1201812025_)
                       (let ((_e1202112033_ (gx#syntax-e _e1201812025_)))
                         (let ((_hd1202212036_ (##car _e1202112033_))
                               (_tl1202312038_ (##cdr _e1202112033_)))
                           (let ((_body12041_ _tl1202312038_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12041_))
                                 (_E1202012029_)))))
                       (_E1202012029_)))))
            (let () (_E1201912043_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx11942_)
      (let ((_generate11944_
             (lambda (_hd11974_)
               (let ((_e1197511985_ _hd11974_))
                 (let ((_E1197711989_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1197511985_))))
                   (let ((_E1197612013_
                          (lambda ()
                            (if (gx#stx-pair? _e1197511985_)
                                (let ((_e1197811993_
                                       (gx#syntax-e _e1197511985_)))
                                  (let ((_hd1197911996_ (##car _e1197811993_))
                                        (_tl1198011998_ (##cdr _e1197811993_)))
                                    (let ((_id12001_ _hd1197911996_))
                                      (if (gx#stx-pair? _tl1198011998_)
                                          (let ((_e1198112003_
                                                 (gx#syntax-e _tl1198011998_)))
                                            (let ((_hd1198212006_
                                                   (##car _e1198112003_))
                                                  (_tl1198312008_
                                                   (##cdr _e1198112003_)))
                                              (let ((_eid12011_
                                                     _hd1198212006_))
                                                (if (gx#stx-null?
                                                     _tl1198312008_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12001_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12011_)
                            '()))
                (_E1197711989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1197711989_)))))
                                          (_E1197711989_)))))
                                (_E1197711989_)))))
                     (let () (_E1197612013_))))))))
        (let ((_e1194511952_ _stx11942_))
          (let ((_E1194711956_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1194511952_))))
            (let ((_E1194611970_
                   (lambda ()
                     (if (gx#stx-pair? _e1194511952_)
                         (let ((_e1194811960_ (gx#syntax-e _e1194511952_)))
                           (let ((_hd1194911963_ (##car _e1194811960_))
                                 (_tl1195011965_ (##cdr _e1194811960_)))
                             (let ((_body11968_ _tl1195011965_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate11944_
                                          _body11968_))
                                   (_E1194711956_)))))
                         (_E1194711956_)))))
              (let () (_E1194611970_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx11888_)
      (let ((_e1188911902_ _stx11888_))
        (let ((_E1189111906_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1188911902_))))
          (let ((_E1189011938_
                 (lambda ()
                   (if (gx#stx-pair? _e1188911902_)
                       (let ((_e1189211910_ (gx#syntax-e _e1188911902_)))
                         (let ((_hd1189311913_ (##car _e1189211910_))
                               (_tl1189411915_ (##cdr _e1189211910_)))
                           (if (gx#stx-pair? _tl1189411915_)
                               (let ((_e1189511918_
                                      (gx#syntax-e _tl1189411915_)))
                                 (let ((_hd1189611921_ (##car _e1189511918_))
                                       (_tl1189711923_ (##cdr _e1189511918_)))
                                   (let ((_hd11926_ _hd1189611921_))
                                     (if (gx#stx-pair? _tl1189711923_)
                                         (let ((_e1189811928_
                                                (gx#syntax-e _tl1189711923_)))
                                           (let ((_hd1189911931_
                                                  (##car _e1189811928_))
                                                 (_tl1190011933_
                                                  (##cdr _e1189811928_)))
                                             (let ((_expr11936_
                                                    _hd1189911931_))
                                               (if (gx#stx-null?
                                                    _tl1190011933_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd11926_)
                           (cons (gx#core-compile-top-syntax _expr11936_)
                                 '())))
               (_E1189111906_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1189111906_)))))
                                         (_E1189111906_)))))
                               (_E1189111906_))))
                       (_E1189111906_)))))
            (let () (_E1189011938_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx11833_)
      (let ((_e1183411847_ _stx11833_))
        (let ((_E1183611851_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1183411847_))))
          (let ((_E1183511884_
                 (lambda ()
                   (if (gx#stx-pair? _e1183411847_)
                       (let ((_e1183711855_ (gx#syntax-e _e1183411847_)))
                         (let ((_hd1183811858_ (##car _e1183711855_))
                               (_tl1183911860_ (##cdr _e1183711855_)))
                           (if (gx#stx-pair? _tl1183911860_)
                               (let ((_e1184011863_
                                      (gx#syntax-e _tl1183911860_)))
                                 (let ((_hd1184111866_ (##car _e1184011863_))
                                       (_tl1184211868_ (##cdr _e1184011863_)))
                                   (let ((_hd11871_ _hd1184111866_))
                                     (if (gx#stx-pair? _tl1184211868_)
                                         (let ((_e1184311873_
                                                (gx#syntax-e _tl1184211868_)))
                                           (let ((_hd1184411876_
                                                  (##car _e1184311873_))
                                                 (_tl1184511878_
                                                  (##cdr _e1184311873_)))
                                             (let ((_expr11881_
                                                    _hd1184411876_))
                                               (if (gx#stx-null?
                                                    _tl1184511878_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11871_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr11881_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1183611851_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1183611851_)))))
                                         (_E1183611851_)))))
                               (_E1183611851_))))
                       (_E1183611851_)))))
            (let () (_E1183511884_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx11779_)
      (let ((_e1178011793_ _stx11779_))
        (let ((_E1178211797_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1178011793_))))
          (let ((_E1178111829_
                 (lambda ()
                   (if (gx#stx-pair? _e1178011793_)
                       (let ((_e1178311801_ (gx#syntax-e _e1178011793_)))
                         (let ((_hd1178411804_ (##car _e1178311801_))
                               (_tl1178511806_ (##cdr _e1178311801_)))
                           (if (gx#stx-pair? _tl1178511806_)
                               (let ((_e1178611809_
                                      (gx#syntax-e _tl1178511806_)))
                                 (let ((_hd1178711812_ (##car _e1178611809_))
                                       (_tl1178811814_ (##cdr _e1178611809_)))
                                   (let ((_hd11817_ _hd1178711812_))
                                     (if (gx#stx-pair? _tl1178811814_)
                                         (let ((_e1178911819_
                                                (gx#syntax-e _tl1178811814_)))
                                           (let ((_hd1179011822_
                                                  (##car _e1178911819_))
                                                 (_tl1179111824_
                                                  (##cdr _e1178911819_)))
                                             (let ((_alias-id11827_
                                                    _hd1179011822_))
                                               (if (gx#stx-null?
                                                    _tl1179111824_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11817_)
                           (cons (gx#core-quote-syntax__0 _alias-id11827_)
                                 '())))
               (_E1178211797_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1178211797_)))))
                                         (_E1178211797_)))))
                               (_E1178211797_))))
                       (_E1178211797_)))))
            (let () (_E1178111829_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx11725_)
      (let ((_e1172611739_ _stx11725_))
        (let ((_E1172811743_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1172611739_))))
          (let ((_E1172711775_
                 (lambda ()
                   (if (gx#stx-pair? _e1172611739_)
                       (let ((_e1172911747_ (gx#syntax-e _e1172611739_)))
                         (let ((_hd1173011750_ (##car _e1172911747_))
                               (_tl1173111752_ (##cdr _e1172911747_)))
                           (if (gx#stx-pair? _tl1173111752_)
                               (let ((_e1173211755_
                                      (gx#syntax-e _tl1173111752_)))
                                 (let ((_hd1173311758_ (##car _e1173211755_))
                                       (_tl1173411760_ (##cdr _e1173211755_)))
                                   (let ((_id11763_ _hd1173311758_))
                                     (if (gx#stx-pair? _tl1173411760_)
                                         (let ((_e1173511765_
                                                (gx#syntax-e _tl1173411760_)))
                                           (let ((_hd1173611768_
                                                  (##car _e1173511765_))
                                                 (_tl1173711770_
                                                  (##cdr _e1173511765_)))
                                             (let ((_binding-id11773_
                                                    _hd1173611768_))
                                               (if (gx#stx-null?
                                                    _tl1173711770_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11763_)
                           (cons (gx#core-quote-syntax__0 _binding-id11773_)
                                 '())))
               (_E1172811743_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1172811743_)))))
                                         (_E1172811743_)))))
                               (_E1172811743_))))
                       (_E1172811743_)))))
            (let () (_E1172711775_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11695_)
      (let ((_e1169611703_ _stx11695_))
        (let ((_E1169811707_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1169611703_))))
          (let ((_E1169711721_
                 (lambda ()
                   (if (gx#stx-pair? _e1169611703_)
                       (let ((_e1169911711_ (gx#syntax-e _e1169611703_)))
                         (let ((_hd1170011714_ (##car _e1169911711_))
                               (_tl1170111716_ (##cdr _e1169911711_)))
                           (let ((_decls11719_ _tl1170111716_))
                             (if '#t
                                 (cons '%#declare _decls11719_)
                                 (_E1169811707_)))))
                       (_E1169811707_)))))
            (let () (_E1169711721_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11665_)
      (let ((_e1166611673_ _stx11665_))
        (let ((_E1166811677_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1166611673_))))
          (let ((_E1166711691_
                 (lambda ()
                   (if (gx#stx-pair? _e1166611673_)
                       (let ((_e1166911681_ (gx#syntax-e _e1166611673_)))
                         (let ((_hd1167011684_ (##car _e1166911681_))
                               (_tl1167111686_ (##cdr _e1166911681_)))
                           (let ((_clause11689_ _tl1167111686_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11689_))
                                 (_E1166811677_)))))
                       (_E1166811677_)))))
            (let () (_E1166711691_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11622_)
      (let ((_e1162311633_ _stx11622_))
        (let ((_E1162511637_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1162311633_))))
          (let ((_E1162411661_
                 (lambda ()
                   (if (gx#stx-pair? _e1162311633_)
                       (let ((_e1162611641_ (gx#syntax-e _e1162311633_)))
                         (let ((_hd1162711644_ (##car _e1162611641_))
                               (_tl1162811646_ (##cdr _e1162611641_)))
                           (let ((_hd11649_ _hd1162711644_))
                             (if (gx#stx-pair? _tl1162811646_)
                                 (let ((_e1162911651_
                                        (gx#syntax-e _tl1162811646_)))
                                   (let ((_hd1163011654_ (##car _e1162911651_))
                                         (_tl1163111656_
                                          (##cdr _e1162911651_)))
                                     (let ((_body11659_ _hd1163011654_))
                                       (if (gx#stx-null? _tl1163111656_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11649_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11659_)
                                                           '()))
                                               (_E1162511637_))
                                           (_E1162511637_)))))
                                 (_E1162511637_)))))
                       (_E1162511637_)))))
            (let () (_E1162411661_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11592_)
      (let ((_e1159311600_ _stx11592_))
        (let ((_E1159511604_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1159311600_))))
          (let ((_E1159411618_
                 (lambda ()
                   (if (gx#stx-pair? _e1159311600_)
                       (let ((_e1159611608_ (gx#syntax-e _e1159311600_)))
                         (let ((_hd1159711611_ (##car _e1159611608_))
                               (_tl1159811613_ (##cdr _e1159611608_)))
                           (let ((_clauses11616_ _tl1159811613_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11616_))
                                 (_E1159511604_)))))
                       (_E1159511604_)))))
            (let () (_E1159411618_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11525
      (lambda (_stx11527_ _form11528_)
        (let ((_e1152911542_ _stx11527_))
          (let ((_E1153111546_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1152911542_))))
            (let ((_E1153011578_
                   (lambda ()
                     (if (gx#stx-pair? _e1152911542_)
                         (let ((_e1153211550_ (gx#syntax-e _e1152911542_)))
                           (let ((_hd1153311553_ (##car _e1153211550_))
                                 (_tl1153411555_ (##cdr _e1153211550_)))
                             (if (gx#stx-pair? _tl1153411555_)
                                 (let ((_e1153511558_
                                        (gx#syntax-e _tl1153411555_)))
                                   (let ((_hd1153611561_ (##car _e1153511558_))
                                         (_tl1153711563_
                                          (##cdr _e1153511558_)))
                                     (let ((_hd11566_ _hd1153611561_))
                                       (if (gx#stx-pair? _tl1153711563_)
                                           (let ((_e1153811568_
                                                  (gx#syntax-e
                                                   _tl1153711563_)))
                                             (let ((_hd1153911571_
                                                    (##car _e1153811568_))
                                                   (_tl1154011573_
                                                    (##cdr _e1153811568_)))
                                               (let ((_body11576_
                                                      _hd1153911571_))
                                                 (if (gx#stx-null?
                                                      _tl1154011573_)
                                                     (if '#t
                                                         (cons _form11528_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11566_)
                             (cons (gx#core-compile-top-syntax _body11576_)
                                   '())))
                 (_E1153111546_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1153111546_)))))
                                           (_E1153111546_)))))
                                 (_E1153111546_))))
                         (_E1153111546_)))))
              (let () (_E1153011578_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11585_)
          (let ((_form11587_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11525
             _stx11585_
             _form11587_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12313_
          (let ((_g12312_ (length _g12313_)))
            (cond ((fx= _g12312_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12313_))
                  ((fx= _g12312_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11525
                          _g12313_))
                  (else (error "No clause matching arguments" _g12313_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11524_)
      (gx#core-compile-top-let-values%__opt-lambda11525
       _stx11524_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11522_)
      (gx#core-compile-top-let-values%__opt-lambda11525
       _stx11522_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11481_)
      (let ((_e1148211492_ _stx11481_))
        (let ((_E1148411496_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1148211492_))))
          (let ((_E1148311518_
                 (lambda ()
                   (if (gx#stx-pair? _e1148211492_)
                       (let ((_e1148511500_ (gx#syntax-e _e1148211492_)))
                         (let ((_hd1148611503_ (##car _e1148511500_))
                               (_tl1148711505_ (##cdr _e1148511500_)))
                           (if (gx#stx-pair? _tl1148711505_)
                               (let ((_e1148811508_
                                      (gx#syntax-e _tl1148711505_)))
                                 (let ((_hd1148911511_ (##car _e1148811508_))
                                       (_tl1149011513_ (##cdr _e1148811508_)))
                                   (let ((_e11516_ _hd1148911511_))
                                     (if (gx#stx-null? _tl1149011513_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11516_)
                                                         '()))
                                             (_E1148411496_))
                                         (_E1148411496_)))))
                               (_E1148411496_))))
                       (_E1148411496_)))))
            (let () (_E1148311518_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11440_)
      (let ((_e1144111451_ _stx11440_))
        (let ((_E1144311455_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1144111451_))))
          (let ((_E1144211477_
                 (lambda ()
                   (if (gx#stx-pair? _e1144111451_)
                       (let ((_e1144411459_ (gx#syntax-e _e1144111451_)))
                         (let ((_hd1144511462_ (##car _e1144411459_))
                               (_tl1144611464_ (##cdr _e1144411459_)))
                           (if (gx#stx-pair? _tl1144611464_)
                               (let ((_e1144711467_
                                      (gx#syntax-e _tl1144611464_)))
                                 (let ((_hd1144811470_ (##car _e1144711467_))
                                       (_tl1144911472_ (##cdr _e1144711467_)))
                                   (let ((_e11475_ _hd1144811470_))
                                     (if (gx#stx-null? _tl1144911472_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11475_)
                                                         '()))
                                             (_E1144311455_))
                                         (_E1144311455_)))))
                               (_E1144311455_))))
                       (_E1144311455_)))))
            (let () (_E1144211477_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11397_)
      (let ((_e1139811408_ _stx11397_))
        (let ((_E1140011412_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1139811408_))))
          (let ((_E1139911436_
                 (lambda ()
                   (if (gx#stx-pair? _e1139811408_)
                       (let ((_e1140111416_ (gx#syntax-e _e1139811408_)))
                         (let ((_hd1140211419_ (##car _e1140111416_))
                               (_tl1140311421_ (##cdr _e1140111416_)))
                           (if (gx#stx-pair? _tl1140311421_)
                               (let ((_e1140411424_
                                      (gx#syntax-e _tl1140311421_)))
                                 (let ((_hd1140511427_ (##car _e1140411424_))
                                       (_tl1140611429_ (##cdr _e1140411424_)))
                                   (let ((_rator11432_ _hd1140511427_))
                                     (let ((_args11434_ _tl1140611429_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11432_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11434_))
                                           (_E1140011412_))))))
                               (_E1140011412_))))
                       (_E1140011412_)))))
            (let () (_E1139911436_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11330_)
      (let ((_e1133111347_ _stx11330_))
        (let ((_E1133311351_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1133111347_))))
          (let ((_E1133211393_
                 (lambda ()
                   (if (gx#stx-pair? _e1133111347_)
                       (let ((_e1133411355_ (gx#syntax-e _e1133111347_)))
                         (let ((_hd1133511358_ (##car _e1133411355_))
                               (_tl1133611360_ (##cdr _e1133411355_)))
                           (if (gx#stx-pair? _tl1133611360_)
                               (let ((_e1133711363_
                                      (gx#syntax-e _tl1133611360_)))
                                 (let ((_hd1133811366_ (##car _e1133711363_))
                                       (_tl1133911368_ (##cdr _e1133711363_)))
                                   (let ((_test11371_ _hd1133811366_))
                                     (if (gx#stx-pair? _tl1133911368_)
                                         (let ((_e1134011373_
                                                (gx#syntax-e _tl1133911368_)))
                                           (let ((_hd1134111376_
                                                  (##car _e1134011373_))
                                                 (_tl1134211378_
                                                  (##cdr _e1134011373_)))
                                             (let ((_K11381_ _hd1134111376_))
                                               (if (gx#stx-pair?
                                                    _tl1134211378_)
                                                   (let ((_e1134311383_
                                                          (gx#syntax-e
                                                           _tl1134211378_)))
                                                     (let ((_hd1134411386_
                                                            (##car _e1134311383_))
                                                           (_tl1134511388_
                                                            (##cdr _e1134311383_)))
                                                       (let ((_E11391_
                                                              _hd1134411386_))
                                                         (if (gx#stx-null?
                                                              _tl1134511388_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11371_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11381_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11391_)
                                                 '()))))
                         (_E1133311351_))
                     (_E1133311351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1133311351_)))))
                                         (_E1133311351_)))))
                               (_E1133311351_))))
                       (_E1133311351_)))))
            (let () (_E1133211393_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11289_)
      (let ((_e1129011300_ _stx11289_))
        (let ((_E1129211304_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1129011300_))))
          (let ((_E1129111326_
                 (lambda ()
                   (if (gx#stx-pair? _e1129011300_)
                       (let ((_e1129311308_ (gx#syntax-e _e1129011300_)))
                         (let ((_hd1129411311_ (##car _e1129311308_))
                               (_tl1129511313_ (##cdr _e1129311308_)))
                           (if (gx#stx-pair? _tl1129511313_)
                               (let ((_e1129611316_
                                      (gx#syntax-e _tl1129511313_)))
                                 (let ((_hd1129711319_ (##car _e1129611316_))
                                       (_tl1129811321_ (##cdr _e1129611316_)))
                                   (let ((_id11324_ _hd1129711319_))
                                     (if (gx#stx-null? _tl1129811321_)
                                         (if (gx#identifier? _id11324_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11324_)
                                                         '()))
                                             (_E1129211304_))
                                         (_E1129211304_)))))
                               (_E1129211304_))))
                       (_E1129211304_)))))
            (let () (_E1129111326_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11235_)
      (let ((_e1123611249_ _stx11235_))
        (let ((_E1123811253_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1123611249_))))
          (let ((_E1123711285_
                 (lambda ()
                   (if (gx#stx-pair? _e1123611249_)
                       (let ((_e1123911257_ (gx#syntax-e _e1123611249_)))
                         (let ((_hd1124011260_ (##car _e1123911257_))
                               (_tl1124111262_ (##cdr _e1123911257_)))
                           (if (gx#stx-pair? _tl1124111262_)
                               (let ((_e1124211265_
                                      (gx#syntax-e _tl1124111262_)))
                                 (let ((_hd1124311268_ (##car _e1124211265_))
                                       (_tl1124411270_ (##cdr _e1124211265_)))
                                   (let ((_id11273_ _hd1124311268_))
                                     (if (gx#stx-pair? _tl1124411270_)
                                         (let ((_e1124511275_
                                                (gx#syntax-e _tl1124411270_)))
                                           (let ((_hd1124611278_
                                                  (##car _e1124511275_))
                                                 (_tl1124711280_
                                                  (##cdr _e1124511275_)))
                                             (let ((_expr11283_
                                                    _hd1124611278_))
                                               (if (gx#stx-null?
                                                    _tl1124711280_)
                                                   (if (gx#identifier?
                                                        _id11273_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11273_)
                           (cons (gx#core-compile-top-syntax _expr11283_)
                                 '())))
               (_E1123811253_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1123811253_)))))
                                         (_E1123811253_)))))
                               (_E1123811253_))))
                       (_E1123811253_)))))
            (let () (_E1123711285_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11230_)
      (let ((_$e11232_ (gx#resolve-identifier__0 _id11230_)))
        (if _$e11232_
            (##structure-ref _$e11232_ '1 gx#binding::t '#f)
            _id11230_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11228_)
      (if (gx#identifier? _hd11228_)
          (gx#core-compile-top-runtime-ref _hd11228_)
          '#f))))
