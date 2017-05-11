(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx11058_)
      (let ((_e1105911066_ _stx11058_))
        (let ((_E1106111070_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1105911066_))))
          (let ((_E1106011084_
                 (lambda ()
                   (if (gx#stx-pair? _e1105911066_)
                       (let ((_e1106211074_ (gx#syntax-e _e1105911066_)))
                         (let ((_hd1106311077_ (##car _e1106211074_))
                               (_tl1106411079_ (##cdr _e1106211074_)))
                           (let ((_form11082_ _hd1106311077_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form11082_)
                                  'compile-top-syntax
                                  _stx11058_)
                                 (_E1106111070_)))))
                       (_E1106111070_)))))
            (let () (_E1106011084_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self11018_ _stx11019_)
      (let ((_self1102011028_ _self11018_))
        (let ((_E1102211032_
               (lambda () (error '"No clause matching" _self1102011028_))))
          (let ((_K1102311044_
                 (lambda (_K11035_)
                   (let ((_$e11037_ (gx#stx-source _stx11019_)))
                     (if _$e11037_
                         ((lambda (_g1103911041_)
                            (gx#stx-wrap-source
                             (_K11035_ _stx11019_)
                             _g1103911041_))
                          _$e11037_)
                         (_K11035_ _stx11019_))))))
            (if (struct-instance? gx#core-expander::t _self1102011028_)
                (let ((_e1102411047_ (##vector-ref _self1102011028_ '1)))
                  (let ((_e1102511050_ (##vector-ref _self1102011028_ '2)))
                    (let ((_e1102611053_ (##vector-ref _self1102011028_ '3)))
                      (let ((_K11056_ _e1102611053_))
                        (_K1102311044_ _K11056_)))))
                (_E1102211032_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx11016_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx11016_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx10986_)
      (let ((_e1098710994_ _stx10986_))
        (let ((_E1098910998_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1098710994_))))
          (let ((_E1098811012_
                 (lambda ()
                   (if (gx#stx-pair? _e1098710994_)
                       (let ((_e1099011002_ (gx#syntax-e _e1098710994_)))
                         (let ((_hd1099111005_ (##car _e1099011002_))
                               (_tl1099211007_ (##cdr _e1099011002_)))
                           (let ((_body11010_ _tl1099211007_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body11010_))
                                 (_E1098910998_)))))
                       (_E1098910998_)))))
            (let () (_E1098811012_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx10955_)
      (let ((_e1095610963_ _stx10955_))
        (let ((_E1095810967_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1095610963_))))
          (let ((_E1095710982_
                 (lambda ()
                   (if (gx#stx-pair? _e1095610963_)
                       (let ((_e1095910971_ (gx#syntax-e _e1095610963_)))
                         (let ((_hd1096010974_ (##car _e1095910971_))
                               (_tl1096110976_ (##cdr _e1095910971_)))
                           (let ((_body10979_ _tl1096110976_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body10979_))
                                        gx#current-expander-phi
                                        (fx1+ (gx#current-expander-phi))))
                                 (_E1095810967_)))))
                       (_E1095810967_)))))
            (let () (_E1095710982_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx10925_)
      (let ((_e1092610933_ _stx10925_))
        (let ((_E1092810937_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1092610933_))))
          (let ((_E1092710951_
                 (lambda ()
                   (if (gx#stx-pair? _e1092610933_)
                       (let ((_e1092910941_ (gx#syntax-e _e1092610933_)))
                         (let ((_hd1093010944_ (##car _e1092910941_))
                               (_tl1093110946_ (##cdr _e1092910941_)))
                           (let ((_body10949_ _tl1093110946_))
                             (if '#t
                                 (cons '%#begin-foreign _body10949_)
                                 (_E1092810937_)))))
                       (_E1092810937_)))))
            (let () (_E1092710951_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx10895_)
      (let ((_e1089610903_ _stx10895_))
        (let ((_E1089810907_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1089610903_))))
          (let ((_E1089710921_
                 (lambda ()
                   (if (gx#stx-pair? _e1089610903_)
                       (let ((_e1089910911_ (gx#syntax-e _e1089610903_)))
                         (let ((_hd1090010914_ (##car _e1089910911_))
                               (_tl1090110916_ (##cdr _e1089910911_)))
                           (let ((_body10919_ _tl1090110916_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body10919_))
                                 (_E1089810907_)))))
                       (_E1089810907_)))))
            (let () (_E1089710921_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx10852_)
      (let ((_e1085310863_ _stx10852_))
        (let ((_E1085510867_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1085310863_))))
          (let ((_E1085410891_
                 (lambda ()
                   (if (gx#stx-pair? _e1085310863_)
                       (let ((_e1085610871_ (gx#syntax-e _e1085310863_)))
                         (let ((_hd1085710874_ (##car _e1085610871_))
                               (_tl1085810876_ (##cdr _e1085610871_)))
                           (if (gx#stx-pair? _tl1085810876_)
                               (let ((_e1085910879_
                                      (gx#syntax-e _tl1085810876_)))
                                 (let ((_hd1086010882_ (##car _e1085910879_))
                                       (_tl1086110884_ (##cdr _e1085910879_)))
                                   (let ((_hd10887_ _hd1086010882_))
                                     (let ((_body10889_ _tl1086110884_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd10887_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body10889_))
                                           (_E1085510867_))))))
                               (_E1085510867_))))
                       (_E1085510867_)))))
            (let () (_E1085410891_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx10822_)
      (let ((_e1082310830_ _stx10822_))
        (let ((_E1082510834_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1082310830_))))
          (let ((_E1082410848_
                 (lambda ()
                   (if (gx#stx-pair? _e1082310830_)
                       (let ((_e1082610838_ (gx#syntax-e _e1082310830_)))
                         (let ((_hd1082710841_ (##car _e1082610838_))
                               (_tl1082810843_ (##cdr _e1082610838_)))
                           (let ((_body10846_ _tl1082810843_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body10846_))
                                 (_E1082510834_)))))
                       (_E1082510834_)))))
            (let () (_E1082410848_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx10792_)
      (let ((_e1079310800_ _stx10792_))
        (let ((_E1079510804_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1079310800_))))
          (let ((_E1079410818_
                 (lambda ()
                   (if (gx#stx-pair? _e1079310800_)
                       (let ((_e1079610808_ (gx#syntax-e _e1079310800_)))
                         (let ((_hd1079710811_ (##car _e1079610808_))
                               (_tl1079810813_ (##cdr _e1079610808_)))
                           (let ((_body10816_ _tl1079810813_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body10816_))
                                 (_E1079510804_)))))
                       (_E1079510804_)))))
            (let () (_E1079410818_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx10717_)
      (let ((_generate10719_
             (lambda (_hd10749_)
               (let ((_e1075010760_ _hd10749_))
                 (let ((_E1075210764_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1075010760_))))
                   (let ((_E1075110788_
                          (lambda ()
                            (if (gx#stx-pair? _e1075010760_)
                                (let ((_e1075310768_
                                       (gx#syntax-e _e1075010760_)))
                                  (let ((_hd1075410771_ (##car _e1075310768_))
                                        (_tl1075510773_ (##cdr _e1075310768_)))
                                    (let ((_id10776_ _hd1075410771_))
                                      (if (gx#stx-pair? _tl1075510773_)
                                          (let ((_e1075610778_
                                                 (gx#syntax-e _tl1075510773_)))
                                            (let ((_hd1075710781_
                                                   (##car _e1075610778_))
                                                  (_tl1075810783_
                                                   (##cdr _e1075610778_)))
                                              (let ((_eid10786_
                                                     _hd1075710781_))
                                                (if (gx#stx-null?
                                                     _tl1075810783_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id10776_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid10786_)
                            '()))
                (_E1075210764_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1075210764_)))))
                                          (_E1075210764_)))))
                                (_E1075210764_)))))
                     (let () (_E1075110788_))))))))
        (let ((_e1072010727_ _stx10717_))
          (let ((_E1072210731_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1072010727_))))
            (let ((_E1072110745_
                   (lambda ()
                     (if (gx#stx-pair? _e1072010727_)
                         (let ((_e1072310735_ (gx#syntax-e _e1072010727_)))
                           (let ((_hd1072410738_ (##car _e1072310735_))
                                 (_tl1072510740_ (##cdr _e1072310735_)))
                             (let ((_body10743_ _tl1072510740_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate10719_
                                          _body10743_))
                                   (_E1072210731_)))))
                         (_E1072210731_)))))
              (let () (_E1072110745_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx10663_)
      (let ((_e1066410677_ _stx10663_))
        (let ((_E1066610681_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1066410677_))))
          (let ((_E1066510713_
                 (lambda ()
                   (if (gx#stx-pair? _e1066410677_)
                       (let ((_e1066710685_ (gx#syntax-e _e1066410677_)))
                         (let ((_hd1066810688_ (##car _e1066710685_))
                               (_tl1066910690_ (##cdr _e1066710685_)))
                           (if (gx#stx-pair? _tl1066910690_)
                               (let ((_e1067010693_
                                      (gx#syntax-e _tl1066910690_)))
                                 (let ((_hd1067110696_ (##car _e1067010693_))
                                       (_tl1067210698_ (##cdr _e1067010693_)))
                                   (let ((_hd10701_ _hd1067110696_))
                                     (if (gx#stx-pair? _tl1067210698_)
                                         (let ((_e1067310703_
                                                (gx#syntax-e _tl1067210698_)))
                                           (let ((_hd1067410706_
                                                  (##car _e1067310703_))
                                                 (_tl1067510708_
                                                  (##cdr _e1067310703_)))
                                             (let ((_expr10711_
                                                    _hd1067410706_))
                                               (if (gx#stx-null?
                                                    _tl1067510708_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd10701_)
                           (cons (gx#core-compile-top-syntax _expr10711_)
                                 '())))
               (_E1066610681_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1066610681_)))))
                                         (_E1066610681_)))))
                               (_E1066610681_))))
                       (_E1066610681_)))))
            (let () (_E1066510713_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx10608_)
      (let ((_e1060910622_ _stx10608_))
        (let ((_E1061110626_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1060910622_))))
          (let ((_E1061010659_
                 (lambda ()
                   (if (gx#stx-pair? _e1060910622_)
                       (let ((_e1061210630_ (gx#syntax-e _e1060910622_)))
                         (let ((_hd1061310633_ (##car _e1061210630_))
                               (_tl1061410635_ (##cdr _e1061210630_)))
                           (if (gx#stx-pair? _tl1061410635_)
                               (let ((_e1061510638_
                                      (gx#syntax-e _tl1061410635_)))
                                 (let ((_hd1061610641_ (##car _e1061510638_))
                                       (_tl1061710643_ (##cdr _e1061510638_)))
                                   (let ((_hd10646_ _hd1061610641_))
                                     (if (gx#stx-pair? _tl1061710643_)
                                         (let ((_e1061810648_
                                                (gx#syntax-e _tl1061710643_)))
                                           (let ((_hd1061910651_
                                                  (##car _e1061810648_))
                                                 (_tl1062010653_
                                                  (##cdr _e1061810648_)))
                                             (let ((_expr10656_
                                                    _hd1061910651_))
                                               (if (gx#stx-null?
                                                    _tl1062010653_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10646_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr10656_))
                                  gx#current-expander-phi
                                  (fx1+ (gx#current-expander-phi)))
                                 '())))
               (_E1061110626_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1061110626_)))))
                                         (_E1061110626_)))))
                               (_E1061110626_))))
                       (_E1061110626_)))))
            (let () (_E1061010659_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx10554_)
      (let ((_e1055510568_ _stx10554_))
        (let ((_E1055710572_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1055510568_))))
          (let ((_E1055610604_
                 (lambda ()
                   (if (gx#stx-pair? _e1055510568_)
                       (let ((_e1055810576_ (gx#syntax-e _e1055510568_)))
                         (let ((_hd1055910579_ (##car _e1055810576_))
                               (_tl1056010581_ (##cdr _e1055810576_)))
                           (if (gx#stx-pair? _tl1056010581_)
                               (let ((_e1056110584_
                                      (gx#syntax-e _tl1056010581_)))
                                 (let ((_hd1056210587_ (##car _e1056110584_))
                                       (_tl1056310589_ (##cdr _e1056110584_)))
                                   (let ((_hd10592_ _hd1056210587_))
                                     (if (gx#stx-pair? _tl1056310589_)
                                         (let ((_e1056410594_
                                                (gx#syntax-e _tl1056310589_)))
                                           (let ((_hd1056510597_
                                                  (##car _e1056410594_))
                                                 (_tl1056610599_
                                                  (##cdr _e1056410594_)))
                                             (let ((_alias-id10602_
                                                    _hd1056510597_))
                                               (if (gx#stx-null?
                                                    _tl1056610599_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10592_)
                           (cons (gx#core-quote-syntax__0 _alias-id10602_)
                                 '())))
               (_E1055710572_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1055710572_)))))
                                         (_E1055710572_)))))
                               (_E1055710572_))))
                       (_E1055710572_)))))
            (let () (_E1055610604_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx10500_)
      (let ((_e1050110514_ _stx10500_))
        (let ((_E1050310518_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1050110514_))))
          (let ((_E1050210550_
                 (lambda ()
                   (if (gx#stx-pair? _e1050110514_)
                       (let ((_e1050410522_ (gx#syntax-e _e1050110514_)))
                         (let ((_hd1050510525_ (##car _e1050410522_))
                               (_tl1050610527_ (##cdr _e1050410522_)))
                           (if (gx#stx-pair? _tl1050610527_)
                               (let ((_e1050710530_
                                      (gx#syntax-e _tl1050610527_)))
                                 (let ((_hd1050810533_ (##car _e1050710530_))
                                       (_tl1050910535_ (##cdr _e1050710530_)))
                                   (let ((_id10538_ _hd1050810533_))
                                     (if (gx#stx-pair? _tl1050910535_)
                                         (let ((_e1051010540_
                                                (gx#syntax-e _tl1050910535_)))
                                           (let ((_hd1051110543_
                                                  (##car _e1051010540_))
                                                 (_tl1051210545_
                                                  (##cdr _e1051010540_)))
                                             (let ((_binding-id10548_
                                                    _hd1051110543_))
                                               (if (gx#stx-null?
                                                    _tl1051210545_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10538_)
                           (cons (gx#core-quote-syntax__0 _binding-id10548_)
                                 '())))
               (_E1050310518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1050310518_)))))
                                         (_E1050310518_)))))
                               (_E1050310518_))))
                       (_E1050310518_)))))
            (let () (_E1050210550_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx10470_)
      (let ((_e1047110478_ _stx10470_))
        (let ((_E1047310482_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1047110478_))))
          (let ((_E1047210496_
                 (lambda ()
                   (if (gx#stx-pair? _e1047110478_)
                       (let ((_e1047410486_ (gx#syntax-e _e1047110478_)))
                         (let ((_hd1047510489_ (##car _e1047410486_))
                               (_tl1047610491_ (##cdr _e1047410486_)))
                           (let ((_decls10494_ _tl1047610491_))
                             (if '#t
                                 (cons '%#declare _decls10494_)
                                 (_E1047310482_)))))
                       (_E1047310482_)))))
            (let () (_E1047210496_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx10440_)
      (let ((_e1044110448_ _stx10440_))
        (let ((_E1044310452_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1044110448_))))
          (let ((_E1044210466_
                 (lambda ()
                   (if (gx#stx-pair? _e1044110448_)
                       (let ((_e1044410456_ (gx#syntax-e _e1044110448_)))
                         (let ((_hd1044510459_ (##car _e1044410456_))
                               (_tl1044610461_ (##cdr _e1044410456_)))
                           (let ((_clause10464_ _tl1044610461_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause10464_))
                                 (_E1044310452_)))))
                       (_E1044310452_)))))
            (let () (_E1044210466_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx10397_)
      (let ((_e1039810408_ _stx10397_))
        (let ((_E1040010412_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1039810408_))))
          (let ((_E1039910436_
                 (lambda ()
                   (if (gx#stx-pair? _e1039810408_)
                       (let ((_e1040110416_ (gx#syntax-e _e1039810408_)))
                         (let ((_hd1040210419_ (##car _e1040110416_))
                               (_tl1040310421_ (##cdr _e1040110416_)))
                           (let ((_hd10424_ _hd1040210419_))
                             (if (gx#stx-pair? _tl1040310421_)
                                 (let ((_e1040410426_
                                        (gx#syntax-e _tl1040310421_)))
                                   (let ((_hd1040510429_ (##car _e1040410426_))
                                         (_tl1040610431_
                                          (##cdr _e1040410426_)))
                                     (let ((_body10434_ _hd1040510429_))
                                       (if (gx#stx-null? _tl1040610431_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd10424_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body10434_)
                                                           '()))
                                               (_E1040010412_))
                                           (_E1040010412_)))))
                                 (_E1040010412_)))))
                       (_E1040010412_)))))
            (let () (_E1039910436_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx10367_)
      (let ((_e1036810375_ _stx10367_))
        (let ((_E1037010379_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1036810375_))))
          (let ((_E1036910393_
                 (lambda ()
                   (if (gx#stx-pair? _e1036810375_)
                       (let ((_e1037110383_ (gx#syntax-e _e1036810375_)))
                         (let ((_hd1037210386_ (##car _e1037110383_))
                               (_tl1037310388_ (##cdr _e1037110383_)))
                           (let ((_clauses10391_ _tl1037310388_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses10391_))
                                 (_E1037010379_)))))
                       (_E1037010379_)))))
            (let () (_E1036910393_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda10300
      (lambda (_stx10302_ _form10303_)
        (let ((_e1030410317_ _stx10302_))
          (let ((_E1030610321_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1030410317_))))
            (let ((_E1030510353_
                   (lambda ()
                     (if (gx#stx-pair? _e1030410317_)
                         (let ((_e1030710325_ (gx#syntax-e _e1030410317_)))
                           (let ((_hd1030810328_ (##car _e1030710325_))
                                 (_tl1030910330_ (##cdr _e1030710325_)))
                             (if (gx#stx-pair? _tl1030910330_)
                                 (let ((_e1031010333_
                                        (gx#syntax-e _tl1030910330_)))
                                   (let ((_hd1031110336_ (##car _e1031010333_))
                                         (_tl1031210338_
                                          (##cdr _e1031010333_)))
                                     (let ((_hd10341_ _hd1031110336_))
                                       (if (gx#stx-pair? _tl1031210338_)
                                           (let ((_e1031310343_
                                                  (gx#syntax-e
                                                   _tl1031210338_)))
                                             (let ((_hd1031410346_
                                                    (##car _e1031310343_))
                                                   (_tl1031510348_
                                                    (##cdr _e1031310343_)))
                                               (let ((_body10351_
                                                      _hd1031410346_))
                                                 (if (gx#stx-null?
                                                      _tl1031510348_)
                                                     (if '#t
                                                         (cons _form10303_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd10341_)
                             (cons (gx#core-compile-top-syntax _body10351_)
                                   '())))
                 (_E1030610321_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1030610321_)))))
                                           (_E1030610321_)))))
                                 (_E1030610321_))))
                         (_E1030610321_)))))
              (let () (_E1030510353_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx10360_)
          (let ((_form10362_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda10300
             _stx10360_
             _form10362_))))
      (define gx#core-compile-top-let-values%
        (lambda _g11088_
          (let ((_g11087_ (length _g11088_)))
            (cond ((fx= _g11087_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g11088_))
                  ((fx= _g11087_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda10300
                          _g11088_))
                  (else (error "No clause matching arguments" _g11088_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx10299_)
      (gx#core-compile-top-let-values%__opt-lambda10300
       _stx10299_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx10297_)
      (gx#core-compile-top-let-values%__opt-lambda10300
       _stx10297_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx10256_)
      (let ((_e1025710267_ _stx10256_))
        (let ((_E1025910271_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1025710267_))))
          (let ((_E1025810293_
                 (lambda ()
                   (if (gx#stx-pair? _e1025710267_)
                       (let ((_e1026010275_ (gx#syntax-e _e1025710267_)))
                         (let ((_hd1026110278_ (##car _e1026010275_))
                               (_tl1026210280_ (##cdr _e1026010275_)))
                           (if (gx#stx-pair? _tl1026210280_)
                               (let ((_e1026310283_
                                      (gx#syntax-e _tl1026210280_)))
                                 (let ((_hd1026410286_ (##car _e1026310283_))
                                       (_tl1026510288_ (##cdr _e1026310283_)))
                                   (let ((_e10291_ _hd1026410286_))
                                     (if (gx#stx-null? _tl1026510288_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e10291_)
                                                         '()))
                                             (_E1025910271_))
                                         (_E1025910271_)))))
                               (_E1025910271_))))
                       (_E1025910271_)))))
            (let () (_E1025810293_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx10215_)
      (let ((_e1021610226_ _stx10215_))
        (let ((_E1021810230_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1021610226_))))
          (let ((_E1021710252_
                 (lambda ()
                   (if (gx#stx-pair? _e1021610226_)
                       (let ((_e1021910234_ (gx#syntax-e _e1021610226_)))
                         (let ((_hd1022010237_ (##car _e1021910234_))
                               (_tl1022110239_ (##cdr _e1021910234_)))
                           (if (gx#stx-pair? _tl1022110239_)
                               (let ((_e1022210242_
                                      (gx#syntax-e _tl1022110239_)))
                                 (let ((_hd1022310245_ (##car _e1022210242_))
                                       (_tl1022410247_ (##cdr _e1022210242_)))
                                   (let ((_e10250_ _hd1022310245_))
                                     (if (gx#stx-null? _tl1022410247_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e10250_)
                                                         '()))
                                             (_E1021810230_))
                                         (_E1021810230_)))))
                               (_E1021810230_))))
                       (_E1021810230_)))))
            (let () (_E1021710252_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx10172_)
      (let ((_e1017310183_ _stx10172_))
        (let ((_E1017510187_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1017310183_))))
          (let ((_E1017410211_
                 (lambda ()
                   (if (gx#stx-pair? _e1017310183_)
                       (let ((_e1017610191_ (gx#syntax-e _e1017310183_)))
                         (let ((_hd1017710194_ (##car _e1017610191_))
                               (_tl1017810196_ (##cdr _e1017610191_)))
                           (if (gx#stx-pair? _tl1017810196_)
                               (let ((_e1017910199_
                                      (gx#syntax-e _tl1017810196_)))
                                 (let ((_hd1018010202_ (##car _e1017910199_))
                                       (_tl1018110204_ (##cdr _e1017910199_)))
                                   (let ((_rator10207_ _hd1018010202_))
                                     (let ((_args10209_ _tl1018110204_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator10207_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args10209_))
                                           (_E1017510187_))))))
                               (_E1017510187_))))
                       (_E1017510187_)))))
            (let () (_E1017410211_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx10105_)
      (let ((_e1010610122_ _stx10105_))
        (let ((_E1010810126_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1010610122_))))
          (let ((_E1010710168_
                 (lambda ()
                   (if (gx#stx-pair? _e1010610122_)
                       (let ((_e1010910130_ (gx#syntax-e _e1010610122_)))
                         (let ((_hd1011010133_ (##car _e1010910130_))
                               (_tl1011110135_ (##cdr _e1010910130_)))
                           (if (gx#stx-pair? _tl1011110135_)
                               (let ((_e1011210138_
                                      (gx#syntax-e _tl1011110135_)))
                                 (let ((_hd1011310141_ (##car _e1011210138_))
                                       (_tl1011410143_ (##cdr _e1011210138_)))
                                   (let ((_test10146_ _hd1011310141_))
                                     (if (gx#stx-pair? _tl1011410143_)
                                         (let ((_e1011510148_
                                                (gx#syntax-e _tl1011410143_)))
                                           (let ((_hd1011610151_
                                                  (##car _e1011510148_))
                                                 (_tl1011710153_
                                                  (##cdr _e1011510148_)))
                                             (let ((_K10156_ _hd1011610151_))
                                               (if (gx#stx-pair?
                                                    _tl1011710153_)
                                                   (let ((_e1011810158_
                                                          (gx#syntax-e
                                                           _tl1011710153_)))
                                                     (let ((_hd1011910161_
                                                            (##car _e1011810158_))
                                                           (_tl1012010163_
                                                            (##cdr _e1011810158_)))
                                                       (let ((_E10166_
                                                              _hd1011910161_))
                                                         (if (gx#stx-null?
                                                              _tl1012010163_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test10146_)
                                     (cons (gx#core-compile-top-syntax
                                            _K10156_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E10166_)
                                                 '()))))
                         (_E1010810126_))
                     (_E1010810126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1010810126_)))))
                                         (_E1010810126_)))))
                               (_E1010810126_))))
                       (_E1010810126_)))))
            (let () (_E1010710168_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx10064_)
      (let ((_e1006510075_ _stx10064_))
        (let ((_E1006710079_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1006510075_))))
          (let ((_E1006610101_
                 (lambda ()
                   (if (gx#stx-pair? _e1006510075_)
                       (let ((_e1006810083_ (gx#syntax-e _e1006510075_)))
                         (let ((_hd1006910086_ (##car _e1006810083_))
                               (_tl1007010088_ (##cdr _e1006810083_)))
                           (if (gx#stx-pair? _tl1007010088_)
                               (let ((_e1007110091_
                                      (gx#syntax-e _tl1007010088_)))
                                 (let ((_hd1007210094_ (##car _e1007110091_))
                                       (_tl1007310096_ (##cdr _e1007110091_)))
                                   (let ((_id10099_ _hd1007210094_))
                                     (if (gx#stx-null? _tl1007310096_)
                                         (if (gx#identifier? _id10099_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id10099_)
                                                         '()))
                                             (_E1006710079_))
                                         (_E1006710079_)))))
                               (_E1006710079_))))
                       (_E1006710079_)))))
            (let () (_E1006610101_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx10010_)
      (let ((_e1001110024_ _stx10010_))
        (let ((_E1001310028_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1001110024_))))
          (let ((_E1001210060_
                 (lambda ()
                   (if (gx#stx-pair? _e1001110024_)
                       (let ((_e1001410032_ (gx#syntax-e _e1001110024_)))
                         (let ((_hd1001510035_ (##car _e1001410032_))
                               (_tl1001610037_ (##cdr _e1001410032_)))
                           (if (gx#stx-pair? _tl1001610037_)
                               (let ((_e1001710040_
                                      (gx#syntax-e _tl1001610037_)))
                                 (let ((_hd1001810043_ (##car _e1001710040_))
                                       (_tl1001910045_ (##cdr _e1001710040_)))
                                   (let ((_id10048_ _hd1001810043_))
                                     (if (gx#stx-pair? _tl1001910045_)
                                         (let ((_e1002010050_
                                                (gx#syntax-e _tl1001910045_)))
                                           (let ((_hd1002110053_
                                                  (##car _e1002010050_))
                                                 (_tl1002210055_
                                                  (##cdr _e1002010050_)))
                                             (let ((_expr10058_
                                                    _hd1002110053_))
                                               (if (gx#stx-null?
                                                    _tl1002210055_)
                                                   (if (gx#identifier?
                                                        _id10048_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10048_)
                           (cons (gx#core-compile-top-syntax _expr10058_)
                                 '())))
               (_E1001310028_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1001310028_)))))
                                         (_E1001310028_)))))
                               (_E1001310028_))))
                       (_E1001310028_)))))
            (let () (_E1001210060_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id10005_)
      (let ((_$e10007_ (gx#resolve-identifier__0 _id10005_)))
        (if _$e10007_
            (##structure-ref _$e10007_ '1 gx#binding::t '#f)
            _id10005_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd10003_)
      (if (gx#identifier? _hd10003_)
          (gx#core-compile-top-runtime-ref _hd10003_)
          '#f))))
