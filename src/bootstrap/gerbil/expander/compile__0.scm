(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708510101)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx94197_)
        (let* ((_e9419894205_ _stx94197_)
               (_E9420094209_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9419894205_)))
               (_E9419994223_
                (lambda ()
                  (if (gx#stx-pair? _e9419894205_)
                      (let ((_e9420194213_ (gx#syntax-e _e9419894205_)))
                        (let ((_hd9420294216_ (##car _e9420194213_))
                              (_tl9420394218_ (##cdr _e9420194213_)))
                          (let ((_form94221_ _hd9420294216_))
                            (if '#t
                                (let* ((__self94226
                                        (gx#syntax-local-e__0 _form94221_))
                                       (__method94227
                                        (method-ref
                                         __self94226
                                         'compile-top-syntax)))
                                  (if __method94227
                                      (__method94227 __self94226 _stx94197_)
                                      (error '"Missing method"
                                             __self94226
                                             'compile-top-syntax)))
                                (_E9420094209_)))))
                      (_E9420094209_)))))
          (_E9419994223_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self94157_ _stx94158_)
        (let* ((_self9415994167_ _self94157_)
               (_E9416194171_
                (lambda () (error '"No clause matching" _self9415994167_)))
               (_K9416294183_
                (lambda (_K94174_)
                  (let ((_$e94176_ (gx#stx-source _stx94158_)))
                    (if _$e94176_
                        ((lambda (_g9417894180_)
                           (gx#stx-wrap-source
                            (_K94174_ _stx94158_)
                            _g9417894180_))
                         _$e94176_)
                        (_K94174_ _stx94158_))))))
          (if (##structure-instance-of? _self9415994167_ 'gx#core-expander::t)
              (let* ((_e9416394186_
                      (##unchecked-structure-ref
                       _self9415994167_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9416494189_
                      (##unchecked-structure-ref
                       _self9415994167_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9416594192_
                      (##unchecked-structure-ref
                       _self9415994167_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K94195_ _e9416594192_))
                (_K9416294183_ _K94195_))
              (_E9416194171_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx94031_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx94031_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx94001_)
        (let* ((_e9400294009_ _stx94001_)
               (_E9400494013_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9400294009_)))
               (_E9400394027_
                (lambda ()
                  (if (gx#stx-pair? _e9400294009_)
                      (let ((_e9400594017_ (gx#syntax-e _e9400294009_)))
                        (let ((_hd9400694020_ (##car _e9400594017_))
                              (_tl9400794022_ (##cdr _e9400594017_)))
                          (let ((_body94025_ _tl9400794022_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body94025_))
                                (_E9400494013_)))))
                      (_E9400494013_)))))
          (_E9400394027_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx93970_)
        (let* ((_e9397193978_ _stx93970_)
               (_E9397393982_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9397193978_)))
               (_E9397293997_
                (lambda ()
                  (if (gx#stx-pair? _e9397193978_)
                      (let ((_e9397493986_ (gx#syntax-e _e9397193978_)))
                        (let ((_hd9397593989_ (##car _e9397493986_))
                              (_tl9397693991_ (##cdr _e9397493986_)))
                          (let ((_body93994_ _tl9397693991_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body93994_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9397393982_)))))
                      (_E9397393982_)))))
          (_E9397293997_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx93940_)
        (let* ((_e9394193948_ _stx93940_)
               (_E9394393952_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9394193948_)))
               (_E9394293966_
                (lambda ()
                  (if (gx#stx-pair? _e9394193948_)
                      (let ((_e9394493956_ (gx#syntax-e _e9394193948_)))
                        (let ((_hd9394593959_ (##car _e9394493956_))
                              (_tl9394693961_ (##cdr _e9394493956_)))
                          (let ((_body93964_ _tl9394693961_))
                            (if '#t
                                (cons '%#begin-foreign _body93964_)
                                (_E9394393952_)))))
                      (_E9394393952_)))))
          (_E9394293966_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx93886_)
        (let* ((_e9388793900_ _stx93886_)
               (_E9388993904_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9388793900_)))
               (_E9388893936_
                (lambda ()
                  (if (gx#stx-pair? _e9388793900_)
                      (let ((_e9389093908_ (gx#syntax-e _e9388793900_)))
                        (let ((_hd9389193911_ (##car _e9389093908_))
                              (_tl9389293913_ (##cdr _e9389093908_)))
                          (if (gx#stx-pair? _tl9389293913_)
                              (let ((_e9389393916_
                                     (gx#syntax-e _tl9389293913_)))
                                (let ((_hd9389493919_ (##car _e9389393916_))
                                      (_tl9389593921_ (##cdr _e9389393916_)))
                                  (let ((_ann93924_ _hd9389493919_))
                                    (if (gx#stx-pair? _tl9389593921_)
                                        (let ((_e9389693926_
                                               (gx#syntax-e _tl9389593921_)))
                                          (let ((_hd9389793929_
                                                 (##car _e9389693926_))
                                                (_tl9389893931_
                                                 (##cdr _e9389693926_)))
                                            (let ((_expr93934_ _hd9389793929_))
                                              (if (gx#stx-null? _tl9389893931_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr93934_)
                                                      (_E9388993904_))
                                                  (_E9388993904_)))))
                                        (_E9388993904_)))))
                              (_E9388993904_))))
                      (_E9388993904_)))))
          (_E9388893936_))))
    (define gx#core-compile-top-import%
      (lambda (_stx93856_)
        (let* ((_e9385793864_ _stx93856_)
               (_E9385993868_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9385793864_)))
               (_E9385893882_
                (lambda ()
                  (if (gx#stx-pair? _e9385793864_)
                      (let ((_e9386093872_ (gx#syntax-e _e9385793864_)))
                        (let ((_hd9386193875_ (##car _e9386093872_))
                              (_tl9386293877_ (##cdr _e9386093872_)))
                          (let ((_body93880_ _tl9386293877_))
                            (if '#t
                                (cons '%#import _body93880_)
                                (_E9385993868_)))))
                      (_E9385993868_)))))
          (_E9385893882_))))
    (define gx#core-compile-top-module%
      (lambda (_stx93813_)
        (let* ((_e9381493824_ _stx93813_)
               (_E9381693828_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9381493824_)))
               (_E9381593852_
                (lambda ()
                  (if (gx#stx-pair? _e9381493824_)
                      (let ((_e9381793832_ (gx#syntax-e _e9381493824_)))
                        (let ((_hd9381893835_ (##car _e9381793832_))
                              (_tl9381993837_ (##cdr _e9381793832_)))
                          (if (gx#stx-pair? _tl9381993837_)
                              (let ((_e9382093840_
                                     (gx#syntax-e _tl9381993837_)))
                                (let ((_hd9382193843_ (##car _e9382093840_))
                                      (_tl9382293845_ (##cdr _e9382093840_)))
                                  (let* ((_hd93848_ _hd9382193843_)
                                         (_body93850_ _tl9382293845_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd93848_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body93850_)))
                                        (_E9381693828_)))))
                              (_E9381693828_))))
                      (_E9381693828_)))))
          (_E9381593852_))))
    (define gx#core-compile-top-export%
      (lambda (_stx93783_)
        (let* ((_e9378493791_ _stx93783_)
               (_E9378693795_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9378493791_)))
               (_E9378593809_
                (lambda ()
                  (if (gx#stx-pair? _e9378493791_)
                      (let ((_e9378793799_ (gx#syntax-e _e9378493791_)))
                        (let ((_hd9378893802_ (##car _e9378793799_))
                              (_tl9378993804_ (##cdr _e9378793799_)))
                          (let ((_body93807_ _tl9378993804_))
                            (if '#t
                                (cons '%#export _body93807_)
                                (_E9378693795_)))))
                      (_E9378693795_)))))
          (_E9378593809_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx93753_)
        (let* ((_e9375493761_ _stx93753_)
               (_E9375693765_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9375493761_)))
               (_E9375593779_
                (lambda ()
                  (if (gx#stx-pair? _e9375493761_)
                      (let ((_e9375793769_ (gx#syntax-e _e9375493761_)))
                        (let ((_hd9375893772_ (##car _e9375793769_))
                              (_tl9375993774_ (##cdr _e9375793769_)))
                          (let ((_body93777_ _tl9375993774_))
                            (if '#t
                                (cons '%#provide _body93777_)
                                (_E9375693765_)))))
                      (_E9375693765_)))))
          (_E9375593779_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx93723_)
        (let* ((_e9372493731_ _stx93723_)
               (_E9372693735_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9372493731_)))
               (_E9372593749_
                (lambda ()
                  (if (gx#stx-pair? _e9372493731_)
                      (let ((_e9372793739_ (gx#syntax-e _e9372493731_)))
                        (let ((_hd9372893742_ (##car _e9372793739_))
                              (_tl9372993744_ (##cdr _e9372793739_)))
                          (let ((_body93747_ _tl9372993744_))
                            (if '#t
                                (cons '%#extern _body93747_)
                                (_E9372693735_)))))
                      (_E9372693735_)))))
          (_E9372593749_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx93669_)
        (let* ((_e9367093683_ _stx93669_)
               (_E9367293687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9367093683_)))
               (_E9367193719_
                (lambda ()
                  (if (gx#stx-pair? _e9367093683_)
                      (let ((_e9367393691_ (gx#syntax-e _e9367093683_)))
                        (let ((_hd9367493694_ (##car _e9367393691_))
                              (_tl9367593696_ (##cdr _e9367393691_)))
                          (if (gx#stx-pair? _tl9367593696_)
                              (let ((_e9367693699_
                                     (gx#syntax-e _tl9367593696_)))
                                (let ((_hd9367793702_ (##car _e9367693699_))
                                      (_tl9367893704_ (##cdr _e9367693699_)))
                                  (let ((_hd93707_ _hd9367793702_))
                                    (if (gx#stx-pair? _tl9367893704_)
                                        (let ((_e9367993709_
                                               (gx#syntax-e _tl9367893704_)))
                                          (let ((_hd9368093712_
                                                 (##car _e9367993709_))
                                                (_tl9368193714_
                                                 (##cdr _e9367993709_)))
                                            (let ((_expr93717_ _hd9368093712_))
                                              (if (gx#stx-null? _tl9368193714_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd93707_)
                          (cons (gx#core-compile-top-syntax _expr93717_) '())))
              (_E9367293687_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9367293687_)))))
                                        (_E9367293687_)))))
                              (_E9367293687_))))
                      (_E9367293687_)))))
          (_E9367193719_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx93614_)
        (let* ((_e9361593628_ _stx93614_)
               (_E9361793632_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9361593628_)))
               (_E9361693665_
                (lambda ()
                  (if (gx#stx-pair? _e9361593628_)
                      (let ((_e9361893636_ (gx#syntax-e _e9361593628_)))
                        (let ((_hd9361993639_ (##car _e9361893636_))
                              (_tl9362093641_ (##cdr _e9361893636_)))
                          (if (gx#stx-pair? _tl9362093641_)
                              (let ((_e9362193644_
                                     (gx#syntax-e _tl9362093641_)))
                                (let ((_hd9362293647_ (##car _e9362193644_))
                                      (_tl9362393649_ (##cdr _e9362193644_)))
                                  (let ((_hd93652_ _hd9362293647_))
                                    (if (gx#stx-pair? _tl9362393649_)
                                        (let ((_e9362493654_
                                               (gx#syntax-e _tl9362393649_)))
                                          (let ((_hd9362593657_
                                                 (##car _e9362493654_))
                                                (_tl9362693659_
                                                 (##cdr _e9362493654_)))
                                            (let ((_expr93662_ _hd9362593657_))
                                              (if (gx#stx-null? _tl9362693659_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd93652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr93662_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9361793632_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9361793632_)))))
                                        (_E9361793632_)))))
                              (_E9361793632_))))
                      (_E9361793632_)))))
          (_E9361693665_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx93584_)
        (let* ((_e9358593592_ _stx93584_)
               (_E9358793596_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9358593592_)))
               (_E9358693610_
                (lambda ()
                  (if (gx#stx-pair? _e9358593592_)
                      (let ((_e9358893600_ (gx#syntax-e _e9358593592_)))
                        (let ((_hd9358993603_ (##car _e9358893600_))
                              (_tl9359093605_ (##cdr _e9358893600_)))
                          (let ((_body93608_ _tl9359093605_))
                            (if '#t
                                (cons '%#define-alias _body93608_)
                                (_E9358793596_)))))
                      (_E9358793596_)))))
          (_E9358693610_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx93554_)
        (let* ((_e9355593562_ _stx93554_)
               (_E9355793566_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9355593562_)))
               (_E9355693580_
                (lambda ()
                  (if (gx#stx-pair? _e9355593562_)
                      (let ((_e9355893570_ (gx#syntax-e _e9355593562_)))
                        (let ((_hd9355993573_ (##car _e9355893570_))
                              (_tl9356093575_ (##cdr _e9355893570_)))
                          (let ((_body93578_ _tl9356093575_))
                            (if '#t
                                (cons '%#define-runtime _body93578_)
                                (_E9355793566_)))))
                      (_E9355793566_)))))
          (_E9355693580_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx93524_)
        (let* ((_e9352593532_ _stx93524_)
               (_E9352793536_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9352593532_)))
               (_E9352693550_
                (lambda ()
                  (if (gx#stx-pair? _e9352593532_)
                      (let ((_e9352893540_ (gx#syntax-e _e9352593532_)))
                        (let ((_hd9352993543_ (##car _e9352893540_))
                              (_tl9353093545_ (##cdr _e9352893540_)))
                          (let ((_decls93548_ _tl9353093545_))
                            (if '#t
                                (cons '%#declare _decls93548_)
                                (_E9352793536_)))))
                      (_E9352793536_)))))
          (_E9352693550_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx93494_)
        (let* ((_e9349593502_ _stx93494_)
               (_E9349793506_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9349593502_)))
               (_E9349693520_
                (lambda ()
                  (if (gx#stx-pair? _e9349593502_)
                      (let ((_e9349893510_ (gx#syntax-e _e9349593502_)))
                        (let ((_hd9349993513_ (##car _e9349893510_))
                              (_tl9350093515_ (##cdr _e9349893510_)))
                          (let ((_clause93518_ _tl9350093515_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause93518_))
                                (_E9349793506_)))))
                      (_E9349793506_)))))
          (_E9349693520_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx93451_)
        (let* ((_e9345293462_ _stx93451_)
               (_E9345493466_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9345293462_)))
               (_E9345393490_
                (lambda ()
                  (if (gx#stx-pair? _e9345293462_)
                      (let ((_e9345593470_ (gx#syntax-e _e9345293462_)))
                        (let ((_hd9345693473_ (##car _e9345593470_))
                              (_tl9345793475_ (##cdr _e9345593470_)))
                          (let ((_hd93478_ _hd9345693473_))
                            (if (gx#stx-pair? _tl9345793475_)
                                (let ((_e9345893480_
                                       (gx#syntax-e _tl9345793475_)))
                                  (let ((_hd9345993483_ (##car _e9345893480_))
                                        (_tl9346093485_ (##cdr _e9345893480_)))
                                    (let ((_body93488_ _hd9345993483_))
                                      (if (gx#stx-null? _tl9346093485_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd93478_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body93488_)
                                                          '()))
                                              (_E9345493466_))
                                          (_E9345493466_)))))
                                (_E9345493466_)))))
                      (_E9345493466_)))))
          (_E9345393490_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx93421_)
        (let* ((_e9342293429_ _stx93421_)
               (_E9342493433_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9342293429_)))
               (_E9342393447_
                (lambda ()
                  (if (gx#stx-pair? _e9342293429_)
                      (let ((_e9342593437_ (gx#syntax-e _e9342293429_)))
                        (let ((_hd9342693440_ (##car _e9342593437_))
                              (_tl9342793442_ (##cdr _e9342593437_)))
                          (let ((_clauses93445_ _tl9342793442_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses93445_))
                                (_E9342493433_)))))
                      (_E9342493433_)))))
          (_E9342393447_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx93356_ _form93357_)
        (let* ((_e9335893371_ _stx93356_)
               (_E9336093375_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9335893371_)))
               (_E9335993407_
                (lambda ()
                  (if (gx#stx-pair? _e9335893371_)
                      (let ((_e9336193379_ (gx#syntax-e _e9335893371_)))
                        (let ((_hd9336293382_ (##car _e9336193379_))
                              (_tl9336393384_ (##cdr _e9336193379_)))
                          (if (gx#stx-pair? _tl9336393384_)
                              (let ((_e9336493387_
                                     (gx#syntax-e _tl9336393384_)))
                                (let ((_hd9336593390_ (##car _e9336493387_))
                                      (_tl9336693392_ (##cdr _e9336493387_)))
                                  (let ((_hd93395_ _hd9336593390_))
                                    (if (gx#stx-pair? _tl9336693392_)
                                        (let ((_e9336793397_
                                               (gx#syntax-e _tl9336693392_)))
                                          (let ((_hd9336893400_
                                                 (##car _e9336793397_))
                                                (_tl9336993402_
                                                 (##cdr _e9336793397_)))
                                            (let ((_body93405_ _hd9336893400_))
                                              (if (gx#stx-null? _tl9336993402_)
                                                  (if '#t
                                                      (cons _form93357_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd93395_)
                          (cons (gx#core-compile-top-syntax _body93405_) '())))
              (_E9336093375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9336093375_)))))
                                        (_E9336093375_)))))
                              (_E9336093375_))))
                      (_E9336093375_)))))
          (_E9335993407_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx93414_)
        (let ((_form93416_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx93414_ _form93416_))))
    (define gx#core-compile-top-let-values%
      (lambda _g94229_
        (let ((_g94228_ (##length _g94229_)))
          (cond ((##fx= _g94228_ 1)
                 (apply (lambda (_stx93414_)
                          (gx#core-compile-top-let-values%__0 _stx93414_))
                        _g94229_))
                ((##fx= _g94228_ 2)
                 (apply (lambda (_stx93418_ _form93419_)
                          (gx#core-compile-top-let-values%__%
                           _stx93418_
                           _form93419_))
                        _g94229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g94229_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx93353_)
        (gx#core-compile-top-let-values%__% _stx93353_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx93351_)
        (gx#core-compile-top-let-values%__% _stx93351_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx93310_)
        (let* ((_e9331193321_ _stx93310_)
               (_E9331393325_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9331193321_)))
               (_E9331293347_
                (lambda ()
                  (if (gx#stx-pair? _e9331193321_)
                      (let ((_e9331493329_ (gx#syntax-e _e9331193321_)))
                        (let ((_hd9331593332_ (##car _e9331493329_))
                              (_tl9331693334_ (##cdr _e9331493329_)))
                          (if (gx#stx-pair? _tl9331693334_)
                              (let ((_e9331793337_
                                     (gx#syntax-e _tl9331693334_)))
                                (let ((_hd9331893340_ (##car _e9331793337_))
                                      (_tl9331993342_ (##cdr _e9331793337_)))
                                  (let ((_e93345_ _hd9331893340_))
                                    (if (gx#stx-null? _tl9331993342_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e93345_)
                                                        '()))
                                            (_E9331393325_))
                                        (_E9331393325_)))))
                              (_E9331393325_))))
                      (_E9331393325_)))))
          (_E9331293347_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx93269_)
        (let* ((_e9327093280_ _stx93269_)
               (_E9327293284_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9327093280_)))
               (_E9327193306_
                (lambda ()
                  (if (gx#stx-pair? _e9327093280_)
                      (let ((_e9327393288_ (gx#syntax-e _e9327093280_)))
                        (let ((_hd9327493291_ (##car _e9327393288_))
                              (_tl9327593293_ (##cdr _e9327393288_)))
                          (if (gx#stx-pair? _tl9327593293_)
                              (let ((_e9327693296_
                                     (gx#syntax-e _tl9327593293_)))
                                (let ((_hd9327793299_ (##car _e9327693296_))
                                      (_tl9327893301_ (##cdr _e9327693296_)))
                                  (let ((_e93304_ _hd9327793299_))
                                    (if (gx#stx-null? _tl9327893301_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e93304_)
                                                        '()))
                                            (_E9327293284_))
                                        (_E9327293284_)))))
                              (_E9327293284_))))
                      (_E9327293284_)))))
          (_E9327193306_))))
    (define gx#core-compile-top-call%
      (lambda (_stx93226_)
        (let* ((_e9322793237_ _stx93226_)
               (_E9322993241_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9322793237_)))
               (_E9322893265_
                (lambda ()
                  (if (gx#stx-pair? _e9322793237_)
                      (let ((_e9323093245_ (gx#syntax-e _e9322793237_)))
                        (let ((_hd9323193248_ (##car _e9323093245_))
                              (_tl9323293250_ (##cdr _e9323093245_)))
                          (if (gx#stx-pair? _tl9323293250_)
                              (let ((_e9323393253_
                                     (gx#syntax-e _tl9323293250_)))
                                (let ((_hd9323493256_ (##car _e9323393253_))
                                      (_tl9323593258_ (##cdr _e9323393253_)))
                                  (let* ((_rator93261_ _hd9323493256_)
                                         (_args93263_ _tl9323593258_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator93261_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args93263_)))
                                        (_E9322993241_)))))
                              (_E9322993241_))))
                      (_E9322993241_)))))
          (_E9322893265_))))
    (define gx#core-compile-top-if%
      (lambda (_stx93159_)
        (let* ((_e9316093176_ _stx93159_)
               (_E9316293180_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9316093176_)))
               (_E9316193222_
                (lambda ()
                  (if (gx#stx-pair? _e9316093176_)
                      (let ((_e9316393184_ (gx#syntax-e _e9316093176_)))
                        (let ((_hd9316493187_ (##car _e9316393184_))
                              (_tl9316593189_ (##cdr _e9316393184_)))
                          (if (gx#stx-pair? _tl9316593189_)
                              (let ((_e9316693192_
                                     (gx#syntax-e _tl9316593189_)))
                                (let ((_hd9316793195_ (##car _e9316693192_))
                                      (_tl9316893197_ (##cdr _e9316693192_)))
                                  (let ((_test93200_ _hd9316793195_))
                                    (if (gx#stx-pair? _tl9316893197_)
                                        (let ((_e9316993202_
                                               (gx#syntax-e _tl9316893197_)))
                                          (let ((_hd9317093205_
                                                 (##car _e9316993202_))
                                                (_tl9317193207_
                                                 (##cdr _e9316993202_)))
                                            (let ((_K93210_ _hd9317093205_))
                                              (if (gx#stx-pair? _tl9317193207_)
                                                  (let ((_e9317293212_
                                                         (gx#syntax-e
                                                          _tl9317193207_)))
                                                    (let ((_hd9317393215_
                                                           (##car _e9317293212_))
                                                          (_tl9317493217_
                                                           (##cdr _e9317293212_)))
                                                      (let ((_E93220_
                                                             _hd9317393215_))
                                                        (if (gx#stx-null?
                                                             _tl9317493217_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test93200_)
                                    (cons (gx#core-compile-top-syntax _K93210_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E93220_)
                                                '()))))
                        (_E9316293180_))
                    (_E9316293180_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9316293180_)))))
                                        (_E9316293180_)))))
                              (_E9316293180_))))
                      (_E9316293180_)))))
          (_E9316193222_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx93118_)
        (let* ((_e9311993129_ _stx93118_)
               (_E9312193133_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9311993129_)))
               (_E9312093155_
                (lambda ()
                  (if (gx#stx-pair? _e9311993129_)
                      (let ((_e9312293137_ (gx#syntax-e _e9311993129_)))
                        (let ((_hd9312393140_ (##car _e9312293137_))
                              (_tl9312493142_ (##cdr _e9312293137_)))
                          (if (gx#stx-pair? _tl9312493142_)
                              (let ((_e9312593145_
                                     (gx#syntax-e _tl9312493142_)))
                                (let ((_hd9312693148_ (##car _e9312593145_))
                                      (_tl9312793150_ (##cdr _e9312593145_)))
                                  (let ((_id93153_ _hd9312693148_))
                                    (if (gx#stx-null? _tl9312793150_)
                                        (if (gx#identifier? _id93153_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id93153_)
                                                        '()))
                                            (_E9312193133_))
                                        (_E9312193133_)))))
                              (_E9312193133_))))
                      (_E9312193133_)))))
          (_E9312093155_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx93064_)
        (let* ((_e9306593078_ _stx93064_)
               (_E9306793082_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9306593078_)))
               (_E9306693114_
                (lambda ()
                  (if (gx#stx-pair? _e9306593078_)
                      (let ((_e9306893086_ (gx#syntax-e _e9306593078_)))
                        (let ((_hd9306993089_ (##car _e9306893086_))
                              (_tl9307093091_ (##cdr _e9306893086_)))
                          (if (gx#stx-pair? _tl9307093091_)
                              (let ((_e9307193094_
                                     (gx#syntax-e _tl9307093091_)))
                                (let ((_hd9307293097_ (##car _e9307193094_))
                                      (_tl9307393099_ (##cdr _e9307193094_)))
                                  (let ((_id93102_ _hd9307293097_))
                                    (if (gx#stx-pair? _tl9307393099_)
                                        (let ((_e9307493104_
                                               (gx#syntax-e _tl9307393099_)))
                                          (let ((_hd9307593107_
                                                 (##car _e9307493104_))
                                                (_tl9307693109_
                                                 (##cdr _e9307493104_)))
                                            (let ((_expr93112_ _hd9307593107_))
                                              (if (gx#stx-null? _tl9307693109_)
                                                  (if (gx#identifier?
                                                       _id93102_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id93102_)
                          (cons (gx#core-compile-top-syntax _expr93112_) '())))
              (_E9306793082_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9306793082_)))))
                                        (_E9306793082_)))))
                              (_E9306793082_))))
                      (_E9306793082_)))))
          (_E9306693114_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id93059_)
        (let ((_$e93061_ (gx#resolve-identifier__0 _id93059_)))
          (if _$e93061_
              (##unchecked-structure-ref _$e93061_ '1 gx#binding::t '#f)
              _id93059_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd93057_)
        (if (gx#identifier? _hd93057_)
            (gx#core-compile-top-runtime-ref _hd93057_)
            '#f)))))
