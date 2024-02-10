(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707573209)
  (begin
    (define displayln
      (lambda _args59192_
        (let _lp59194_ ((_rest59196_ _args59192_))
          (let* ((_rest5919759205_ _rest59196_)
                 (_else5919959213_ (lambda () (newline)))
                 (_K5920159219_
                  (lambda (_rest59216_ _hd59217_)
                    (display _hd59217_)
                    (let () (declare (not safe)) (_lp59194_ _rest59216_)))))
            (if (let () (declare (not safe)) (##pair? _rest5919759205_))
                (let ((_hd5920259222_
                       (let () (declare (not safe)) (##car _rest5919759205_)))
                      (_tl5920359224_
                       (let () (declare (not safe)) (##cdr _rest5919759205_))))
                  (let* ((_hd59227_ _hd5920259222_)
                         (_rest59229_ _tl5920359224_))
                    (declare (not safe))
                    (_K5920159219_ _rest59229_ _hd59227_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args59190_ (for-each display _args59190_)))
    (define file-newer?
      (lambda (_file159183_ _file259184_)
        (letrec ((_modification-time59186_
                  (lambda (_file59188_)
                    (let ((__tmp64085
                           (file-info-last-modification-time
                            (file-info _file59188_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp64085)))))
          (let ((__tmp64087
                 (let ()
                   (declare (not safe))
                   (_modification-time59186_ _file159183_)))
                (__tmp64086
                 (let ()
                   (declare (not safe))
                   (_modification-time59186_ _file259184_))))
            (declare (not safe))
            (##fl> __tmp64087 __tmp64086)))))
    (define create-directory*__%
      (lambda (_dir59157_ _perms59158_)
        (letrec ((_create159160_
                  (lambda (_path59171_)
                    (if (file-exists? _path59171_)
                        (if (let ((__tmp64088 (file-type _path59171_)))
                              (declare (not safe))
                              (eq? __tmp64088 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path59171_))
                        (if _perms59158_
                            (create-directory
                             (list 'path:
                                   _path59171_
                                   'permissions:
                                   _perms59158_))
                            (create-directory _path59171_))))))
          (if (file-exists? _dir59157_)
              '#!void
              (let _lp59162_ ((_start59164_ '0))
                (let ((_$e59166_
                       (let ()
                         (declare (not safe))
                         (string-index _dir59157_ '#\/ _start59164_))))
                  (if _$e59166_
                      ((lambda (_x59169_)
                         (if (let () (declare (not safe)) (##fx> _x59169_ '0))
                             (let ((__tmp64089
                                    (substring _dir59157_ '0 _x59169_)))
                               (declare (not safe))
                               (_create159160_ __tmp64089))
                             '#!void)
                         (let ((__tmp64090
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x59169_ '1))))
                           (declare (not safe))
                           (_lp59162_ __tmp64090)))
                       _$e59166_)
                      (let ()
                        (declare (not safe))
                        (_create159160_ _dir59157_)))))))))
    (define create-directory*__0
      (lambda (_dir59176_)
        (let ((_perms59178_ '493))
          (declare (not safe))
          (create-directory*__% _dir59176_ _perms59178_))))
    (define create-directory*
      (lambda _g64092_
        (let ((_g64091_ (let () (declare (not safe)) (##length _g64092_))))
          (cond ((let () (declare (not safe)) (##fx= _g64091_ 1))
                 (apply (lambda (_dir59176_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir59176_)))
                        _g64092_))
                ((let () (declare (not safe)) (##fx= _g64091_ 2))
                 (apply (lambda (_dir59180_ _perms59181_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir59180_ _perms59181_)))
                        _g64092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g64092_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g64093_ '#t))
    (define true?
      (lambda (_obj59153_) (let () (declare (not safe)) (eq? _obj59153_ '#t))))
    (define false (lambda _g64094_ '#f))
    (define void (lambda _g64095_ '#!void))
    (define void?
      (lambda (_obj59149_)
        (let () (declare (not safe)) (eq? _obj59149_ '#!void))))
    (define eof-object (lambda _g64096_ '#!eof))
    (define identity (lambda (_obj59146_) _obj59146_))
    (define dssl-object?
      (lambda (_obj59144_)
        (if (memq _obj59144_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj59142_)
        (let () (declare (not safe)) (eq? _obj59142_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj59140_)
        (let () (declare (not safe)) (eq? _obj59140_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj59138_)
        (let () (declare (not safe)) (eq? _obj59138_ '#!optional))))
    (define immediate?
      (lambda (_obj59134_)
        (let* ((_t59136_ (let () (declare (not safe)) (##type _obj59134_)))
               (__tmp64097
                (let () (declare (not safe)) (##fxand _t59136_ '1))))
          (declare (not safe))
          (##fxzero? __tmp64097))))
    (define nonnegative-fixnum?
      (lambda (_obj59132_)
        (if (fixnum? _obj59132_)
            (let ((__tmp64098 (fxnegative? _obj59132_)))
              (declare (not safe))
              (not __tmp64098))
            '#f)))
    (define values-count
      (lambda (_obj59130_)
        (if (let () (declare (not safe)) (##values? _obj59130_))
            (let () (declare (not safe)) (##vector-length _obj59130_))
            '1)))
    (define values-ref
      (lambda (_obj59127_ _k59128_)
        (if (let () (declare (not safe)) (##values? _obj59127_))
            (let () (declare (not safe)) (##vector-ref _obj59127_ _k59128_))
            _obj59127_)))
    (define values->list
      (lambda (_obj59125_)
        (if (let () (declare (not safe)) (##values? _obj59125_))
            (let () (declare (not safe)) (##vector->list _obj59125_))
            (list _obj59125_))))
    (define subvector->list__%
      (lambda (_obj59110_ _start59111_)
        (let ((_lst59113_
               (let () (declare (not safe)) (##vector->list _obj59110_))))
          (list-tail _lst59113_ _start59111_))))
    (define subvector->list__0
      (lambda (_obj59118_)
        (let ((_start59120_ '0))
          (declare (not safe))
          (subvector->list__% _obj59118_ _start59120_))))
    (define subvector->list
      (lambda _g64100_
        (let ((_g64099_ (let () (declare (not safe)) (##length _g64100_))))
          (cond ((let () (declare (not safe)) (##fx= _g64099_ 1))
                 (apply (lambda (_obj59118_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj59118_)))
                        _g64100_))
                ((let () (declare (not safe)) (##fx= _g64099_ 2))
                 (apply (lambda (_obj59122_ _start59123_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj59122_ _start59123_)))
                        _g64100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g64100_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args59107_ (apply make-table 'test: eq? _args59107_)))
    (define make-hash-table-eqv
      (lambda _args59105_ (apply make-table 'test: eqv? _args59105_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst59102_ . _args59103_)
        (apply list->table _lst59102_ 'test: eq? _args59103_)))
    (define list->hash-table-eqv
      (lambda (_lst59099_ . _args59100_)
        (apply list->table _lst59099_ 'test: eqv? _args59100_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht59096_ _k59097_) (table-ref _ht59096_ _k59097_ '#f)))
    (define hash-put!
      (lambda (_ht59092_ _k59093_ _v59094_)
        (table-set! _ht59092_ _k59093_ _v59094_)))
    (define hash-update!__%
      (lambda (_ht59071_ _k59072_ _update59073_ _default59074_)
        (let* ((_value59076_
                (let ()
                  (declare (not safe))
                  (table-ref _ht59071_ _k59072_ _default59074_)))
               (__tmp64101 (_update59073_ _value59076_)))
          (declare (not safe))
          (table-set! _ht59071_ _k59072_ __tmp64101))))
    (define hash-update!__0
      (lambda (_ht59081_ _k59082_ _update59083_)
        (let ((_default59085_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht59081_ _k59082_ _update59083_ _default59085_))))
    (define hash-update!
      (lambda _g64103_
        (let ((_g64102_ (let () (declare (not safe)) (##length _g64103_))))
          (cond ((let () (declare (not safe)) (##fx= _g64102_ 3))
                 (apply (lambda (_ht59081_ _k59082_ _update59083_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht59081_
                             _k59082_
                             _update59083_)))
                        _g64103_))
                ((let () (declare (not safe)) (##fx= _g64102_ 4))
                 (apply (lambda (_ht59087_
                                 _k59088_
                                 _update59089_
                                 _default59090_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht59087_
                             _k59088_
                             _update59089_
                             _default59090_)))
                        _g64103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g64103_))))))
    (define hash-remove!
      (lambda (_ht59067_ _k59068_) (table-set! _ht59067_ _k59068_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht59065_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht59065_))))
    (define plist->hash-table__%
      (lambda (_plst59000_ _ht59001_)
        (let _lp59003_ ((_rest59005_ _plst59000_))
          (let* ((_rest5900659017_ _rest59005_)
                 (_E5900959021_
                  (lambda () (error '"No clause matching" _rest5900659017_))))
            (let ((_K5901159036_
                   (lambda (_rest59032_ _v59033_ _k59034_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht59001_ _k59034_ _v59033_))
                     (let () (declare (not safe)) (_lp59003_ _rest59032_))))
                  (_K5901059026_ (lambda () _ht59001_)))
              (let ((_try-match5900859029_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5900659017_ '()))
                           (let () (declare (not safe)) (_K5901059026_))
                           (let () (declare (not safe)) (_E5900959021_))))))
                (if (let () (declare (not safe)) (##pair? _rest5900659017_))
                    (let ((_tl5901359041_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5900659017_)))
                          (_hd5901259039_
                           (let ()
                             (declare (not safe))
                             (##car _rest5900659017_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5901359041_))
                          (let ((_tl5901559048_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5901359041_)))
                                (_hd5901459046_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5901359041_))))
                            (let ((_k59044_ _hd5901259039_)
                                  (_v59051_ _hd5901459046_)
                                  (_rest59053_ _tl5901559048_))
                              (let ()
                                (declare (not safe))
                                (_K5901159036_
                                 _rest59053_
                                 _v59051_
                                 _k59044_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5900859029_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5900859029_)))))))))
    (define plist->hash-table__0
      (lambda (_plst59058_)
        (let ((_ht59060_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst59058_ _ht59060_))))
    (define plist->hash-table
      (lambda _g64105_
        (let ((_g64104_ (let () (declare (not safe)) (##length _g64105_))))
          (cond ((let () (declare (not safe)) (##fx= _g64104_ 1))
                 (apply (lambda (_plst59058_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst59058_)))
                        _g64105_))
                ((let () (declare (not safe)) (##fx= _g64104_ 2))
                 (apply (lambda (_plst59062_ _ht59063_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst59062_ _ht59063_)))
                        _g64105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g64105_))))))
    (define plist->hash-table-eq
      (lambda (_plst58997_)
        (let ((__tmp64106
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst58997_ __tmp64106))))
    (define plist->hash-table-eqv
      (lambda (_plst58995_)
        (let ((__tmp64107
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst58995_ __tmp64107))))
    (define hash-key?
      (lambda (_ht58992_ _k58993_)
        (let ((__tmp64108
               (let ((__tmp64109
                      (let ()
                        (declare (not safe))
                        (table-ref _ht58992_ _k58993_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp64109 absent-value))))
          (declare (not safe))
          (not __tmp64108))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun58985_ _ht58986_)
        (let ((__tmp64110
               (lambda (_k58988_ _v58989_ _r58990_)
                 (let ((__tmp64111 (_fun58985_ _k58988_ _v58989_)))
                   (declare (not safe))
                   (cons __tmp64111 _r58990_)))))
          (declare (not safe))
          (hash-fold __tmp64110 '() _ht58986_))))
    (define hash-fold
      (lambda (_fun58976_ _iv58977_ _ht58978_)
        (let ((_ret58980_ _iv58977_))
          (let ((__tmp64112
                 (lambda (_k58982_ _v58983_)
                   (set! _ret58980_
                         (_fun58976_ _k58982_ _v58983_ _ret58980_)))))
            (declare (not safe))
            (table-for-each __tmp64112 _ht58978_))
          _ret58980_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht58971_)
        (let ((__tmp64113 (lambda (_k58973_ _v58974_) _k58973_)))
          (declare (not safe))
          (hash-map __tmp64113 _ht58971_))))
    (define hash-values
      (lambda (_ht58966_)
        (let ((__tmp64114 (lambda (_k58968_ _v58969_) _v58969_)))
          (declare (not safe))
          (hash-map __tmp64114 _ht58966_))))
    (define hash-copy
      (lambda (_hd58961_ . _rest58962_)
        (let ((_hd58964_ (table-copy _hd58961_)))
          (if (let () (declare (not safe)) (null? _rest58962_))
              _hd58964_
              (apply hash-copy! _hd58964_ _rest58962_)))))
    (define hash-copy!
      (lambda (_hd58956_ . _rest58957_)
        (for-each
         (lambda (_r58959_) (table-merge! _hd58956_ _r58959_))
         _rest58957_)
        _hd58956_))
    (define hash-merge
      (lambda (_hd58950_ . _rest58951_)
        (let ((__tmp64115
               (lambda (_tab58953_ _r58954_)
                 (table-merge _r58954_ _tab58953_))))
          (declare (not safe))
          (foldl1 __tmp64115 _hd58950_ _rest58951_))))
    (define hash-merge!
      (lambda (_hd58944_ . _rest58945_)
        (let ((__tmp64116
               (lambda (_tab58947_ _r58948_)
                 (table-merge! _r58948_ _tab58947_))))
          (declare (not safe))
          (foldl1 __tmp64116 _hd58944_ _rest58945_))))
    (define hash-clear!__%
      (lambda (_ht58929_ _size58930_)
        (let ((_gcht58932_
               (let () (declare (not safe)) (##vector-ref _ht58929_ '5))))
          (if (let ((__tmp64117 (fixnum? _gcht58932_)))
                (declare (not safe))
                (not __tmp64117))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58929_ '5 _size58930_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58937_)
        (let ((_size58939_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58937_ _size58939_))))
    (define hash-clear!
      (lambda _g64119_
        (let ((_g64118_ (let () (declare (not safe)) (##length _g64119_))))
          (cond ((let () (declare (not safe)) (##fx= _g64118_ 1))
                 (apply (lambda (_ht58937_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58937_)))
                        _g64119_))
                ((let () (declare (not safe)) (##fx= _g64118_ 2))
                 (apply (lambda (_ht58941_ _size58942_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58941_ _size58942_)))
                        _g64119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g64119_))))))
    (define make-list__%
      (lambda (_k58910_ _val58911_)
        (if (fixnum? _k58910_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58910_))
        (let _lp58913_ ((_n58915_ '0) (_r58916_ '()))
          (if (let () (declare (not safe)) (##fx< _n58915_ _k58910_))
              (let ((__tmp64121
                     (let () (declare (not safe)) (##fx+ _n58915_ '1)))
                    (__tmp64120
                     (let () (declare (not safe)) (cons _val58911_ _r58916_))))
                (declare (not safe))
                (_lp58913_ __tmp64121 __tmp64120))
              _r58916_))))
    (define make-list__0
      (lambda (_k58921_)
        (let ((_val58923_ '#f))
          (declare (not safe))
          (make-list__% _k58921_ _val58923_))))
    (define make-list
      (lambda _g64123_
        (let ((_g64122_ (let () (declare (not safe)) (##length _g64123_))))
          (cond ((let () (declare (not safe)) (##fx= _g64122_ 1))
                 (apply (lambda (_k58921_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58921_)))
                        _g64123_))
                ((let () (declare (not safe)) (##fx= _g64122_ 2))
                 (apply (lambda (_k58925_ _val58926_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58925_ _val58926_)))
                        _g64123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g64123_))))))
    (define cons*
      (lambda (_x58900_ _y58901_ . _rest58902_)
        (letrec ((_recur58904_
                  (lambda (_x58906_ _rest58907_)
                    (if (let () (declare (not safe)) (pair? _rest58907_))
                        (let ((__tmp64124
                               (let ((__tmp64126
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58907_)))
                                     (__tmp64125
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58907_))))
                                 (declare (not safe))
                                 (_recur58904_ __tmp64126 __tmp64125))))
                          (declare (not safe))
                          (cons _x58906_ __tmp64124))
                        _x58906_))))
          (let ((__tmp64127
                 (let ()
                   (declare (not safe))
                   (_recur58904_ _y58901_ _rest58902_))))
            (declare (not safe))
            (cons _x58900_ __tmp64127)))))
    (define foldl1
      (lambda (_f58858_ _iv58859_ _lst58860_)
        (let _lp58862_ ((_rest58864_ _lst58860_) (_r58865_ _iv58859_))
          (let* ((_rest5886658874_ _rest58864_)
                 (_else5886858882_ (lambda () _r58865_))
                 (_K5887058888_
                  (lambda (_rest58885_ _x58886_)
                    (let ((__tmp64128 (_f58858_ _x58886_ _r58865_)))
                      (declare (not safe))
                      (_lp58862_ _rest58885_ __tmp64128)))))
            (if (let () (declare (not safe)) (##pair? _rest5886658874_))
                (let ((_hd5887158891_
                       (let () (declare (not safe)) (##car _rest5886658874_)))
                      (_tl5887258893_
                       (let () (declare (not safe)) (##cdr _rest5886658874_))))
                  (let* ((_x58896_ _hd5887158891_)
                         (_rest58898_ _tl5887258893_))
                    (declare (not safe))
                    (_K5887058888_ _rest58898_ _x58896_)))
                (let () (declare (not safe)) (_else5886858882_)))))))
    (define foldl2
      (lambda (_f58781_ _iv58782_ _lst158783_ _lst258784_)
        (let _lp58786_ ((_rest158788_ _lst158783_)
                        (_rest258789_ _lst258784_)
                        (_r58790_ _iv58782_))
          (let* ((_rest15879158799_ _rest158788_)
                 (_else5879358807_ (lambda () _r58790_))
                 (_K5879558846_
                  (lambda (_rest158810_ _x158811_)
                    (let* ((_rest25881258820_ _rest258789_)
                           (_else5881458828_ (lambda () _r58790_))
                           (_K5881658834_
                            (lambda (_rest258831_ _x258832_)
                              (let ((__tmp64129
                                     (_f58781_ _x158811_ _x258832_ _r58790_)))
                                (declare (not safe))
                                (_lp58786_
                                 _rest158810_
                                 _rest258831_
                                 __tmp64129)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25881258820_))
                          (let ((_hd5881758837_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25881258820_)))
                                (_tl5881858839_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25881258820_))))
                            (let* ((_x258842_ _hd5881758837_)
                                   (_rest258844_ _tl5881858839_))
                              (declare (not safe))
                              (_K5881658834_ _rest258844_ _x258842_)))
                          (let () (declare (not safe)) (_else5881458828_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15879158799_))
                (let ((_hd5879658849_
                       (let () (declare (not safe)) (##car _rest15879158799_)))
                      (_tl5879758851_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15879158799_))))
                  (let* ((_x158854_ _hd5879658849_)
                         (_rest158856_ _tl5879758851_))
                    (declare (not safe))
                    (_K5879558846_ _rest158856_ _x158854_)))
                (let () (declare (not safe)) (_else5879358807_)))))))
    (define foldl
      (lambda _g64131_
        (let ((_g64130_ (let () (declare (not safe)) (##length _g64131_))))
          (cond ((let () (declare (not safe)) (##fx= _g64130_ 3))
                 (apply (lambda (_f58766_ _iv58767_ _lst58768_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58766_ _iv58767_ _lst58768_)))
                        _g64131_))
                ((let () (declare (not safe)) (##fx= _g64130_ 4))
                 (apply (lambda (_f58770_ _iv58771_ _lst158772_ _lst258773_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58770_
                                    _iv58771_
                                    _lst158772_
                                    _lst258773_)))
                        _g64131_))
                ((let () (declare (not safe)) (##fx>= _g64130_ 4))
                 (apply foldl* _g64131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g64131_))))))
    (define foldl*
      (lambda (_f58754_ _iv58755_ . _rest58756_)
        (let _recur58758_ ((_iv58760_ _iv58755_) (_rest58761_ _rest58756_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58761_))
              (let ((__tmp64133
                     (apply _f58754_
                            (let ((__tmp64135
                                   (lambda (_xs58763_ _r58764_)
                                     (let ((__tmp64136 (car _xs58763_)))
                                       (declare (not safe))
                                       (cons __tmp64136 _r58764_))))
                                  (__tmp64134 (list _iv58760_)))
                              (declare (not safe))
                              (foldr1 __tmp64135 __tmp64134 _rest58761_))))
                    (__tmp64132 (map cdr _rest58761_)))
                (declare (not safe))
                (_recur58758_ __tmp64133 __tmp64132))
              _iv58760_))))
    (define foldr1
      (lambda (_f58713_ _iv58714_ _lst58715_)
        (let _recur58717_ ((_rest58719_ _lst58715_))
          (let* ((_rest5872058728_ _rest58719_)
                 (_else5872258736_ (lambda () _iv58714_))
                 (_K5872458742_
                  (lambda (_rest58739_ _x58740_)
                    (_f58713_
                     _x58740_
                     (let ()
                       (declare (not safe))
                       (_recur58717_ _rest58739_))))))
            (if (let () (declare (not safe)) (##pair? _rest5872058728_))
                (let ((_hd5872558745_
                       (let () (declare (not safe)) (##car _rest5872058728_)))
                      (_tl5872658747_
                       (let () (declare (not safe)) (##cdr _rest5872058728_))))
                  (let* ((_x58750_ _hd5872558745_)
                         (_rest58752_ _tl5872658747_))
                    (declare (not safe))
                    (_K5872458742_ _rest58752_ _x58750_)))
                (let () (declare (not safe)) (_else5872258736_)))))))
    (define foldr2
      (lambda (_f58637_ _iv58638_ _lst158639_ _lst258640_)
        (let _recur58642_ ((_rest158644_ _lst158639_)
                           (_rest258645_ _lst258640_))
          (let* ((_rest15864658654_ _rest158644_)
                 (_else5864858662_ (lambda () _iv58638_))
                 (_K5865058701_
                  (lambda (_rest158665_ _x158666_)
                    (let* ((_rest25866758675_ _rest258645_)
                           (_else5866958683_ (lambda () _iv58638_))
                           (_K5867158689_
                            (lambda (_rest258686_ _x258687_)
                              (_f58637_
                               _x158666_
                               _x258687_
                               (let ()
                                 (declare (not safe))
                                 (_recur58642_ _rest158665_ _rest258686_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25866758675_))
                          (let ((_hd5867258692_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25866758675_)))
                                (_tl5867358694_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25866758675_))))
                            (let* ((_x258697_ _hd5867258692_)
                                   (_rest258699_ _tl5867358694_))
                              (declare (not safe))
                              (_K5867158689_ _rest258699_ _x258697_)))
                          (let () (declare (not safe)) (_else5866958683_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15864658654_))
                (let ((_hd5865158704_
                       (let () (declare (not safe)) (##car _rest15864658654_)))
                      (_tl5865258706_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15864658654_))))
                  (let* ((_x158709_ _hd5865158704_)
                         (_rest158711_ _tl5865258706_))
                    (declare (not safe))
                    (_K5865058701_ _rest158711_ _x158709_)))
                (let () (declare (not safe)) (_else5864858662_)))))))
    (define foldr
      (lambda _g64138_
        (let ((_g64137_ (let () (declare (not safe)) (##length _g64138_))))
          (cond ((let () (declare (not safe)) (##fx= _g64137_ 3))
                 (apply (lambda (_f58622_ _iv58623_ _lst58624_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58622_ _iv58623_ _lst58624_)))
                        _g64138_))
                ((let () (declare (not safe)) (##fx= _g64137_ 4))
                 (apply (lambda (_f58626_ _iv58627_ _lst158628_ _lst258629_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58626_
                                    _iv58627_
                                    _lst158628_
                                    _lst258629_)))
                        _g64138_))
                ((let () (declare (not safe)) (##fx>= _g64137_ 4))
                 (apply foldr* _g64138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g64138_))))))
    (define foldr*
      (lambda (_f58611_ _iv58612_ . _rest58613_)
        (let _recur58615_ ((_rest58617_ _rest58613_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58617_))
              (apply _f58611_
                     (let ((__tmp64141
                            (lambda (_xs58619_ _r58620_)
                              (let ((__tmp64142 (car _xs58619_)))
                                (declare (not safe))
                                (cons __tmp64142 _r58620_))))
                           (__tmp64139
                            (list (let ((__tmp64140 (map cdr _rest58617_)))
                                    (declare (not safe))
                                    (_recur58615_ __tmp64140)))))
                       (declare (not safe))
                       (foldr1 __tmp64141 __tmp64139 _rest58617_)))
              _iv58612_))))
    (define remove-nulls!
      (lambda (_l58498_)
        (let* ((_l5849958512_ _l58498_)
               (_E5850358516_
                (lambda () (error '"No clause matching" _l5849958512_))))
          (let ((_K5850858601_
                 (lambda (_r58599_)
                   (let () (declare (not safe)) (remove-nulls! _r58599_))))
                (_K5850558588_
                 (lambda (_r58528_)
                   (let _loop58530_ ((_l58532_ _l58498_) (_r58533_ _r58528_))
                     (let* ((_r5853458547_ _r58533_)
                            (_E5853858551_
                             (lambda ()
                               (error '"No clause matching" _r5853458547_))))
                       (let ((_K5854358578_
                              (lambda (_rr58576_)
                                (set-cdr!
                                 _l58532_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58576_)))))
                             (_K5854058565_
                              (lambda (_rr58563_)
                                (let ()
                                  (declare (not safe))
                                  (_loop58530_ _r58533_ _rr58563_))))
                             (_K5853958556_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5853458547_))
                             (let ((_tl5854558583_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5853458547_)))
                                   (_hd5854458581_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5853458547_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5854458581_))
                                   (let ((_rr58586_ _tl5854558583_))
                                     (declare (not safe))
                                     (_K5854358578_ _rr58586_))
                                   (let ((_rr58571_ _tl5854558583_))
                                     (declare (not safe))
                                     (_K5854058565_ _rr58571_))))
                             '#!void))))
                   _l58498_))
                (_K5850458521_ (lambda () _l58498_)))
            (if (let () (declare (not safe)) (##pair? _l5849958512_))
                (let ((_tl5851058606_
                       (let () (declare (not safe)) (##cdr _l5849958512_)))
                      (_hd5850958604_
                       (let () (declare (not safe)) (##car _l5849958512_))))
                  (if (let () (declare (not safe)) (##null? _hd5850958604_))
                      (let ((_r58609_ _tl5851058606_))
                        (declare (not safe))
                        (remove-nulls! _r58609_))
                      (let ((_r58594_ _tl5851058606_))
                        (declare (not safe))
                        (_K5850558588_ _r58594_))))
                (let () (declare (not safe)) (_K5850458521_)))))))
    (define append1!
      (lambda (_l58493_ _x58494_)
        (let ((_l258496_ (let () (declare (not safe)) (cons _x58494_ '()))))
          (if (let () (declare (not safe)) (pair? _l58493_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l58493_))
               _l258496_)
              _l258496_))))
    (define append-reverse
      (lambda (_rev-head58490_ _tail58491_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail58491_ _rev-head58490_))))
    (define andmap1
      (lambda (_f58450_ _lst58451_)
        (let _lp58453_ ((_rest58455_ _lst58451_))
          (let* ((_rest5845658464_ _rest58455_)
                 (_else5845858472_ (lambda () '#t))
                 (_K5846058478_
                  (lambda (_rest58475_ _x58476_)
                    (if (_f58450_ _x58476_)
                        (let () (declare (not safe)) (_lp58453_ _rest58475_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5845658464_))
                (let ((_hd5846158481_
                       (let () (declare (not safe)) (##car _rest5845658464_)))
                      (_tl5846258483_
                       (let () (declare (not safe)) (##cdr _rest5845658464_))))
                  (let* ((_x58486_ _hd5846158481_)
                         (_rest58488_ _tl5846258483_))
                    (declare (not safe))
                    (_K5846058478_ _rest58488_ _x58486_)))
                (let () (declare (not safe)) (_else5845858472_)))))))
    (define andmap2
      (lambda (_f58375_ _lst158376_ _lst258377_)
        (let _lp58379_ ((_rest158381_ _lst158376_) (_rest258382_ _lst258377_))
          (let* ((_rest15838358391_ _rest158381_)
                 (_else5838558399_ (lambda () '#t))
                 (_K5838758438_
                  (lambda (_rest158402_ _x158403_)
                    (let* ((_rest25840458412_ _rest258382_)
                           (_else5840658420_ (lambda () '#t))
                           (_K5840858426_
                            (lambda (_rest258423_ _x258424_)
                              (if (_f58375_ _x158403_ _x258424_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp58379_ _rest158402_ _rest258423_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25840458412_))
                          (let ((_hd5840958429_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25840458412_)))
                                (_tl5841058431_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25840458412_))))
                            (let* ((_x258434_ _hd5840958429_)
                                   (_rest258436_ _tl5841058431_))
                              (declare (not safe))
                              (_K5840858426_ _rest258436_ _x258434_)))
                          (let () (declare (not safe)) (_else5840658420_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15838358391_))
                (let ((_hd5838858441_
                       (let () (declare (not safe)) (##car _rest15838358391_)))
                      (_tl5838958443_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15838358391_))))
                  (let* ((_x158446_ _hd5838858441_)
                         (_rest158448_ _tl5838958443_))
                    (declare (not safe))
                    (_K5838758438_ _rest158448_ _x158446_)))
                (let () (declare (not safe)) (_else5838558399_)))))))
    (define andmap
      (lambda _g64144_
        (let ((_g64143_ (let () (declare (not safe)) (##length _g64144_))))
          (cond ((let () (declare (not safe)) (##fx= _g64143_ 2))
                 (apply (lambda (_f58363_ _lst58364_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f58363_ _lst58364_)))
                        _g64144_))
                ((let () (declare (not safe)) (##fx= _g64143_ 3))
                 (apply (lambda (_f58366_ _lst158367_ _lst258368_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f58366_ _lst158367_ _lst258368_)))
                        _g64144_))
                ((let () (declare (not safe)) (##fx>= _g64143_ 3))
                 (apply andmap* _g64144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g64144_))))))
    (define andmap*
      (lambda (_f58356_ . _rest58357_)
        (let _recur58359_ ((_rest58361_ _rest58357_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58361_))
              (if (apply _f58356_ (map car _rest58361_))
                  (let ((__tmp64145 (map cdr _rest58361_)))
                    (declare (not safe))
                    (_recur58359_ __tmp64145))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f58313_ _lst58314_)
        (let _lp58316_ ((_rest58318_ _lst58314_))
          (let* ((_rest5831958327_ _rest58318_)
                 (_else5832158335_ (lambda () '#f))
                 (_K5832358344_
                  (lambda (_rest58338_ _x58339_)
                    (let ((_$e58341_ (_f58313_ _x58339_)))
                      (if _$e58341_
                          _$e58341_
                          (let ()
                            (declare (not safe))
                            (_lp58316_ _rest58338_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5831958327_))
                (let ((_hd5832458347_
                       (let () (declare (not safe)) (##car _rest5831958327_)))
                      (_tl5832558349_
                       (let () (declare (not safe)) (##cdr _rest5831958327_))))
                  (let* ((_x58352_ _hd5832458347_)
                         (_rest58354_ _tl5832558349_))
                    (declare (not safe))
                    (_K5832358344_ _rest58354_ _x58352_)))
                (let () (declare (not safe)) (_else5832158335_)))))))
    (define ormap2
      (lambda (_f58235_ _lst158236_ _lst258237_)
        (let _lp58239_ ((_rest158241_ _lst158236_) (_rest258242_ _lst258237_))
          (let* ((_rest15824358251_ _rest158241_)
                 (_else5824558259_ (lambda () '#f))
                 (_K5824758301_
                  (lambda (_rest158262_ _x158263_)
                    (let* ((_rest25826458272_ _rest258242_)
                           (_else5826658280_ (lambda () '#f))
                           (_K5826858289_
                            (lambda (_rest258283_ _x258284_)
                              (let ((_$e58286_ (_f58235_ _x158263_ _x258284_)))
                                (if _$e58286_
                                    _$e58286_
                                    (let ()
                                      (declare (not safe))
                                      (_lp58239_
                                       _rest158262_
                                       _rest258283_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25826458272_))
                          (let ((_hd5826958292_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25826458272_)))
                                (_tl5827058294_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25826458272_))))
                            (let* ((_x258297_ _hd5826958292_)
                                   (_rest258299_ _tl5827058294_))
                              (declare (not safe))
                              (_K5826858289_ _rest258299_ _x258297_)))
                          (let () (declare (not safe)) (_else5826658280_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15824358251_))
                (let ((_hd5824858304_
                       (let () (declare (not safe)) (##car _rest15824358251_)))
                      (_tl5824958306_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15824358251_))))
                  (let* ((_x158309_ _hd5824858304_)
                         (_rest158311_ _tl5824958306_))
                    (declare (not safe))
                    (_K5824758301_ _rest158311_ _x158309_)))
                (let () (declare (not safe)) (_else5824558259_)))))))
    (define ormap
      (lambda _g64147_
        (let ((_g64146_ (let () (declare (not safe)) (##length _g64147_))))
          (cond ((let () (declare (not safe)) (##fx= _g64146_ 2))
                 (apply (lambda (_f58223_ _lst58224_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f58223_ _lst58224_)))
                        _g64147_))
                ((let () (declare (not safe)) (##fx= _g64146_ 3))
                 (apply (lambda (_f58226_ _lst158227_ _lst258228_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f58226_ _lst158227_ _lst258228_)))
                        _g64147_))
                ((let () (declare (not safe)) (##fx>= _g64146_ 3))
                 (apply ormap* _g64147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g64147_))))))
    (define ormap*
      (lambda (_f58213_ . _rest58214_)
        (let _recur58216_ ((_rest58218_ _rest58214_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58218_))
              (let ((_$e58220_ (apply _f58213_ (map car _rest58218_))))
                (if _$e58220_
                    _$e58220_
                    (let ((__tmp64148 (map cdr _rest58218_)))
                      (declare (not safe))
                      (_recur58216_ __tmp64148))))
              '#f))))
    (define filter
      (lambda (_f58171_ _lst58172_)
        (let _recur58174_ ((_lst58176_ _lst58172_))
          (let* ((_lst5817758185_ _lst58176_)
                 (_else5817958193_ (lambda () '()))
                 (_K5818158201_
                  (lambda (_rest58196_ _hd58197_)
                    (if (_f58171_ _hd58197_)
                        (let ((_tail58199_
                               (let ()
                                 (declare (not safe))
                                 (_recur58174_ _rest58196_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail58199_ _rest58196_))
                              _lst58176_
                              (let ()
                                (declare (not safe))
                                (cons _hd58197_ _tail58199_))))
                        (let ()
                          (declare (not safe))
                          (_recur58174_ _rest58196_))))))
            (if (let () (declare (not safe)) (##pair? _lst5817758185_))
                (let ((_hd5818258204_
                       (let () (declare (not safe)) (##car _lst5817758185_)))
                      (_tl5818358206_
                       (let () (declare (not safe)) (##cdr _lst5817758185_))))
                  (let* ((_hd58209_ _hd5818258204_)
                         (_rest58211_ _tl5818358206_))
                    (declare (not safe))
                    (_K5818158201_ _rest58211_ _hd58209_)))
                (let () (declare (not safe)) (_else5817958193_)))))))
    (define filter-map1
      (lambda (_f58126_ _lst58127_)
        (let _recur58129_ ((_rest58131_ _lst58127_))
          (let* ((_rest5813258140_ _rest58131_)
                 (_else5813458148_ (lambda () '()))
                 (_K5813658159_
                  (lambda (_rest58151_ _x58152_)
                    (let ((_$e58154_ (_f58126_ _x58152_)))
                      (if _$e58154_
                          ((lambda (_r58157_)
                             (let ((__tmp64149
                                    (let ()
                                      (declare (not safe))
                                      (_recur58129_ _rest58151_))))
                               (declare (not safe))
                               (cons _r58157_ __tmp64149)))
                           _$e58154_)
                          (let ()
                            (declare (not safe))
                            (_recur58129_ _rest58151_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5813258140_))
                (let ((_hd5813758162_
                       (let () (declare (not safe)) (##car _rest5813258140_)))
                      (_tl5813858164_
                       (let () (declare (not safe)) (##cdr _rest5813258140_))))
                  (let* ((_x58167_ _hd5813758162_)
                         (_rest58169_ _tl5813858164_))
                    (declare (not safe))
                    (_K5813658159_ _rest58169_ _x58167_)))
                (let () (declare (not safe)) (_else5813458148_)))))))
    (define filter-map2
      (lambda (_f58046_ _lst158047_ _lst258048_)
        (let _recur58050_ ((_rest158052_ _lst158047_)
                           (_rest258053_ _lst258048_))
          (let* ((_rest15805458062_ _rest158052_)
                 (_else5805658070_ (lambda () '()))
                 (_K5805858114_
                  (lambda (_rest158073_ _x158074_)
                    (let* ((_rest25807558083_ _rest258053_)
                           (_else5807758091_ (lambda () '()))
                           (_K5807958102_
                            (lambda (_rest258094_ _x258095_)
                              (let ((_$e58097_ (_f58046_ _x158074_ _x258095_)))
                                (if _$e58097_
                                    ((lambda (_r58100_)
                                       (let ((__tmp64150
                                              (let ()
                                                (declare (not safe))
                                                (_recur58050_
                                                 _rest158073_
                                                 _rest258094_))))
                                         (declare (not safe))
                                         (cons _r58100_ __tmp64150)))
                                     _$e58097_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur58050_
                                       _rest158073_
                                       _rest258094_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25807558083_))
                          (let ((_hd5808058105_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25807558083_)))
                                (_tl5808158107_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25807558083_))))
                            (let* ((_x258110_ _hd5808058105_)
                                   (_rest258112_ _tl5808158107_))
                              (declare (not safe))
                              (_K5807958102_ _rest258112_ _x258110_)))
                          (let () (declare (not safe)) (_else5807758091_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15805458062_))
                (let ((_hd5805958117_
                       (let () (declare (not safe)) (##car _rest15805458062_)))
                      (_tl5806058119_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15805458062_))))
                  (let* ((_x158122_ _hd5805958117_)
                         (_rest158124_ _tl5806058119_))
                    (declare (not safe))
                    (_K5805858114_ _rest158124_ _x158122_)))
                (let () (declare (not safe)) (_else5805658070_)))))))
    (define filter-map
      (lambda _g64152_
        (let ((_g64151_ (let () (declare (not safe)) (##length _g64152_))))
          (cond ((let () (declare (not safe)) (##fx= _g64151_ 2))
                 (apply (lambda (_f58034_ _lst58035_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f58034_ _lst58035_)))
                        _g64152_))
                ((let () (declare (not safe)) (##fx= _g64151_ 3))
                 (apply (lambda (_f58037_ _lst158038_ _lst258039_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f58037_ _lst158038_ _lst258039_)))
                        _g64152_))
                ((let () (declare (not safe)) (##fx>= _g64151_ 3))
                 (apply filter-map* _g64152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g64152_))))))
    (define filter-map*
      (lambda (_f58022_ . _rest58023_)
        (let _recur58025_ ((_rest58027_ _rest58023_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58027_))
              (let ((_$e58029_ (apply _f58022_ (map car _rest58027_))))
                (if _$e58029_
                    ((lambda (_r58032_)
                       (let ((__tmp64154
                              (let ((__tmp64155 (map cdr _rest58027_)))
                                (declare (not safe))
                                (_recur58025_ __tmp64155))))
                         (declare (not safe))
                         (cons _r58032_ __tmp64154)))
                     _$e58029_)
                    (let ((__tmp64153 (map cdr _rest58027_)))
                      (declare (not safe))
                      (_recur58025_ __tmp64153))))
              '()))))
    (define iota__%
      (lambda (_count57990_ _start57991_ _step57992_)
        (if (fixnum? _count57990_)
            '#!void
            (error '"expected fixnum" _count57990_))
        (if (let () (declare (not safe)) (number? _start57991_))
            '#!void
            (error '"expected number" _start57991_))
        (if (let () (declare (not safe)) (number? _step57992_))
            '#!void
            (error '"expected number" _step57992_))
        (let ((_root57994_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57996_ ((_i57998_ '0)
                          (_x57999_ _start57991_)
                          (_tl58000_ _root57994_))
            (if (let () (declare (not safe)) (##fx< _i57998_ _count57990_))
                (let ((_tl*58002_
                       (let () (declare (not safe)) (cons _x57999_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl58000_ _tl*58002_))
                  (let ((__tmp64157
                         (let () (declare (not safe)) (##fx+ _i57998_ '1)))
                        (__tmp64156 (+ _x57999_ _step57992_)))
                    (declare (not safe))
                    (_lp57996_ __tmp64157 __tmp64156 _tl*58002_)))
                (let () (declare (not safe)) (##cdr _root57994_)))))))
    (define iota__0
      (lambda (_count58007_)
        (let* ((_start58009_ '0) (_step58011_ '1))
          (declare (not safe))
          (iota__% _count58007_ _start58009_ _step58011_))))
    (define iota__1
      (lambda (_count58013_ _start58014_)
        (let ((_step58016_ '1))
          (declare (not safe))
          (iota__% _count58013_ _start58014_ _step58016_))))
    (define iota
      (lambda _g64159_
        (let ((_g64158_ (let () (declare (not safe)) (##length _g64159_))))
          (cond ((let () (declare (not safe)) (##fx= _g64158_ 1))
                 (apply (lambda (_count58007_)
                          (let () (declare (not safe)) (iota__0 _count58007_)))
                        _g64159_))
                ((let () (declare (not safe)) (##fx= _g64158_ 2))
                 (apply (lambda (_count58013_ _start58014_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count58013_ _start58014_)))
                        _g64159_))
                ((let () (declare (not safe)) (##fx= _g64158_ 3))
                 (apply (lambda (_count58018_ _start58019_ _step58020_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count58018_ _start58019_ _step58020_)))
                        _g64159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g64159_))))))
    (define last-pair
      (lambda (_lst57964_)
        (let* ((_lst5796557972_ _lst57964_)
               (_E5796757976_
                (lambda () (error '"No clause matching" _lst5796557972_)))
               (_K5796857981_
                (lambda (_rest57979_)
                  (if (let () (declare (not safe)) (pair? _rest57979_))
                      (let () (declare (not safe)) (last-pair _rest57979_))
                      _lst57964_))))
          (if (let () (declare (not safe)) (##pair? _lst5796557972_))
              (let* ((_tl5797057984_
                      (let () (declare (not safe)) (##cdr _lst5796557972_)))
                     (_rest57987_ _tl5797057984_))
                (declare (not safe))
                (_K5796857981_ _rest57987_))
              (let () (declare (not safe)) (_E5796757976_))))))
    (define last
      (lambda (_lst57962_)
        (car (let () (declare (not safe)) (last-pair _lst57962_)))))
    (define assgetq__%
      (lambda (_key57940_ _lst57942_ _default57944_)
        (let ((_$e57947_
               (if (let () (declare (not safe)) (pair? _lst57942_))
                   (assq _key57940_ _lst57942_)
                   '#f)))
          (if _$e57947_
              (cdr _$e57947_)
              (if (let () (declare (not safe)) (procedure? _default57944_))
                  (_default57944_ _key57940_)
                  _default57944_)))))
    (define assgetq__0
      (lambda (_key57953_ _lst57954_)
        (let ((_default57956_ '#f))
          (declare (not safe))
          (assgetq__% _key57953_ _lst57954_ _default57956_))))
    (define assgetq
      (lambda _g64161_
        (let ((_g64160_ (let () (declare (not safe)) (##length _g64161_))))
          (cond ((let () (declare (not safe)) (##fx= _g64160_ 2))
                 (apply (lambda (_key57953_ _lst57954_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57953_ _lst57954_)))
                        _g64161_))
                ((let () (declare (not safe)) (##fx= _g64160_ 3))
                 (apply (lambda (_key57958_ _lst57959_ _default57960_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57958_ _lst57959_ _default57960_)))
                        _g64161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g64161_))))))
    (define assgetv__%
      (lambda (_key57917_ _lst57919_ _default57921_)
        (let ((_$e57924_
               (if (let () (declare (not safe)) (pair? _lst57919_))
                   (assv _key57917_ _lst57919_)
                   '#f)))
          (if _$e57924_
              (cdr _$e57924_)
              (if (let () (declare (not safe)) (procedure? _default57921_))
                  (_default57921_ _key57917_)
                  _default57921_)))))
    (define assgetv__0
      (lambda (_key57930_ _lst57931_)
        (let ((_default57933_ '#f))
          (declare (not safe))
          (assgetv__% _key57930_ _lst57931_ _default57933_))))
    (define assgetv
      (lambda _g64163_
        (let ((_g64162_ (let () (declare (not safe)) (##length _g64163_))))
          (cond ((let () (declare (not safe)) (##fx= _g64162_ 2))
                 (apply (lambda (_key57930_ _lst57931_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57930_ _lst57931_)))
                        _g64163_))
                ((let () (declare (not safe)) (##fx= _g64162_ 3))
                 (apply (lambda (_key57935_ _lst57936_ _default57937_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57935_ _lst57936_ _default57937_)))
                        _g64163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g64163_))))))
    (define assget__%
      (lambda (_key57894_ _lst57896_ _default57898_)
        (let ((_$e57901_
               (if (let () (declare (not safe)) (pair? _lst57896_))
                   (assoc _key57894_ _lst57896_)
                   '#f)))
          (if _$e57901_
              (cdr _$e57901_)
              (if (let () (declare (not safe)) (procedure? _default57898_))
                  (_default57898_ _key57894_)
                  _default57898_)))))
    (define assget__0
      (lambda (_key57907_ _lst57908_)
        (let ((_default57910_ '#f))
          (declare (not safe))
          (assget__% _key57907_ _lst57908_ _default57910_))))
    (define assget
      (lambda _g64165_
        (let ((_g64164_ (let () (declare (not safe)) (##length _g64165_))))
          (cond ((let () (declare (not safe)) (##fx= _g64164_ 2))
                 (apply (lambda (_key57907_ _lst57908_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57907_ _lst57908_)))
                        _g64165_))
                ((let () (declare (not safe)) (##fx= _g64164_ 3))
                 (apply (lambda (_key57912_ _lst57913_ _default57914_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57912_ _lst57913_ _default57914_)))
                        _g64165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g64165_))))))
    (define pgetq__%
      (lambda (_key57823_ _lst57825_ _default57827_)
        (let _lp57830_ ((_rest57833_ _lst57825_))
          (let* ((_rest5783557845_ _rest57833_)
                 (_else5783757853_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57827_))
                        (_default57827_ _key57823_)
                        _default57827_)))
                 (_K5783957862_
                  (lambda (_rest57856_ _v57857_ _k57859_)
                    (if (let () (declare (not safe)) (eq? _k57859_ _key57823_))
                        _v57857_
                        (let ()
                          (declare (not safe))
                          (_lp57830_ _rest57856_))))))
            (if (let () (declare (not safe)) (##pair? _rest5783557845_))
                (let ((_hd5784057865_
                       (let () (declare (not safe)) (##car _rest5783557845_)))
                      (_tl5784157867_
                       (let () (declare (not safe)) (##cdr _rest5783557845_))))
                  (let ((_k57870_ _hd5784057865_))
                    (if (let () (declare (not safe)) (##pair? _tl5784157867_))
                        (let ((_hd5784257872_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5784157867_)))
                              (_tl5784357874_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5784157867_))))
                          (let* ((_v57877_ _hd5784257872_)
                                 (_rest57879_ _tl5784357874_))
                            (declare (not safe))
                            (_K5783957862_ _rest57879_ _v57877_ _k57870_)))
                        (let () (declare (not safe)) (_else5783757853_)))))
                (let () (declare (not safe)) (_else5783757853_)))))))
    (define pgetq__0
      (lambda (_key57884_ _lst57885_)
        (let ((_default57887_ '#f))
          (declare (not safe))
          (pgetq__% _key57884_ _lst57885_ _default57887_))))
    (define pgetq
      (lambda _g64167_
        (let ((_g64166_ (let () (declare (not safe)) (##length _g64167_))))
          (cond ((let () (declare (not safe)) (##fx= _g64166_ 2))
                 (apply (lambda (_key57884_ _lst57885_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57884_ _lst57885_)))
                        _g64167_))
                ((let () (declare (not safe)) (##fx= _g64166_ 3))
                 (apply (lambda (_key57889_ _lst57890_ _default57891_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57889_ _lst57890_ _default57891_)))
                        _g64167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g64167_))))))
    (define pgetv__%
      (lambda (_key57752_ _lst57754_ _default57756_)
        (let _lp57759_ ((_rest57762_ _lst57754_))
          (let* ((_rest5776457774_ _rest57762_)
                 (_else5776657782_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57756_))
                        (_default57756_ _key57752_)
                        _default57756_)))
                 (_K5776857791_
                  (lambda (_rest57785_ _v57786_ _k57788_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57788_ _key57752_))
                        _v57786_
                        (let ()
                          (declare (not safe))
                          (_lp57759_ _rest57785_))))))
            (if (let () (declare (not safe)) (##pair? _rest5776457774_))
                (let ((_hd5776957794_
                       (let () (declare (not safe)) (##car _rest5776457774_)))
                      (_tl5777057796_
                       (let () (declare (not safe)) (##cdr _rest5776457774_))))
                  (let ((_k57799_ _hd5776957794_))
                    (if (let () (declare (not safe)) (##pair? _tl5777057796_))
                        (let ((_hd5777157801_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5777057796_)))
                              (_tl5777257803_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5777057796_))))
                          (let* ((_v57806_ _hd5777157801_)
                                 (_rest57808_ _tl5777257803_))
                            (declare (not safe))
                            (_K5776857791_ _rest57808_ _v57806_ _k57799_)))
                        (let () (declare (not safe)) (_else5776657782_)))))
                (let () (declare (not safe)) (_else5776657782_)))))))
    (define pgetv__0
      (lambda (_key57813_ _lst57814_)
        (let ((_default57816_ '#f))
          (declare (not safe))
          (pgetv__% _key57813_ _lst57814_ _default57816_))))
    (define pgetv
      (lambda _g64169_
        (let ((_g64168_ (let () (declare (not safe)) (##length _g64169_))))
          (cond ((let () (declare (not safe)) (##fx= _g64168_ 2))
                 (apply (lambda (_key57813_ _lst57814_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57813_ _lst57814_)))
                        _g64169_))
                ((let () (declare (not safe)) (##fx= _g64168_ 3))
                 (apply (lambda (_key57818_ _lst57819_ _default57820_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57818_ _lst57819_ _default57820_)))
                        _g64169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g64169_))))))
    (define pget__%
      (lambda (_key57681_ _lst57683_ _default57685_)
        (let _lp57688_ ((_rest57691_ _lst57683_))
          (let* ((_rest5769357703_ _rest57691_)
                 (_else5769557711_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57685_))
                        (_default57685_ _key57681_)
                        _default57685_)))
                 (_K5769757720_
                  (lambda (_rest57714_ _v57715_ _k57717_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57717_ _key57681_))
                        _v57715_
                        (let ()
                          (declare (not safe))
                          (_lp57688_ _rest57714_))))))
            (if (let () (declare (not safe)) (##pair? _rest5769357703_))
                (let ((_hd5769857723_
                       (let () (declare (not safe)) (##car _rest5769357703_)))
                      (_tl5769957725_
                       (let () (declare (not safe)) (##cdr _rest5769357703_))))
                  (let ((_k57728_ _hd5769857723_))
                    (if (let () (declare (not safe)) (##pair? _tl5769957725_))
                        (let ((_hd5770057730_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5769957725_)))
                              (_tl5770157732_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5769957725_))))
                          (let* ((_v57735_ _hd5770057730_)
                                 (_rest57737_ _tl5770157732_))
                            (declare (not safe))
                            (_K5769757720_ _rest57737_ _v57735_ _k57728_)))
                        (let () (declare (not safe)) (_else5769557711_)))))
                (let () (declare (not safe)) (_else5769557711_)))))))
    (define pget__0
      (lambda (_key57742_ _lst57743_)
        (let ((_default57745_ '#f))
          (declare (not safe))
          (pget__% _key57742_ _lst57743_ _default57745_))))
    (define pget
      (lambda _g64171_
        (let ((_g64170_ (let () (declare (not safe)) (##length _g64171_))))
          (cond ((let () (declare (not safe)) (##fx= _g64170_ 2))
                 (apply (lambda (_key57742_ _lst57743_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57742_ _lst57743_)))
                        _g64171_))
                ((let () (declare (not safe)) (##fx= _g64170_ 3))
                 (apply (lambda (_key57747_ _lst57748_ _default57749_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57747_ _lst57748_ _default57749_)))
                        _g64171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g64171_))))))
    (define find
      (lambda (_pred57674_ _lst57675_)
        (let ((_$e57677_
               (let () (declare (not safe)) (memf _pred57674_ _lst57675_))))
          (if _$e57677_ (car _$e57677_) '#f))))
    (define memf
      (lambda (_proc57634_ _lst57635_)
        (let _lp57637_ ((_rest57639_ _lst57635_))
          (let* ((_rest5764057648_ _rest57639_)
                 (_else5764257656_ (lambda () '#f))
                 (_K5764457662_
                  (lambda (_tl57659_ _hd57660_)
                    (if (_proc57634_ _hd57660_)
                        _rest57639_
                        (let () (declare (not safe)) (_lp57637_ _tl57659_))))))
            (if (let () (declare (not safe)) (##pair? _rest5764057648_))
                (let ((_hd5764557665_
                       (let () (declare (not safe)) (##car _rest5764057648_)))
                      (_tl5764657667_
                       (let () (declare (not safe)) (##cdr _rest5764057648_))))
                  (let* ((_hd57670_ _hd5764557665_) (_tl57672_ _tl5764657667_))
                    (declare (not safe))
                    (_K5764457662_ _tl57672_ _hd57670_)))
                (let () (declare (not safe)) (_else5764257656_)))))))
    (define remove1
      (lambda (_el57587_ _lst57589_)
        (let _lp57592_ ((_rest57595_ _lst57589_) (_r57597_ '()))
          (let* ((_rest5759957607_ _rest57595_)
                 (_else5760157615_ (lambda () _lst57589_))
                 (_K5760357622_
                  (lambda (_rest57618_ _hd57619_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57587_ _hd57619_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57618_ _r57597_))
                        (let ((__tmp64172
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57619_ _r57597_))))
                          (declare (not safe))
                          (_lp57592_ _rest57618_ __tmp64172))))))
            (if (let () (declare (not safe)) (##pair? _rest5759957607_))
                (let ((_hd5760457625_
                       (let () (declare (not safe)) (##car _rest5759957607_)))
                      (_tl5760557627_
                       (let () (declare (not safe)) (##cdr _rest5759957607_))))
                  (let* ((_hd57630_ _hd5760457625_)
                         (_rest57632_ _tl5760557627_))
                    (declare (not safe))
                    (_K5760357622_ _rest57632_ _hd57630_)))
                (let () (declare (not safe)) (_else5760157615_)))))))
    (define remv
      (lambda (_el57540_ _lst57542_)
        (let _lp57545_ ((_rest57548_ _lst57542_) (_r57550_ '()))
          (let* ((_rest5755257560_ _rest57548_)
                 (_else5755457568_ (lambda () _lst57542_))
                 (_K5755657575_
                  (lambda (_rest57571_ _hd57572_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el57540_ _hd57572_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57571_ _r57550_))
                        (let ((__tmp64173
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57572_ _r57550_))))
                          (declare (not safe))
                          (_lp57545_ _rest57571_ __tmp64173))))))
            (if (let () (declare (not safe)) (##pair? _rest5755257560_))
                (let ((_hd5755757578_
                       (let () (declare (not safe)) (##car _rest5755257560_)))
                      (_tl5755857580_
                       (let () (declare (not safe)) (##cdr _rest5755257560_))))
                  (let* ((_hd57583_ _hd5755757578_)
                         (_rest57585_ _tl5755857580_))
                    (declare (not safe))
                    (_K5755657575_ _rest57585_ _hd57583_)))
                (let () (declare (not safe)) (_else5755457568_)))))))
    (define remq
      (lambda (_el57493_ _lst57495_)
        (let _lp57498_ ((_rest57501_ _lst57495_) (_r57503_ '()))
          (let* ((_rest5750557513_ _rest57501_)
                 (_else5750757521_ (lambda () _lst57495_))
                 (_K5750957528_
                  (lambda (_rest57524_ _hd57525_)
                    (if (let () (declare (not safe)) (eq? _el57493_ _hd57525_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57524_ _r57503_))
                        (let ((__tmp64174
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57525_ _r57503_))))
                          (declare (not safe))
                          (_lp57498_ _rest57524_ __tmp64174))))))
            (if (let () (declare (not safe)) (##pair? _rest5750557513_))
                (let ((_hd5751057531_
                       (let () (declare (not safe)) (##car _rest5750557513_)))
                      (_tl5751157533_
                       (let () (declare (not safe)) (##cdr _rest5750557513_))))
                  (let* ((_hd57536_ _hd5751057531_)
                         (_rest57538_ _tl5751157533_))
                    (declare (not safe))
                    (_K5750957528_ _rest57538_ _hd57536_)))
                (let () (declare (not safe)) (_else5750757521_)))))))
    (define remf
      (lambda (_proc57452_ _lst57453_)
        (let _lp57455_ ((_rest57457_ _lst57453_) (_r57458_ '()))
          (let* ((_rest5745957467_ _rest57457_)
                 (_else5746157475_ (lambda () _lst57453_))
                 (_K5746357481_
                  (lambda (_rest57478_ _hd57479_)
                    (if (_proc57452_ _hd57479_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57478_ _r57458_))
                        (let ((__tmp64175
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57479_ _r57458_))))
                          (declare (not safe))
                          (_lp57455_ _rest57478_ __tmp64175))))))
            (if (let () (declare (not safe)) (##pair? _rest5745957467_))
                (let ((_hd5746457484_
                       (let () (declare (not safe)) (##car _rest5745957467_)))
                      (_tl5746557486_
                       (let () (declare (not safe)) (##cdr _rest5745957467_))))
                  (let* ((_hd57489_ _hd5746457484_)
                         (_rest57491_ _tl5746557486_))
                    (declare (not safe))
                    (_K5746357481_ _rest57491_ _hd57489_)))
                (let () (declare (not safe)) (_else5746157475_)))))))
    (define 1+ (lambda (_x57450_) (+ _x57450_ '1)))
    (define 1- (lambda (_x57448_) (- _x57448_ '1)))
    (define fx1+ (lambda (_x57446_) (fx+ _x57446_ '1)))
    (define fx1- (lambda (_x57444_) (fx- _x57444_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x57442_)
        (if (fixnum? _x57442_)
            (let () (declare (not safe)) (##fx>= _x57442_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x57440_)
        (if (fixnum? _x57440_)
            (let () (declare (not safe)) (##fx> _x57440_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x57438_) (let () (declare (not safe)) (eq? _x57438_ '0))))
    (define fx<0?
      (lambda (_x57436_)
        (if (fixnum? _x57436_)
            (let () (declare (not safe)) (##fx< _x57436_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x57434_)
        (if (fixnum? _x57434_)
            (let () (declare (not safe)) (##fx<= _x57434_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x57432_)
        (if (let () (declare (not safe)) (symbol? _x57432_))
            (let ((__tmp64176 (uninterned-symbol? _x57432_)))
              (declare (not safe))
              (not __tmp64176))
            '#f)))
    (define display-as-string
      (lambda (_x57404_ _port57405_)
        (if (or (let () (declare (not safe)) (string? _x57404_))
                (let () (declare (not safe)) (symbol? _x57404_))
                (keyword? _x57404_)
                (let () (declare (not safe)) (number? _x57404_))
                (let () (declare (not safe)) (char? _x57404_)))
            (display _x57404_ _port57405_)
            (if (let () (declare (not safe)) (pair? _x57404_))
                (begin
                  (let ((__tmp64177 (car _x57404_)))
                    (declare (not safe))
                    (display-as-string __tmp64177 _port57405_))
                  (let ((__tmp64178 (cdr _x57404_)))
                    (declare (not safe))
                    (display-as-string __tmp64178 _port57405_)))
                (if (let () (declare (not safe)) (vector? _x57404_))
                    (vector-for-each
                     (lambda (_g5741857420_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5741857420_ _port57405_)))
                     _x57404_)
                    (if (or (let () (declare (not safe)) (null? _x57404_))
                            (let ()
                              (declare (not safe))
                              (eq? _x57404_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x57404_))
                            (let () (declare (not safe)) (boolean? _x57404_)))
                        '#!void
                        (error '"cannot convert as string" _x57404_)))))))
    (define as-string__0
      (lambda (_x57392_)
        (if (let () (declare (not safe)) (string? _x57392_))
            _x57392_
            (if (let () (declare (not safe)) (symbol? _x57392_))
                (symbol->string _x57392_)
                (if (keyword? _x57392_)
                    (keyword->string _x57392_)
                    (call-with-output-string
                     '()
                     (lambda (_g5739357395_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x57392_ _g5739357395_)))))))))
    (define as-string__1
      (lambda _args57398_
        (call-with-output-string
         '()
         (lambda (_g5739957401_)
           (let ()
             (declare (not safe))
             (display-as-string _args57398_ _g5739957401_))))))
    (define as-string
      (lambda _g64180_
        (let ((_g64179_ (let () (declare (not safe)) (##length _g64180_))))
          (cond ((let () (declare (not safe)) (##fx= _g64179_ 1))
                 (apply (lambda (_x57392_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x57392_)))
                        _g64180_))
                (#t (apply as-string__1 _g64180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g64180_))))))
    (define make-symbol__0
      (lambda (_x57388_)
        (if (interned-symbol? _x57388_)
            _x57388_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x57388_))))))
    (define make-symbol__1
      (lambda _args57390_ (string->symbol (apply as-string _args57390_))))
    (define make-symbol
      (lambda _g64182_
        (let ((_g64181_ (let () (declare (not safe)) (##length _g64182_))))
          (cond ((let () (declare (not safe)) (##fx= _g64181_ 1))
                 (apply (lambda (_x57388_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x57388_)))
                        _g64182_))
                (#t (apply make-symbol__1 _g64182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g64182_))))))
    (define make-keyword__0
      (lambda (_x57384_)
        (if (interned-keyword? _x57384_)
            _x57384_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x57384_))))))
    (define make-keyword__1
      (lambda _args57386_ (string->keyword (apply as-string _args57386_))))
    (define make-keyword
      (lambda _g64184_
        (let ((_g64183_ (let () (declare (not safe)) (##length _g64184_))))
          (cond ((let () (declare (not safe)) (##fx= _g64183_ 1))
                 (apply (lambda (_x57384_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x57384_)))
                        _g64184_))
                (#t (apply make-keyword__1 _g64184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g64184_))))))
    (define interned-keyword?
      (lambda (_x57382_)
        (if (keyword? _x57382_)
            (let ((__tmp64185 (uninterned-keyword? _x57382_)))
              (declare (not safe))
              (not __tmp64185))
            '#f)))
    (define symbol->keyword
      (lambda (_sym57380_)
        ((if (uninterned-symbol? _sym57380_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym57380_))))
    (define keyword->symbol
      (lambda (_kw57378_)
        ((if (uninterned-keyword? _kw57378_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw57378_))))
    (define bytes->string__%
      (lambda (_bstr57356_ _enc57357_)
        (if (let () (declare (not safe)) (eq? _enc57357_ 'UTF-8))
            (utf8->string _bstr57356_)
            (let* ((_in57359_
                    (open-input-u8vector
                     (let ((__tmp64186
                            (let ((__tmp64187
                                   (let ((__tmp64188
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr57356_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp64188))))
                              (declare (not safe))
                              (cons _enc57357_ __tmp64187))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp64186))))
                   (_len57361_ (u8vector-length _bstr57356_))
                   (_out57363_ (make-string _len57361_))
                   (_n57365_
                    (read-substring _out57363_ '0 _len57361_ _in57359_)))
              (string-shrink! _out57363_ _n57365_)
              _out57363_))))
    (define bytes->string__0
      (lambda (_bstr57371_)
        (let ((_enc57373_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr57371_ _enc57373_))))
    (define bytes->string
      (lambda _g64190_
        (let ((_g64189_ (let () (declare (not safe)) (##length _g64190_))))
          (cond ((let () (declare (not safe)) (##fx= _g64189_ 1))
                 (apply (lambda (_bstr57371_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr57371_)))
                        _g64190_))
                ((let () (declare (not safe)) (##fx= _g64189_ 2))
                 (apply (lambda (_bstr57375_ _enc57376_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr57375_ _enc57376_)))
                        _g64190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g64190_))))))
    (define string->bytes__%
      (lambda (_str57342_ _enc57343_)
        (if (let () (declare (not safe)) (eq? _enc57343_ 'UTF-8))
            (string->utf8 _str57342_)
            (substring->bytes
             _str57342_
             '0
             (string-length _str57342_)
             _enc57343_))))
    (define string->bytes__0
      (lambda (_str57348_)
        (let ((_enc57350_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str57348_ _enc57350_))))
    (define string->bytes
      (lambda _g64192_
        (let ((_g64191_ (let () (declare (not safe)) (##length _g64192_))))
          (cond ((let () (declare (not safe)) (##fx= _g64191_ 1))
                 (apply (lambda (_str57348_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str57348_)))
                        _g64192_))
                ((let () (declare (not safe)) (##fx= _g64191_ 2))
                 (apply (lambda (_str57352_ _enc57353_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str57352_ _enc57353_)))
                        _g64192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g64192_))))))
    (define substring->bytes__%
      (lambda (_str57320_ _start57321_ _end57322_ _enc57323_)
        (if (let () (declare (not safe)) (eq? _enc57323_ 'UTF-8))
            (string->utf8 _str57320_ _start57321_ _end57322_)
            (let ((_out57325_
                   (open-output-u8vector
                    (let ((__tmp64193
                           (let ()
                             (declare (not safe))
                             (cons _enc57323_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp64193)))))
              (write-substring _str57320_ _start57321_ _end57322_ _out57325_)
              (get-output-u8vector _out57325_)))))
    (define substring->bytes__0
      (lambda (_str57330_ _start57331_ _end57332_)
        (let ((_enc57334_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str57330_
           _start57331_
           _end57332_
           _enc57334_))))
    (define substring->bytes
      (lambda _g64195_
        (let ((_g64194_ (let () (declare (not safe)) (##length _g64195_))))
          (cond ((let () (declare (not safe)) (##fx= _g64194_ 3))
                 (apply (lambda (_str57330_ _start57331_ _end57332_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str57330_
                             _start57331_
                             _end57332_)))
                        _g64195_))
                ((let () (declare (not safe)) (##fx= _g64194_ 4))
                 (apply (lambda (_str57336_ _start57337_ _end57338_ _enc57339_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str57336_
                             _start57337_
                             _end57338_
                             _enc57339_)))
                        _g64195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g64195_))))))
    (define string-empty?
      (lambda (_str57317_)
        (let ((__tmp64196 (string-length _str57317_)))
          (declare (not safe))
          (##fxzero? __tmp64196))))
    (define string-prefix?
      (lambda (_prefix57307_ _str57308_)
        (let ((_str-len57310_ (string-length _str57308_))
              (_prefix-len57311_ (string-length _prefix57307_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len57311_ _str-len57310_))
              (let _lp57313_ ((_i57315_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i57315_ _prefix-len57311_))
                    (if (let ((__tmp64199
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str57308_ _i57315_)))
                              (__tmp64198
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix57307_ _i57315_))))
                          (declare (not safe))
                          (eq? __tmp64199 __tmp64198))
                        (let ((__tmp64197
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i57315_ '1))))
                          (declare (not safe))
                          (_lp57313_ __tmp64197))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str57285_ _char57286_ _start57287_)
        (let ((_len57289_ (string-length _str57285_)))
          (let _lp57291_ ((_k57293_ _start57287_))
            (if (let () (declare (not safe)) (##fx< _k57293_ _len57289_))
                (if (let ((__tmp64201
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57285_ _k57293_))))
                      (declare (not safe))
                      (eq? _char57286_ __tmp64201))
                    _k57293_
                    (let ((__tmp64200
                           (let () (declare (not safe)) (##fx+ _k57293_ '1))))
                      (declare (not safe))
                      (_lp57291_ __tmp64200)))
                '#f)))))
    (define string-index__0
      (lambda (_str57298_ _char57299_)
        (let ((_start57301_ '0))
          (declare (not safe))
          (string-index__% _str57298_ _char57299_ _start57301_))))
    (define string-index
      (lambda _g64203_
        (let ((_g64202_ (let () (declare (not safe)) (##length _g64203_))))
          (cond ((let () (declare (not safe)) (##fx= _g64202_ 2))
                 (apply (lambda (_str57298_ _char57299_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str57298_ _char57299_)))
                        _g64203_))
                ((let () (declare (not safe)) (##fx= _g64202_ 3))
                 (apply (lambda (_str57303_ _char57304_ _start57305_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str57303_
                             _char57304_
                             _start57305_)))
                        _g64203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g64203_))))))
    (define string-rindex__%
      (lambda (_str57256_ _char57257_ _start57258_)
        (let* ((_len57260_ (string-length _str57256_))
               (_start57265_
                (let ((_$e57262_ _start57258_))
                  (if _$e57262_
                      _$e57262_
                      (let () (declare (not safe)) (##fx- _len57260_ '1))))))
          (let _lp57268_ ((_k57270_ _start57265_))
            (if (let () (declare (not safe)) (##fx>= _k57270_ '0))
                (if (let ((__tmp64205
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57256_ _k57270_))))
                      (declare (not safe))
                      (eq? _char57257_ __tmp64205))
                    _k57270_
                    (let ((__tmp64204
                           (let () (declare (not safe)) (##fx- _k57270_ '1))))
                      (declare (not safe))
                      (_lp57268_ __tmp64204)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str57275_ _char57276_)
        (let ((_start57278_ '#f))
          (declare (not safe))
          (string-rindex__% _str57275_ _char57276_ _start57278_))))
    (define string-rindex
      (lambda _g64207_
        (let ((_g64206_ (let () (declare (not safe)) (##length _g64207_))))
          (cond ((let () (declare (not safe)) (##fx= _g64206_ 2))
                 (apply (lambda (_str57275_ _char57276_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str57275_ _char57276_)))
                        _g64207_))
                ((let () (declare (not safe)) (##fx= _g64206_ 3))
                 (apply (lambda (_str57280_ _char57281_ _start57282_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str57280_
                             _char57281_
                             _start57282_)))
                        _g64207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g64207_))))))
    (define string-split
      (lambda (_str57240_ _char57241_)
        (let ((_len57243_ (string-length _str57240_)))
          (let _lp57245_ ((_start57247_ '0) (_r57248_ '()))
            (let ((_$e57250_
                   (let ()
                     (declare (not safe))
                     (string-index _str57240_ _char57241_ _start57247_))))
              (if _$e57250_
                  ((lambda (_end57253_)
                     (let ((__tmp64211
                            (let ()
                              (declare (not safe))
                              (##fx+ _end57253_ '1)))
                           (__tmp64209
                            (let ((__tmp64210
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57240_
                                      _start57247_
                                      _end57253_))))
                              (declare (not safe))
                              (cons __tmp64210 _r57248_))))
                       (declare (not safe))
                       (_lp57245_ __tmp64211 __tmp64209)))
                   _$e57250_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start57247_ _len57243_))
                      (let ((__tmp64208
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57240_
                                      _start57247_
                                      _len57243_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp64208 _r57248_))
                      (reverse _r57248_))))))))
    (define string-join
      (lambda (_strs57145_ _join57146_)
        (letrec ((_join-length57148_
                  (lambda (_strs57199_ _jlen57200_)
                    (let _lp57202_ ((_rest57204_ _strs57199_) (_len57205_ '0))
                      (let* ((_rest5720657214_ _rest57204_)
                             (_else5720857222_ (lambda () '0))
                             (_K5721057228_
                              (lambda (_rest57225_ _hd57226_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd57226_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest57225_))
                                        (let ((__tmp64213
                                               (let ((__tmp64214
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd57226_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp64214
                                                        _jlen57200_
                                                        _len57205_))))
                                          (declare (not safe))
                                          (_lp57202_ _rest57225_ __tmp64213))
                                        (let ((__tmp64212
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd57226_))))
                                          (declare (not safe))
                                          (##fx+ __tmp64212 _len57205_)))
                                    (error '"expected string" _hd57226_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5720657214_))
                            (let ((_hd5721157231_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5720657214_)))
                                  (_tl5721257233_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5720657214_))))
                              (let* ((_hd57236_ _hd5721157231_)
                                     (_rest57238_ _tl5721257233_))
                                (declare (not safe))
                                (_K5721057228_ _rest57238_ _hd57236_)))
                            (let ()
                              (declare (not safe))
                              (_else5720857222_))))))))
          (let* ((_join57150_
                  (if (let () (declare (not safe)) (char? _join57146_))
                      (string _join57146_)
                      (if (let () (declare (not safe)) (string? _join57146_))
                          _join57146_
                          (error '"expected string or char" _join57146_))))
                 (_jlen57152_
                  (let () (declare (not safe)) (##string-length _join57150_)))
                 (_olen57154_
                  (let ()
                    (declare (not safe))
                    (_join-length57148_ _strs57145_ _jlen57152_)))
                 (_ostr57156_ (make-string _olen57154_)))
            (let _lp57159_ ((_rest57161_ _strs57145_) (_k57162_ '0))
              (let* ((_rest5716357171_ _rest57161_)
                     (_else5716557179_ (lambda () '""))
                     (_K5716757187_
                      (lambda (_rest57182_ _hd57183_)
                        (let ((_hdlen57185_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd57183_))))
                          (if (let () (declare (not safe)) (pair? _rest57182_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57183_
                                   '0
                                   _hdlen57185_
                                   _ostr57156_
                                   _k57162_))
                                (let ((__tmp64215
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57162_ _hdlen57185_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join57150_
                                   '0
                                   _jlen57152_
                                   _ostr57156_
                                   __tmp64215))
                                (let ((__tmp64216
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57162_
                                                _hdlen57185_
                                                _jlen57152_))))
                                  (declare (not safe))
                                  (_lp57159_ _rest57182_ __tmp64216)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57183_
                                   '0
                                   _hdlen57185_
                                   _ostr57156_
                                   _k57162_))
                                _ostr57156_))))))
                (if (let () (declare (not safe)) (##pair? _rest5716357171_))
                    (let ((_hd5716857190_
                           (let ()
                             (declare (not safe))
                             (##car _rest5716357171_)))
                          (_tl5716957192_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5716357171_))))
                      (let* ((_hd57195_ _hd5716857190_)
                             (_rest57197_ _tl5716957192_))
                        (declare (not safe))
                        (_K5716757187_ _rest57197_ _hd57195_)))
                    (let () (declare (not safe)) (_else5716557179_)))))))))
    (define read-u8vector
      (lambda (_bytes57142_ _port57143_)
        (read-subu8vector
         _bytes57142_
         '0
         (u8vector-length _bytes57142_)
         _port57143_)))
    (define write-u8vector
      (lambda (_bytes57139_ _port57140_)
        (write-subu8vector
         _bytes57139_
         '0
         (u8vector-length _bytes57139_)
         _port57140_)))
    (define read-string
      (lambda (_str57136_ _port57137_)
        (read-substring _str57136_ '0 (string-length _str57136_) _port57137_)))
    (define write-string
      (lambda (_str57133_ _port57134_)
        (write-substring
         _str57133_
         '0
         (string-length _str57133_)
         _port57134_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag57104_
               _dbg-exprs57105_
               _dbg-thunks57106_
               _expr57107_
               _thunk57108_)
        (letrec ((_fo57110_
                  (lambda ()
                    (force-output (current-error-port))
                    (force-output (current-output-port))))
                 (_d57111_
                  (lambda (_x57119_) (display _x57119_ (current-error-port))))
                 (_p57112_ (DBG-printer))
                 (_w57113_
                  (lambda (_x57121_) (_p57112_ _x57121_ (current-error-port))))
                 (_n57114_ (lambda () (newline (current-error-port))))
                 (_v57115_
                  (lambda (_l57124_)
                    (for-each
                     (lambda (_x57126_)
                       (let () (declare (not safe)) (_d57111_ '" "))
                       (let () (declare (not safe)) (_w57113_ _x57126_)))
                     _l57124_)
                    (let () (declare (not safe)) (_n57114_))))
                 (_x57116_
                  (lambda (_expr57128_ _thunk57129_)
                    (let () (declare (not safe)) (_d57111_ '"  "))
                    (let () (declare (not safe)) (_w57113_ _expr57128_))
                    (let () (declare (not safe)) (_d57111_ '" =>"))
                    (call-with-values
                     _thunk57129_
                     (lambda _x57131_
                       (let () (declare (not safe)) (_v57115_ _x57131_))
                       (apply values _x57131_))))))
          (if _tag57104_
              (begin
                (if (let () (declare (not safe)) (eq? _tag57104_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_d57111_ _tag57104_))
                      (let () (declare (not safe)) (_n57114_))))
                (for-each _x57116_ _dbg-exprs57105_ _dbg-thunks57106_)
                (if _thunk57108_
                    (let ()
                      (declare (not safe))
                      (_x57116_ _expr57107_ _thunk57108_))
                    '#!void))
              (if _thunk57108_ (_thunk57108_) '#!void)))))))
