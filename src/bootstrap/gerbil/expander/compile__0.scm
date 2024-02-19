(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708370114)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx93788_)
        (let* ((_e9378993796_ _stx93788_)
               (_E9379193800_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9378993796_)))
               (_E9379093814_
                (lambda ()
                  (if (gx#stx-pair? _e9378993796_)
                      (let ((_e9379293804_ (gx#syntax-e _e9378993796_)))
                        (let ((_hd9379393807_ (##car _e9379293804_))
                              (_tl9379493809_ (##cdr _e9379293804_)))
                          (let ((_form93812_ _hd9379393807_))
                            (if '#t
                                (let* ((__self93817
                                        (gx#syntax-local-e__0 _form93812_))
                                       (__method93818
                                        (method-ref
                                         __self93817
                                         'compile-top-syntax)))
                                  (if __method93818
                                      (__method93818 __self93817 _stx93788_)
                                      (error '"Missing method"
                                             __self93817
                                             'compile-top-syntax)))
                                (_E9379193800_)))))
                      (_E9379193800_)))))
          (_E9379093814_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self93748_ _stx93749_)
        (let* ((_self9375093758_ _self93748_)
               (_E9375293762_
                (lambda () (error '"No clause matching" _self9375093758_)))
               (_K9375393774_
                (lambda (_K93765_)
                  (let ((_$e93767_ (gx#stx-source _stx93749_)))
                    (if _$e93767_
                        ((lambda (_g9376993771_)
                           (gx#stx-wrap-source
                            (_K93765_ _stx93749_)
                            _g9376993771_))
                         _$e93767_)
                        (_K93765_ _stx93749_))))))
          (if (##structure-instance-of? _self9375093758_ 'gx#core-expander::t)
              (let* ((_e9375493777_
                      (##unchecked-structure-ref
                       _self9375093758_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9375593780_
                      (##unchecked-structure-ref
                       _self9375093758_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9375693783_
                      (##unchecked-structure-ref
                       _self9375093758_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K93786_ _e9375693783_))
                (_K9375393774_ _K93786_))
              (_E9375293762_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx93622_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx93622_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx93592_)
        (let* ((_e9359393600_ _stx93592_)
               (_E9359593604_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9359393600_)))
               (_E9359493618_
                (lambda ()
                  (if (gx#stx-pair? _e9359393600_)
                      (let ((_e9359693608_ (gx#syntax-e _e9359393600_)))
                        (let ((_hd9359793611_ (##car _e9359693608_))
                              (_tl9359893613_ (##cdr _e9359693608_)))
                          (let ((_body93616_ _tl9359893613_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body93616_))
                                (_E9359593604_)))))
                      (_E9359593604_)))))
          (_E9359493618_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx93561_)
        (let* ((_e9356293569_ _stx93561_)
               (_E9356493573_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9356293569_)))
               (_E9356393588_
                (lambda ()
                  (if (gx#stx-pair? _e9356293569_)
                      (let ((_e9356593577_ (gx#syntax-e _e9356293569_)))
                        (let ((_hd9356693580_ (##car _e9356593577_))
                              (_tl9356793582_ (##cdr _e9356593577_)))
                          (let ((_body93585_ _tl9356793582_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body93585_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9356493573_)))))
                      (_E9356493573_)))))
          (_E9356393588_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx93531_)
        (let* ((_e9353293539_ _stx93531_)
               (_E9353493543_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9353293539_)))
               (_E9353393557_
                (lambda ()
                  (if (gx#stx-pair? _e9353293539_)
                      (let ((_e9353593547_ (gx#syntax-e _e9353293539_)))
                        (let ((_hd9353693550_ (##car _e9353593547_))
                              (_tl9353793552_ (##cdr _e9353593547_)))
                          (let ((_body93555_ _tl9353793552_))
                            (if '#t
                                (cons '%#begin-foreign _body93555_)
                                (_E9353493543_)))))
                      (_E9353493543_)))))
          (_E9353393557_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx93477_)
        (let* ((_e9347893491_ _stx93477_)
               (_E9348093495_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9347893491_)))
               (_E9347993527_
                (lambda ()
                  (if (gx#stx-pair? _e9347893491_)
                      (let ((_e9348193499_ (gx#syntax-e _e9347893491_)))
                        (let ((_hd9348293502_ (##car _e9348193499_))
                              (_tl9348393504_ (##cdr _e9348193499_)))
                          (if (gx#stx-pair? _tl9348393504_)
                              (let ((_e9348493507_
                                     (gx#syntax-e _tl9348393504_)))
                                (let ((_hd9348593510_ (##car _e9348493507_))
                                      (_tl9348693512_ (##cdr _e9348493507_)))
                                  (let ((_ann93515_ _hd9348593510_))
                                    (if (gx#stx-pair? _tl9348693512_)
                                        (let ((_e9348793517_
                                               (gx#syntax-e _tl9348693512_)))
                                          (let ((_hd9348893520_
                                                 (##car _e9348793517_))
                                                (_tl9348993522_
                                                 (##cdr _e9348793517_)))
                                            (let ((_expr93525_ _hd9348893520_))
                                              (if (gx#stx-null? _tl9348993522_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr93525_)
                                                      (_E9348093495_))
                                                  (_E9348093495_)))))
                                        (_E9348093495_)))))
                              (_E9348093495_))))
                      (_E9348093495_)))))
          (_E9347993527_))))
    (define gx#core-compile-top-import%
      (lambda (_stx93447_)
        (let* ((_e9344893455_ _stx93447_)
               (_E9345093459_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9344893455_)))
               (_E9344993473_
                (lambda ()
                  (if (gx#stx-pair? _e9344893455_)
                      (let ((_e9345193463_ (gx#syntax-e _e9344893455_)))
                        (let ((_hd9345293466_ (##car _e9345193463_))
                              (_tl9345393468_ (##cdr _e9345193463_)))
                          (let ((_body93471_ _tl9345393468_))
                            (if '#t
                                (cons '%#import _body93471_)
                                (_E9345093459_)))))
                      (_E9345093459_)))))
          (_E9344993473_))))
    (define gx#core-compile-top-module%
      (lambda (_stx93404_)
        (let* ((_e9340593415_ _stx93404_)
               (_E9340793419_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9340593415_)))
               (_E9340693443_
                (lambda ()
                  (if (gx#stx-pair? _e9340593415_)
                      (let ((_e9340893423_ (gx#syntax-e _e9340593415_)))
                        (let ((_hd9340993426_ (##car _e9340893423_))
                              (_tl9341093428_ (##cdr _e9340893423_)))
                          (if (gx#stx-pair? _tl9341093428_)
                              (let ((_e9341193431_
                                     (gx#syntax-e _tl9341093428_)))
                                (let ((_hd9341293434_ (##car _e9341193431_))
                                      (_tl9341393436_ (##cdr _e9341193431_)))
                                  (let* ((_hd93439_ _hd9341293434_)
                                         (_body93441_ _tl9341393436_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd93439_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body93441_)))
                                        (_E9340793419_)))))
                              (_E9340793419_))))
                      (_E9340793419_)))))
          (_E9340693443_))))
    (define gx#core-compile-top-export%
      (lambda (_stx93374_)
        (let* ((_e9337593382_ _stx93374_)
               (_E9337793386_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9337593382_)))
               (_E9337693400_
                (lambda ()
                  (if (gx#stx-pair? _e9337593382_)
                      (let ((_e9337893390_ (gx#syntax-e _e9337593382_)))
                        (let ((_hd9337993393_ (##car _e9337893390_))
                              (_tl9338093395_ (##cdr _e9337893390_)))
                          (let ((_body93398_ _tl9338093395_))
                            (if '#t
                                (cons '%#export _body93398_)
                                (_E9337793386_)))))
                      (_E9337793386_)))))
          (_E9337693400_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx93344_)
        (let* ((_e9334593352_ _stx93344_)
               (_E9334793356_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9334593352_)))
               (_E9334693370_
                (lambda ()
                  (if (gx#stx-pair? _e9334593352_)
                      (let ((_e9334893360_ (gx#syntax-e _e9334593352_)))
                        (let ((_hd9334993363_ (##car _e9334893360_))
                              (_tl9335093365_ (##cdr _e9334893360_)))
                          (let ((_body93368_ _tl9335093365_))
                            (if '#t
                                (cons '%#provide _body93368_)
                                (_E9334793356_)))))
                      (_E9334793356_)))))
          (_E9334693370_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx93314_)
        (let* ((_e9331593322_ _stx93314_)
               (_E9331793326_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9331593322_)))
               (_E9331693340_
                (lambda ()
                  (if (gx#stx-pair? _e9331593322_)
                      (let ((_e9331893330_ (gx#syntax-e _e9331593322_)))
                        (let ((_hd9331993333_ (##car _e9331893330_))
                              (_tl9332093335_ (##cdr _e9331893330_)))
                          (let ((_body93338_ _tl9332093335_))
                            (if '#t
                                (cons '%#extern _body93338_)
                                (_E9331793326_)))))
                      (_E9331793326_)))))
          (_E9331693340_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx93260_)
        (let* ((_e9326193274_ _stx93260_)
               (_E9326393278_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9326193274_)))
               (_E9326293310_
                (lambda ()
                  (if (gx#stx-pair? _e9326193274_)
                      (let ((_e9326493282_ (gx#syntax-e _e9326193274_)))
                        (let ((_hd9326593285_ (##car _e9326493282_))
                              (_tl9326693287_ (##cdr _e9326493282_)))
                          (if (gx#stx-pair? _tl9326693287_)
                              (let ((_e9326793290_
                                     (gx#syntax-e _tl9326693287_)))
                                (let ((_hd9326893293_ (##car _e9326793290_))
                                      (_tl9326993295_ (##cdr _e9326793290_)))
                                  (let ((_hd93298_ _hd9326893293_))
                                    (if (gx#stx-pair? _tl9326993295_)
                                        (let ((_e9327093300_
                                               (gx#syntax-e _tl9326993295_)))
                                          (let ((_hd9327193303_
                                                 (##car _e9327093300_))
                                                (_tl9327293305_
                                                 (##cdr _e9327093300_)))
                                            (let ((_expr93308_ _hd9327193303_))
                                              (if (gx#stx-null? _tl9327293305_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd93298_)
                          (cons (gx#core-compile-top-syntax _expr93308_) '())))
              (_E9326393278_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9326393278_)))))
                                        (_E9326393278_)))))
                              (_E9326393278_))))
                      (_E9326393278_)))))
          (_E9326293310_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx93205_)
        (let* ((_e9320693219_ _stx93205_)
               (_E9320893223_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9320693219_)))
               (_E9320793256_
                (lambda ()
                  (if (gx#stx-pair? _e9320693219_)
                      (let ((_e9320993227_ (gx#syntax-e _e9320693219_)))
                        (let ((_hd9321093230_ (##car _e9320993227_))
                              (_tl9321193232_ (##cdr _e9320993227_)))
                          (if (gx#stx-pair? _tl9321193232_)
                              (let ((_e9321293235_
                                     (gx#syntax-e _tl9321193232_)))
                                (let ((_hd9321393238_ (##car _e9321293235_))
                                      (_tl9321493240_ (##cdr _e9321293235_)))
                                  (let ((_hd93243_ _hd9321393238_))
                                    (if (gx#stx-pair? _tl9321493240_)
                                        (let ((_e9321593245_
                                               (gx#syntax-e _tl9321493240_)))
                                          (let ((_hd9321693248_
                                                 (##car _e9321593245_))
                                                (_tl9321793250_
                                                 (##cdr _e9321593245_)))
                                            (let ((_expr93253_ _hd9321693248_))
                                              (if (gx#stx-null? _tl9321793250_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd93243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr93253_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9320893223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9320893223_)))))
                                        (_E9320893223_)))))
                              (_E9320893223_))))
                      (_E9320893223_)))))
          (_E9320793256_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx93175_)
        (let* ((_e9317693183_ _stx93175_)
               (_E9317893187_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9317693183_)))
               (_E9317793201_
                (lambda ()
                  (if (gx#stx-pair? _e9317693183_)
                      (let ((_e9317993191_ (gx#syntax-e _e9317693183_)))
                        (let ((_hd9318093194_ (##car _e9317993191_))
                              (_tl9318193196_ (##cdr _e9317993191_)))
                          (let ((_body93199_ _tl9318193196_))
                            (if '#t
                                (cons '%#define-alias _body93199_)
                                (_E9317893187_)))))
                      (_E9317893187_)))))
          (_E9317793201_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx93145_)
        (let* ((_e9314693153_ _stx93145_)
               (_E9314893157_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9314693153_)))
               (_E9314793171_
                (lambda ()
                  (if (gx#stx-pair? _e9314693153_)
                      (let ((_e9314993161_ (gx#syntax-e _e9314693153_)))
                        (let ((_hd9315093164_ (##car _e9314993161_))
                              (_tl9315193166_ (##cdr _e9314993161_)))
                          (let ((_body93169_ _tl9315193166_))
                            (if '#t
                                (cons '%#define-runtime _body93169_)
                                (_E9314893157_)))))
                      (_E9314893157_)))))
          (_E9314793171_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx93115_)
        (let* ((_e9311693123_ _stx93115_)
               (_E9311893127_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9311693123_)))
               (_E9311793141_
                (lambda ()
                  (if (gx#stx-pair? _e9311693123_)
                      (let ((_e9311993131_ (gx#syntax-e _e9311693123_)))
                        (let ((_hd9312093134_ (##car _e9311993131_))
                              (_tl9312193136_ (##cdr _e9311993131_)))
                          (let ((_decls93139_ _tl9312193136_))
                            (if '#t
                                (cons '%#declare _decls93139_)
                                (_E9311893127_)))))
                      (_E9311893127_)))))
          (_E9311793141_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx93085_)
        (let* ((_e9308693093_ _stx93085_)
               (_E9308893097_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9308693093_)))
               (_E9308793111_
                (lambda ()
                  (if (gx#stx-pair? _e9308693093_)
                      (let ((_e9308993101_ (gx#syntax-e _e9308693093_)))
                        (let ((_hd9309093104_ (##car _e9308993101_))
                              (_tl9309193106_ (##cdr _e9308993101_)))
                          (let ((_clause93109_ _tl9309193106_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause93109_))
                                (_E9308893097_)))))
                      (_E9308893097_)))))
          (_E9308793111_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx93042_)
        (let* ((_e9304393053_ _stx93042_)
               (_E9304593057_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9304393053_)))
               (_E9304493081_
                (lambda ()
                  (if (gx#stx-pair? _e9304393053_)
                      (let ((_e9304693061_ (gx#syntax-e _e9304393053_)))
                        (let ((_hd9304793064_ (##car _e9304693061_))
                              (_tl9304893066_ (##cdr _e9304693061_)))
                          (let ((_hd93069_ _hd9304793064_))
                            (if (gx#stx-pair? _tl9304893066_)
                                (let ((_e9304993071_
                                       (gx#syntax-e _tl9304893066_)))
                                  (let ((_hd9305093074_ (##car _e9304993071_))
                                        (_tl9305193076_ (##cdr _e9304993071_)))
                                    (let ((_body93079_ _hd9305093074_))
                                      (if (gx#stx-null? _tl9305193076_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd93069_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body93079_)
                                                          '()))
                                              (_E9304593057_))
                                          (_E9304593057_)))))
                                (_E9304593057_)))))
                      (_E9304593057_)))))
          (_E9304493081_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx93012_)
        (let* ((_e9301393020_ _stx93012_)
               (_E9301593024_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9301393020_)))
               (_E9301493038_
                (lambda ()
                  (if (gx#stx-pair? _e9301393020_)
                      (let ((_e9301693028_ (gx#syntax-e _e9301393020_)))
                        (let ((_hd9301793031_ (##car _e9301693028_))
                              (_tl9301893033_ (##cdr _e9301693028_)))
                          (let ((_clauses93036_ _tl9301893033_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses93036_))
                                (_E9301593024_)))))
                      (_E9301593024_)))))
          (_E9301493038_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx92947_ _form92948_)
        (let* ((_e9294992962_ _stx92947_)
               (_E9295192966_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9294992962_)))
               (_E9295092998_
                (lambda ()
                  (if (gx#stx-pair? _e9294992962_)
                      (let ((_e9295292970_ (gx#syntax-e _e9294992962_)))
                        (let ((_hd9295392973_ (##car _e9295292970_))
                              (_tl9295492975_ (##cdr _e9295292970_)))
                          (if (gx#stx-pair? _tl9295492975_)
                              (let ((_e9295592978_
                                     (gx#syntax-e _tl9295492975_)))
                                (let ((_hd9295692981_ (##car _e9295592978_))
                                      (_tl9295792983_ (##cdr _e9295592978_)))
                                  (let ((_hd92986_ _hd9295692981_))
                                    (if (gx#stx-pair? _tl9295792983_)
                                        (let ((_e9295892988_
                                               (gx#syntax-e _tl9295792983_)))
                                          (let ((_hd9295992991_
                                                 (##car _e9295892988_))
                                                (_tl9296092993_
                                                 (##cdr _e9295892988_)))
                                            (let ((_body92996_ _hd9295992991_))
                                              (if (gx#stx-null? _tl9296092993_)
                                                  (if '#t
                                                      (cons _form92948_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd92986_)
                          (cons (gx#core-compile-top-syntax _body92996_) '())))
              (_E9295192966_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9295192966_)))))
                                        (_E9295192966_)))))
                              (_E9295192966_))))
                      (_E9295192966_)))))
          (_E9295092998_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx93005_)
        (let ((_form93007_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx93005_ _form93007_))))
    (define gx#core-compile-top-let-values%
      (lambda _g93820_
        (let ((_g93819_ (##length _g93820_)))
          (cond ((##fx= _g93819_ 1)
                 (apply (lambda (_stx93005_)
                          (gx#core-compile-top-let-values%__0 _stx93005_))
                        _g93820_))
                ((##fx= _g93819_ 2)
                 (apply (lambda (_stx93009_ _form93010_)
                          (gx#core-compile-top-let-values%__%
                           _stx93009_
                           _form93010_))
                        _g93820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g93820_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx92944_)
        (gx#core-compile-top-let-values%__% _stx92944_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx92942_)
        (gx#core-compile-top-let-values%__% _stx92942_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx92901_)
        (let* ((_e9290292912_ _stx92901_)
               (_E9290492916_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9290292912_)))
               (_E9290392938_
                (lambda ()
                  (if (gx#stx-pair? _e9290292912_)
                      (let ((_e9290592920_ (gx#syntax-e _e9290292912_)))
                        (let ((_hd9290692923_ (##car _e9290592920_))
                              (_tl9290792925_ (##cdr _e9290592920_)))
                          (if (gx#stx-pair? _tl9290792925_)
                              (let ((_e9290892928_
                                     (gx#syntax-e _tl9290792925_)))
                                (let ((_hd9290992931_ (##car _e9290892928_))
                                      (_tl9291092933_ (##cdr _e9290892928_)))
                                  (let ((_e92936_ _hd9290992931_))
                                    (if (gx#stx-null? _tl9291092933_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e92936_)
                                                        '()))
                                            (_E9290492916_))
                                        (_E9290492916_)))))
                              (_E9290492916_))))
                      (_E9290492916_)))))
          (_E9290392938_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx92860_)
        (let* ((_e9286192871_ _stx92860_)
               (_E9286392875_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9286192871_)))
               (_E9286292897_
                (lambda ()
                  (if (gx#stx-pair? _e9286192871_)
                      (let ((_e9286492879_ (gx#syntax-e _e9286192871_)))
                        (let ((_hd9286592882_ (##car _e9286492879_))
                              (_tl9286692884_ (##cdr _e9286492879_)))
                          (if (gx#stx-pair? _tl9286692884_)
                              (let ((_e9286792887_
                                     (gx#syntax-e _tl9286692884_)))
                                (let ((_hd9286892890_ (##car _e9286792887_))
                                      (_tl9286992892_ (##cdr _e9286792887_)))
                                  (let ((_e92895_ _hd9286892890_))
                                    (if (gx#stx-null? _tl9286992892_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e92895_)
                                                        '()))
                                            (_E9286392875_))
                                        (_E9286392875_)))))
                              (_E9286392875_))))
                      (_E9286392875_)))))
          (_E9286292897_))))
    (define gx#core-compile-top-call%
      (lambda (_stx92817_)
        (let* ((_e9281892828_ _stx92817_)
               (_E9282092832_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9281892828_)))
               (_E9281992856_
                (lambda ()
                  (if (gx#stx-pair? _e9281892828_)
                      (let ((_e9282192836_ (gx#syntax-e _e9281892828_)))
                        (let ((_hd9282292839_ (##car _e9282192836_))
                              (_tl9282392841_ (##cdr _e9282192836_)))
                          (if (gx#stx-pair? _tl9282392841_)
                              (let ((_e9282492844_
                                     (gx#syntax-e _tl9282392841_)))
                                (let ((_hd9282592847_ (##car _e9282492844_))
                                      (_tl9282692849_ (##cdr _e9282492844_)))
                                  (let* ((_rator92852_ _hd9282592847_)
                                         (_args92854_ _tl9282692849_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator92852_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args92854_)))
                                        (_E9282092832_)))))
                              (_E9282092832_))))
                      (_E9282092832_)))))
          (_E9281992856_))))
    (define gx#core-compile-top-if%
      (lambda (_stx92750_)
        (let* ((_e9275192767_ _stx92750_)
               (_E9275392771_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9275192767_)))
               (_E9275292813_
                (lambda ()
                  (if (gx#stx-pair? _e9275192767_)
                      (let ((_e9275492775_ (gx#syntax-e _e9275192767_)))
                        (let ((_hd9275592778_ (##car _e9275492775_))
                              (_tl9275692780_ (##cdr _e9275492775_)))
                          (if (gx#stx-pair? _tl9275692780_)
                              (let ((_e9275792783_
                                     (gx#syntax-e _tl9275692780_)))
                                (let ((_hd9275892786_ (##car _e9275792783_))
                                      (_tl9275992788_ (##cdr _e9275792783_)))
                                  (let ((_test92791_ _hd9275892786_))
                                    (if (gx#stx-pair? _tl9275992788_)
                                        (let ((_e9276092793_
                                               (gx#syntax-e _tl9275992788_)))
                                          (let ((_hd9276192796_
                                                 (##car _e9276092793_))
                                                (_tl9276292798_
                                                 (##cdr _e9276092793_)))
                                            (let ((_K92801_ _hd9276192796_))
                                              (if (gx#stx-pair? _tl9276292798_)
                                                  (let ((_e9276392803_
                                                         (gx#syntax-e
                                                          _tl9276292798_)))
                                                    (let ((_hd9276492806_
                                                           (##car _e9276392803_))
                                                          (_tl9276592808_
                                                           (##cdr _e9276392803_)))
                                                      (let ((_E92811_
                                                             _hd9276492806_))
                                                        (if (gx#stx-null?
                                                             _tl9276592808_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test92791_)
                                    (cons (gx#core-compile-top-syntax _K92801_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E92811_)
                                                '()))))
                        (_E9275392771_))
                    (_E9275392771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9275392771_)))))
                                        (_E9275392771_)))))
                              (_E9275392771_))))
                      (_E9275392771_)))))
          (_E9275292813_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx92709_)
        (let* ((_e9271092720_ _stx92709_)
               (_E9271292724_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9271092720_)))
               (_E9271192746_
                (lambda ()
                  (if (gx#stx-pair? _e9271092720_)
                      (let ((_e9271392728_ (gx#syntax-e _e9271092720_)))
                        (let ((_hd9271492731_ (##car _e9271392728_))
                              (_tl9271592733_ (##cdr _e9271392728_)))
                          (if (gx#stx-pair? _tl9271592733_)
                              (let ((_e9271692736_
                                     (gx#syntax-e _tl9271592733_)))
                                (let ((_hd9271792739_ (##car _e9271692736_))
                                      (_tl9271892741_ (##cdr _e9271692736_)))
                                  (let ((_id92744_ _hd9271792739_))
                                    (if (gx#stx-null? _tl9271892741_)
                                        (if (gx#identifier? _id92744_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id92744_)
                                                        '()))
                                            (_E9271292724_))
                                        (_E9271292724_)))))
                              (_E9271292724_))))
                      (_E9271292724_)))))
          (_E9271192746_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx92655_)
        (let* ((_e9265692669_ _stx92655_)
               (_E9265892673_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9265692669_)))
               (_E9265792705_
                (lambda ()
                  (if (gx#stx-pair? _e9265692669_)
                      (let ((_e9265992677_ (gx#syntax-e _e9265692669_)))
                        (let ((_hd9266092680_ (##car _e9265992677_))
                              (_tl9266192682_ (##cdr _e9265992677_)))
                          (if (gx#stx-pair? _tl9266192682_)
                              (let ((_e9266292685_
                                     (gx#syntax-e _tl9266192682_)))
                                (let ((_hd9266392688_ (##car _e9266292685_))
                                      (_tl9266492690_ (##cdr _e9266292685_)))
                                  (let ((_id92693_ _hd9266392688_))
                                    (if (gx#stx-pair? _tl9266492690_)
                                        (let ((_e9266592695_
                                               (gx#syntax-e _tl9266492690_)))
                                          (let ((_hd9266692698_
                                                 (##car _e9266592695_))
                                                (_tl9266792700_
                                                 (##cdr _e9266592695_)))
                                            (let ((_expr92703_ _hd9266692698_))
                                              (if (gx#stx-null? _tl9266792700_)
                                                  (if (gx#identifier?
                                                       _id92693_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id92693_)
                          (cons (gx#core-compile-top-syntax _expr92703_) '())))
              (_E9265892673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9265892673_)))))
                                        (_E9265892673_)))))
                              (_E9265892673_))))
                      (_E9265892673_)))))
          (_E9265792705_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id92650_)
        (let ((_$e92652_ (gx#resolve-identifier__0 _id92650_)))
          (if _$e92652_
              (##unchecked-structure-ref _$e92652_ '1 gx#binding::t '#f)
              _id92650_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd92648_)
        (if (gx#identifier? _hd92648_)
            (gx#core-compile-top-runtime-ref _hd92648_)
            '#f)))))
