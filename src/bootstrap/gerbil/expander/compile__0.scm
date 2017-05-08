(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
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
                           (let ((_form11010_ _hd1099111005_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e _form11010_)
                                  'compile-top-syntax
                                  _stx10986_)
                                 (_E1098910998_)))))
                       (_E1098910998_)))))
            (let () (_E1098811012_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self10946_ _stx10947_)
      (let ((_self1094810956_ _self10946_))
        (let ((_E1095010960_
               (lambda () (error '"No clause matching" _self1094810956_))))
          (let ((_K1095110972_
                 (lambda (_K10963_)
                   (let ((_$e10965_ (gx#stx-source _stx10947_)))
                     (if _$e10965_
                         ((lambda (_g1096710969_)
                            (gx#stx-wrap-source
                             (_K10963_ _stx10947_)
                             _g1096710969_))
                          _$e10965_)
                         (_K10963_ _stx10947_))))))
            (if (struct-instance? gx#core-expander::t _self1094810956_)
                (let ((_e1095210975_ (##vector-ref _self1094810956_ '1)))
                  (let ((_e1095310978_ (##vector-ref _self1094810956_ '2)))
                    (let ((_e1095410981_ (##vector-ref _self1094810956_ '3)))
                      (let ((_K10984_ _e1095410981_))
                        (_K1095110972_ _K10984_)))))
                (_E1095010960_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx10944_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx10944_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx10914_)
      (let ((_e1091510922_ _stx10914_))
        (let ((_E1091710926_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1091510922_))))
          (let ((_E1091610940_
                 (lambda ()
                   (if (gx#stx-pair? _e1091510922_)
                       (let ((_e1091810930_ (gx#syntax-e _e1091510922_)))
                         (let ((_hd1091910933_ (##car _e1091810930_))
                               (_tl1092010935_ (##cdr _e1091810930_)))
                           (let ((_body10938_ _tl1092010935_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map
                                        gx#core-compile-top-syntax
                                        _body10938_))
                                 (_E1091710926_)))))
                       (_E1091710926_)))))
            (let () (_E1091610940_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx10883_)
      (let ((_e1088410891_ _stx10883_))
        (let ((_E1088610895_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1088410891_))))
          (let ((_E1088510910_
                 (lambda ()
                   (if (gx#stx-pair? _e1088410891_)
                       (let ((_e1088710899_ (gx#syntax-e _e1088410891_)))
                         (let ((_hd1088810902_ (##car _e1088710899_))
                               (_tl1088910904_ (##cdr _e1088710899_)))
                           (let ((_body10907_ _tl1088910904_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map
                                           gx#core-compile-top-syntax
                                           _body10907_))
                                        gx#current-expander-phi
                                        (fx1+ (gx#current-expander-phi))))
                                 (_E1088610895_)))))
                       (_E1088610895_)))))
            (let () (_E1088510910_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx10853_)
      (let ((_e1085410861_ _stx10853_))
        (let ((_E1085610865_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1085410861_))))
          (let ((_E1085510879_
                 (lambda ()
                   (if (gx#stx-pair? _e1085410861_)
                       (let ((_e1085710869_ (gx#syntax-e _e1085410861_)))
                         (let ((_hd1085810872_ (##car _e1085710869_))
                               (_tl1085910874_ (##cdr _e1085710869_)))
                           (let ((_body10877_ _tl1085910874_))
                             (if '#t
                                 (cons '%#begin-foreign _body10877_)
                                 (_E1085610865_)))))
                       (_E1085610865_)))))
            (let () (_E1085510879_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx10823_)
      (let ((_e1082410831_ _stx10823_))
        (let ((_E1082610835_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1082410831_))))
          (let ((_E1082510849_
                 (lambda ()
                   (if (gx#stx-pair? _e1082410831_)
                       (let ((_e1082710839_ (gx#syntax-e _e1082410831_)))
                         (let ((_hd1082810842_ (##car _e1082710839_))
                               (_tl1082910844_ (##cdr _e1082710839_)))
                           (let ((_body10847_ _tl1082910844_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body10847_))
                                 (_E1082610835_)))))
                       (_E1082610835_)))))
            (let () (_E1082510849_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx10780_)
      (let ((_e1078110791_ _stx10780_))
        (let ((_E1078310795_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1078110791_))))
          (let ((_E1078210819_
                 (lambda ()
                   (if (gx#stx-pair? _e1078110791_)
                       (let ((_e1078410799_ (gx#syntax-e _e1078110791_)))
                         (let ((_hd1078510802_ (##car _e1078410799_))
                               (_tl1078610804_ (##cdr _e1078410799_)))
                           (if (gx#stx-pair? _tl1078610804_)
                               (let ((_e1078710807_
                                      (gx#syntax-e _tl1078610804_)))
                                 (let ((_hd1078810810_ (##car _e1078710807_))
                                       (_tl1078910812_ (##cdr _e1078710807_)))
                                   (let ((_hd10815_ _hd1078810810_))
                                     (let ((_body10817_ _tl1078910812_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e
                                                    _hd10815_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map
                                                   gx#core-compile-top-syntax
                                                   _body10817_))
                                           (_E1078310795_))))))
                               (_E1078310795_))))
                       (_E1078310795_)))))
            (let () (_E1078210819_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx10750_)
      (let ((_e1075110758_ _stx10750_))
        (let ((_E1075310762_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1075110758_))))
          (let ((_E1075210776_
                 (lambda ()
                   (if (gx#stx-pair? _e1075110758_)
                       (let ((_e1075410766_ (gx#syntax-e _e1075110758_)))
                         (let ((_hd1075510769_ (##car _e1075410766_))
                               (_tl1075610771_ (##cdr _e1075410766_)))
                           (let ((_body10774_ _tl1075610771_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body10774_))
                                 (_E1075310762_)))))
                       (_E1075310762_)))))
            (let () (_E1075210776_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx10720_)
      (let ((_e1072110728_ _stx10720_))
        (let ((_E1072310732_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1072110728_))))
          (let ((_E1072210746_
                 (lambda ()
                   (if (gx#stx-pair? _e1072110728_)
                       (let ((_e1072410736_ (gx#syntax-e _e1072110728_)))
                         (let ((_hd1072510739_ (##car _e1072410736_))
                               (_tl1072610741_ (##cdr _e1072410736_)))
                           (let ((_body10744_ _tl1072610741_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map
                                        gx#core-quote-syntax
                                        _body10744_))
                                 (_E1072310732_)))))
                       (_E1072310732_)))))
            (let () (_E1072210746_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx10645_)
      (let ((_generate10647_
             (lambda (_hd10677_)
               (let ((_e1067810688_ _hd10677_))
                 (let ((_E1068010692_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1067810688_))))
                   (let ((_E1067910716_
                          (lambda ()
                            (if (gx#stx-pair? _e1067810688_)
                                (let ((_e1068110696_
                                       (gx#syntax-e _e1067810688_)))
                                  (let ((_hd1068210699_ (##car _e1068110696_))
                                        (_tl1068310701_ (##cdr _e1068110696_)))
                                    (let ((_id10704_ _hd1068210699_))
                                      (if (gx#stx-pair? _tl1068310701_)
                                          (let ((_e1068410706_
                                                 (gx#syntax-e _tl1068310701_)))
                                            (let ((_hd1068510709_
                                                   (##car _e1068410706_))
                                                  (_tl1068610711_
                                                   (##cdr _e1068410706_)))
                                              (let ((_eid10714_
                                                     _hd1068510709_))
                                                (if (gx#stx-null?
                                                     _tl1068610711_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax
                                                               _id10704_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid10714_)
                            '()))
                (_E1068010692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1068010692_)))))
                                          (_E1068010692_)))))
                                (_E1068010692_)))))
                     (let () (_E1067910716_))))))))
        (let ((_e1064810655_ _stx10645_))
          (let ((_E1065010659_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1064810655_))))
            (let ((_E1064910673_
                   (lambda ()
                     (if (gx#stx-pair? _e1064810655_)
                         (let ((_e1065110663_ (gx#syntax-e _e1064810655_)))
                           (let ((_hd1065210666_ (##car _e1065110663_))
                                 (_tl1065310668_ (##cdr _e1065110663_)))
                             (let ((_body10671_ _tl1065310668_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map
                                          _generate10647_
                                          _body10671_))
                                   (_E1065010659_)))))
                         (_E1065010659_)))))
              (let () (_E1064910673_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx10591_)
      (let ((_e1059210605_ _stx10591_))
        (let ((_E1059410609_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1059210605_))))
          (let ((_E1059310641_
                 (lambda ()
                   (if (gx#stx-pair? _e1059210605_)
                       (let ((_e1059510613_ (gx#syntax-e _e1059210605_)))
                         (let ((_hd1059610616_ (##car _e1059510613_))
                               (_tl1059710618_ (##cdr _e1059510613_)))
                           (if (gx#stx-pair? _tl1059710618_)
                               (let ((_e1059810621_
                                      (gx#syntax-e _tl1059710618_)))
                                 (let ((_hd1059910624_ (##car _e1059810621_))
                                       (_tl1060010626_ (##cdr _e1059810621_)))
                                   (let ((_hd10629_ _hd1059910624_))
                                     (if (gx#stx-pair? _tl1060010626_)
                                         (let ((_e1060110631_
                                                (gx#syntax-e _tl1060010626_)))
                                           (let ((_hd1060210634_
                                                  (##car _e1060110631_))
                                                 (_tl1060310636_
                                                  (##cdr _e1060110631_)))
                                             (let ((_expr10639_
                                                    _hd1060210634_))
                                               (if (gx#stx-null?
                                                    _tl1060310636_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd10629_)
                           (cons (gx#core-compile-top-syntax _expr10639_)
                                 '())))
               (_E1059410609_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1059410609_)))))
                                         (_E1059410609_)))))
                               (_E1059410609_))))
                       (_E1059410609_)))))
            (let () (_E1059310641_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx10536_)
      (let ((_e1053710550_ _stx10536_))
        (let ((_E1053910554_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1053710550_))))
          (let ((_E1053810587_
                 (lambda ()
                   (if (gx#stx-pair? _e1053710550_)
                       (let ((_e1054010558_ (gx#syntax-e _e1053710550_)))
                         (let ((_hd1054110561_ (##car _e1054010558_))
                               (_tl1054210563_ (##cdr _e1054010558_)))
                           (if (gx#stx-pair? _tl1054210563_)
                               (let ((_e1054310566_
                                      (gx#syntax-e _tl1054210563_)))
                                 (let ((_hd1054410569_ (##car _e1054310566_))
                                       (_tl1054510571_ (##cdr _e1054310566_)))
                                   (let ((_hd10574_ _hd1054410569_))
                                     (if (gx#stx-pair? _tl1054510571_)
                                         (let ((_e1054610576_
                                                (gx#syntax-e _tl1054510571_)))
                                           (let ((_hd1054710579_
                                                  (##car _e1054610576_))
                                                 (_tl1054810581_
                                                  (##cdr _e1054610576_)))
                                             (let ((_expr10584_
                                                    _hd1054710579_))
                                               (if (gx#stx-null?
                                                    _tl1054810581_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10574_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr10584_))
                                  gx#current-expander-phi
                                  (fx1+ (gx#current-expander-phi)))
                                 '())))
               (_E1053910554_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1053910554_)))))
                                         (_E1053910554_)))))
                               (_E1053910554_))))
                       (_E1053910554_)))))
            (let () (_E1053810587_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx10482_)
      (let ((_e1048310496_ _stx10482_))
        (let ((_E1048510500_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1048310496_))))
          (let ((_E1048410532_
                 (lambda ()
                   (if (gx#stx-pair? _e1048310496_)
                       (let ((_e1048610504_ (gx#syntax-e _e1048310496_)))
                         (let ((_hd1048710507_ (##car _e1048610504_))
                               (_tl1048810509_ (##cdr _e1048610504_)))
                           (if (gx#stx-pair? _tl1048810509_)
                               (let ((_e1048910512_
                                      (gx#syntax-e _tl1048810509_)))
                                 (let ((_hd1049010515_ (##car _e1048910512_))
                                       (_tl1049110517_ (##cdr _e1048910512_)))
                                   (let ((_hd10520_ _hd1049010515_))
                                     (if (gx#stx-pair? _tl1049110517_)
                                         (let ((_e1049210522_
                                                (gx#syntax-e _tl1049110517_)))
                                           (let ((_hd1049310525_
                                                  (##car _e1049210522_))
                                                 (_tl1049410527_
                                                  (##cdr _e1049210522_)))
                                             (let ((_alias-id10530_
                                                    _hd1049310525_))
                                               (if (gx#stx-null?
                                                    _tl1049410527_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10520_)
                           (cons (gx#core-quote-syntax _alias-id10530_) '())))
               (_E1048510500_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1048510500_)))))
                                         (_E1048510500_)))))
                               (_E1048510500_))))
                       (_E1048510500_)))))
            (let () (_E1048410532_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx10428_)
      (let ((_e1042910442_ _stx10428_))
        (let ((_E1043110446_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1042910442_))))
          (let ((_E1043010478_
                 (lambda ()
                   (if (gx#stx-pair? _e1042910442_)
                       (let ((_e1043210450_ (gx#syntax-e _e1042910442_)))
                         (let ((_hd1043310453_ (##car _e1043210450_))
                               (_tl1043410455_ (##cdr _e1043210450_)))
                           (if (gx#stx-pair? _tl1043410455_)
                               (let ((_e1043510458_
                                      (gx#syntax-e _tl1043410455_)))
                                 (let ((_hd1043610461_ (##car _e1043510458_))
                                       (_tl1043710463_ (##cdr _e1043510458_)))
                                   (let ((_id10466_ _hd1043610461_))
                                     (if (gx#stx-pair? _tl1043710463_)
                                         (let ((_e1043810468_
                                                (gx#syntax-e _tl1043710463_)))
                                           (let ((_hd1043910471_
                                                  (##car _e1043810468_))
                                                 (_tl1044010473_
                                                  (##cdr _e1043810468_)))
                                             (let ((_binding-id10476_
                                                    _hd1043910471_))
                                               (if (gx#stx-null?
                                                    _tl1044010473_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10466_)
                           (cons (gx#core-quote-syntax _binding-id10476_)
                                 '())))
               (_E1043110446_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1043110446_)))))
                                         (_E1043110446_)))))
                               (_E1043110446_))))
                       (_E1043110446_)))))
            (let () (_E1043010478_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx10398_)
      (let ((_e1039910406_ _stx10398_))
        (let ((_E1040110410_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1039910406_))))
          (let ((_E1040010424_
                 (lambda ()
                   (if (gx#stx-pair? _e1039910406_)
                       (let ((_e1040210414_ (gx#syntax-e _e1039910406_)))
                         (let ((_hd1040310417_ (##car _e1040210414_))
                               (_tl1040410419_ (##cdr _e1040210414_)))
                           (let ((_decls10422_ _tl1040410419_))
                             (if '#t
                                 (cons '%#declare _decls10422_)
                                 (_E1040110410_)))))
                       (_E1040110410_)))))
            (let () (_E1040010424_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx10368_)
      (let ((_e1036910376_ _stx10368_))
        (let ((_E1037110380_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1036910376_))))
          (let ((_E1037010394_
                 (lambda ()
                   (if (gx#stx-pair? _e1036910376_)
                       (let ((_e1037210384_ (gx#syntax-e _e1036910376_)))
                         (let ((_hd1037310387_ (##car _e1037210384_))
                               (_tl1037410389_ (##cdr _e1037210384_)))
                           (let ((_clause10392_ _tl1037410389_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause10392_))
                                 (_E1037110380_)))))
                       (_E1037110380_)))))
            (let () (_E1037010394_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx10325_)
      (let ((_e1032610336_ _stx10325_))
        (let ((_E1032810340_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1032610336_))))
          (let ((_E1032710364_
                 (lambda ()
                   (if (gx#stx-pair? _e1032610336_)
                       (let ((_e1032910344_ (gx#syntax-e _e1032610336_)))
                         (let ((_hd1033010347_ (##car _e1032910344_))
                               (_tl1033110349_ (##cdr _e1032910344_)))
                           (let ((_hd10352_ _hd1033010347_))
                             (if (gx#stx-pair? _tl1033110349_)
                                 (let ((_e1033210354_
                                        (gx#syntax-e _tl1033110349_)))
                                   (let ((_hd1033310357_ (##car _e1033210354_))
                                         (_tl1033410359_
                                          (##cdr _e1033210354_)))
                                     (let ((_body10362_ _hd1033310357_))
                                       (if (gx#stx-null? _tl1033410359_)
                                           (if '#t
                                               (cons (gx#stx-map
                                                      gx#core-compile-top-runtime-bind
                                                      _hd10352_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body10362_)
                                                           '()))
                                               (_E1032810340_))
                                           (_E1032810340_)))))
                                 (_E1032810340_)))))
                       (_E1032810340_)))))
            (let () (_E1032710364_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx10295_)
      (let ((_e1029610303_ _stx10295_))
        (let ((_E1029810307_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1029610303_))))
          (let ((_E1029710321_
                 (lambda ()
                   (if (gx#stx-pair? _e1029610303_)
                       (let ((_e1029910311_ (gx#syntax-e _e1029610303_)))
                         (let ((_hd1030010314_ (##car _e1029910311_))
                               (_tl1030110316_ (##cdr _e1029910311_)))
                           (let ((_clauses10319_ _tl1030110316_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map
                                        gx#core-compile-top-lambda-clause
                                        _clauses10319_))
                                 (_E1029810307_)))))
                       (_E1029810307_)))))
            (let () (_E1029710321_)))))))
  (define gx#core-compile-top-let-values%
    (let ((_opt-lambda1022810285_
           (lambda (_stx10230_ _form10231_)
             (let ((_e1023210245_ _stx10230_))
               (let ((_E1023410249_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e1023210245_))))
                 (let ((_E1023310281_
                        (lambda ()
                          (if (gx#stx-pair? _e1023210245_)
                              (let ((_e1023510253_
                                     (gx#syntax-e _e1023210245_)))
                                (let ((_hd1023610256_ (##car _e1023510253_))
                                      (_tl1023710258_ (##cdr _e1023510253_)))
                                  (if (gx#stx-pair? _tl1023710258_)
                                      (let ((_e1023810261_
                                             (gx#syntax-e _tl1023710258_)))
                                        (let ((_hd1023910264_
                                               (##car _e1023810261_))
                                              (_tl1024010266_
                                               (##cdr _e1023810261_)))
                                          (let ((_hd10269_ _hd1023910264_))
                                            (if (gx#stx-pair? _tl1024010266_)
                                                (let ((_e1024110271_
                                                       (gx#syntax-e
                                                        _tl1024010266_)))
                                                  (let ((_hd1024210274_
                                                         (##car _e1024110271_))
                                                        (_tl1024310276_
                                                         (##cdr _e1024110271_)))
                                                    (let ((_body10279_
                                                           _hd1024210274_))
                                                      (if (gx#stx-null?
                                                           _tl1024310276_)
                                                          (if '#t
                                                              (cons _form10231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#stx-map
                                   gx#core-compile-top-lambda-clause
                                   _hd10269_)
                                  (cons (gx#core-compile-top-syntax
                                         _body10279_)
                                        '())))
                      (_E1023410249_))
                  (_E1023410249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1023410249_)))))
                                      (_E1023410249_))))
                              (_E1023410249_)))))
                   (let () (_E1023310281_))))))))
      (lambda _g11016_
        (let ((_g11015_ (length _g11016_)))
          (cond ((fx= _g11015_ 1)
                 (apply (lambda (_stx10288_)
                          (let ((_form10290_ '%#let-values))
                            (_opt-lambda1022810285_ _stx10288_ _form10290_)))
                        _g11016_))
                ((fx= _g11015_ 2)
                 (apply (lambda (_stx10292_ _form10293_)
                          (_opt-lambda1022810285_ _stx10292_ _form10293_))
                        _g11016_))
                (else (error "No clause matching arguments" _g11016_)))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx10227_)
      (gx#core-compile-top-let-values% _stx10227_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx10225_)
      (gx#core-compile-top-let-values% _stx10225_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx10184_)
      (let ((_e1018510195_ _stx10184_))
        (let ((_E1018710199_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1018510195_))))
          (let ((_E1018610221_
                 (lambda ()
                   (if (gx#stx-pair? _e1018510195_)
                       (let ((_e1018810203_ (gx#syntax-e _e1018510195_)))
                         (let ((_hd1018910206_ (##car _e1018810203_))
                               (_tl1019010208_ (##cdr _e1018810203_)))
                           (if (gx#stx-pair? _tl1019010208_)
                               (let ((_e1019110211_
                                      (gx#syntax-e _tl1019010208_)))
                                 (let ((_hd1019210214_ (##car _e1019110211_))
                                       (_tl1019310216_ (##cdr _e1019110211_)))
                                   (let ((_e10219_ _hd1019210214_))
                                     (if (gx#stx-null? _tl1019310216_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e10219_)
                                                         '()))
                                             (_E1018710199_))
                                         (_E1018710199_)))))
                               (_E1018710199_))))
                       (_E1018710199_)))))
            (let () (_E1018610221_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx10143_)
      (let ((_e1014410154_ _stx10143_))
        (let ((_E1014610158_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1014410154_))))
          (let ((_E1014510180_
                 (lambda ()
                   (if (gx#stx-pair? _e1014410154_)
                       (let ((_e1014710162_ (gx#syntax-e _e1014410154_)))
                         (let ((_hd1014810165_ (##car _e1014710162_))
                               (_tl1014910167_ (##cdr _e1014710162_)))
                           (if (gx#stx-pair? _tl1014910167_)
                               (let ((_e1015010170_
                                      (gx#syntax-e _tl1014910167_)))
                                 (let ((_hd1015110173_ (##car _e1015010170_))
                                       (_tl1015210175_ (##cdr _e1015010170_)))
                                   (let ((_e10178_ _hd1015110173_))
                                     (if (gx#stx-null? _tl1015210175_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax
                                                          _e10178_)
                                                         '()))
                                             (_E1014610158_))
                                         (_E1014610158_)))))
                               (_E1014610158_))))
                       (_E1014610158_)))))
            (let () (_E1014510180_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx10100_)
      (let ((_e1010110111_ _stx10100_))
        (let ((_E1010310115_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1010110111_))))
          (let ((_E1010210139_
                 (lambda ()
                   (if (gx#stx-pair? _e1010110111_)
                       (let ((_e1010410119_ (gx#syntax-e _e1010110111_)))
                         (let ((_hd1010510122_ (##car _e1010410119_))
                               (_tl1010610124_ (##cdr _e1010410119_)))
                           (if (gx#stx-pair? _tl1010610124_)
                               (let ((_e1010710127_
                                      (gx#syntax-e _tl1010610124_)))
                                 (let ((_hd1010810130_ (##car _e1010710127_))
                                       (_tl1010910132_ (##cdr _e1010710127_)))
                                   (let ((_rator10135_ _hd1010810130_))
                                     (let ((_args10137_ _tl1010910132_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator10135_)
                                                  (gx#stx-map
                                                   gx#core-compile-top-syntax
                                                   _args10137_))
                                           (_E1010310115_))))))
                               (_E1010310115_))))
                       (_E1010310115_)))))
            (let () (_E1010210139_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx10033_)
      (let ((_e1003410050_ _stx10033_))
        (let ((_E1003610054_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1003410050_))))
          (let ((_E1003510096_
                 (lambda ()
                   (if (gx#stx-pair? _e1003410050_)
                       (let ((_e1003710058_ (gx#syntax-e _e1003410050_)))
                         (let ((_hd1003810061_ (##car _e1003710058_))
                               (_tl1003910063_ (##cdr _e1003710058_)))
                           (if (gx#stx-pair? _tl1003910063_)
                               (let ((_e1004010066_
                                      (gx#syntax-e _tl1003910063_)))
                                 (let ((_hd1004110069_ (##car _e1004010066_))
                                       (_tl1004210071_ (##cdr _e1004010066_)))
                                   (let ((_test10074_ _hd1004110069_))
                                     (if (gx#stx-pair? _tl1004210071_)
                                         (let ((_e1004310076_
                                                (gx#syntax-e _tl1004210071_)))
                                           (let ((_hd1004410079_
                                                  (##car _e1004310076_))
                                                 (_tl1004510081_
                                                  (##cdr _e1004310076_)))
                                             (let ((_K10084_ _hd1004410079_))
                                               (if (gx#stx-pair?
                                                    _tl1004510081_)
                                                   (let ((_e1004610086_
                                                          (gx#syntax-e
                                                           _tl1004510081_)))
                                                     (let ((_hd1004710089_
                                                            (##car _e1004610086_))
                                                           (_tl1004810091_
                                                            (##cdr _e1004610086_)))
                                                       (let ((_E10094_
                                                              _hd1004710089_))
                                                         (if (gx#stx-null?
                                                              _tl1004810091_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test10074_)
                                     (cons (gx#core-compile-top-syntax
                                            _K10084_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E10094_)
                                                 '()))))
                         (_E1003610054_))
                     (_E1003610054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1003610054_)))))
                                         (_E1003610054_)))))
                               (_E1003610054_))))
                       (_E1003610054_)))))
            (let () (_E1003510096_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx9992_)
      (let ((_e999310003_ _stx9992_))
        (let ((_E999510007_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e999310003_))))
          (let ((_E999410029_
                 (lambda ()
                   (if (gx#stx-pair? _e999310003_)
                       (let ((_e999610011_ (gx#syntax-e _e999310003_)))
                         (let ((_hd999710014_ (##car _e999610011_))
                               (_tl999810016_ (##cdr _e999610011_)))
                           (if (gx#stx-pair? _tl999810016_)
                               (let ((_e999910019_
                                      (gx#syntax-e _tl999810016_)))
                                 (let ((_hd1000010022_ (##car _e999910019_))
                                       (_tl1000110024_ (##cdr _e999910019_)))
                                   (let ((_id10027_ _hd1000010022_))
                                     (if (gx#stx-null? _tl1000110024_)
                                         (if (gx#identifier? _id10027_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id10027_)
                                                         '()))
                                             (_E999510007_))
                                         (_E999510007_)))))
                               (_E999510007_))))
                       (_E999510007_)))))
            (let () (_E999410029_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx9938_)
      (let ((_e99399952_ _stx9938_))
        (let ((_E99419956_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e99399952_))))
          (let ((_E99409988_
                 (lambda ()
                   (if (gx#stx-pair? _e99399952_)
                       (let ((_e99429960_ (gx#syntax-e _e99399952_)))
                         (let ((_hd99439963_ (##car _e99429960_))
                               (_tl99449965_ (##cdr _e99429960_)))
                           (if (gx#stx-pair? _tl99449965_)
                               (let ((_e99459968_ (gx#syntax-e _tl99449965_)))
                                 (let ((_hd99469971_ (##car _e99459968_))
                                       (_tl99479973_ (##cdr _e99459968_)))
                                   (let ((_id9976_ _hd99469971_))
                                     (if (gx#stx-pair? _tl99479973_)
                                         (let ((_e99489978_
                                                (gx#syntax-e _tl99479973_)))
                                           (let ((_hd99499981_
                                                  (##car _e99489978_))
                                                 (_tl99509983_
                                                  (##cdr _e99489978_)))
                                             (let ((_expr9986_ _hd99499981_))
                                               (if (gx#stx-null? _tl99509983_)
                                                   (if (gx#identifier?
                                                        _id9976_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id9976_)
                           (cons (gx#core-compile-top-syntax _expr9986_) '())))
               (_E99419956_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E99419956_)))))
                                         (_E99419956_)))))
                               (_E99419956_))))
                       (_E99419956_)))))
            (let () (_E99409988_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id9933_)
      (let ((_$e9935_ (gx#resolve-identifier _id9933_)))
        (if _$e9935_
            (##structure-ref _$e9935_ '1 gx#binding::t '#f)
            _id9933_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd9931_)
      (if (gx#identifier? _hd9931_)
          (gx#core-compile-top-runtime-ref _hd9931_)
          '#f))))
