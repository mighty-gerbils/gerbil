(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708168070)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx176700_)
        (let* ((_e176701176708_ _stx176700_)
               (_E176703176712_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176701176708_)))
               (_E176702176726_
                (lambda ()
                  (if (gx#stx-pair? _e176701176708_)
                      (let ((_e176704176716_ (gx#syntax-e _e176701176708_)))
                        (let ((_hd176705176719_ (##car _e176704176716_))
                              (_tl176706176721_ (##cdr _e176704176716_)))
                          (let ((_form176724_ _hd176705176719_))
                            (if '#t
                                (let* ((__self181297
                                        (gx#syntax-local-e__0 _form176724_))
                                       (__method181298
                                        (method-ref
                                         __self181297
                                         'compile-top-syntax)))
                                  (if __method181298
                                      (__method181298 __self181297 _stx176700_)
                                      (error '"Missing method"
                                             __self181297
                                             'compile-top-syntax)))
                                (_E176703176712_)))))
                      (_E176703176712_)))))
          (_E176702176726_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self176660_ _stx176661_)
        (let* ((_self176662176670_ _self176660_)
               (_E176664176674_
                (lambda () (error '"No clause matching" _self176662176670_)))
               (_K176665176686_
                (lambda (_K176677_)
                  (let ((_$e176679_ (gx#stx-source _stx176661_)))
                    (if _$e176679_
                        ((lambda (_g176681176683_)
                           (gx#stx-wrap-source
                            (_K176677_ _stx176661_)
                            _g176681176683_))
                         _$e176679_)
                        (_K176677_ _stx176661_))))))
          (if (##structure-instance-of?
               _self176662176670_
               'gx#core-expander::t)
              (let* ((_e176666176689_
                      (##unchecked-structure-ref
                       _self176662176670_
                       '1
                       gx#expander::t
                       '#f))
                     (_e176667176692_
                      (##unchecked-structure-ref
                       _self176662176670_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e176668176695_
                      (##unchecked-structure-ref
                       _self176662176670_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K176698_ _e176668176695_))
                (_K176665176686_ _K176698_))
              (_E176664176674_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx176534_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx176534_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx176504_)
        (let* ((_e176505176512_ _stx176504_)
               (_E176507176516_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176505176512_)))
               (_E176506176530_
                (lambda ()
                  (if (gx#stx-pair? _e176505176512_)
                      (let ((_e176508176520_ (gx#syntax-e _e176505176512_)))
                        (let ((_hd176509176523_ (##car _e176508176520_))
                              (_tl176510176525_ (##cdr _e176508176520_)))
                          (let ((_body176528_ _tl176510176525_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body176528_))
                                (_E176507176516_)))))
                      (_E176507176516_)))))
          (_E176506176530_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx176473_)
        (let* ((_e176474176481_ _stx176473_)
               (_E176476176485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176474176481_)))
               (_E176475176500_
                (lambda ()
                  (if (gx#stx-pair? _e176474176481_)
                      (let ((_e176477176489_ (gx#syntax-e _e176474176481_)))
                        (let ((_hd176478176492_ (##car _e176477176489_))
                              (_tl176479176494_ (##cdr _e176477176489_)))
                          (let ((_body176497_ _tl176479176494_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body176497_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E176476176485_)))))
                      (_E176476176485_)))))
          (_E176475176500_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx176443_)
        (let* ((_e176444176451_ _stx176443_)
               (_E176446176455_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176444176451_)))
               (_E176445176469_
                (lambda ()
                  (if (gx#stx-pair? _e176444176451_)
                      (let ((_e176447176459_ (gx#syntax-e _e176444176451_)))
                        (let ((_hd176448176462_ (##car _e176447176459_))
                              (_tl176449176464_ (##cdr _e176447176459_)))
                          (let ((_body176467_ _tl176449176464_))
                            (if '#t
                                (cons '%#begin-foreign _body176467_)
                                (_E176446176455_)))))
                      (_E176446176455_)))))
          (_E176445176469_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx176389_)
        (let* ((_e176390176403_ _stx176389_)
               (_E176392176407_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176390176403_)))
               (_E176391176439_
                (lambda ()
                  (if (gx#stx-pair? _e176390176403_)
                      (let ((_e176393176411_ (gx#syntax-e _e176390176403_)))
                        (let ((_hd176394176414_ (##car _e176393176411_))
                              (_tl176395176416_ (##cdr _e176393176411_)))
                          (if (gx#stx-pair? _tl176395176416_)
                              (let ((_e176396176419_
                                     (gx#syntax-e _tl176395176416_)))
                                (let ((_hd176397176422_
                                       (##car _e176396176419_))
                                      (_tl176398176424_
                                       (##cdr _e176396176419_)))
                                  (let ((_ann176427_ _hd176397176422_))
                                    (if (gx#stx-pair? _tl176398176424_)
                                        (let ((_e176399176429_
                                               (gx#syntax-e _tl176398176424_)))
                                          (let ((_hd176400176432_
                                                 (##car _e176399176429_))
                                                (_tl176401176434_
                                                 (##cdr _e176399176429_)))
                                            (let ((_expr176437_
                                                   _hd176400176432_))
                                              (if (gx#stx-null?
                                                   _tl176401176434_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr176437_)
                                                      (_E176392176407_))
                                                  (_E176392176407_)))))
                                        (_E176392176407_)))))
                              (_E176392176407_))))
                      (_E176392176407_)))))
          (_E176391176439_))))
    (define gx#core-compile-top-import%
      (lambda (_stx176359_)
        (let* ((_e176360176367_ _stx176359_)
               (_E176362176371_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176360176367_)))
               (_E176361176385_
                (lambda ()
                  (if (gx#stx-pair? _e176360176367_)
                      (let ((_e176363176375_ (gx#syntax-e _e176360176367_)))
                        (let ((_hd176364176378_ (##car _e176363176375_))
                              (_tl176365176380_ (##cdr _e176363176375_)))
                          (let ((_body176383_ _tl176365176380_))
                            (if '#t
                                (cons '%#import _body176383_)
                                (_E176362176371_)))))
                      (_E176362176371_)))))
          (_E176361176385_))))
    (define gx#core-compile-top-module%
      (lambda (_stx176316_)
        (let* ((_e176317176327_ _stx176316_)
               (_E176319176331_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176317176327_)))
               (_E176318176355_
                (lambda ()
                  (if (gx#stx-pair? _e176317176327_)
                      (let ((_e176320176335_ (gx#syntax-e _e176317176327_)))
                        (let ((_hd176321176338_ (##car _e176320176335_))
                              (_tl176322176340_ (##cdr _e176320176335_)))
                          (if (gx#stx-pair? _tl176322176340_)
                              (let ((_e176323176343_
                                     (gx#syntax-e _tl176322176340_)))
                                (let ((_hd176324176346_
                                       (##car _e176323176343_))
                                      (_tl176325176348_
                                       (##cdr _e176323176343_)))
                                  (let* ((_hd176351_ _hd176324176346_)
                                         (_body176353_ _tl176325176348_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd176351_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body176353_)))
                                        (_E176319176331_)))))
                              (_E176319176331_))))
                      (_E176319176331_)))))
          (_E176318176355_))))
    (define gx#core-compile-top-export%
      (lambda (_stx176286_)
        (let* ((_e176287176294_ _stx176286_)
               (_E176289176298_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176287176294_)))
               (_E176288176312_
                (lambda ()
                  (if (gx#stx-pair? _e176287176294_)
                      (let ((_e176290176302_ (gx#syntax-e _e176287176294_)))
                        (let ((_hd176291176305_ (##car _e176290176302_))
                              (_tl176292176307_ (##cdr _e176290176302_)))
                          (let ((_body176310_ _tl176292176307_))
                            (if '#t
                                (cons '%#export _body176310_)
                                (_E176289176298_)))))
                      (_E176289176298_)))))
          (_E176288176312_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx176256_)
        (let* ((_e176257176264_ _stx176256_)
               (_E176259176268_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176257176264_)))
               (_E176258176282_
                (lambda ()
                  (if (gx#stx-pair? _e176257176264_)
                      (let ((_e176260176272_ (gx#syntax-e _e176257176264_)))
                        (let ((_hd176261176275_ (##car _e176260176272_))
                              (_tl176262176277_ (##cdr _e176260176272_)))
                          (let ((_body176280_ _tl176262176277_))
                            (if '#t
                                (cons '%#provide _body176280_)
                                (_E176259176268_)))))
                      (_E176259176268_)))))
          (_E176258176282_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx176226_)
        (let* ((_e176227176234_ _stx176226_)
               (_E176229176238_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176227176234_)))
               (_E176228176252_
                (lambda ()
                  (if (gx#stx-pair? _e176227176234_)
                      (let ((_e176230176242_ (gx#syntax-e _e176227176234_)))
                        (let ((_hd176231176245_ (##car _e176230176242_))
                              (_tl176232176247_ (##cdr _e176230176242_)))
                          (let ((_body176250_ _tl176232176247_))
                            (if '#t
                                (cons '%#extern _body176250_)
                                (_E176229176238_)))))
                      (_E176229176238_)))))
          (_E176228176252_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx176172_)
        (let* ((_e176173176186_ _stx176172_)
               (_E176175176190_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176173176186_)))
               (_E176174176222_
                (lambda ()
                  (if (gx#stx-pair? _e176173176186_)
                      (let ((_e176176176194_ (gx#syntax-e _e176173176186_)))
                        (let ((_hd176177176197_ (##car _e176176176194_))
                              (_tl176178176199_ (##cdr _e176176176194_)))
                          (if (gx#stx-pair? _tl176178176199_)
                              (let ((_e176179176202_
                                     (gx#syntax-e _tl176178176199_)))
                                (let ((_hd176180176205_
                                       (##car _e176179176202_))
                                      (_tl176181176207_
                                       (##cdr _e176179176202_)))
                                  (let ((_hd176210_ _hd176180176205_))
                                    (if (gx#stx-pair? _tl176181176207_)
                                        (let ((_e176182176212_
                                               (gx#syntax-e _tl176181176207_)))
                                          (let ((_hd176183176215_
                                                 (##car _e176182176212_))
                                                (_tl176184176217_
                                                 (##cdr _e176182176212_)))
                                            (let ((_expr176220_
                                                   _hd176183176215_))
                                              (if (gx#stx-null?
                                                   _tl176184176217_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd176210_)
                          (cons (gx#core-compile-top-syntax _expr176220_)
                                '())))
              (_E176175176190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E176175176190_)))))
                                        (_E176175176190_)))))
                              (_E176175176190_))))
                      (_E176175176190_)))))
          (_E176174176222_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx176117_)
        (let* ((_e176118176131_ _stx176117_)
               (_E176120176135_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176118176131_)))
               (_E176119176168_
                (lambda ()
                  (if (gx#stx-pair? _e176118176131_)
                      (let ((_e176121176139_ (gx#syntax-e _e176118176131_)))
                        (let ((_hd176122176142_ (##car _e176121176139_))
                              (_tl176123176144_ (##cdr _e176121176139_)))
                          (if (gx#stx-pair? _tl176123176144_)
                              (let ((_e176124176147_
                                     (gx#syntax-e _tl176123176144_)))
                                (let ((_hd176125176150_
                                       (##car _e176124176147_))
                                      (_tl176126176152_
                                       (##cdr _e176124176147_)))
                                  (let ((_hd176155_ _hd176125176150_))
                                    (if (gx#stx-pair? _tl176126176152_)
                                        (let ((_e176127176157_
                                               (gx#syntax-e _tl176126176152_)))
                                          (let ((_hd176128176160_
                                                 (##car _e176127176157_))
                                                (_tl176129176162_
                                                 (##cdr _e176127176157_)))
                                            (let ((_expr176165_
                                                   _hd176128176160_))
                                              (if (gx#stx-null?
                                                   _tl176129176162_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd176155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr176165_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E176120176135_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E176120176135_)))))
                                        (_E176120176135_)))))
                              (_E176120176135_))))
                      (_E176120176135_)))))
          (_E176119176168_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx176087_)
        (let* ((_e176088176095_ _stx176087_)
               (_E176090176099_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176088176095_)))
               (_E176089176113_
                (lambda ()
                  (if (gx#stx-pair? _e176088176095_)
                      (let ((_e176091176103_ (gx#syntax-e _e176088176095_)))
                        (let ((_hd176092176106_ (##car _e176091176103_))
                              (_tl176093176108_ (##cdr _e176091176103_)))
                          (let ((_body176111_ _tl176093176108_))
                            (if '#t
                                (cons '%#define-alias _body176111_)
                                (_E176090176099_)))))
                      (_E176090176099_)))))
          (_E176089176113_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx176057_)
        (let* ((_e176058176065_ _stx176057_)
               (_E176060176069_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176058176065_)))
               (_E176059176083_
                (lambda ()
                  (if (gx#stx-pair? _e176058176065_)
                      (let ((_e176061176073_ (gx#syntax-e _e176058176065_)))
                        (let ((_hd176062176076_ (##car _e176061176073_))
                              (_tl176063176078_ (##cdr _e176061176073_)))
                          (let ((_body176081_ _tl176063176078_))
                            (if '#t
                                (cons '%#define-runtime _body176081_)
                                (_E176060176069_)))))
                      (_E176060176069_)))))
          (_E176059176083_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx176027_)
        (let* ((_e176028176035_ _stx176027_)
               (_E176030176039_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176028176035_)))
               (_E176029176053_
                (lambda ()
                  (if (gx#stx-pair? _e176028176035_)
                      (let ((_e176031176043_ (gx#syntax-e _e176028176035_)))
                        (let ((_hd176032176046_ (##car _e176031176043_))
                              (_tl176033176048_ (##cdr _e176031176043_)))
                          (let ((_decls176051_ _tl176033176048_))
                            (if '#t
                                (cons '%#declare _decls176051_)
                                (_E176030176039_)))))
                      (_E176030176039_)))))
          (_E176029176053_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx175997_)
        (let* ((_e175998176005_ _stx175997_)
               (_E176000176009_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175998176005_)))
               (_E175999176023_
                (lambda ()
                  (if (gx#stx-pair? _e175998176005_)
                      (let ((_e176001176013_ (gx#syntax-e _e175998176005_)))
                        (let ((_hd176002176016_ (##car _e176001176013_))
                              (_tl176003176018_ (##cdr _e176001176013_)))
                          (let ((_clause176021_ _tl176003176018_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause176021_))
                                (_E176000176009_)))))
                      (_E176000176009_)))))
          (_E175999176023_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx175954_)
        (let* ((_e175955175965_ _stx175954_)
               (_E175957175969_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175955175965_)))
               (_E175956175993_
                (lambda ()
                  (if (gx#stx-pair? _e175955175965_)
                      (let ((_e175958175973_ (gx#syntax-e _e175955175965_)))
                        (let ((_hd175959175976_ (##car _e175958175973_))
                              (_tl175960175978_ (##cdr _e175958175973_)))
                          (let ((_hd175981_ _hd175959175976_))
                            (if (gx#stx-pair? _tl175960175978_)
                                (let ((_e175961175983_
                                       (gx#syntax-e _tl175960175978_)))
                                  (let ((_hd175962175986_
                                         (##car _e175961175983_))
                                        (_tl175963175988_
                                         (##cdr _e175961175983_)))
                                    (let ((_body175991_ _hd175962175986_))
                                      (if (gx#stx-null? _tl175963175988_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd175981_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body175991_)
                                                          '()))
                                              (_E175957175969_))
                                          (_E175957175969_)))))
                                (_E175957175969_)))))
                      (_E175957175969_)))))
          (_E175956175993_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx175924_)
        (let* ((_e175925175932_ _stx175924_)
               (_E175927175936_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175925175932_)))
               (_E175926175950_
                (lambda ()
                  (if (gx#stx-pair? _e175925175932_)
                      (let ((_e175928175940_ (gx#syntax-e _e175925175932_)))
                        (let ((_hd175929175943_ (##car _e175928175940_))
                              (_tl175930175945_ (##cdr _e175928175940_)))
                          (let ((_clauses175948_ _tl175930175945_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses175948_))
                                (_E175927175936_)))))
                      (_E175927175936_)))))
          (_E175926175950_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx175859_ _form175860_)
        (let* ((_e175861175874_ _stx175859_)
               (_E175863175878_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175861175874_)))
               (_E175862175910_
                (lambda ()
                  (if (gx#stx-pair? _e175861175874_)
                      (let ((_e175864175882_ (gx#syntax-e _e175861175874_)))
                        (let ((_hd175865175885_ (##car _e175864175882_))
                              (_tl175866175887_ (##cdr _e175864175882_)))
                          (if (gx#stx-pair? _tl175866175887_)
                              (let ((_e175867175890_
                                     (gx#syntax-e _tl175866175887_)))
                                (let ((_hd175868175893_
                                       (##car _e175867175890_))
                                      (_tl175869175895_
                                       (##cdr _e175867175890_)))
                                  (let ((_hd175898_ _hd175868175893_))
                                    (if (gx#stx-pair? _tl175869175895_)
                                        (let ((_e175870175900_
                                               (gx#syntax-e _tl175869175895_)))
                                          (let ((_hd175871175903_
                                                 (##car _e175870175900_))
                                                (_tl175872175905_
                                                 (##cdr _e175870175900_)))
                                            (let ((_body175908_
                                                   _hd175871175903_))
                                              (if (gx#stx-null?
                                                   _tl175872175905_)
                                                  (if '#t
                                                      (cons _form175860_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd175898_)
                          (cons (gx#core-compile-top-syntax _body175908_)
                                '())))
              (_E175863175878_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E175863175878_)))))
                                        (_E175863175878_)))))
                              (_E175863175878_))))
                      (_E175863175878_)))))
          (_E175862175910_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx175917_)
        (let ((_form175919_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx175917_ _form175919_))))
    (define gx#core-compile-top-let-values%
      (lambda _g181300_
        (let ((_g181299_ (##length _g181300_)))
          (cond ((##fx= _g181299_ 1)
                 (apply (lambda (_stx175917_)
                          (gx#core-compile-top-let-values%__0 _stx175917_))
                        _g181300_))
                ((##fx= _g181299_ 2)
                 (apply (lambda (_stx175921_ _form175922_)
                          (gx#core-compile-top-let-values%__%
                           _stx175921_
                           _form175922_))
                        _g181300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g181300_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx175856_)
        (gx#core-compile-top-let-values%__% _stx175856_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx175854_)
        (gx#core-compile-top-let-values%__% _stx175854_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx175813_)
        (let* ((_e175814175824_ _stx175813_)
               (_E175816175828_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175814175824_)))
               (_E175815175850_
                (lambda ()
                  (if (gx#stx-pair? _e175814175824_)
                      (let ((_e175817175832_ (gx#syntax-e _e175814175824_)))
                        (let ((_hd175818175835_ (##car _e175817175832_))
                              (_tl175819175837_ (##cdr _e175817175832_)))
                          (if (gx#stx-pair? _tl175819175837_)
                              (let ((_e175820175840_
                                     (gx#syntax-e _tl175819175837_)))
                                (let ((_hd175821175843_
                                       (##car _e175820175840_))
                                      (_tl175822175845_
                                       (##cdr _e175820175840_)))
                                  (let ((_e175848_ _hd175821175843_))
                                    (if (gx#stx-null? _tl175822175845_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e175848_)
                                                        '()))
                                            (_E175816175828_))
                                        (_E175816175828_)))))
                              (_E175816175828_))))
                      (_E175816175828_)))))
          (_E175815175850_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx175772_)
        (let* ((_e175773175783_ _stx175772_)
               (_E175775175787_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175773175783_)))
               (_E175774175809_
                (lambda ()
                  (if (gx#stx-pair? _e175773175783_)
                      (let ((_e175776175791_ (gx#syntax-e _e175773175783_)))
                        (let ((_hd175777175794_ (##car _e175776175791_))
                              (_tl175778175796_ (##cdr _e175776175791_)))
                          (if (gx#stx-pair? _tl175778175796_)
                              (let ((_e175779175799_
                                     (gx#syntax-e _tl175778175796_)))
                                (let ((_hd175780175802_
                                       (##car _e175779175799_))
                                      (_tl175781175804_
                                       (##cdr _e175779175799_)))
                                  (let ((_e175807_ _hd175780175802_))
                                    (if (gx#stx-null? _tl175781175804_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e175807_)
                                                        '()))
                                            (_E175775175787_))
                                        (_E175775175787_)))))
                              (_E175775175787_))))
                      (_E175775175787_)))))
          (_E175774175809_))))
    (define gx#core-compile-top-call%
      (lambda (_stx175729_)
        (let* ((_e175730175740_ _stx175729_)
               (_E175732175744_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175730175740_)))
               (_E175731175768_
                (lambda ()
                  (if (gx#stx-pair? _e175730175740_)
                      (let ((_e175733175748_ (gx#syntax-e _e175730175740_)))
                        (let ((_hd175734175751_ (##car _e175733175748_))
                              (_tl175735175753_ (##cdr _e175733175748_)))
                          (if (gx#stx-pair? _tl175735175753_)
                              (let ((_e175736175756_
                                     (gx#syntax-e _tl175735175753_)))
                                (let ((_hd175737175759_
                                       (##car _e175736175756_))
                                      (_tl175738175761_
                                       (##cdr _e175736175756_)))
                                  (let* ((_rator175764_ _hd175737175759_)
                                         (_args175766_ _tl175738175761_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator175764_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args175766_)))
                                        (_E175732175744_)))))
                              (_E175732175744_))))
                      (_E175732175744_)))))
          (_E175731175768_))))
    (define gx#core-compile-top-if%
      (lambda (_stx175662_)
        (let* ((_e175663175679_ _stx175662_)
               (_E175665175683_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175663175679_)))
               (_E175664175725_
                (lambda ()
                  (if (gx#stx-pair? _e175663175679_)
                      (let ((_e175666175687_ (gx#syntax-e _e175663175679_)))
                        (let ((_hd175667175690_ (##car _e175666175687_))
                              (_tl175668175692_ (##cdr _e175666175687_)))
                          (if (gx#stx-pair? _tl175668175692_)
                              (let ((_e175669175695_
                                     (gx#syntax-e _tl175668175692_)))
                                (let ((_hd175670175698_
                                       (##car _e175669175695_))
                                      (_tl175671175700_
                                       (##cdr _e175669175695_)))
                                  (let ((_test175703_ _hd175670175698_))
                                    (if (gx#stx-pair? _tl175671175700_)
                                        (let ((_e175672175705_
                                               (gx#syntax-e _tl175671175700_)))
                                          (let ((_hd175673175708_
                                                 (##car _e175672175705_))
                                                (_tl175674175710_
                                                 (##cdr _e175672175705_)))
                                            (let ((_K175713_ _hd175673175708_))
                                              (if (gx#stx-pair?
                                                   _tl175674175710_)
                                                  (let ((_e175675175715_
                                                         (gx#syntax-e
                                                          _tl175674175710_)))
                                                    (let ((_hd175676175718_
                                                           (##car _e175675175715_))
                                                          (_tl175677175720_
                                                           (##cdr _e175675175715_)))
                                                      (let ((_E175723_
                                                             _hd175676175718_))
                                                        (if (gx#stx-null?
                                                             _tl175677175720_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test175703_)
                                    (cons (gx#core-compile-top-syntax
                                           _K175713_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E175723_)
                                                '()))))
                        (_E175665175683_))
                    (_E175665175683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E175665175683_)))))
                                        (_E175665175683_)))))
                              (_E175665175683_))))
                      (_E175665175683_)))))
          (_E175664175725_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx175621_)
        (let* ((_e175622175632_ _stx175621_)
               (_E175624175636_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175622175632_)))
               (_E175623175658_
                (lambda ()
                  (if (gx#stx-pair? _e175622175632_)
                      (let ((_e175625175640_ (gx#syntax-e _e175622175632_)))
                        (let ((_hd175626175643_ (##car _e175625175640_))
                              (_tl175627175645_ (##cdr _e175625175640_)))
                          (if (gx#stx-pair? _tl175627175645_)
                              (let ((_e175628175648_
                                     (gx#syntax-e _tl175627175645_)))
                                (let ((_hd175629175651_
                                       (##car _e175628175648_))
                                      (_tl175630175653_
                                       (##cdr _e175628175648_)))
                                  (let ((_id175656_ _hd175629175651_))
                                    (if (gx#stx-null? _tl175630175653_)
                                        (if (gx#identifier? _id175656_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id175656_)
                                                        '()))
                                            (_E175624175636_))
                                        (_E175624175636_)))))
                              (_E175624175636_))))
                      (_E175624175636_)))))
          (_E175623175658_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx175567_)
        (let* ((_e175568175581_ _stx175567_)
               (_E175570175585_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175568175581_)))
               (_E175569175617_
                (lambda ()
                  (if (gx#stx-pair? _e175568175581_)
                      (let ((_e175571175589_ (gx#syntax-e _e175568175581_)))
                        (let ((_hd175572175592_ (##car _e175571175589_))
                              (_tl175573175594_ (##cdr _e175571175589_)))
                          (if (gx#stx-pair? _tl175573175594_)
                              (let ((_e175574175597_
                                     (gx#syntax-e _tl175573175594_)))
                                (let ((_hd175575175600_
                                       (##car _e175574175597_))
                                      (_tl175576175602_
                                       (##cdr _e175574175597_)))
                                  (let ((_id175605_ _hd175575175600_))
                                    (if (gx#stx-pair? _tl175576175602_)
                                        (let ((_e175577175607_
                                               (gx#syntax-e _tl175576175602_)))
                                          (let ((_hd175578175610_
                                                 (##car _e175577175607_))
                                                (_tl175579175612_
                                                 (##cdr _e175577175607_)))
                                            (let ((_expr175615_
                                                   _hd175578175610_))
                                              (if (gx#stx-null?
                                                   _tl175579175612_)
                                                  (if (gx#identifier?
                                                       _id175605_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id175605_)
                          (cons (gx#core-compile-top-syntax _expr175615_)
                                '())))
              (_E175570175585_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E175570175585_)))))
                                        (_E175570175585_)))))
                              (_E175570175585_))))
                      (_E175570175585_)))))
          (_E175569175617_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id175562_)
        (let ((_$e175564_ (gx#resolve-identifier__0 _id175562_)))
          (if _$e175564_
              (##unchecked-structure-ref _$e175564_ '1 gx#binding::t '#f)
              _id175562_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd175560_)
        (if (gx#identifier? _hd175560_)
            (gx#core-compile-top-runtime-ref _hd175560_)
            '#f)))))
