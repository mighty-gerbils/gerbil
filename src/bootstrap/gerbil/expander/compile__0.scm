(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708165430)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx176259_)
        (let* ((_e176260176267_ _stx176259_)
               (_E176262176271_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176260176267_)))
               (_E176261176285_
                (lambda ()
                  (if (gx#stx-pair? _e176260176267_)
                      (let ((_e176263176275_ (gx#syntax-e _e176260176267_)))
                        (let ((_hd176264176278_ (##car _e176263176275_))
                              (_tl176265176280_ (##cdr _e176263176275_)))
                          (let ((_form176283_ _hd176264176278_))
                            (if '#t
                                (let* ((__self180856
                                        (gx#syntax-local-e__0 _form176283_))
                                       (__method180857
                                        (method-ref
                                         __self180856
                                         'compile-top-syntax)))
                                  (if __method180857
                                      (__method180857 __self180856 _stx176259_)
                                      (error '"Missing method"
                                             __self180856
                                             'compile-top-syntax)))
                                (_E176262176271_)))))
                      (_E176262176271_)))))
          (_E176261176285_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self176219_ _stx176220_)
        (let* ((_self176221176229_ _self176219_)
               (_E176223176233_
                (lambda () (error '"No clause matching" _self176221176229_)))
               (_K176224176245_
                (lambda (_K176236_)
                  (let ((_$e176238_ (gx#stx-source _stx176220_)))
                    (if _$e176238_
                        ((lambda (_g176240176242_)
                           (gx#stx-wrap-source
                            (_K176236_ _stx176220_)
                            _g176240176242_))
                         _$e176238_)
                        (_K176236_ _stx176220_))))))
          (if (##structure-instance-of?
               _self176221176229_
               'gx#core-expander::t)
              (let* ((_e176225176248_
                      (##unchecked-structure-ref
                       _self176221176229_
                       '1
                       gx#expander::t
                       '#f))
                     (_e176226176251_
                      (##unchecked-structure-ref
                       _self176221176229_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e176227176254_
                      (##unchecked-structure-ref
                       _self176221176229_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K176257_ _e176227176254_))
                (_K176224176245_ _K176257_))
              (_E176223176233_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx176093_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx176093_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx176063_)
        (let* ((_e176064176071_ _stx176063_)
               (_E176066176075_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176064176071_)))
               (_E176065176089_
                (lambda ()
                  (if (gx#stx-pair? _e176064176071_)
                      (let ((_e176067176079_ (gx#syntax-e _e176064176071_)))
                        (let ((_hd176068176082_ (##car _e176067176079_))
                              (_tl176069176084_ (##cdr _e176067176079_)))
                          (let ((_body176087_ _tl176069176084_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body176087_))
                                (_E176066176075_)))))
                      (_E176066176075_)))))
          (_E176065176089_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx176032_)
        (let* ((_e176033176040_ _stx176032_)
               (_E176035176044_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176033176040_)))
               (_E176034176059_
                (lambda ()
                  (if (gx#stx-pair? _e176033176040_)
                      (let ((_e176036176048_ (gx#syntax-e _e176033176040_)))
                        (let ((_hd176037176051_ (##car _e176036176048_))
                              (_tl176038176053_ (##cdr _e176036176048_)))
                          (let ((_body176056_ _tl176038176053_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body176056_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E176035176044_)))))
                      (_E176035176044_)))))
          (_E176034176059_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx176002_)
        (let* ((_e176003176010_ _stx176002_)
               (_E176005176014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e176003176010_)))
               (_E176004176028_
                (lambda ()
                  (if (gx#stx-pair? _e176003176010_)
                      (let ((_e176006176018_ (gx#syntax-e _e176003176010_)))
                        (let ((_hd176007176021_ (##car _e176006176018_))
                              (_tl176008176023_ (##cdr _e176006176018_)))
                          (let ((_body176026_ _tl176008176023_))
                            (if '#t
                                (cons '%#begin-foreign _body176026_)
                                (_E176005176014_)))))
                      (_E176005176014_)))))
          (_E176004176028_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx175948_)
        (let* ((_e175949175962_ _stx175948_)
               (_E175951175966_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175949175962_)))
               (_E175950175998_
                (lambda ()
                  (if (gx#stx-pair? _e175949175962_)
                      (let ((_e175952175970_ (gx#syntax-e _e175949175962_)))
                        (let ((_hd175953175973_ (##car _e175952175970_))
                              (_tl175954175975_ (##cdr _e175952175970_)))
                          (if (gx#stx-pair? _tl175954175975_)
                              (let ((_e175955175978_
                                     (gx#syntax-e _tl175954175975_)))
                                (let ((_hd175956175981_
                                       (##car _e175955175978_))
                                      (_tl175957175983_
                                       (##cdr _e175955175978_)))
                                  (let ((_ann175986_ _hd175956175981_))
                                    (if (gx#stx-pair? _tl175957175983_)
                                        (let ((_e175958175988_
                                               (gx#syntax-e _tl175957175983_)))
                                          (let ((_hd175959175991_
                                                 (##car _e175958175988_))
                                                (_tl175960175993_
                                                 (##cdr _e175958175988_)))
                                            (let ((_expr175996_
                                                   _hd175959175991_))
                                              (if (gx#stx-null?
                                                   _tl175960175993_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr175996_)
                                                      (_E175951175966_))
                                                  (_E175951175966_)))))
                                        (_E175951175966_)))))
                              (_E175951175966_))))
                      (_E175951175966_)))))
          (_E175950175998_))))
    (define gx#core-compile-top-import%
      (lambda (_stx175918_)
        (let* ((_e175919175926_ _stx175918_)
               (_E175921175930_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175919175926_)))
               (_E175920175944_
                (lambda ()
                  (if (gx#stx-pair? _e175919175926_)
                      (let ((_e175922175934_ (gx#syntax-e _e175919175926_)))
                        (let ((_hd175923175937_ (##car _e175922175934_))
                              (_tl175924175939_ (##cdr _e175922175934_)))
                          (let ((_body175942_ _tl175924175939_))
                            (if '#t
                                (cons '%#import _body175942_)
                                (_E175921175930_)))))
                      (_E175921175930_)))))
          (_E175920175944_))))
    (define gx#core-compile-top-module%
      (lambda (_stx175875_)
        (let* ((_e175876175886_ _stx175875_)
               (_E175878175890_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175876175886_)))
               (_E175877175914_
                (lambda ()
                  (if (gx#stx-pair? _e175876175886_)
                      (let ((_e175879175894_ (gx#syntax-e _e175876175886_)))
                        (let ((_hd175880175897_ (##car _e175879175894_))
                              (_tl175881175899_ (##cdr _e175879175894_)))
                          (if (gx#stx-pair? _tl175881175899_)
                              (let ((_e175882175902_
                                     (gx#syntax-e _tl175881175899_)))
                                (let ((_hd175883175905_
                                       (##car _e175882175902_))
                                      (_tl175884175907_
                                       (##cdr _e175882175902_)))
                                  (let* ((_hd175910_ _hd175883175905_)
                                         (_body175912_ _tl175884175907_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd175910_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body175912_)))
                                        (_E175878175890_)))))
                              (_E175878175890_))))
                      (_E175878175890_)))))
          (_E175877175914_))))
    (define gx#core-compile-top-export%
      (lambda (_stx175845_)
        (let* ((_e175846175853_ _stx175845_)
               (_E175848175857_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175846175853_)))
               (_E175847175871_
                (lambda ()
                  (if (gx#stx-pair? _e175846175853_)
                      (let ((_e175849175861_ (gx#syntax-e _e175846175853_)))
                        (let ((_hd175850175864_ (##car _e175849175861_))
                              (_tl175851175866_ (##cdr _e175849175861_)))
                          (let ((_body175869_ _tl175851175866_))
                            (if '#t
                                (cons '%#export _body175869_)
                                (_E175848175857_)))))
                      (_E175848175857_)))))
          (_E175847175871_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx175815_)
        (let* ((_e175816175823_ _stx175815_)
               (_E175818175827_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175816175823_)))
               (_E175817175841_
                (lambda ()
                  (if (gx#stx-pair? _e175816175823_)
                      (let ((_e175819175831_ (gx#syntax-e _e175816175823_)))
                        (let ((_hd175820175834_ (##car _e175819175831_))
                              (_tl175821175836_ (##cdr _e175819175831_)))
                          (let ((_body175839_ _tl175821175836_))
                            (if '#t
                                (cons '%#provide _body175839_)
                                (_E175818175827_)))))
                      (_E175818175827_)))))
          (_E175817175841_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx175785_)
        (let* ((_e175786175793_ _stx175785_)
               (_E175788175797_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175786175793_)))
               (_E175787175811_
                (lambda ()
                  (if (gx#stx-pair? _e175786175793_)
                      (let ((_e175789175801_ (gx#syntax-e _e175786175793_)))
                        (let ((_hd175790175804_ (##car _e175789175801_))
                              (_tl175791175806_ (##cdr _e175789175801_)))
                          (let ((_body175809_ _tl175791175806_))
                            (if '#t
                                (cons '%#extern _body175809_)
                                (_E175788175797_)))))
                      (_E175788175797_)))))
          (_E175787175811_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx175731_)
        (let* ((_e175732175745_ _stx175731_)
               (_E175734175749_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175732175745_)))
               (_E175733175781_
                (lambda ()
                  (if (gx#stx-pair? _e175732175745_)
                      (let ((_e175735175753_ (gx#syntax-e _e175732175745_)))
                        (let ((_hd175736175756_ (##car _e175735175753_))
                              (_tl175737175758_ (##cdr _e175735175753_)))
                          (if (gx#stx-pair? _tl175737175758_)
                              (let ((_e175738175761_
                                     (gx#syntax-e _tl175737175758_)))
                                (let ((_hd175739175764_
                                       (##car _e175738175761_))
                                      (_tl175740175766_
                                       (##cdr _e175738175761_)))
                                  (let ((_hd175769_ _hd175739175764_))
                                    (if (gx#stx-pair? _tl175740175766_)
                                        (let ((_e175741175771_
                                               (gx#syntax-e _tl175740175766_)))
                                          (let ((_hd175742175774_
                                                 (##car _e175741175771_))
                                                (_tl175743175776_
                                                 (##cdr _e175741175771_)))
                                            (let ((_expr175779_
                                                   _hd175742175774_))
                                              (if (gx#stx-null?
                                                   _tl175743175776_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd175769_)
                          (cons (gx#core-compile-top-syntax _expr175779_)
                                '())))
              (_E175734175749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E175734175749_)))))
                                        (_E175734175749_)))))
                              (_E175734175749_))))
                      (_E175734175749_)))))
          (_E175733175781_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx175676_)
        (let* ((_e175677175690_ _stx175676_)
               (_E175679175694_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175677175690_)))
               (_E175678175727_
                (lambda ()
                  (if (gx#stx-pair? _e175677175690_)
                      (let ((_e175680175698_ (gx#syntax-e _e175677175690_)))
                        (let ((_hd175681175701_ (##car _e175680175698_))
                              (_tl175682175703_ (##cdr _e175680175698_)))
                          (if (gx#stx-pair? _tl175682175703_)
                              (let ((_e175683175706_
                                     (gx#syntax-e _tl175682175703_)))
                                (let ((_hd175684175709_
                                       (##car _e175683175706_))
                                      (_tl175685175711_
                                       (##cdr _e175683175706_)))
                                  (let ((_hd175714_ _hd175684175709_))
                                    (if (gx#stx-pair? _tl175685175711_)
                                        (let ((_e175686175716_
                                               (gx#syntax-e _tl175685175711_)))
                                          (let ((_hd175687175719_
                                                 (##car _e175686175716_))
                                                (_tl175688175721_
                                                 (##cdr _e175686175716_)))
                                            (let ((_expr175724_
                                                   _hd175687175719_))
                                              (if (gx#stx-null?
                                                   _tl175688175721_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd175714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr175724_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E175679175694_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E175679175694_)))))
                                        (_E175679175694_)))))
                              (_E175679175694_))))
                      (_E175679175694_)))))
          (_E175678175727_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx175646_)
        (let* ((_e175647175654_ _stx175646_)
               (_E175649175658_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175647175654_)))
               (_E175648175672_
                (lambda ()
                  (if (gx#stx-pair? _e175647175654_)
                      (let ((_e175650175662_ (gx#syntax-e _e175647175654_)))
                        (let ((_hd175651175665_ (##car _e175650175662_))
                              (_tl175652175667_ (##cdr _e175650175662_)))
                          (let ((_body175670_ _tl175652175667_))
                            (if '#t
                                (cons '%#define-alias _body175670_)
                                (_E175649175658_)))))
                      (_E175649175658_)))))
          (_E175648175672_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx175616_)
        (let* ((_e175617175624_ _stx175616_)
               (_E175619175628_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175617175624_)))
               (_E175618175642_
                (lambda ()
                  (if (gx#stx-pair? _e175617175624_)
                      (let ((_e175620175632_ (gx#syntax-e _e175617175624_)))
                        (let ((_hd175621175635_ (##car _e175620175632_))
                              (_tl175622175637_ (##cdr _e175620175632_)))
                          (let ((_body175640_ _tl175622175637_))
                            (if '#t
                                (cons '%#define-runtime _body175640_)
                                (_E175619175628_)))))
                      (_E175619175628_)))))
          (_E175618175642_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx175586_)
        (let* ((_e175587175594_ _stx175586_)
               (_E175589175598_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175587175594_)))
               (_E175588175612_
                (lambda ()
                  (if (gx#stx-pair? _e175587175594_)
                      (let ((_e175590175602_ (gx#syntax-e _e175587175594_)))
                        (let ((_hd175591175605_ (##car _e175590175602_))
                              (_tl175592175607_ (##cdr _e175590175602_)))
                          (let ((_decls175610_ _tl175592175607_))
                            (if '#t
                                (cons '%#declare _decls175610_)
                                (_E175589175598_)))))
                      (_E175589175598_)))))
          (_E175588175612_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx175556_)
        (let* ((_e175557175564_ _stx175556_)
               (_E175559175568_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175557175564_)))
               (_E175558175582_
                (lambda ()
                  (if (gx#stx-pair? _e175557175564_)
                      (let ((_e175560175572_ (gx#syntax-e _e175557175564_)))
                        (let ((_hd175561175575_ (##car _e175560175572_))
                              (_tl175562175577_ (##cdr _e175560175572_)))
                          (let ((_clause175580_ _tl175562175577_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause175580_))
                                (_E175559175568_)))))
                      (_E175559175568_)))))
          (_E175558175582_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx175513_)
        (let* ((_e175514175524_ _stx175513_)
               (_E175516175528_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175514175524_)))
               (_E175515175552_
                (lambda ()
                  (if (gx#stx-pair? _e175514175524_)
                      (let ((_e175517175532_ (gx#syntax-e _e175514175524_)))
                        (let ((_hd175518175535_ (##car _e175517175532_))
                              (_tl175519175537_ (##cdr _e175517175532_)))
                          (let ((_hd175540_ _hd175518175535_))
                            (if (gx#stx-pair? _tl175519175537_)
                                (let ((_e175520175542_
                                       (gx#syntax-e _tl175519175537_)))
                                  (let ((_hd175521175545_
                                         (##car _e175520175542_))
                                        (_tl175522175547_
                                         (##cdr _e175520175542_)))
                                    (let ((_body175550_ _hd175521175545_))
                                      (if (gx#stx-null? _tl175522175547_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd175540_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body175550_)
                                                          '()))
                                              (_E175516175528_))
                                          (_E175516175528_)))))
                                (_E175516175528_)))))
                      (_E175516175528_)))))
          (_E175515175552_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx175483_)
        (let* ((_e175484175491_ _stx175483_)
               (_E175486175495_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175484175491_)))
               (_E175485175509_
                (lambda ()
                  (if (gx#stx-pair? _e175484175491_)
                      (let ((_e175487175499_ (gx#syntax-e _e175484175491_)))
                        (let ((_hd175488175502_ (##car _e175487175499_))
                              (_tl175489175504_ (##cdr _e175487175499_)))
                          (let ((_clauses175507_ _tl175489175504_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses175507_))
                                (_E175486175495_)))))
                      (_E175486175495_)))))
          (_E175485175509_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx175418_ _form175419_)
        (let* ((_e175420175433_ _stx175418_)
               (_E175422175437_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175420175433_)))
               (_E175421175469_
                (lambda ()
                  (if (gx#stx-pair? _e175420175433_)
                      (let ((_e175423175441_ (gx#syntax-e _e175420175433_)))
                        (let ((_hd175424175444_ (##car _e175423175441_))
                              (_tl175425175446_ (##cdr _e175423175441_)))
                          (if (gx#stx-pair? _tl175425175446_)
                              (let ((_e175426175449_
                                     (gx#syntax-e _tl175425175446_)))
                                (let ((_hd175427175452_
                                       (##car _e175426175449_))
                                      (_tl175428175454_
                                       (##cdr _e175426175449_)))
                                  (let ((_hd175457_ _hd175427175452_))
                                    (if (gx#stx-pair? _tl175428175454_)
                                        (let ((_e175429175459_
                                               (gx#syntax-e _tl175428175454_)))
                                          (let ((_hd175430175462_
                                                 (##car _e175429175459_))
                                                (_tl175431175464_
                                                 (##cdr _e175429175459_)))
                                            (let ((_body175467_
                                                   _hd175430175462_))
                                              (if (gx#stx-null?
                                                   _tl175431175464_)
                                                  (if '#t
                                                      (cons _form175419_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd175457_)
                          (cons (gx#core-compile-top-syntax _body175467_)
                                '())))
              (_E175422175437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E175422175437_)))))
                                        (_E175422175437_)))))
                              (_E175422175437_))))
                      (_E175422175437_)))))
          (_E175421175469_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx175476_)
        (let ((_form175478_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx175476_ _form175478_))))
    (define gx#core-compile-top-let-values%
      (lambda _g180859_
        (let ((_g180858_ (##length _g180859_)))
          (cond ((##fx= _g180858_ 1)
                 (apply (lambda (_stx175476_)
                          (gx#core-compile-top-let-values%__0 _stx175476_))
                        _g180859_))
                ((##fx= _g180858_ 2)
                 (apply (lambda (_stx175480_ _form175481_)
                          (gx#core-compile-top-let-values%__%
                           _stx175480_
                           _form175481_))
                        _g180859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g180859_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx175415_)
        (gx#core-compile-top-let-values%__% _stx175415_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx175413_)
        (gx#core-compile-top-let-values%__% _stx175413_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx175372_)
        (let* ((_e175373175383_ _stx175372_)
               (_E175375175387_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175373175383_)))
               (_E175374175409_
                (lambda ()
                  (if (gx#stx-pair? _e175373175383_)
                      (let ((_e175376175391_ (gx#syntax-e _e175373175383_)))
                        (let ((_hd175377175394_ (##car _e175376175391_))
                              (_tl175378175396_ (##cdr _e175376175391_)))
                          (if (gx#stx-pair? _tl175378175396_)
                              (let ((_e175379175399_
                                     (gx#syntax-e _tl175378175396_)))
                                (let ((_hd175380175402_
                                       (##car _e175379175399_))
                                      (_tl175381175404_
                                       (##cdr _e175379175399_)))
                                  (let ((_e175407_ _hd175380175402_))
                                    (if (gx#stx-null? _tl175381175404_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e175407_)
                                                        '()))
                                            (_E175375175387_))
                                        (_E175375175387_)))))
                              (_E175375175387_))))
                      (_E175375175387_)))))
          (_E175374175409_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx175331_)
        (let* ((_e175332175342_ _stx175331_)
               (_E175334175346_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175332175342_)))
               (_E175333175368_
                (lambda ()
                  (if (gx#stx-pair? _e175332175342_)
                      (let ((_e175335175350_ (gx#syntax-e _e175332175342_)))
                        (let ((_hd175336175353_ (##car _e175335175350_))
                              (_tl175337175355_ (##cdr _e175335175350_)))
                          (if (gx#stx-pair? _tl175337175355_)
                              (let ((_e175338175358_
                                     (gx#syntax-e _tl175337175355_)))
                                (let ((_hd175339175361_
                                       (##car _e175338175358_))
                                      (_tl175340175363_
                                       (##cdr _e175338175358_)))
                                  (let ((_e175366_ _hd175339175361_))
                                    (if (gx#stx-null? _tl175340175363_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e175366_)
                                                        '()))
                                            (_E175334175346_))
                                        (_E175334175346_)))))
                              (_E175334175346_))))
                      (_E175334175346_)))))
          (_E175333175368_))))
    (define gx#core-compile-top-call%
      (lambda (_stx175288_)
        (let* ((_e175289175299_ _stx175288_)
               (_E175291175303_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175289175299_)))
               (_E175290175327_
                (lambda ()
                  (if (gx#stx-pair? _e175289175299_)
                      (let ((_e175292175307_ (gx#syntax-e _e175289175299_)))
                        (let ((_hd175293175310_ (##car _e175292175307_))
                              (_tl175294175312_ (##cdr _e175292175307_)))
                          (if (gx#stx-pair? _tl175294175312_)
                              (let ((_e175295175315_
                                     (gx#syntax-e _tl175294175312_)))
                                (let ((_hd175296175318_
                                       (##car _e175295175315_))
                                      (_tl175297175320_
                                       (##cdr _e175295175315_)))
                                  (let* ((_rator175323_ _hd175296175318_)
                                         (_args175325_ _tl175297175320_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator175323_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args175325_)))
                                        (_E175291175303_)))))
                              (_E175291175303_))))
                      (_E175291175303_)))))
          (_E175290175327_))))
    (define gx#core-compile-top-if%
      (lambda (_stx175221_)
        (let* ((_e175222175238_ _stx175221_)
               (_E175224175242_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175222175238_)))
               (_E175223175284_
                (lambda ()
                  (if (gx#stx-pair? _e175222175238_)
                      (let ((_e175225175246_ (gx#syntax-e _e175222175238_)))
                        (let ((_hd175226175249_ (##car _e175225175246_))
                              (_tl175227175251_ (##cdr _e175225175246_)))
                          (if (gx#stx-pair? _tl175227175251_)
                              (let ((_e175228175254_
                                     (gx#syntax-e _tl175227175251_)))
                                (let ((_hd175229175257_
                                       (##car _e175228175254_))
                                      (_tl175230175259_
                                       (##cdr _e175228175254_)))
                                  (let ((_test175262_ _hd175229175257_))
                                    (if (gx#stx-pair? _tl175230175259_)
                                        (let ((_e175231175264_
                                               (gx#syntax-e _tl175230175259_)))
                                          (let ((_hd175232175267_
                                                 (##car _e175231175264_))
                                                (_tl175233175269_
                                                 (##cdr _e175231175264_)))
                                            (let ((_K175272_ _hd175232175267_))
                                              (if (gx#stx-pair?
                                                   _tl175233175269_)
                                                  (let ((_e175234175274_
                                                         (gx#syntax-e
                                                          _tl175233175269_)))
                                                    (let ((_hd175235175277_
                                                           (##car _e175234175274_))
                                                          (_tl175236175279_
                                                           (##cdr _e175234175274_)))
                                                      (let ((_E175282_
                                                             _hd175235175277_))
                                                        (if (gx#stx-null?
                                                             _tl175236175279_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test175262_)
                                    (cons (gx#core-compile-top-syntax
                                           _K175272_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E175282_)
                                                '()))))
                        (_E175224175242_))
                    (_E175224175242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E175224175242_)))))
                                        (_E175224175242_)))))
                              (_E175224175242_))))
                      (_E175224175242_)))))
          (_E175223175284_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx175180_)
        (let* ((_e175181175191_ _stx175180_)
               (_E175183175195_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175181175191_)))
               (_E175182175217_
                (lambda ()
                  (if (gx#stx-pair? _e175181175191_)
                      (let ((_e175184175199_ (gx#syntax-e _e175181175191_)))
                        (let ((_hd175185175202_ (##car _e175184175199_))
                              (_tl175186175204_ (##cdr _e175184175199_)))
                          (if (gx#stx-pair? _tl175186175204_)
                              (let ((_e175187175207_
                                     (gx#syntax-e _tl175186175204_)))
                                (let ((_hd175188175210_
                                       (##car _e175187175207_))
                                      (_tl175189175212_
                                       (##cdr _e175187175207_)))
                                  (let ((_id175215_ _hd175188175210_))
                                    (if (gx#stx-null? _tl175189175212_)
                                        (if (gx#identifier? _id175215_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id175215_)
                                                        '()))
                                            (_E175183175195_))
                                        (_E175183175195_)))))
                              (_E175183175195_))))
                      (_E175183175195_)))))
          (_E175182175217_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx175126_)
        (let* ((_e175127175140_ _stx175126_)
               (_E175129175144_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e175127175140_)))
               (_E175128175176_
                (lambda ()
                  (if (gx#stx-pair? _e175127175140_)
                      (let ((_e175130175148_ (gx#syntax-e _e175127175140_)))
                        (let ((_hd175131175151_ (##car _e175130175148_))
                              (_tl175132175153_ (##cdr _e175130175148_)))
                          (if (gx#stx-pair? _tl175132175153_)
                              (let ((_e175133175156_
                                     (gx#syntax-e _tl175132175153_)))
                                (let ((_hd175134175159_
                                       (##car _e175133175156_))
                                      (_tl175135175161_
                                       (##cdr _e175133175156_)))
                                  (let ((_id175164_ _hd175134175159_))
                                    (if (gx#stx-pair? _tl175135175161_)
                                        (let ((_e175136175166_
                                               (gx#syntax-e _tl175135175161_)))
                                          (let ((_hd175137175169_
                                                 (##car _e175136175166_))
                                                (_tl175138175171_
                                                 (##cdr _e175136175166_)))
                                            (let ((_expr175174_
                                                   _hd175137175169_))
                                              (if (gx#stx-null?
                                                   _tl175138175171_)
                                                  (if (gx#identifier?
                                                       _id175164_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id175164_)
                          (cons (gx#core-compile-top-syntax _expr175174_)
                                '())))
              (_E175129175144_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E175129175144_)))))
                                        (_E175129175144_)))))
                              (_E175129175144_))))
                      (_E175129175144_)))))
          (_E175128175176_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id175121_)
        (let ((_$e175123_ (gx#resolve-identifier__0 _id175121_)))
          (if _$e175123_
              (##unchecked-structure-ref _$e175123_ '1 gx#binding::t '#f)
              _id175121_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd175119_)
        (if (gx#identifier? _hd175119_)
            (gx#core-compile-top-runtime-ref _hd175119_)
            '#f)))))
