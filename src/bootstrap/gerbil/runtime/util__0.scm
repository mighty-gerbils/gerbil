(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707657567)
  (begin
    (define displayln
      (lambda _args58912_
        (let _lp58914_ ((_rest58916_ _args58912_))
          (let* ((_rest5891758925_ _rest58916_)
                 (_else5891958933_ (lambda () (newline)))
                 (_K5892158939_
                  (lambda (_rest58936_ _hd58937_)
                    (display _hd58937_)
                    (let () (declare (not safe)) (_lp58914_ _rest58936_)))))
            (if (let () (declare (not safe)) (##pair? _rest5891758925_))
                (let ((_hd5892258942_
                       (let () (declare (not safe)) (##car _rest5891758925_)))
                      (_tl5892358944_
                       (let () (declare (not safe)) (##cdr _rest5891758925_))))
                  (let* ((_hd58947_ _hd5892258942_)
                         (_rest58949_ _tl5892358944_))
                    (declare (not safe))
                    (_K5892158939_ _rest58949_ _hd58947_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args58910_ (for-each display _args58910_)))
    (define file-newer?
      (lambda (_file158903_ _file258904_)
        (letrec ((_modification-time58906_
                  (lambda (_file58908_)
                    (let ((__tmp63812
                           (file-info-last-modification-time
                            (file-info _file58908_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp63812)))))
          (let ((__tmp63814
                 (let ()
                   (declare (not safe))
                   (_modification-time58906_ _file158903_)))
                (__tmp63813
                 (let ()
                   (declare (not safe))
                   (_modification-time58906_ _file258904_))))
            (declare (not safe))
            (##fl> __tmp63814 __tmp63813)))))
    (define create-directory*__%
      (lambda (_dir58877_ _perms58878_)
        (letrec ((_create158880_
                  (lambda (_path58891_)
                    (if (file-exists? _path58891_)
                        (if (let ((__tmp63815 (file-type _path58891_)))
                              (declare (not safe))
                              (eq? __tmp63815 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path58891_))
                        (if _perms58878_
                            (create-directory
                             (list 'path:
                                   _path58891_
                                   'permissions:
                                   _perms58878_))
                            (create-directory _path58891_))))))
          (if (file-exists? _dir58877_)
              '#!void
              (let _lp58882_ ((_start58884_ '0))
                (let ((_$e58886_
                       (let ()
                         (declare (not safe))
                         (string-index _dir58877_ '#\/ _start58884_))))
                  (if _$e58886_
                      ((lambda (_x58889_)
                         (if (let () (declare (not safe)) (##fx> _x58889_ '0))
                             (let ((__tmp63816
                                    (substring _dir58877_ '0 _x58889_)))
                               (declare (not safe))
                               (_create158880_ __tmp63816))
                             '#!void)
                         (let ((__tmp63817
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x58889_ '1))))
                           (declare (not safe))
                           (_lp58882_ __tmp63817)))
                       _$e58886_)
                      (let ()
                        (declare (not safe))
                        (_create158880_ _dir58877_)))))))))
    (define create-directory*__0
      (lambda (_dir58896_)
        (let ((_perms58898_ '493))
          (declare (not safe))
          (create-directory*__% _dir58896_ _perms58898_))))
    (define create-directory*
      (lambda _g63819_
        (let ((_g63818_ (let () (declare (not safe)) (##length _g63819_))))
          (cond ((let () (declare (not safe)) (##fx= _g63818_ 1))
                 (apply (lambda (_dir58896_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir58896_)))
                        _g63819_))
                ((let () (declare (not safe)) (##fx= _g63818_ 2))
                 (apply (lambda (_dir58900_ _perms58901_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir58900_ _perms58901_)))
                        _g63819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g63819_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g63820_ '#t))
    (define true?
      (lambda (_obj58873_) (let () (declare (not safe)) (eq? _obj58873_ '#t))))
    (define false (lambda _g63821_ '#f))
    (define void (lambda _g63822_ '#!void))
    (define void?
      (lambda (_obj58869_)
        (let () (declare (not safe)) (eq? _obj58869_ '#!void))))
    (define eof-object (lambda _g63823_ '#!eof))
    (define identity (lambda (_obj58866_) _obj58866_))
    (define dssl-object?
      (lambda (_obj58864_)
        (if (memq _obj58864_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj58862_)
        (let () (declare (not safe)) (eq? _obj58862_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj58860_)
        (let () (declare (not safe)) (eq? _obj58860_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj58858_)
        (let () (declare (not safe)) (eq? _obj58858_ '#!optional))))
    (define immediate?
      (lambda (_obj58854_)
        (let* ((_t58856_ (let () (declare (not safe)) (##type _obj58854_)))
               (__tmp63824
                (let () (declare (not safe)) (##fxand _t58856_ '1))))
          (declare (not safe))
          (##fxzero? __tmp63824))))
    (define nonnegative-fixnum?
      (lambda (_obj58852_)
        (if (fixnum? _obj58852_)
            (let ((__tmp63825 (fxnegative? _obj58852_)))
              (declare (not safe))
              (not __tmp63825))
            '#f)))
    (define values-count
      (lambda (_obj58850_)
        (if (let () (declare (not safe)) (##values? _obj58850_))
            (let () (declare (not safe)) (##vector-length _obj58850_))
            '1)))
    (define values-ref
      (lambda (_obj58847_ _k58848_)
        (if (let () (declare (not safe)) (##values? _obj58847_))
            (let () (declare (not safe)) (##vector-ref _obj58847_ _k58848_))
            _obj58847_)))
    (define values->list
      (lambda (_obj58845_)
        (if (let () (declare (not safe)) (##values? _obj58845_))
            (let () (declare (not safe)) (##vector->list _obj58845_))
            (list _obj58845_))))
    (define subvector->list__%
      (lambda (_obj58830_ _start58831_)
        (let ((_lst58833_
               (let () (declare (not safe)) (##vector->list _obj58830_))))
          (list-tail _lst58833_ _start58831_))))
    (define subvector->list__0
      (lambda (_obj58838_)
        (let ((_start58840_ '0))
          (declare (not safe))
          (subvector->list__% _obj58838_ _start58840_))))
    (define subvector->list
      (lambda _g63827_
        (let ((_g63826_ (let () (declare (not safe)) (##length _g63827_))))
          (cond ((let () (declare (not safe)) (##fx= _g63826_ 1))
                 (apply (lambda (_obj58838_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj58838_)))
                        _g63827_))
                ((let () (declare (not safe)) (##fx= _g63826_ 2))
                 (apply (lambda (_obj58842_ _start58843_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj58842_ _start58843_)))
                        _g63827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g63827_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args58827_ (apply make-table 'test: eq? _args58827_)))
    (define make-hash-table-eqv
      (lambda _args58825_ (apply make-table 'test: eqv? _args58825_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst58822_ . _args58823_)
        (apply list->table _lst58822_ 'test: eq? _args58823_)))
    (define list->hash-table-eqv
      (lambda (_lst58819_ . _args58820_)
        (apply list->table _lst58819_ 'test: eqv? _args58820_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht58816_ _k58817_) (table-ref _ht58816_ _k58817_ '#f)))
    (define hash-put!
      (lambda (_ht58812_ _k58813_ _v58814_)
        (table-set! _ht58812_ _k58813_ _v58814_)))
    (define hash-update!__%
      (lambda (_ht58791_ _k58792_ _update58793_ _default58794_)
        (let* ((_value58796_
                (let ()
                  (declare (not safe))
                  (table-ref _ht58791_ _k58792_ _default58794_)))
               (__tmp63828 (_update58793_ _value58796_)))
          (declare (not safe))
          (table-set! _ht58791_ _k58792_ __tmp63828))))
    (define hash-update!__0
      (lambda (_ht58801_ _k58802_ _update58803_)
        (let ((_default58805_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht58801_ _k58802_ _update58803_ _default58805_))))
    (define hash-update!
      (lambda _g63830_
        (let ((_g63829_ (let () (declare (not safe)) (##length _g63830_))))
          (cond ((let () (declare (not safe)) (##fx= _g63829_ 3))
                 (apply (lambda (_ht58801_ _k58802_ _update58803_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht58801_
                             _k58802_
                             _update58803_)))
                        _g63830_))
                ((let () (declare (not safe)) (##fx= _g63829_ 4))
                 (apply (lambda (_ht58807_
                                 _k58808_
                                 _update58809_
                                 _default58810_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht58807_
                             _k58808_
                             _update58809_
                             _default58810_)))
                        _g63830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g63830_))))))
    (define hash-remove!
      (lambda (_ht58787_ _k58788_) (table-set! _ht58787_ _k58788_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht58785_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht58785_))))
    (define plist->hash-table__%
      (lambda (_plst58720_ _ht58721_)
        (let _lp58723_ ((_rest58725_ _plst58720_))
          (let* ((_rest5872658737_ _rest58725_)
                 (_E5872958741_
                  (lambda () (error '"No clause matching" _rest5872658737_))))
            (let ((_K5873158756_
                   (lambda (_rest58752_ _v58753_ _k58754_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht58721_ _k58754_ _v58753_))
                     (let () (declare (not safe)) (_lp58723_ _rest58752_))))
                  (_K5873058746_ (lambda () _ht58721_)))
              (let ((_try-match5872858749_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5872658737_ '()))
                           (let () (declare (not safe)) (_K5873058746_))
                           (let () (declare (not safe)) (_E5872958741_))))))
                (if (let () (declare (not safe)) (##pair? _rest5872658737_))
                    (let ((_tl5873358761_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5872658737_)))
                          (_hd5873258759_
                           (let ()
                             (declare (not safe))
                             (##car _rest5872658737_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5873358761_))
                          (let ((_tl5873558768_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5873358761_)))
                                (_hd5873458766_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5873358761_))))
                            (let ((_k58764_ _hd5873258759_)
                                  (_v58771_ _hd5873458766_)
                                  (_rest58773_ _tl5873558768_))
                              (let ()
                                (declare (not safe))
                                (_K5873158756_
                                 _rest58773_
                                 _v58771_
                                 _k58764_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5872858749_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5872858749_)))))))))
    (define plist->hash-table__0
      (lambda (_plst58778_)
        (let ((_ht58780_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst58778_ _ht58780_))))
    (define plist->hash-table
      (lambda _g63832_
        (let ((_g63831_ (let () (declare (not safe)) (##length _g63832_))))
          (cond ((let () (declare (not safe)) (##fx= _g63831_ 1))
                 (apply (lambda (_plst58778_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst58778_)))
                        _g63832_))
                ((let () (declare (not safe)) (##fx= _g63831_ 2))
                 (apply (lambda (_plst58782_ _ht58783_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst58782_ _ht58783_)))
                        _g63832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g63832_))))))
    (define plist->hash-table-eq
      (lambda (_plst58717_)
        (let ((__tmp63833
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst58717_ __tmp63833))))
    (define plist->hash-table-eqv
      (lambda (_plst58715_)
        (let ((__tmp63834
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst58715_ __tmp63834))))
    (define hash-key?
      (lambda (_ht58712_ _k58713_)
        (let ((__tmp63835
               (let ((__tmp63836
                      (let ()
                        (declare (not safe))
                        (table-ref _ht58712_ _k58713_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp63836 absent-value))))
          (declare (not safe))
          (not __tmp63835))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun58705_ _ht58706_)
        (let ((__tmp63837
               (lambda (_k58708_ _v58709_ _r58710_)
                 (let ((__tmp63838 (_fun58705_ _k58708_ _v58709_)))
                   (declare (not safe))
                   (cons __tmp63838 _r58710_)))))
          (declare (not safe))
          (hash-fold __tmp63837 '() _ht58706_))))
    (define hash-fold
      (lambda (_fun58696_ _iv58697_ _ht58698_)
        (let ((_ret58700_ _iv58697_))
          (let ((__tmp63839
                 (lambda (_k58702_ _v58703_)
                   (set! _ret58700_
                         (_fun58696_ _k58702_ _v58703_ _ret58700_)))))
            (declare (not safe))
            (table-for-each __tmp63839 _ht58698_))
          _ret58700_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht58691_)
        (let ((__tmp63840 (lambda (_k58693_ _v58694_) _k58693_)))
          (declare (not safe))
          (hash-map __tmp63840 _ht58691_))))
    (define hash-values
      (lambda (_ht58686_)
        (let ((__tmp63841 (lambda (_k58688_ _v58689_) _v58689_)))
          (declare (not safe))
          (hash-map __tmp63841 _ht58686_))))
    (define hash-copy
      (lambda (_hd58681_ . _rest58682_)
        (let ((_hd58684_ (table-copy _hd58681_)))
          (if (let () (declare (not safe)) (null? _rest58682_))
              _hd58684_
              (apply hash-copy! _hd58684_ _rest58682_)))))
    (define hash-copy!
      (lambda (_hd58676_ . _rest58677_)
        (for-each
         (lambda (_r58679_) (table-merge! _hd58676_ _r58679_))
         _rest58677_)
        _hd58676_))
    (define hash-merge
      (lambda (_hd58670_ . _rest58671_)
        (let ((__tmp63842
               (lambda (_tab58673_ _r58674_)
                 (table-merge _r58674_ _tab58673_))))
          (declare (not safe))
          (foldl1 __tmp63842 _hd58670_ _rest58671_))))
    (define hash-merge!
      (lambda (_hd58664_ . _rest58665_)
        (let ((__tmp63843
               (lambda (_tab58667_ _r58668_)
                 (table-merge! _r58668_ _tab58667_))))
          (declare (not safe))
          (foldl1 __tmp63843 _hd58664_ _rest58665_))))
    (define hash-clear!__%
      (lambda (_ht58649_ _size58650_)
        (let ((_gcht58652_
               (let () (declare (not safe)) (##vector-ref _ht58649_ '5))))
          (if (let ((__tmp63844 (fixnum? _gcht58652_)))
                (declare (not safe))
                (not __tmp63844))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58649_ '5 _size58650_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58657_)
        (let ((_size58659_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58657_ _size58659_))))
    (define hash-clear!
      (lambda _g63846_
        (let ((_g63845_ (let () (declare (not safe)) (##length _g63846_))))
          (cond ((let () (declare (not safe)) (##fx= _g63845_ 1))
                 (apply (lambda (_ht58657_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58657_)))
                        _g63846_))
                ((let () (declare (not safe)) (##fx= _g63845_ 2))
                 (apply (lambda (_ht58661_ _size58662_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58661_ _size58662_)))
                        _g63846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g63846_))))))
    (define make-list__%
      (lambda (_k58630_ _val58631_)
        (if (fixnum? _k58630_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58630_))
        (let _lp58633_ ((_n58635_ '0) (_r58636_ '()))
          (if (let () (declare (not safe)) (##fx< _n58635_ _k58630_))
              (let ((__tmp63848
                     (let () (declare (not safe)) (##fx+ _n58635_ '1)))
                    (__tmp63847
                     (let () (declare (not safe)) (cons _val58631_ _r58636_))))
                (declare (not safe))
                (_lp58633_ __tmp63848 __tmp63847))
              _r58636_))))
    (define make-list__0
      (lambda (_k58641_)
        (let ((_val58643_ '#f))
          (declare (not safe))
          (make-list__% _k58641_ _val58643_))))
    (define make-list
      (lambda _g63850_
        (let ((_g63849_ (let () (declare (not safe)) (##length _g63850_))))
          (cond ((let () (declare (not safe)) (##fx= _g63849_ 1))
                 (apply (lambda (_k58641_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58641_)))
                        _g63850_))
                ((let () (declare (not safe)) (##fx= _g63849_ 2))
                 (apply (lambda (_k58645_ _val58646_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58645_ _val58646_)))
                        _g63850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g63850_))))))
    (define cons*
      (lambda (_x58620_ _y58621_ . _rest58622_)
        (letrec ((_recur58624_
                  (lambda (_x58626_ _rest58627_)
                    (if (let () (declare (not safe)) (pair? _rest58627_))
                        (let ((__tmp63851
                               (let ((__tmp63853
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58627_)))
                                     (__tmp63852
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58627_))))
                                 (declare (not safe))
                                 (_recur58624_ __tmp63853 __tmp63852))))
                          (declare (not safe))
                          (cons _x58626_ __tmp63851))
                        _x58626_))))
          (let ((__tmp63854
                 (let ()
                   (declare (not safe))
                   (_recur58624_ _y58621_ _rest58622_))))
            (declare (not safe))
            (cons _x58620_ __tmp63854)))))
    (define foldl1
      (lambda (_f58578_ _iv58579_ _lst58580_)
        (let _lp58582_ ((_rest58584_ _lst58580_) (_r58585_ _iv58579_))
          (let* ((_rest5858658594_ _rest58584_)
                 (_else5858858602_ (lambda () _r58585_))
                 (_K5859058608_
                  (lambda (_rest58605_ _x58606_)
                    (let ((__tmp63855 (_f58578_ _x58606_ _r58585_)))
                      (declare (not safe))
                      (_lp58582_ _rest58605_ __tmp63855)))))
            (if (let () (declare (not safe)) (##pair? _rest5858658594_))
                (let ((_hd5859158611_
                       (let () (declare (not safe)) (##car _rest5858658594_)))
                      (_tl5859258613_
                       (let () (declare (not safe)) (##cdr _rest5858658594_))))
                  (let* ((_x58616_ _hd5859158611_)
                         (_rest58618_ _tl5859258613_))
                    (declare (not safe))
                    (_K5859058608_ _rest58618_ _x58616_)))
                (let () (declare (not safe)) (_else5858858602_)))))))
    (define foldl2
      (lambda (_f58501_ _iv58502_ _lst158503_ _lst258504_)
        (let _lp58506_ ((_rest158508_ _lst158503_)
                        (_rest258509_ _lst258504_)
                        (_r58510_ _iv58502_))
          (let* ((_rest15851158519_ _rest158508_)
                 (_else5851358527_ (lambda () _r58510_))
                 (_K5851558566_
                  (lambda (_rest158530_ _x158531_)
                    (let* ((_rest25853258540_ _rest258509_)
                           (_else5853458548_ (lambda () _r58510_))
                           (_K5853658554_
                            (lambda (_rest258551_ _x258552_)
                              (let ((__tmp63856
                                     (_f58501_ _x158531_ _x258552_ _r58510_)))
                                (declare (not safe))
                                (_lp58506_
                                 _rest158530_
                                 _rest258551_
                                 __tmp63856)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25853258540_))
                          (let ((_hd5853758557_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25853258540_)))
                                (_tl5853858559_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25853258540_))))
                            (let* ((_x258562_ _hd5853758557_)
                                   (_rest258564_ _tl5853858559_))
                              (declare (not safe))
                              (_K5853658554_ _rest258564_ _x258562_)))
                          (let () (declare (not safe)) (_else5853458548_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15851158519_))
                (let ((_hd5851658569_
                       (let () (declare (not safe)) (##car _rest15851158519_)))
                      (_tl5851758571_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15851158519_))))
                  (let* ((_x158574_ _hd5851658569_)
                         (_rest158576_ _tl5851758571_))
                    (declare (not safe))
                    (_K5851558566_ _rest158576_ _x158574_)))
                (let () (declare (not safe)) (_else5851358527_)))))))
    (define foldl
      (lambda _g63858_
        (let ((_g63857_ (let () (declare (not safe)) (##length _g63858_))))
          (cond ((let () (declare (not safe)) (##fx= _g63857_ 3))
                 (apply (lambda (_f58486_ _iv58487_ _lst58488_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58486_ _iv58487_ _lst58488_)))
                        _g63858_))
                ((let () (declare (not safe)) (##fx= _g63857_ 4))
                 (apply (lambda (_f58490_ _iv58491_ _lst158492_ _lst258493_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58490_
                                    _iv58491_
                                    _lst158492_
                                    _lst258493_)))
                        _g63858_))
                ((let () (declare (not safe)) (##fx>= _g63857_ 4))
                 (apply foldl* _g63858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g63858_))))))
    (define foldl*
      (lambda (_f58474_ _iv58475_ . _rest58476_)
        (let _recur58478_ ((_iv58480_ _iv58475_) (_rest58481_ _rest58476_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58481_))
              (let ((__tmp63860
                     (apply _f58474_
                            (let ((__tmp63862
                                   (lambda (_xs58483_ _r58484_)
                                     (let ((__tmp63863 (car _xs58483_)))
                                       (declare (not safe))
                                       (cons __tmp63863 _r58484_))))
                                  (__tmp63861 (list _iv58480_)))
                              (declare (not safe))
                              (foldr1 __tmp63862 __tmp63861 _rest58481_))))
                    (__tmp63859 (map cdr _rest58481_)))
                (declare (not safe))
                (_recur58478_ __tmp63860 __tmp63859))
              _iv58480_))))
    (define foldr1
      (lambda (_f58433_ _iv58434_ _lst58435_)
        (let _recur58437_ ((_rest58439_ _lst58435_))
          (let* ((_rest5844058448_ _rest58439_)
                 (_else5844258456_ (lambda () _iv58434_))
                 (_K5844458462_
                  (lambda (_rest58459_ _x58460_)
                    (_f58433_
                     _x58460_
                     (let ()
                       (declare (not safe))
                       (_recur58437_ _rest58459_))))))
            (if (let () (declare (not safe)) (##pair? _rest5844058448_))
                (let ((_hd5844558465_
                       (let () (declare (not safe)) (##car _rest5844058448_)))
                      (_tl5844658467_
                       (let () (declare (not safe)) (##cdr _rest5844058448_))))
                  (let* ((_x58470_ _hd5844558465_)
                         (_rest58472_ _tl5844658467_))
                    (declare (not safe))
                    (_K5844458462_ _rest58472_ _x58470_)))
                (let () (declare (not safe)) (_else5844258456_)))))))
    (define foldr2
      (lambda (_f58357_ _iv58358_ _lst158359_ _lst258360_)
        (let _recur58362_ ((_rest158364_ _lst158359_)
                           (_rest258365_ _lst258360_))
          (let* ((_rest15836658374_ _rest158364_)
                 (_else5836858382_ (lambda () _iv58358_))
                 (_K5837058421_
                  (lambda (_rest158385_ _x158386_)
                    (let* ((_rest25838758395_ _rest258365_)
                           (_else5838958403_ (lambda () _iv58358_))
                           (_K5839158409_
                            (lambda (_rest258406_ _x258407_)
                              (_f58357_
                               _x158386_
                               _x258407_
                               (let ()
                                 (declare (not safe))
                                 (_recur58362_ _rest158385_ _rest258406_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25838758395_))
                          (let ((_hd5839258412_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25838758395_)))
                                (_tl5839358414_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25838758395_))))
                            (let* ((_x258417_ _hd5839258412_)
                                   (_rest258419_ _tl5839358414_))
                              (declare (not safe))
                              (_K5839158409_ _rest258419_ _x258417_)))
                          (let () (declare (not safe)) (_else5838958403_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15836658374_))
                (let ((_hd5837158424_
                       (let () (declare (not safe)) (##car _rest15836658374_)))
                      (_tl5837258426_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15836658374_))))
                  (let* ((_x158429_ _hd5837158424_)
                         (_rest158431_ _tl5837258426_))
                    (declare (not safe))
                    (_K5837058421_ _rest158431_ _x158429_)))
                (let () (declare (not safe)) (_else5836858382_)))))))
    (define foldr
      (lambda _g63865_
        (let ((_g63864_ (let () (declare (not safe)) (##length _g63865_))))
          (cond ((let () (declare (not safe)) (##fx= _g63864_ 3))
                 (apply (lambda (_f58342_ _iv58343_ _lst58344_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58342_ _iv58343_ _lst58344_)))
                        _g63865_))
                ((let () (declare (not safe)) (##fx= _g63864_ 4))
                 (apply (lambda (_f58346_ _iv58347_ _lst158348_ _lst258349_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58346_
                                    _iv58347_
                                    _lst158348_
                                    _lst258349_)))
                        _g63865_))
                ((let () (declare (not safe)) (##fx>= _g63864_ 4))
                 (apply foldr* _g63865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g63865_))))))
    (define foldr*
      (lambda (_f58331_ _iv58332_ . _rest58333_)
        (let _recur58335_ ((_rest58337_ _rest58333_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58337_))
              (apply _f58331_
                     (let ((__tmp63868
                            (lambda (_xs58339_ _r58340_)
                              (let ((__tmp63869 (car _xs58339_)))
                                (declare (not safe))
                                (cons __tmp63869 _r58340_))))
                           (__tmp63866
                            (list (let ((__tmp63867 (map cdr _rest58337_)))
                                    (declare (not safe))
                                    (_recur58335_ __tmp63867)))))
                       (declare (not safe))
                       (foldr1 __tmp63868 __tmp63866 _rest58337_)))
              _iv58332_))))
    (define remove-nulls!
      (lambda (_l58218_)
        (let* ((_l5821958232_ _l58218_)
               (_E5822358236_
                (lambda () (error '"No clause matching" _l5821958232_))))
          (let ((_K5822858321_
                 (lambda (_r58319_)
                   (let () (declare (not safe)) (remove-nulls! _r58319_))))
                (_K5822558308_
                 (lambda (_r58248_)
                   (let _loop58250_ ((_l58252_ _l58218_) (_r58253_ _r58248_))
                     (let* ((_r5825458267_ _r58253_)
                            (_E5825858271_
                             (lambda ()
                               (error '"No clause matching" _r5825458267_))))
                       (let ((_K5826358298_
                              (lambda (_rr58296_)
                                (set-cdr!
                                 _l58252_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58296_)))))
                             (_K5826058285_
                              (lambda (_rr58283_)
                                (let ()
                                  (declare (not safe))
                                  (_loop58250_ _r58253_ _rr58283_))))
                             (_K5825958276_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5825458267_))
                             (let ((_tl5826558303_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5825458267_)))
                                   (_hd5826458301_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5825458267_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5826458301_))
                                   (let ((_rr58306_ _tl5826558303_))
                                     (declare (not safe))
                                     (_K5826358298_ _rr58306_))
                                   (let ((_rr58291_ _tl5826558303_))
                                     (declare (not safe))
                                     (_K5826058285_ _rr58291_))))
                             '#!void))))
                   _l58218_))
                (_K5822458241_ (lambda () _l58218_)))
            (if (let () (declare (not safe)) (##pair? _l5821958232_))
                (let ((_tl5823058326_
                       (let () (declare (not safe)) (##cdr _l5821958232_)))
                      (_hd5822958324_
                       (let () (declare (not safe)) (##car _l5821958232_))))
                  (if (let () (declare (not safe)) (##null? _hd5822958324_))
                      (let ((_r58329_ _tl5823058326_))
                        (declare (not safe))
                        (remove-nulls! _r58329_))
                      (let ((_r58314_ _tl5823058326_))
                        (declare (not safe))
                        (_K5822558308_ _r58314_))))
                (let () (declare (not safe)) (_K5822458241_)))))))
    (define append1!
      (lambda (_l58213_ _x58214_)
        (let ((_l258216_ (let () (declare (not safe)) (cons _x58214_ '()))))
          (if (let () (declare (not safe)) (pair? _l58213_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l58213_))
               _l258216_)
              _l258216_))))
    (define append-reverse
      (lambda (_rev-head58210_ _tail58211_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail58211_ _rev-head58210_))))
    (define append-reverse-until
      (lambda (_pred58163_ _rhead58164_ _tail58165_)
        (let _loop58167_ ((_rhead58169_ _rhead58164_)
                          (_tail58170_ _tail58165_))
          (let* ((_rhead5817158180_ _rhead58169_)
                 (_E5817458184_
                  (lambda () (error '"No clause matching" _rhead5817158180_))))
            (let ((_K5817858207_ (lambda () (values '() _tail58170_)))
                  (_K5817558191_
                   (lambda (_r58188_ _a58189_)
                     (if (_pred58163_ _a58189_)
                         (values _rhead58169_ _tail58170_)
                         (let ((__tmp63870
                                (let ()
                                  (declare (not safe))
                                  (cons _a58189_ _tail58170_))))
                           (declare (not safe))
                           (_loop58167_ _r58188_ __tmp63870))))))
              (let ((_try-match5817358203_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5817158180_))
                           (let ((_tl5817758196_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5817158180_)))
                                 (_hd5817658194_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5817158180_))))
                             (let ((_a58199_ _hd5817658194_)
                                   (_r58201_ _tl5817758196_))
                               (let ()
                                 (declare (not safe))
                                 (_K5817558191_ _r58201_ _a58199_))))
                           (let () (declare (not safe)) (_E5817458184_))))))
                (if (let () (declare (not safe)) (##null? _rhead5817158180_))
                    (let () (declare (not safe)) (_K5817858207_))
                    (let ()
                      (declare (not safe))
                      (_try-match5817358203_)))))))))
    (define andmap1
      (lambda (_f58123_ _lst58124_)
        (let _lp58126_ ((_rest58128_ _lst58124_))
          (let* ((_rest5812958137_ _rest58128_)
                 (_else5813158145_ (lambda () '#t))
                 (_K5813358151_
                  (lambda (_rest58148_ _x58149_)
                    (if (_f58123_ _x58149_)
                        (let () (declare (not safe)) (_lp58126_ _rest58148_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5812958137_))
                (let ((_hd5813458154_
                       (let () (declare (not safe)) (##car _rest5812958137_)))
                      (_tl5813558156_
                       (let () (declare (not safe)) (##cdr _rest5812958137_))))
                  (let* ((_x58159_ _hd5813458154_)
                         (_rest58161_ _tl5813558156_))
                    (declare (not safe))
                    (_K5813358151_ _rest58161_ _x58159_)))
                (let () (declare (not safe)) (_else5813158145_)))))))
    (define andmap2
      (lambda (_f58048_ _lst158049_ _lst258050_)
        (let _lp58052_ ((_rest158054_ _lst158049_) (_rest258055_ _lst258050_))
          (let* ((_rest15805658064_ _rest158054_)
                 (_else5805858072_ (lambda () '#t))
                 (_K5806058111_
                  (lambda (_rest158075_ _x158076_)
                    (let* ((_rest25807758085_ _rest258055_)
                           (_else5807958093_ (lambda () '#t))
                           (_K5808158099_
                            (lambda (_rest258096_ _x258097_)
                              (if (_f58048_ _x158076_ _x258097_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp58052_ _rest158075_ _rest258096_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25807758085_))
                          (let ((_hd5808258102_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25807758085_)))
                                (_tl5808358104_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25807758085_))))
                            (let* ((_x258107_ _hd5808258102_)
                                   (_rest258109_ _tl5808358104_))
                              (declare (not safe))
                              (_K5808158099_ _rest258109_ _x258107_)))
                          (let () (declare (not safe)) (_else5807958093_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15805658064_))
                (let ((_hd5806158114_
                       (let () (declare (not safe)) (##car _rest15805658064_)))
                      (_tl5806258116_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15805658064_))))
                  (let* ((_x158119_ _hd5806158114_)
                         (_rest158121_ _tl5806258116_))
                    (declare (not safe))
                    (_K5806058111_ _rest158121_ _x158119_)))
                (let () (declare (not safe)) (_else5805858072_)))))))
    (define andmap
      (lambda _g63872_
        (let ((_g63871_ (let () (declare (not safe)) (##length _g63872_))))
          (cond ((let () (declare (not safe)) (##fx= _g63871_ 2))
                 (apply (lambda (_f58036_ _lst58037_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f58036_ _lst58037_)))
                        _g63872_))
                ((let () (declare (not safe)) (##fx= _g63871_ 3))
                 (apply (lambda (_f58039_ _lst158040_ _lst258041_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f58039_ _lst158040_ _lst258041_)))
                        _g63872_))
                ((let () (declare (not safe)) (##fx>= _g63871_ 3))
                 (apply andmap* _g63872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g63872_))))))
    (define andmap*
      (lambda (_f58029_ . _rest58030_)
        (let _recur58032_ ((_rest58034_ _rest58030_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58034_))
              (if (apply _f58029_ (map car _rest58034_))
                  (let ((__tmp63873 (map cdr _rest58034_)))
                    (declare (not safe))
                    (_recur58032_ __tmp63873))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f57986_ _lst57987_)
        (let _lp57989_ ((_rest57991_ _lst57987_))
          (let* ((_rest5799258000_ _rest57991_)
                 (_else5799458008_ (lambda () '#f))
                 (_K5799658017_
                  (lambda (_rest58011_ _x58012_)
                    (let ((_$e58014_ (_f57986_ _x58012_)))
                      (if _$e58014_
                          _$e58014_
                          (let ()
                            (declare (not safe))
                            (_lp57989_ _rest58011_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5799258000_))
                (let ((_hd5799758020_
                       (let () (declare (not safe)) (##car _rest5799258000_)))
                      (_tl5799858022_
                       (let () (declare (not safe)) (##cdr _rest5799258000_))))
                  (let* ((_x58025_ _hd5799758020_)
                         (_rest58027_ _tl5799858022_))
                    (declare (not safe))
                    (_K5799658017_ _rest58027_ _x58025_)))
                (let () (declare (not safe)) (_else5799458008_)))))))
    (define ormap2
      (lambda (_f57908_ _lst157909_ _lst257910_)
        (let _lp57912_ ((_rest157914_ _lst157909_) (_rest257915_ _lst257910_))
          (let* ((_rest15791657924_ _rest157914_)
                 (_else5791857932_ (lambda () '#f))
                 (_K5792057974_
                  (lambda (_rest157935_ _x157936_)
                    (let* ((_rest25793757945_ _rest257915_)
                           (_else5793957953_ (lambda () '#f))
                           (_K5794157962_
                            (lambda (_rest257956_ _x257957_)
                              (let ((_$e57959_ (_f57908_ _x157936_ _x257957_)))
                                (if _$e57959_
                                    _$e57959_
                                    (let ()
                                      (declare (not safe))
                                      (_lp57912_
                                       _rest157935_
                                       _rest257956_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25793757945_))
                          (let ((_hd5794257965_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25793757945_)))
                                (_tl5794357967_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25793757945_))))
                            (let* ((_x257970_ _hd5794257965_)
                                   (_rest257972_ _tl5794357967_))
                              (declare (not safe))
                              (_K5794157962_ _rest257972_ _x257970_)))
                          (let () (declare (not safe)) (_else5793957953_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15791657924_))
                (let ((_hd5792157977_
                       (let () (declare (not safe)) (##car _rest15791657924_)))
                      (_tl5792257979_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15791657924_))))
                  (let* ((_x157982_ _hd5792157977_)
                         (_rest157984_ _tl5792257979_))
                    (declare (not safe))
                    (_K5792057974_ _rest157984_ _x157982_)))
                (let () (declare (not safe)) (_else5791857932_)))))))
    (define ormap
      (lambda _g63875_
        (let ((_g63874_ (let () (declare (not safe)) (##length _g63875_))))
          (cond ((let () (declare (not safe)) (##fx= _g63874_ 2))
                 (apply (lambda (_f57896_ _lst57897_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f57896_ _lst57897_)))
                        _g63875_))
                ((let () (declare (not safe)) (##fx= _g63874_ 3))
                 (apply (lambda (_f57899_ _lst157900_ _lst257901_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f57899_ _lst157900_ _lst257901_)))
                        _g63875_))
                ((let () (declare (not safe)) (##fx>= _g63874_ 3))
                 (apply ormap* _g63875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g63875_))))))
    (define ormap*
      (lambda (_f57886_ . _rest57887_)
        (let _recur57889_ ((_rest57891_ _rest57887_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57891_))
              (let ((_$e57893_ (apply _f57886_ (map car _rest57891_))))
                (if _$e57893_
                    _$e57893_
                    (let ((__tmp63876 (map cdr _rest57891_)))
                      (declare (not safe))
                      (_recur57889_ __tmp63876))))
              '#f))))
    (define filter
      (lambda (_f57844_ _lst57845_)
        (let _recur57847_ ((_lst57849_ _lst57845_))
          (let* ((_lst5785057858_ _lst57849_)
                 (_else5785257866_ (lambda () '()))
                 (_K5785457874_
                  (lambda (_rest57869_ _hd57870_)
                    (if (_f57844_ _hd57870_)
                        (let ((_tail57872_
                               (let ()
                                 (declare (not safe))
                                 (_recur57847_ _rest57869_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail57872_ _rest57869_))
                              _lst57849_
                              (let ()
                                (declare (not safe))
                                (cons _hd57870_ _tail57872_))))
                        (let ()
                          (declare (not safe))
                          (_recur57847_ _rest57869_))))))
            (if (let () (declare (not safe)) (##pair? _lst5785057858_))
                (let ((_hd5785557877_
                       (let () (declare (not safe)) (##car _lst5785057858_)))
                      (_tl5785657879_
                       (let () (declare (not safe)) (##cdr _lst5785057858_))))
                  (let* ((_hd57882_ _hd5785557877_)
                         (_rest57884_ _tl5785657879_))
                    (declare (not safe))
                    (_K5785457874_ _rest57884_ _hd57882_)))
                (let () (declare (not safe)) (_else5785257866_)))))))
    (define filter-map1
      (lambda (_f57799_ _lst57800_)
        (let _recur57802_ ((_rest57804_ _lst57800_))
          (let* ((_rest5780557813_ _rest57804_)
                 (_else5780757821_ (lambda () '()))
                 (_K5780957832_
                  (lambda (_rest57824_ _x57825_)
                    (let ((_$e57827_ (_f57799_ _x57825_)))
                      (if _$e57827_
                          ((lambda (_r57830_)
                             (let ((__tmp63877
                                    (let ()
                                      (declare (not safe))
                                      (_recur57802_ _rest57824_))))
                               (declare (not safe))
                               (cons _r57830_ __tmp63877)))
                           _$e57827_)
                          (let ()
                            (declare (not safe))
                            (_recur57802_ _rest57824_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5780557813_))
                (let ((_hd5781057835_
                       (let () (declare (not safe)) (##car _rest5780557813_)))
                      (_tl5781157837_
                       (let () (declare (not safe)) (##cdr _rest5780557813_))))
                  (let* ((_x57840_ _hd5781057835_)
                         (_rest57842_ _tl5781157837_))
                    (declare (not safe))
                    (_K5780957832_ _rest57842_ _x57840_)))
                (let () (declare (not safe)) (_else5780757821_)))))))
    (define filter-map2
      (lambda (_f57719_ _lst157720_ _lst257721_)
        (let _recur57723_ ((_rest157725_ _lst157720_)
                           (_rest257726_ _lst257721_))
          (let* ((_rest15772757735_ _rest157725_)
                 (_else5772957743_ (lambda () '()))
                 (_K5773157787_
                  (lambda (_rest157746_ _x157747_)
                    (let* ((_rest25774857756_ _rest257726_)
                           (_else5775057764_ (lambda () '()))
                           (_K5775257775_
                            (lambda (_rest257767_ _x257768_)
                              (let ((_$e57770_ (_f57719_ _x157747_ _x257768_)))
                                (if _$e57770_
                                    ((lambda (_r57773_)
                                       (let ((__tmp63878
                                              (let ()
                                                (declare (not safe))
                                                (_recur57723_
                                                 _rest157746_
                                                 _rest257767_))))
                                         (declare (not safe))
                                         (cons _r57773_ __tmp63878)))
                                     _$e57770_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur57723_
                                       _rest157746_
                                       _rest257767_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25774857756_))
                          (let ((_hd5775357778_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25774857756_)))
                                (_tl5775457780_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25774857756_))))
                            (let* ((_x257783_ _hd5775357778_)
                                   (_rest257785_ _tl5775457780_))
                              (declare (not safe))
                              (_K5775257775_ _rest257785_ _x257783_)))
                          (let () (declare (not safe)) (_else5775057764_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15772757735_))
                (let ((_hd5773257790_
                       (let () (declare (not safe)) (##car _rest15772757735_)))
                      (_tl5773357792_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15772757735_))))
                  (let* ((_x157795_ _hd5773257790_)
                         (_rest157797_ _tl5773357792_))
                    (declare (not safe))
                    (_K5773157787_ _rest157797_ _x157795_)))
                (let () (declare (not safe)) (_else5772957743_)))))))
    (define filter-map
      (lambda _g63880_
        (let ((_g63879_ (let () (declare (not safe)) (##length _g63880_))))
          (cond ((let () (declare (not safe)) (##fx= _g63879_ 2))
                 (apply (lambda (_f57707_ _lst57708_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f57707_ _lst57708_)))
                        _g63880_))
                ((let () (declare (not safe)) (##fx= _g63879_ 3))
                 (apply (lambda (_f57710_ _lst157711_ _lst257712_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f57710_ _lst157711_ _lst257712_)))
                        _g63880_))
                ((let () (declare (not safe)) (##fx>= _g63879_ 3))
                 (apply filter-map* _g63880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g63880_))))))
    (define filter-map*
      (lambda (_f57695_ . _rest57696_)
        (let _recur57698_ ((_rest57700_ _rest57696_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest57700_))
              (let ((_$e57702_ (apply _f57695_ (map car _rest57700_))))
                (if _$e57702_
                    ((lambda (_r57705_)
                       (let ((__tmp63882
                              (let ((__tmp63883 (map cdr _rest57700_)))
                                (declare (not safe))
                                (_recur57698_ __tmp63883))))
                         (declare (not safe))
                         (cons _r57705_ __tmp63882)))
                     _$e57702_)
                    (let ((__tmp63881 (map cdr _rest57700_)))
                      (declare (not safe))
                      (_recur57698_ __tmp63881))))
              '()))))
    (define iota__%
      (lambda (_count57663_ _start57664_ _step57665_)
        (if (fixnum? _count57663_)
            '#!void
            (error '"expected fixnum" _count57663_))
        (if (let () (declare (not safe)) (number? _start57664_))
            '#!void
            (error '"expected number" _start57664_))
        (if (let () (declare (not safe)) (number? _step57665_))
            '#!void
            (error '"expected number" _step57665_))
        (let ((_root57667_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57669_ ((_i57671_ '0)
                          (_x57672_ _start57664_)
                          (_tl57673_ _root57667_))
            (if (let () (declare (not safe)) (##fx< _i57671_ _count57663_))
                (let ((_tl*57675_
                       (let () (declare (not safe)) (cons _x57672_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl57673_ _tl*57675_))
                  (let ((__tmp63885
                         (let () (declare (not safe)) (##fx+ _i57671_ '1)))
                        (__tmp63884 (+ _x57672_ _step57665_)))
                    (declare (not safe))
                    (_lp57669_ __tmp63885 __tmp63884 _tl*57675_)))
                (let () (declare (not safe)) (##cdr _root57667_)))))))
    (define iota__0
      (lambda (_count57680_)
        (let* ((_start57682_ '0) (_step57684_ '1))
          (declare (not safe))
          (iota__% _count57680_ _start57682_ _step57684_))))
    (define iota__1
      (lambda (_count57686_ _start57687_)
        (let ((_step57689_ '1))
          (declare (not safe))
          (iota__% _count57686_ _start57687_ _step57689_))))
    (define iota
      (lambda _g63887_
        (let ((_g63886_ (let () (declare (not safe)) (##length _g63887_))))
          (cond ((let () (declare (not safe)) (##fx= _g63886_ 1))
                 (apply (lambda (_count57680_)
                          (let () (declare (not safe)) (iota__0 _count57680_)))
                        _g63887_))
                ((let () (declare (not safe)) (##fx= _g63886_ 2))
                 (apply (lambda (_count57686_ _start57687_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count57686_ _start57687_)))
                        _g63887_))
                ((let () (declare (not safe)) (##fx= _g63886_ 3))
                 (apply (lambda (_count57691_ _start57692_ _step57693_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count57691_ _start57692_ _step57693_)))
                        _g63887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g63887_))))))
    (define last-pair
      (lambda (_lst57637_)
        (let* ((_lst5763857645_ _lst57637_)
               (_E5764057649_
                (lambda () (error '"No clause matching" _lst5763857645_)))
               (_K5764157654_
                (lambda (_rest57652_)
                  (if (let () (declare (not safe)) (pair? _rest57652_))
                      (let () (declare (not safe)) (last-pair _rest57652_))
                      _lst57637_))))
          (if (let () (declare (not safe)) (##pair? _lst5763857645_))
              (let* ((_tl5764357657_
                      (let () (declare (not safe)) (##cdr _lst5763857645_)))
                     (_rest57660_ _tl5764357657_))
                (declare (not safe))
                (_K5764157654_ _rest57660_))
              (let () (declare (not safe)) (_E5764057649_))))))
    (define last
      (lambda (_lst57635_)
        (car (let () (declare (not safe)) (last-pair _lst57635_)))))
    (define assgetq__%
      (lambda (_key57613_ _lst57615_ _default57617_)
        (let ((_$e57620_
               (if (let () (declare (not safe)) (pair? _lst57615_))
                   (assq _key57613_ _lst57615_)
                   '#f)))
          (if _$e57620_
              (cdr _$e57620_)
              (if (let () (declare (not safe)) (procedure? _default57617_))
                  (_default57617_ _key57613_)
                  _default57617_)))))
    (define assgetq__0
      (lambda (_key57626_ _lst57627_)
        (let ((_default57629_ '#f))
          (declare (not safe))
          (assgetq__% _key57626_ _lst57627_ _default57629_))))
    (define assgetq
      (lambda _g63889_
        (let ((_g63888_ (let () (declare (not safe)) (##length _g63889_))))
          (cond ((let () (declare (not safe)) (##fx= _g63888_ 2))
                 (apply (lambda (_key57626_ _lst57627_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57626_ _lst57627_)))
                        _g63889_))
                ((let () (declare (not safe)) (##fx= _g63888_ 3))
                 (apply (lambda (_key57631_ _lst57632_ _default57633_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57631_ _lst57632_ _default57633_)))
                        _g63889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g63889_))))))
    (define assgetv__%
      (lambda (_key57590_ _lst57592_ _default57594_)
        (let ((_$e57597_
               (if (let () (declare (not safe)) (pair? _lst57592_))
                   (assv _key57590_ _lst57592_)
                   '#f)))
          (if _$e57597_
              (cdr _$e57597_)
              (if (let () (declare (not safe)) (procedure? _default57594_))
                  (_default57594_ _key57590_)
                  _default57594_)))))
    (define assgetv__0
      (lambda (_key57603_ _lst57604_)
        (let ((_default57606_ '#f))
          (declare (not safe))
          (assgetv__% _key57603_ _lst57604_ _default57606_))))
    (define assgetv
      (lambda _g63891_
        (let ((_g63890_ (let () (declare (not safe)) (##length _g63891_))))
          (cond ((let () (declare (not safe)) (##fx= _g63890_ 2))
                 (apply (lambda (_key57603_ _lst57604_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57603_ _lst57604_)))
                        _g63891_))
                ((let () (declare (not safe)) (##fx= _g63890_ 3))
                 (apply (lambda (_key57608_ _lst57609_ _default57610_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57608_ _lst57609_ _default57610_)))
                        _g63891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g63891_))))))
    (define assget__%
      (lambda (_key57567_ _lst57569_ _default57571_)
        (let ((_$e57574_
               (if (let () (declare (not safe)) (pair? _lst57569_))
                   (assoc _key57567_ _lst57569_)
                   '#f)))
          (if _$e57574_
              (cdr _$e57574_)
              (if (let () (declare (not safe)) (procedure? _default57571_))
                  (_default57571_ _key57567_)
                  _default57571_)))))
    (define assget__0
      (lambda (_key57580_ _lst57581_)
        (let ((_default57583_ '#f))
          (declare (not safe))
          (assget__% _key57580_ _lst57581_ _default57583_))))
    (define assget
      (lambda _g63893_
        (let ((_g63892_ (let () (declare (not safe)) (##length _g63893_))))
          (cond ((let () (declare (not safe)) (##fx= _g63892_ 2))
                 (apply (lambda (_key57580_ _lst57581_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57580_ _lst57581_)))
                        _g63893_))
                ((let () (declare (not safe)) (##fx= _g63892_ 3))
                 (apply (lambda (_key57585_ _lst57586_ _default57587_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57585_ _lst57586_ _default57587_)))
                        _g63893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g63893_))))))
    (define pgetq__%
      (lambda (_key57496_ _lst57498_ _default57500_)
        (let _lp57503_ ((_rest57506_ _lst57498_))
          (let* ((_rest5750857518_ _rest57506_)
                 (_else5751057526_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57500_))
                        (_default57500_ _key57496_)
                        _default57500_)))
                 (_K5751257535_
                  (lambda (_rest57529_ _v57530_ _k57532_)
                    (if (let () (declare (not safe)) (eq? _k57532_ _key57496_))
                        _v57530_
                        (let ()
                          (declare (not safe))
                          (_lp57503_ _rest57529_))))))
            (if (let () (declare (not safe)) (##pair? _rest5750857518_))
                (let ((_hd5751357538_
                       (let () (declare (not safe)) (##car _rest5750857518_)))
                      (_tl5751457540_
                       (let () (declare (not safe)) (##cdr _rest5750857518_))))
                  (let ((_k57543_ _hd5751357538_))
                    (if (let () (declare (not safe)) (##pair? _tl5751457540_))
                        (let ((_hd5751557545_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5751457540_)))
                              (_tl5751657547_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5751457540_))))
                          (let* ((_v57550_ _hd5751557545_)
                                 (_rest57552_ _tl5751657547_))
                            (declare (not safe))
                            (_K5751257535_ _rest57552_ _v57550_ _k57543_)))
                        (let () (declare (not safe)) (_else5751057526_)))))
                (let () (declare (not safe)) (_else5751057526_)))))))
    (define pgetq__0
      (lambda (_key57557_ _lst57558_)
        (let ((_default57560_ '#f))
          (declare (not safe))
          (pgetq__% _key57557_ _lst57558_ _default57560_))))
    (define pgetq
      (lambda _g63895_
        (let ((_g63894_ (let () (declare (not safe)) (##length _g63895_))))
          (cond ((let () (declare (not safe)) (##fx= _g63894_ 2))
                 (apply (lambda (_key57557_ _lst57558_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57557_ _lst57558_)))
                        _g63895_))
                ((let () (declare (not safe)) (##fx= _g63894_ 3))
                 (apply (lambda (_key57562_ _lst57563_ _default57564_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57562_ _lst57563_ _default57564_)))
                        _g63895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g63895_))))))
    (define pgetv__%
      (lambda (_key57425_ _lst57427_ _default57429_)
        (let _lp57432_ ((_rest57435_ _lst57427_))
          (let* ((_rest5743757447_ _rest57435_)
                 (_else5743957455_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57429_))
                        (_default57429_ _key57425_)
                        _default57429_)))
                 (_K5744157464_
                  (lambda (_rest57458_ _v57459_ _k57461_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57461_ _key57425_))
                        _v57459_
                        (let ()
                          (declare (not safe))
                          (_lp57432_ _rest57458_))))))
            (if (let () (declare (not safe)) (##pair? _rest5743757447_))
                (let ((_hd5744257467_
                       (let () (declare (not safe)) (##car _rest5743757447_)))
                      (_tl5744357469_
                       (let () (declare (not safe)) (##cdr _rest5743757447_))))
                  (let ((_k57472_ _hd5744257467_))
                    (if (let () (declare (not safe)) (##pair? _tl5744357469_))
                        (let ((_hd5744457474_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5744357469_)))
                              (_tl5744557476_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5744357469_))))
                          (let* ((_v57479_ _hd5744457474_)
                                 (_rest57481_ _tl5744557476_))
                            (declare (not safe))
                            (_K5744157464_ _rest57481_ _v57479_ _k57472_)))
                        (let () (declare (not safe)) (_else5743957455_)))))
                (let () (declare (not safe)) (_else5743957455_)))))))
    (define pgetv__0
      (lambda (_key57486_ _lst57487_)
        (let ((_default57489_ '#f))
          (declare (not safe))
          (pgetv__% _key57486_ _lst57487_ _default57489_))))
    (define pgetv
      (lambda _g63897_
        (let ((_g63896_ (let () (declare (not safe)) (##length _g63897_))))
          (cond ((let () (declare (not safe)) (##fx= _g63896_ 2))
                 (apply (lambda (_key57486_ _lst57487_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57486_ _lst57487_)))
                        _g63897_))
                ((let () (declare (not safe)) (##fx= _g63896_ 3))
                 (apply (lambda (_key57491_ _lst57492_ _default57493_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57491_ _lst57492_ _default57493_)))
                        _g63897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g63897_))))))
    (define pget__%
      (lambda (_key57354_ _lst57356_ _default57358_)
        (let _lp57361_ ((_rest57364_ _lst57356_))
          (let* ((_rest5736657376_ _rest57364_)
                 (_else5736857384_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57358_))
                        (_default57358_ _key57354_)
                        _default57358_)))
                 (_K5737057393_
                  (lambda (_rest57387_ _v57388_ _k57390_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57390_ _key57354_))
                        _v57388_
                        (let ()
                          (declare (not safe))
                          (_lp57361_ _rest57387_))))))
            (if (let () (declare (not safe)) (##pair? _rest5736657376_))
                (let ((_hd5737157396_
                       (let () (declare (not safe)) (##car _rest5736657376_)))
                      (_tl5737257398_
                       (let () (declare (not safe)) (##cdr _rest5736657376_))))
                  (let ((_k57401_ _hd5737157396_))
                    (if (let () (declare (not safe)) (##pair? _tl5737257398_))
                        (let ((_hd5737357403_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5737257398_)))
                              (_tl5737457405_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5737257398_))))
                          (let* ((_v57408_ _hd5737357403_)
                                 (_rest57410_ _tl5737457405_))
                            (declare (not safe))
                            (_K5737057393_ _rest57410_ _v57408_ _k57401_)))
                        (let () (declare (not safe)) (_else5736857384_)))))
                (let () (declare (not safe)) (_else5736857384_)))))))
    (define pget__0
      (lambda (_key57415_ _lst57416_)
        (let ((_default57418_ '#f))
          (declare (not safe))
          (pget__% _key57415_ _lst57416_ _default57418_))))
    (define pget
      (lambda _g63899_
        (let ((_g63898_ (let () (declare (not safe)) (##length _g63899_))))
          (cond ((let () (declare (not safe)) (##fx= _g63898_ 2))
                 (apply (lambda (_key57415_ _lst57416_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57415_ _lst57416_)))
                        _g63899_))
                ((let () (declare (not safe)) (##fx= _g63898_ 3))
                 (apply (lambda (_key57420_ _lst57421_ _default57422_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57420_ _lst57421_ _default57422_)))
                        _g63899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g63899_))))))
    (define find
      (lambda (_pred57347_ _lst57348_)
        (let ((_$e57350_
               (let () (declare (not safe)) (memf _pred57347_ _lst57348_))))
          (if _$e57350_ (car _$e57350_) '#f))))
    (define memf
      (lambda (_proc57307_ _lst57308_)
        (let _lp57310_ ((_rest57312_ _lst57308_))
          (let* ((_rest5731357321_ _rest57312_)
                 (_else5731557329_ (lambda () '#f))
                 (_K5731757335_
                  (lambda (_tl57332_ _hd57333_)
                    (if (_proc57307_ _hd57333_)
                        _rest57312_
                        (let () (declare (not safe)) (_lp57310_ _tl57332_))))))
            (if (let () (declare (not safe)) (##pair? _rest5731357321_))
                (let ((_hd5731857338_
                       (let () (declare (not safe)) (##car _rest5731357321_)))
                      (_tl5731957340_
                       (let () (declare (not safe)) (##cdr _rest5731357321_))))
                  (let* ((_hd57343_ _hd5731857338_) (_tl57345_ _tl5731957340_))
                    (declare (not safe))
                    (_K5731757335_ _tl57345_ _hd57343_)))
                (let () (declare (not safe)) (_else5731557329_)))))))
    (define remove1
      (lambda (_el57260_ _lst57262_)
        (let _lp57265_ ((_rest57268_ _lst57262_) (_r57270_ '()))
          (let* ((_rest5727257280_ _rest57268_)
                 (_else5727457288_ (lambda () _lst57262_))
                 (_K5727657295_
                  (lambda (_rest57291_ _hd57292_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57260_ _hd57292_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57291_ _r57270_))
                        (let ((__tmp63900
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57292_ _r57270_))))
                          (declare (not safe))
                          (_lp57265_ _rest57291_ __tmp63900))))))
            (if (let () (declare (not safe)) (##pair? _rest5727257280_))
                (let ((_hd5727757298_
                       (let () (declare (not safe)) (##car _rest5727257280_)))
                      (_tl5727857300_
                       (let () (declare (not safe)) (##cdr _rest5727257280_))))
                  (let* ((_hd57303_ _hd5727757298_)
                         (_rest57305_ _tl5727857300_))
                    (declare (not safe))
                    (_K5727657295_ _rest57305_ _hd57303_)))
                (let () (declare (not safe)) (_else5727457288_)))))))
    (define remv
      (lambda (_el57213_ _lst57215_)
        (let _lp57218_ ((_rest57221_ _lst57215_) (_r57223_ '()))
          (let* ((_rest5722557233_ _rest57221_)
                 (_else5722757241_ (lambda () _lst57215_))
                 (_K5722957248_
                  (lambda (_rest57244_ _hd57245_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el57213_ _hd57245_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57244_ _r57223_))
                        (let ((__tmp63901
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57245_ _r57223_))))
                          (declare (not safe))
                          (_lp57218_ _rest57244_ __tmp63901))))))
            (if (let () (declare (not safe)) (##pair? _rest5722557233_))
                (let ((_hd5723057251_
                       (let () (declare (not safe)) (##car _rest5722557233_)))
                      (_tl5723157253_
                       (let () (declare (not safe)) (##cdr _rest5722557233_))))
                  (let* ((_hd57256_ _hd5723057251_)
                         (_rest57258_ _tl5723157253_))
                    (declare (not safe))
                    (_K5722957248_ _rest57258_ _hd57256_)))
                (let () (declare (not safe)) (_else5722757241_)))))))
    (define remq
      (lambda (_el57166_ _lst57168_)
        (let _lp57171_ ((_rest57174_ _lst57168_) (_r57176_ '()))
          (let* ((_rest5717857186_ _rest57174_)
                 (_else5718057194_ (lambda () _lst57168_))
                 (_K5718257201_
                  (lambda (_rest57197_ _hd57198_)
                    (if (let () (declare (not safe)) (eq? _el57166_ _hd57198_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57197_ _r57176_))
                        (let ((__tmp63902
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57198_ _r57176_))))
                          (declare (not safe))
                          (_lp57171_ _rest57197_ __tmp63902))))))
            (if (let () (declare (not safe)) (##pair? _rest5717857186_))
                (let ((_hd5718357204_
                       (let () (declare (not safe)) (##car _rest5717857186_)))
                      (_tl5718457206_
                       (let () (declare (not safe)) (##cdr _rest5717857186_))))
                  (let* ((_hd57209_ _hd5718357204_)
                         (_rest57211_ _tl5718457206_))
                    (declare (not safe))
                    (_K5718257201_ _rest57211_ _hd57209_)))
                (let () (declare (not safe)) (_else5718057194_)))))))
    (define remf
      (lambda (_proc57125_ _lst57126_)
        (let _lp57128_ ((_rest57130_ _lst57126_) (_r57131_ '()))
          (let* ((_rest5713257140_ _rest57130_)
                 (_else5713457148_ (lambda () _lst57126_))
                 (_K5713657154_
                  (lambda (_rest57151_ _hd57152_)
                    (if (_proc57125_ _hd57152_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57151_ _r57131_))
                        (let ((__tmp63903
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57152_ _r57131_))))
                          (declare (not safe))
                          (_lp57128_ _rest57151_ __tmp63903))))))
            (if (let () (declare (not safe)) (##pair? _rest5713257140_))
                (let ((_hd5713757157_
                       (let () (declare (not safe)) (##car _rest5713257140_)))
                      (_tl5713857159_
                       (let () (declare (not safe)) (##cdr _rest5713257140_))))
                  (let* ((_hd57162_ _hd5713757157_)
                         (_rest57164_ _tl5713857159_))
                    (declare (not safe))
                    (_K5713657154_ _rest57164_ _hd57162_)))
                (let () (declare (not safe)) (_else5713457148_)))))))
    (define 1+ (lambda (_x57123_) (+ _x57123_ '1)))
    (define 1- (lambda (_x57121_) (- _x57121_ '1)))
    (define fx1+ (lambda (_x57119_) (fx+ _x57119_ '1)))
    (define fx1- (lambda (_x57117_) (fx- _x57117_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x57115_)
        (if (fixnum? _x57115_)
            (let () (declare (not safe)) (##fx>= _x57115_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x57113_)
        (if (fixnum? _x57113_)
            (let () (declare (not safe)) (##fx> _x57113_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x57111_) (let () (declare (not safe)) (eq? _x57111_ '0))))
    (define fx<0?
      (lambda (_x57109_)
        (if (fixnum? _x57109_)
            (let () (declare (not safe)) (##fx< _x57109_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x57107_)
        (if (fixnum? _x57107_)
            (let () (declare (not safe)) (##fx<= _x57107_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x57105_)
        (if (let () (declare (not safe)) (symbol? _x57105_))
            (let ((__tmp63904 (uninterned-symbol? _x57105_)))
              (declare (not safe))
              (not __tmp63904))
            '#f)))
    (define display-as-string
      (lambda (_x57077_ _port57078_)
        (if (or (let () (declare (not safe)) (string? _x57077_))
                (let () (declare (not safe)) (symbol? _x57077_))
                (keyword? _x57077_)
                (let () (declare (not safe)) (number? _x57077_))
                (let () (declare (not safe)) (char? _x57077_)))
            (display _x57077_ _port57078_)
            (if (let () (declare (not safe)) (pair? _x57077_))
                (begin
                  (let ((__tmp63905 (car _x57077_)))
                    (declare (not safe))
                    (display-as-string __tmp63905 _port57078_))
                  (let ((__tmp63906 (cdr _x57077_)))
                    (declare (not safe))
                    (display-as-string __tmp63906 _port57078_)))
                (if (let () (declare (not safe)) (vector? _x57077_))
                    (vector-for-each
                     (lambda (_g5709157093_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5709157093_ _port57078_)))
                     _x57077_)
                    (if (or (let () (declare (not safe)) (null? _x57077_))
                            (let ()
                              (declare (not safe))
                              (eq? _x57077_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x57077_))
                            (let () (declare (not safe)) (boolean? _x57077_)))
                        '#!void
                        (error '"cannot convert as string" _x57077_)))))))
    (define as-string__0
      (lambda (_x57065_)
        (if (let () (declare (not safe)) (string? _x57065_))
            _x57065_
            (if (let () (declare (not safe)) (symbol? _x57065_))
                (symbol->string _x57065_)
                (if (keyword? _x57065_)
                    (keyword->string _x57065_)
                    (call-with-output-string
                     '()
                     (lambda (_g5706657068_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x57065_ _g5706657068_)))))))))
    (define as-string__1
      (lambda _args57071_
        (call-with-output-string
         '()
         (lambda (_g5707257074_)
           (let ()
             (declare (not safe))
             (display-as-string _args57071_ _g5707257074_))))))
    (define as-string
      (lambda _g63908_
        (let ((_g63907_ (let () (declare (not safe)) (##length _g63908_))))
          (cond ((let () (declare (not safe)) (##fx= _g63907_ 1))
                 (apply (lambda (_x57065_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x57065_)))
                        _g63908_))
                (#t (apply as-string__1 _g63908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g63908_))))))
    (define make-symbol__0
      (lambda (_x57061_)
        (if (interned-symbol? _x57061_)
            _x57061_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x57061_))))))
    (define make-symbol__1
      (lambda _args57063_ (string->symbol (apply as-string _args57063_))))
    (define make-symbol
      (lambda _g63910_
        (let ((_g63909_ (let () (declare (not safe)) (##length _g63910_))))
          (cond ((let () (declare (not safe)) (##fx= _g63909_ 1))
                 (apply (lambda (_x57061_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x57061_)))
                        _g63910_))
                (#t (apply make-symbol__1 _g63910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g63910_))))))
    (define make-keyword__0
      (lambda (_x57057_)
        (if (interned-keyword? _x57057_)
            _x57057_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x57057_))))))
    (define make-keyword__1
      (lambda _args57059_ (string->keyword (apply as-string _args57059_))))
    (define make-keyword
      (lambda _g63912_
        (let ((_g63911_ (let () (declare (not safe)) (##length _g63912_))))
          (cond ((let () (declare (not safe)) (##fx= _g63911_ 1))
                 (apply (lambda (_x57057_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x57057_)))
                        _g63912_))
                (#t (apply make-keyword__1 _g63912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g63912_))))))
    (define interned-keyword?
      (lambda (_x57055_)
        (if (keyword? _x57055_)
            (let ((__tmp63913 (uninterned-keyword? _x57055_)))
              (declare (not safe))
              (not __tmp63913))
            '#f)))
    (define symbol->keyword
      (lambda (_sym57053_)
        ((if (uninterned-symbol? _sym57053_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym57053_))))
    (define keyword->symbol
      (lambda (_kw57051_)
        ((if (uninterned-keyword? _kw57051_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw57051_))))
    (define bytes->string__%
      (lambda (_bstr57029_ _enc57030_)
        (if (let () (declare (not safe)) (eq? _enc57030_ 'UTF-8))
            (utf8->string _bstr57029_)
            (let* ((_in57032_
                    (open-input-u8vector
                     (let ((__tmp63914
                            (let ((__tmp63915
                                   (let ((__tmp63916
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr57029_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp63916))))
                              (declare (not safe))
                              (cons _enc57030_ __tmp63915))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp63914))))
                   (_len57034_ (u8vector-length _bstr57029_))
                   (_out57036_ (make-string _len57034_))
                   (_n57038_
                    (read-substring _out57036_ '0 _len57034_ _in57032_)))
              (string-shrink! _out57036_ _n57038_)
              _out57036_))))
    (define bytes->string__0
      (lambda (_bstr57044_)
        (let ((_enc57046_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr57044_ _enc57046_))))
    (define bytes->string
      (lambda _g63918_
        (let ((_g63917_ (let () (declare (not safe)) (##length _g63918_))))
          (cond ((let () (declare (not safe)) (##fx= _g63917_ 1))
                 (apply (lambda (_bstr57044_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr57044_)))
                        _g63918_))
                ((let () (declare (not safe)) (##fx= _g63917_ 2))
                 (apply (lambda (_bstr57048_ _enc57049_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr57048_ _enc57049_)))
                        _g63918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g63918_))))))
    (define string->bytes__%
      (lambda (_str57015_ _enc57016_)
        (if (let () (declare (not safe)) (eq? _enc57016_ 'UTF-8))
            (string->utf8 _str57015_)
            (substring->bytes
             _str57015_
             '0
             (string-length _str57015_)
             _enc57016_))))
    (define string->bytes__0
      (lambda (_str57021_)
        (let ((_enc57023_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str57021_ _enc57023_))))
    (define string->bytes
      (lambda _g63920_
        (let ((_g63919_ (let () (declare (not safe)) (##length _g63920_))))
          (cond ((let () (declare (not safe)) (##fx= _g63919_ 1))
                 (apply (lambda (_str57021_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str57021_)))
                        _g63920_))
                ((let () (declare (not safe)) (##fx= _g63919_ 2))
                 (apply (lambda (_str57025_ _enc57026_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str57025_ _enc57026_)))
                        _g63920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g63920_))))))
    (define substring->bytes__%
      (lambda (_str56993_ _start56994_ _end56995_ _enc56996_)
        (if (let () (declare (not safe)) (eq? _enc56996_ 'UTF-8))
            (string->utf8 _str56993_ _start56994_ _end56995_)
            (let ((_out56998_
                   (open-output-u8vector
                    (let ((__tmp63921
                           (let ()
                             (declare (not safe))
                             (cons _enc56996_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp63921)))))
              (write-substring _str56993_ _start56994_ _end56995_ _out56998_)
              (get-output-u8vector _out56998_)))))
    (define substring->bytes__0
      (lambda (_str57003_ _start57004_ _end57005_)
        (let ((_enc57007_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str57003_
           _start57004_
           _end57005_
           _enc57007_))))
    (define substring->bytes
      (lambda _g63923_
        (let ((_g63922_ (let () (declare (not safe)) (##length _g63923_))))
          (cond ((let () (declare (not safe)) (##fx= _g63922_ 3))
                 (apply (lambda (_str57003_ _start57004_ _end57005_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str57003_
                             _start57004_
                             _end57005_)))
                        _g63923_))
                ((let () (declare (not safe)) (##fx= _g63922_ 4))
                 (apply (lambda (_str57009_ _start57010_ _end57011_ _enc57012_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str57009_
                             _start57010_
                             _end57011_
                             _enc57012_)))
                        _g63923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g63923_))))))
    (define string-empty?
      (lambda (_str56990_)
        (let ((__tmp63924 (string-length _str56990_)))
          (declare (not safe))
          (##fxzero? __tmp63924))))
    (define string-prefix?
      (lambda (_prefix56980_ _str56981_)
        (let ((_str-len56983_ (string-length _str56981_))
              (_prefix-len56984_ (string-length _prefix56980_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len56984_ _str-len56983_))
              (let _lp56986_ ((_i56988_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i56988_ _prefix-len56984_))
                    (if (let ((__tmp63927
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str56981_ _i56988_)))
                              (__tmp63926
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix56980_ _i56988_))))
                          (declare (not safe))
                          (eq? __tmp63927 __tmp63926))
                        (let ((__tmp63925
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i56988_ '1))))
                          (declare (not safe))
                          (_lp56986_ __tmp63925))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str56958_ _char56959_ _start56960_)
        (let ((_len56962_ (string-length _str56958_)))
          (let _lp56964_ ((_k56966_ _start56960_))
            (if (let () (declare (not safe)) (##fx< _k56966_ _len56962_))
                (if (let ((__tmp63929
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56958_ _k56966_))))
                      (declare (not safe))
                      (eq? _char56959_ __tmp63929))
                    _k56966_
                    (let ((__tmp63928
                           (let () (declare (not safe)) (##fx+ _k56966_ '1))))
                      (declare (not safe))
                      (_lp56964_ __tmp63928)))
                '#f)))))
    (define string-index__0
      (lambda (_str56971_ _char56972_)
        (let ((_start56974_ '0))
          (declare (not safe))
          (string-index__% _str56971_ _char56972_ _start56974_))))
    (define string-index
      (lambda _g63931_
        (let ((_g63930_ (let () (declare (not safe)) (##length _g63931_))))
          (cond ((let () (declare (not safe)) (##fx= _g63930_ 2))
                 (apply (lambda (_str56971_ _char56972_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str56971_ _char56972_)))
                        _g63931_))
                ((let () (declare (not safe)) (##fx= _g63930_ 3))
                 (apply (lambda (_str56976_ _char56977_ _start56978_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str56976_
                             _char56977_
                             _start56978_)))
                        _g63931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g63931_))))))
    (define string-rindex__%
      (lambda (_str56929_ _char56930_ _start56931_)
        (let* ((_len56933_ (string-length _str56929_))
               (_start56938_
                (let ((_$e56935_ _start56931_))
                  (if _$e56935_
                      _$e56935_
                      (let () (declare (not safe)) (##fx- _len56933_ '1))))))
          (let _lp56941_ ((_k56943_ _start56938_))
            (if (let () (declare (not safe)) (##fx>= _k56943_ '0))
                (if (let ((__tmp63933
                           (let ()
                             (declare (not safe))
                             (##string-ref _str56929_ _k56943_))))
                      (declare (not safe))
                      (eq? _char56930_ __tmp63933))
                    _k56943_
                    (let ((__tmp63932
                           (let () (declare (not safe)) (##fx- _k56943_ '1))))
                      (declare (not safe))
                      (_lp56941_ __tmp63932)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str56948_ _char56949_)
        (let ((_start56951_ '#f))
          (declare (not safe))
          (string-rindex__% _str56948_ _char56949_ _start56951_))))
    (define string-rindex
      (lambda _g63935_
        (let ((_g63934_ (let () (declare (not safe)) (##length _g63935_))))
          (cond ((let () (declare (not safe)) (##fx= _g63934_ 2))
                 (apply (lambda (_str56948_ _char56949_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str56948_ _char56949_)))
                        _g63935_))
                ((let () (declare (not safe)) (##fx= _g63934_ 3))
                 (apply (lambda (_str56953_ _char56954_ _start56955_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str56953_
                             _char56954_
                             _start56955_)))
                        _g63935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g63935_))))))
    (define string-split
      (lambda (_str56913_ _char56914_)
        (let ((_len56916_ (string-length _str56913_)))
          (let _lp56918_ ((_start56920_ '0) (_r56921_ '()))
            (let ((_$e56923_
                   (let ()
                     (declare (not safe))
                     (string-index _str56913_ _char56914_ _start56920_))))
              (if _$e56923_
                  ((lambda (_end56926_)
                     (let ((__tmp63939
                            (let ()
                              (declare (not safe))
                              (##fx+ _end56926_ '1)))
                           (__tmp63937
                            (let ((__tmp63938
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56913_
                                      _start56920_
                                      _end56926_))))
                              (declare (not safe))
                              (cons __tmp63938 _r56921_))))
                       (declare (not safe))
                       (_lp56918_ __tmp63939 __tmp63937)))
                   _$e56923_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start56920_ _len56916_))
                      (let ((__tmp63936
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str56913_
                                      _start56920_
                                      _len56916_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp63936 _r56921_))
                      (reverse _r56921_))))))))
    (define string-join
      (lambda (_strs56818_ _join56819_)
        (letrec ((_join-length56821_
                  (lambda (_strs56872_ _jlen56873_)
                    (let _lp56875_ ((_rest56877_ _strs56872_) (_len56878_ '0))
                      (let* ((_rest5687956887_ _rest56877_)
                             (_else5688156895_ (lambda () '0))
                             (_K5688356901_
                              (lambda (_rest56898_ _hd56899_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd56899_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest56898_))
                                        (let ((__tmp63941
                                               (let ((__tmp63942
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd56899_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp63942
                                                        _jlen56873_
                                                        _len56878_))))
                                          (declare (not safe))
                                          (_lp56875_ _rest56898_ __tmp63941))
                                        (let ((__tmp63940
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd56899_))))
                                          (declare (not safe))
                                          (##fx+ __tmp63940 _len56878_)))
                                    (error '"expected string" _hd56899_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5687956887_))
                            (let ((_hd5688456904_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5687956887_)))
                                  (_tl5688556906_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5687956887_))))
                              (let* ((_hd56909_ _hd5688456904_)
                                     (_rest56911_ _tl5688556906_))
                                (declare (not safe))
                                (_K5688356901_ _rest56911_ _hd56909_)))
                            (let ()
                              (declare (not safe))
                              (_else5688156895_))))))))
          (let* ((_join56823_
                  (if (let () (declare (not safe)) (char? _join56819_))
                      (string _join56819_)
                      (if (let () (declare (not safe)) (string? _join56819_))
                          _join56819_
                          (error '"expected string or char" _join56819_))))
                 (_jlen56825_
                  (let () (declare (not safe)) (##string-length _join56823_)))
                 (_olen56827_
                  (let ()
                    (declare (not safe))
                    (_join-length56821_ _strs56818_ _jlen56825_)))
                 (_ostr56829_ (make-string _olen56827_)))
            (let _lp56832_ ((_rest56834_ _strs56818_) (_k56835_ '0))
              (let* ((_rest5683656844_ _rest56834_)
                     (_else5683856852_ (lambda () '""))
                     (_K5684056860_
                      (lambda (_rest56855_ _hd56856_)
                        (let ((_hdlen56858_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd56856_))))
                          (if (let () (declare (not safe)) (pair? _rest56855_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56856_
                                   '0
                                   _hdlen56858_
                                   _ostr56829_
                                   _k56835_))
                                (let ((__tmp63943
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56835_ _hdlen56858_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join56823_
                                   '0
                                   _jlen56825_
                                   _ostr56829_
                                   __tmp63943))
                                (let ((__tmp63944
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k56835_
                                                _hdlen56858_
                                                _jlen56825_))))
                                  (declare (not safe))
                                  (_lp56832_ _rest56855_ __tmp63944)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd56856_
                                   '0
                                   _hdlen56858_
                                   _ostr56829_
                                   _k56835_))
                                _ostr56829_))))))
                (if (let () (declare (not safe)) (##pair? _rest5683656844_))
                    (let ((_hd5684156863_
                           (let ()
                             (declare (not safe))
                             (##car _rest5683656844_)))
                          (_tl5684256865_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5683656844_))))
                      (let* ((_hd56868_ _hd5684156863_)
                             (_rest56870_ _tl5684256865_))
                        (declare (not safe))
                        (_K5684056860_ _rest56870_ _hd56868_)))
                    (let () (declare (not safe)) (_else5683856852_)))))))))
    (define read-u8vector
      (lambda (_bytes56815_ _port56816_)
        (read-subu8vector
         _bytes56815_
         '0
         (u8vector-length _bytes56815_)
         _port56816_)))
    (define write-u8vector
      (lambda (_bytes56812_ _port56813_)
        (write-subu8vector
         _bytes56812_
         '0
         (u8vector-length _bytes56812_)
         _port56813_)))
    (define read-string
      (lambda (_str56809_ _port56810_)
        (read-substring _str56809_ '0 (string-length _str56809_) _port56810_)))
    (define write-string
      (lambda (_str56806_ _port56807_)
        (write-substring
         _str56806_
         '0
         (string-length _str56806_)
         _port56807_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag56775_
               _dbg-exprs56776_
               _dbg-thunks56777_
               _expr56778_
               _thunk56779_)
        (letrec ((_o56781_ (current-output-port))
                 (_e56782_ (current-error-port))
                 (_p56783_ (DBG-printer))
                 (_f56784_
                  (lambda () (force-output _o56781_) (force-output _e56782_)))
                 (_d56785_ (lambda (_x56792_) (display _x56792_ _e56782_)))
                 (_w56786_ (lambda (_x56794_) (_p56783_ _x56794_ _e56782_)))
                 (_n56787_ (lambda () (newline _e56782_)))
                 (_v56788_
                  (lambda (_l56797_)
                    (for-each
                     (lambda (_x56799_)
                       (let () (declare (not safe)) (_d56785_ '" "))
                       (let () (declare (not safe)) (_w56786_ _x56799_)))
                     _l56797_)
                    (let () (declare (not safe)) (_n56787_))))
                 (_x56789_
                  (lambda (_expr56801_ _thunk56802_)
                    (let () (declare (not safe)) (_f56784_))
                    (let () (declare (not safe)) (_d56785_ '"  "))
                    (let () (declare (not safe)) (_w56786_ _expr56801_))
                    (let () (declare (not safe)) (_d56785_ '" =>"))
                    (call-with-values
                     _thunk56802_
                     (lambda _x56804_
                       (let () (declare (not safe)) (_v56788_ _x56804_))
                       (let () (declare (not safe)) (_f56784_))
                       (apply values _x56804_))))))
          (if _tag56775_
              (begin
                (if (let () (declare (not safe)) (eq? _tag56775_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f56784_))
                      (let () (declare (not safe)) (_d56785_ _tag56775_))
                      (let () (declare (not safe)) (_n56787_))))
                (for-each _x56789_ _dbg-exprs56776_ _dbg-thunks56777_)
                (if _thunk56779_
                    (let ()
                      (declare (not safe))
                      (_x56789_ _expr56778_ _thunk56779_))
                    '#!void))
              (if _thunk56779_ (_thunk56779_) '#!void)))))))
