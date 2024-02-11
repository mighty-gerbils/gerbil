(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1707618262)
  (begin
    (define displayln
      (lambda _args59242_
        (let _lp59244_ ((_rest59246_ _args59242_))
          (let* ((_rest5924759255_ _rest59246_)
                 (_else5924959263_ (lambda () (newline)))
                 (_K5925159269_
                  (lambda (_rest59266_ _hd59267_)
                    (display _hd59267_)
                    (let () (declare (not safe)) (_lp59244_ _rest59266_)))))
            (if (let () (declare (not safe)) (##pair? _rest5924759255_))
                (let ((_hd5925259272_
                       (let () (declare (not safe)) (##car _rest5924759255_)))
                      (_tl5925359274_
                       (let () (declare (not safe)) (##cdr _rest5924759255_))))
                  (let* ((_hd59277_ _hd5925259272_)
                         (_rest59279_ _tl5925359274_))
                    (declare (not safe))
                    (_K5925159269_ _rest59279_ _hd59277_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args59240_ (for-each display _args59240_)))
    (define file-newer?
      (lambda (_file159233_ _file259234_)
        (letrec ((_modification-time59236_
                  (lambda (_file59238_)
                    (let ((__tmp64142
                           (file-info-last-modification-time
                            (file-info _file59238_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp64142)))))
          (let ((__tmp64144
                 (let ()
                   (declare (not safe))
                   (_modification-time59236_ _file159233_)))
                (__tmp64143
                 (let ()
                   (declare (not safe))
                   (_modification-time59236_ _file259234_))))
            (declare (not safe))
            (##fl> __tmp64144 __tmp64143)))))
    (define create-directory*__%
      (lambda (_dir59207_ _perms59208_)
        (letrec ((_create159210_
                  (lambda (_path59221_)
                    (if (file-exists? _path59221_)
                        (if (let ((__tmp64145 (file-type _path59221_)))
                              (declare (not safe))
                              (eq? __tmp64145 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path59221_))
                        (if _perms59208_
                            (create-directory
                             (list 'path:
                                   _path59221_
                                   'permissions:
                                   _perms59208_))
                            (create-directory _path59221_))))))
          (if (file-exists? _dir59207_)
              '#!void
              (let _lp59212_ ((_start59214_ '0))
                (let ((_$e59216_
                       (let ()
                         (declare (not safe))
                         (string-index _dir59207_ '#\/ _start59214_))))
                  (if _$e59216_
                      ((lambda (_x59219_)
                         (if (let () (declare (not safe)) (##fx> _x59219_ '0))
                             (let ((__tmp64146
                                    (substring _dir59207_ '0 _x59219_)))
                               (declare (not safe))
                               (_create159210_ __tmp64146))
                             '#!void)
                         (let ((__tmp64147
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x59219_ '1))))
                           (declare (not safe))
                           (_lp59212_ __tmp64147)))
                       _$e59216_)
                      (let ()
                        (declare (not safe))
                        (_create159210_ _dir59207_)))))))))
    (define create-directory*__0
      (lambda (_dir59226_)
        (let ((_perms59228_ '493))
          (declare (not safe))
          (create-directory*__% _dir59226_ _perms59228_))))
    (define create-directory*
      (lambda _g64149_
        (let ((_g64148_ (let () (declare (not safe)) (##length _g64149_))))
          (cond ((let () (declare (not safe)) (##fx= _g64148_ 1))
                 (apply (lambda (_dir59226_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir59226_)))
                        _g64149_))
                ((let () (declare (not safe)) (##fx= _g64148_ 2))
                 (apply (lambda (_dir59230_ _perms59231_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir59230_ _perms59231_)))
                        _g64149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g64149_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g64150_ '#t))
    (define true?
      (lambda (_obj59203_) (let () (declare (not safe)) (eq? _obj59203_ '#t))))
    (define false (lambda _g64151_ '#f))
    (define void (lambda _g64152_ '#!void))
    (define void?
      (lambda (_obj59199_)
        (let () (declare (not safe)) (eq? _obj59199_ '#!void))))
    (define eof-object (lambda _g64153_ '#!eof))
    (define identity (lambda (_obj59196_) _obj59196_))
    (define dssl-object?
      (lambda (_obj59194_)
        (if (memq _obj59194_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj59192_)
        (let () (declare (not safe)) (eq? _obj59192_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj59190_)
        (let () (declare (not safe)) (eq? _obj59190_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj59188_)
        (let () (declare (not safe)) (eq? _obj59188_ '#!optional))))
    (define immediate?
      (lambda (_obj59184_)
        (let* ((_t59186_ (let () (declare (not safe)) (##type _obj59184_)))
               (__tmp64154
                (let () (declare (not safe)) (##fxand _t59186_ '1))))
          (declare (not safe))
          (##fxzero? __tmp64154))))
    (define nonnegative-fixnum?
      (lambda (_obj59182_)
        (if (fixnum? _obj59182_)
            (let ((__tmp64155 (fxnegative? _obj59182_)))
              (declare (not safe))
              (not __tmp64155))
            '#f)))
    (define values-count
      (lambda (_obj59180_)
        (if (let () (declare (not safe)) (##values? _obj59180_))
            (let () (declare (not safe)) (##vector-length _obj59180_))
            '1)))
    (define values-ref
      (lambda (_obj59177_ _k59178_)
        (if (let () (declare (not safe)) (##values? _obj59177_))
            (let () (declare (not safe)) (##vector-ref _obj59177_ _k59178_))
            _obj59177_)))
    (define values->list
      (lambda (_obj59175_)
        (if (let () (declare (not safe)) (##values? _obj59175_))
            (let () (declare (not safe)) (##vector->list _obj59175_))
            (list _obj59175_))))
    (define subvector->list__%
      (lambda (_obj59160_ _start59161_)
        (let ((_lst59163_
               (let () (declare (not safe)) (##vector->list _obj59160_))))
          (list-tail _lst59163_ _start59161_))))
    (define subvector->list__0
      (lambda (_obj59168_)
        (let ((_start59170_ '0))
          (declare (not safe))
          (subvector->list__% _obj59168_ _start59170_))))
    (define subvector->list
      (lambda _g64157_
        (let ((_g64156_ (let () (declare (not safe)) (##length _g64157_))))
          (cond ((let () (declare (not safe)) (##fx= _g64156_ 1))
                 (apply (lambda (_obj59168_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj59168_)))
                        _g64157_))
                ((let () (declare (not safe)) (##fx= _g64156_ 2))
                 (apply (lambda (_obj59172_ _start59173_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj59172_ _start59173_)))
                        _g64157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g64157_))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args59157_ (apply make-table 'test: eq? _args59157_)))
    (define make-hash-table-eqv
      (lambda _args59155_ (apply make-table 'test: eqv? _args59155_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst59152_ . _args59153_)
        (apply list->table _lst59152_ 'test: eq? _args59153_)))
    (define list->hash-table-eqv
      (lambda (_lst59149_ . _args59150_)
        (apply list->table _lst59149_ 'test: eqv? _args59150_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht59146_ _k59147_) (table-ref _ht59146_ _k59147_ '#f)))
    (define hash-put!
      (lambda (_ht59142_ _k59143_ _v59144_)
        (table-set! _ht59142_ _k59143_ _v59144_)))
    (define hash-update!__%
      (lambda (_ht59121_ _k59122_ _update59123_ _default59124_)
        (let* ((_value59126_
                (let ()
                  (declare (not safe))
                  (table-ref _ht59121_ _k59122_ _default59124_)))
               (__tmp64158 (_update59123_ _value59126_)))
          (declare (not safe))
          (table-set! _ht59121_ _k59122_ __tmp64158))))
    (define hash-update!__0
      (lambda (_ht59131_ _k59132_ _update59133_)
        (let ((_default59135_ '#!void))
          (declare (not safe))
          (hash-update!__% _ht59131_ _k59132_ _update59133_ _default59135_))))
    (define hash-update!
      (lambda _g64160_
        (let ((_g64159_ (let () (declare (not safe)) (##length _g64160_))))
          (cond ((let () (declare (not safe)) (##fx= _g64159_ 3))
                 (apply (lambda (_ht59131_ _k59132_ _update59133_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__0
                             _ht59131_
                             _k59132_
                             _update59133_)))
                        _g64160_))
                ((let () (declare (not safe)) (##fx= _g64159_ 4))
                 (apply (lambda (_ht59137_
                                 _k59138_
                                 _update59139_
                                 _default59140_)
                          (let ()
                            (declare (not safe))
                            (hash-update!__%
                             _ht59137_
                             _k59138_
                             _update59139_
                             _default59140_)))
                        _g64160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g64160_))))))
    (define hash-remove!
      (lambda (_ht59117_ _k59118_) (table-set! _ht59117_ _k59118_)))
    (define hash->list table->list)
    (define hash->plist
      (lambda (_ht59115_)
        (let () (declare (not safe)) (hash-fold cons* '() _ht59115_))))
    (define plist->hash-table__%
      (lambda (_plst59050_ _ht59051_)
        (let _lp59053_ ((_rest59055_ _plst59050_))
          (let* ((_rest5905659067_ _rest59055_)
                 (_E5905959071_
                  (lambda () (error '"No clause matching" _rest5905659067_))))
            (let ((_K5906159086_
                   (lambda (_rest59082_ _v59083_ _k59084_)
                     (let ()
                       (declare (not safe))
                       (table-set! _ht59051_ _k59084_ _v59083_))
                     (let () (declare (not safe)) (_lp59053_ _rest59082_))))
                  (_K5906059076_ (lambda () _ht59051_)))
              (let ((_try-match5905859079_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##eq? _rest5905659067_ '()))
                           (let () (declare (not safe)) (_K5906059076_))
                           (let () (declare (not safe)) (_E5905959071_))))))
                (if (let () (declare (not safe)) (##pair? _rest5905659067_))
                    (let ((_tl5906359091_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5905659067_)))
                          (_hd5906259089_
                           (let ()
                             (declare (not safe))
                             (##car _rest5905659067_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _tl5906359091_))
                          (let ((_tl5906559098_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _tl5906359091_)))
                                (_hd5906459096_
                                 (let ()
                                   (declare (not safe))
                                   (##car _tl5906359091_))))
                            (let ((_k59094_ _hd5906259089_)
                                  (_v59101_ _hd5906459096_)
                                  (_rest59103_ _tl5906559098_))
                              (let ()
                                (declare (not safe))
                                (_K5906159086_
                                 _rest59103_
                                 _v59101_
                                 _k59094_))))
                          (let ()
                            (declare (not safe))
                            (_try-match5905859079_))))
                    (let ()
                      (declare (not safe))
                      (_try-match5905859079_)))))))))
    (define plist->hash-table__0
      (lambda (_plst59108_)
        (let ((_ht59110_ (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (plist->hash-table__% _plst59108_ _ht59110_))))
    (define plist->hash-table
      (lambda _g64162_
        (let ((_g64161_ (let () (declare (not safe)) (##length _g64162_))))
          (cond ((let () (declare (not safe)) (##fx= _g64161_ 1))
                 (apply (lambda (_plst59108_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__0 _plst59108_)))
                        _g64162_))
                ((let () (declare (not safe)) (##fx= _g64161_ 2))
                 (apply (lambda (_plst59112_ _ht59113_)
                          (let ()
                            (declare (not safe))
                            (plist->hash-table__% _plst59112_ _ht59113_)))
                        _g64162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  plist->hash-table
                  _g64162_))))))
    (define plist->hash-table-eq
      (lambda (_plst59047_)
        (let ((__tmp64163
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (plist->hash-table _plst59047_ __tmp64163))))
    (define plist->hash-table-eqv
      (lambda (_plst59045_)
        (let ((__tmp64164
               (let () (declare (not safe)) (make-table 'test: eqv?))))
          (declare (not safe))
          (plist->hash-table _plst59045_ __tmp64164))))
    (define hash-key?
      (lambda (_ht59042_ _k59043_)
        (let ((__tmp64165
               (let ((__tmp64166
                      (let ()
                        (declare (not safe))
                        (table-ref _ht59042_ _k59043_ absent-value))))
                 (declare (not safe))
                 (eq? __tmp64166 absent-value))))
          (declare (not safe))
          (not __tmp64165))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun59035_ _ht59036_)
        (let ((__tmp64167
               (lambda (_k59038_ _v59039_ _r59040_)
                 (let ((__tmp64168 (_fun59035_ _k59038_ _v59039_)))
                   (declare (not safe))
                   (cons __tmp64168 _r59040_)))))
          (declare (not safe))
          (hash-fold __tmp64167 '() _ht59036_))))
    (define hash-fold
      (lambda (_fun59026_ _iv59027_ _ht59028_)
        (let ((_ret59030_ _iv59027_))
          (let ((__tmp64169
                 (lambda (_k59032_ _v59033_)
                   (set! _ret59030_
                         (_fun59026_ _k59032_ _v59033_ _ret59030_)))))
            (declare (not safe))
            (table-for-each __tmp64169 _ht59028_))
          _ret59030_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht59021_)
        (let ((__tmp64170 (lambda (_k59023_ _v59024_) _k59023_)))
          (declare (not safe))
          (hash-map __tmp64170 _ht59021_))))
    (define hash-values
      (lambda (_ht59016_)
        (let ((__tmp64171 (lambda (_k59018_ _v59019_) _v59019_)))
          (declare (not safe))
          (hash-map __tmp64171 _ht59016_))))
    (define hash-copy
      (lambda (_hd59011_ . _rest59012_)
        (let ((_hd59014_ (table-copy _hd59011_)))
          (if (let () (declare (not safe)) (null? _rest59012_))
              _hd59014_
              (apply hash-copy! _hd59014_ _rest59012_)))))
    (define hash-copy!
      (lambda (_hd59006_ . _rest59007_)
        (for-each
         (lambda (_r59009_) (table-merge! _hd59006_ _r59009_))
         _rest59007_)
        _hd59006_))
    (define hash-merge
      (lambda (_hd59000_ . _rest59001_)
        (let ((__tmp64172
               (lambda (_tab59003_ _r59004_)
                 (table-merge _r59004_ _tab59003_))))
          (declare (not safe))
          (foldl1 __tmp64172 _hd59000_ _rest59001_))))
    (define hash-merge!
      (lambda (_hd58994_ . _rest58995_)
        (let ((__tmp64173
               (lambda (_tab58997_ _r58998_)
                 (table-merge! _r58998_ _tab58997_))))
          (declare (not safe))
          (foldl1 __tmp64173 _hd58994_ _rest58995_))))
    (define hash-clear!__%
      (lambda (_ht58979_ _size58980_)
        (let ((_gcht58982_
               (let () (declare (not safe)) (##vector-ref _ht58979_ '5))))
          (if (let ((__tmp64174 (fixnum? _gcht58982_)))
                (declare (not safe))
                (not __tmp64174))
              (let ()
                (declare (not safe))
                (##vector-set! _ht58979_ '5 _size58980_))
              '#!void))))
    (define hash-clear!__0
      (lambda (_ht58987_)
        (let ((_size58989_ '0))
          (declare (not safe))
          (hash-clear!__% _ht58987_ _size58989_))))
    (define hash-clear!
      (lambda _g64176_
        (let ((_g64175_ (let () (declare (not safe)) (##length _g64176_))))
          (cond ((let () (declare (not safe)) (##fx= _g64175_ 1))
                 (apply (lambda (_ht58987_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__0 _ht58987_)))
                        _g64176_))
                ((let () (declare (not safe)) (##fx= _g64175_ 2))
                 (apply (lambda (_ht58991_ _size58992_)
                          (let ()
                            (declare (not safe))
                            (hash-clear!__% _ht58991_ _size58992_)))
                        _g64176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-clear!
                  _g64176_))))))
    (define make-list__%
      (lambda (_k58960_ _val58961_)
        (if (fixnum? _k58960_)
            '#!void
            (error '"expected argument 1 to be fixnum" _k58960_))
        (let _lp58963_ ((_n58965_ '0) (_r58966_ '()))
          (if (let () (declare (not safe)) (##fx< _n58965_ _k58960_))
              (let ((__tmp64178
                     (let () (declare (not safe)) (##fx+ _n58965_ '1)))
                    (__tmp64177
                     (let () (declare (not safe)) (cons _val58961_ _r58966_))))
                (declare (not safe))
                (_lp58963_ __tmp64178 __tmp64177))
              _r58966_))))
    (define make-list__0
      (lambda (_k58971_)
        (let ((_val58973_ '#f))
          (declare (not safe))
          (make-list__% _k58971_ _val58973_))))
    (define make-list
      (lambda _g64180_
        (let ((_g64179_ (let () (declare (not safe)) (##length _g64180_))))
          (cond ((let () (declare (not safe)) (##fx= _g64179_ 1))
                 (apply (lambda (_k58971_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k58971_)))
                        _g64180_))
                ((let () (declare (not safe)) (##fx= _g64179_ 2))
                 (apply (lambda (_k58975_ _val58976_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k58975_ _val58976_)))
                        _g64180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g64180_))))))
    (define cons*
      (lambda (_x58950_ _y58951_ . _rest58952_)
        (letrec ((_recur58954_
                  (lambda (_x58956_ _rest58957_)
                    (if (let () (declare (not safe)) (pair? _rest58957_))
                        (let ((__tmp64181
                               (let ((__tmp64183
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest58957_)))
                                     (__tmp64182
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest58957_))))
                                 (declare (not safe))
                                 (_recur58954_ __tmp64183 __tmp64182))))
                          (declare (not safe))
                          (cons _x58956_ __tmp64181))
                        _x58956_))))
          (let ((__tmp64184
                 (let ()
                   (declare (not safe))
                   (_recur58954_ _y58951_ _rest58952_))))
            (declare (not safe))
            (cons _x58950_ __tmp64184)))))
    (define foldl1
      (lambda (_f58908_ _iv58909_ _lst58910_)
        (let _lp58912_ ((_rest58914_ _lst58910_) (_r58915_ _iv58909_))
          (let* ((_rest5891658924_ _rest58914_)
                 (_else5891858932_ (lambda () _r58915_))
                 (_K5892058938_
                  (lambda (_rest58935_ _x58936_)
                    (let ((__tmp64185 (_f58908_ _x58936_ _r58915_)))
                      (declare (not safe))
                      (_lp58912_ _rest58935_ __tmp64185)))))
            (if (let () (declare (not safe)) (##pair? _rest5891658924_))
                (let ((_hd5892158941_
                       (let () (declare (not safe)) (##car _rest5891658924_)))
                      (_tl5892258943_
                       (let () (declare (not safe)) (##cdr _rest5891658924_))))
                  (let* ((_x58946_ _hd5892158941_)
                         (_rest58948_ _tl5892258943_))
                    (declare (not safe))
                    (_K5892058938_ _rest58948_ _x58946_)))
                (let () (declare (not safe)) (_else5891858932_)))))))
    (define foldl2
      (lambda (_f58831_ _iv58832_ _lst158833_ _lst258834_)
        (let _lp58836_ ((_rest158838_ _lst158833_)
                        (_rest258839_ _lst258834_)
                        (_r58840_ _iv58832_))
          (let* ((_rest15884158849_ _rest158838_)
                 (_else5884358857_ (lambda () _r58840_))
                 (_K5884558896_
                  (lambda (_rest158860_ _x158861_)
                    (let* ((_rest25886258870_ _rest258839_)
                           (_else5886458878_ (lambda () _r58840_))
                           (_K5886658884_
                            (lambda (_rest258881_ _x258882_)
                              (let ((__tmp64186
                                     (_f58831_ _x158861_ _x258882_ _r58840_)))
                                (declare (not safe))
                                (_lp58836_
                                 _rest158860_
                                 _rest258881_
                                 __tmp64186)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25886258870_))
                          (let ((_hd5886758887_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25886258870_)))
                                (_tl5886858889_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25886258870_))))
                            (let* ((_x258892_ _hd5886758887_)
                                   (_rest258894_ _tl5886858889_))
                              (declare (not safe))
                              (_K5886658884_ _rest258894_ _x258892_)))
                          (let () (declare (not safe)) (_else5886458878_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15884158849_))
                (let ((_hd5884658899_
                       (let () (declare (not safe)) (##car _rest15884158849_)))
                      (_tl5884758901_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15884158849_))))
                  (let* ((_x158904_ _hd5884658899_)
                         (_rest158906_ _tl5884758901_))
                    (declare (not safe))
                    (_K5884558896_ _rest158906_ _x158904_)))
                (let () (declare (not safe)) (_else5884358857_)))))))
    (define foldl
      (lambda _g64188_
        (let ((_g64187_ (let () (declare (not safe)) (##length _g64188_))))
          (cond ((let () (declare (not safe)) (##fx= _g64187_ 3))
                 (apply (lambda (_f58816_ _iv58817_ _lst58818_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f58816_ _iv58817_ _lst58818_)))
                        _g64188_))
                ((let () (declare (not safe)) (##fx= _g64187_ 4))
                 (apply (lambda (_f58820_ _iv58821_ _lst158822_ _lst258823_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f58820_
                                    _iv58821_
                                    _lst158822_
                                    _lst258823_)))
                        _g64188_))
                ((let () (declare (not safe)) (##fx>= _g64187_ 4))
                 (apply foldl* _g64188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g64188_))))))
    (define foldl*
      (lambda (_f58804_ _iv58805_ . _rest58806_)
        (let _recur58808_ ((_iv58810_ _iv58805_) (_rest58811_ _rest58806_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58811_))
              (let ((__tmp64190
                     (apply _f58804_
                            (let ((__tmp64192
                                   (lambda (_xs58813_ _r58814_)
                                     (let ((__tmp64193 (car _xs58813_)))
                                       (declare (not safe))
                                       (cons __tmp64193 _r58814_))))
                                  (__tmp64191 (list _iv58810_)))
                              (declare (not safe))
                              (foldr1 __tmp64192 __tmp64191 _rest58811_))))
                    (__tmp64189 (map cdr _rest58811_)))
                (declare (not safe))
                (_recur58808_ __tmp64190 __tmp64189))
              _iv58810_))))
    (define foldr1
      (lambda (_f58763_ _iv58764_ _lst58765_)
        (let _recur58767_ ((_rest58769_ _lst58765_))
          (let* ((_rest5877058778_ _rest58769_)
                 (_else5877258786_ (lambda () _iv58764_))
                 (_K5877458792_
                  (lambda (_rest58789_ _x58790_)
                    (_f58763_
                     _x58790_
                     (let ()
                       (declare (not safe))
                       (_recur58767_ _rest58789_))))))
            (if (let () (declare (not safe)) (##pair? _rest5877058778_))
                (let ((_hd5877558795_
                       (let () (declare (not safe)) (##car _rest5877058778_)))
                      (_tl5877658797_
                       (let () (declare (not safe)) (##cdr _rest5877058778_))))
                  (let* ((_x58800_ _hd5877558795_)
                         (_rest58802_ _tl5877658797_))
                    (declare (not safe))
                    (_K5877458792_ _rest58802_ _x58800_)))
                (let () (declare (not safe)) (_else5877258786_)))))))
    (define foldr2
      (lambda (_f58687_ _iv58688_ _lst158689_ _lst258690_)
        (let _recur58692_ ((_rest158694_ _lst158689_)
                           (_rest258695_ _lst258690_))
          (let* ((_rest15869658704_ _rest158694_)
                 (_else5869858712_ (lambda () _iv58688_))
                 (_K5870058751_
                  (lambda (_rest158715_ _x158716_)
                    (let* ((_rest25871758725_ _rest258695_)
                           (_else5871958733_ (lambda () _iv58688_))
                           (_K5872158739_
                            (lambda (_rest258736_ _x258737_)
                              (_f58687_
                               _x158716_
                               _x258737_
                               (let ()
                                 (declare (not safe))
                                 (_recur58692_ _rest158715_ _rest258736_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25871758725_))
                          (let ((_hd5872258742_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25871758725_)))
                                (_tl5872358744_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25871758725_))))
                            (let* ((_x258747_ _hd5872258742_)
                                   (_rest258749_ _tl5872358744_))
                              (declare (not safe))
                              (_K5872158739_ _rest258749_ _x258747_)))
                          (let () (declare (not safe)) (_else5871958733_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15869658704_))
                (let ((_hd5870158754_
                       (let () (declare (not safe)) (##car _rest15869658704_)))
                      (_tl5870258756_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15869658704_))))
                  (let* ((_x158759_ _hd5870158754_)
                         (_rest158761_ _tl5870258756_))
                    (declare (not safe))
                    (_K5870058751_ _rest158761_ _x158759_)))
                (let () (declare (not safe)) (_else5869858712_)))))))
    (define foldr
      (lambda _g64195_
        (let ((_g64194_ (let () (declare (not safe)) (##length _g64195_))))
          (cond ((let () (declare (not safe)) (##fx= _g64194_ 3))
                 (apply (lambda (_f58672_ _iv58673_ _lst58674_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f58672_ _iv58673_ _lst58674_)))
                        _g64195_))
                ((let () (declare (not safe)) (##fx= _g64194_ 4))
                 (apply (lambda (_f58676_ _iv58677_ _lst158678_ _lst258679_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f58676_
                                    _iv58677_
                                    _lst158678_
                                    _lst258679_)))
                        _g64195_))
                ((let () (declare (not safe)) (##fx>= _g64194_ 4))
                 (apply foldr* _g64195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g64195_))))))
    (define foldr*
      (lambda (_f58661_ _iv58662_ . _rest58663_)
        (let _recur58665_ ((_rest58667_ _rest58663_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58667_))
              (apply _f58661_
                     (let ((__tmp64198
                            (lambda (_xs58669_ _r58670_)
                              (let ((__tmp64199 (car _xs58669_)))
                                (declare (not safe))
                                (cons __tmp64199 _r58670_))))
                           (__tmp64196
                            (list (let ((__tmp64197 (map cdr _rest58667_)))
                                    (declare (not safe))
                                    (_recur58665_ __tmp64197)))))
                       (declare (not safe))
                       (foldr1 __tmp64198 __tmp64196 _rest58667_)))
              _iv58662_))))
    (define remove-nulls!
      (lambda (_l58548_)
        (let* ((_l5854958562_ _l58548_)
               (_E5855358566_
                (lambda () (error '"No clause matching" _l5854958562_))))
          (let ((_K5855858651_
                 (lambda (_r58649_)
                   (let () (declare (not safe)) (remove-nulls! _r58649_))))
                (_K5855558638_
                 (lambda (_r58578_)
                   (let _loop58580_ ((_l58582_ _l58548_) (_r58583_ _r58578_))
                     (let* ((_r5858458597_ _r58583_)
                            (_E5858858601_
                             (lambda ()
                               (error '"No clause matching" _r5858458597_))))
                       (let ((_K5859358628_
                              (lambda (_rr58626_)
                                (set-cdr!
                                 _l58582_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr58626_)))))
                             (_K5859058615_
                              (lambda (_rr58613_)
                                (let ()
                                  (declare (not safe))
                                  (_loop58580_ _r58583_ _rr58613_))))
                             (_K5858958606_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5858458597_))
                             (let ((_tl5859558633_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5858458597_)))
                                   (_hd5859458631_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5858458597_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5859458631_))
                                   (let ((_rr58636_ _tl5859558633_))
                                     (declare (not safe))
                                     (_K5859358628_ _rr58636_))
                                   (let ((_rr58621_ _tl5859558633_))
                                     (declare (not safe))
                                     (_K5859058615_ _rr58621_))))
                             '#!void))))
                   _l58548_))
                (_K5855458571_ (lambda () _l58548_)))
            (if (let () (declare (not safe)) (##pair? _l5854958562_))
                (let ((_tl5856058656_
                       (let () (declare (not safe)) (##cdr _l5854958562_)))
                      (_hd5855958654_
                       (let () (declare (not safe)) (##car _l5854958562_))))
                  (if (let () (declare (not safe)) (##null? _hd5855958654_))
                      (let ((_r58659_ _tl5856058656_))
                        (declare (not safe))
                        (remove-nulls! _r58659_))
                      (let ((_r58644_ _tl5856058656_))
                        (declare (not safe))
                        (_K5855558638_ _r58644_))))
                (let () (declare (not safe)) (_K5855458571_)))))))
    (define append1!
      (lambda (_l58543_ _x58544_)
        (let ((_l258546_ (let () (declare (not safe)) (cons _x58544_ '()))))
          (if (let () (declare (not safe)) (pair? _l58543_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l58543_))
               _l258546_)
              _l258546_))))
    (define append-reverse
      (lambda (_rev-head58540_ _tail58541_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail58541_ _rev-head58540_))))
    (define append-reverse-until
      (lambda (_pred58493_ _rhead58494_ _tail58495_)
        (let _loop58497_ ((_rhead58499_ _rhead58494_)
                          (_tail58500_ _tail58495_))
          (let* ((_rhead5850158510_ _rhead58499_)
                 (_E5850458514_
                  (lambda () (error '"No clause matching" _rhead5850158510_))))
            (let ((_K5850858537_ (lambda () (values '() _tail58500_)))
                  (_K5850558521_
                   (lambda (_r58518_ _a58519_)
                     (if (_pred58493_ _a58519_)
                         (values _rhead58499_ _tail58500_)
                         (let ((__tmp64200
                                (let ()
                                  (declare (not safe))
                                  (cons _a58519_ _tail58500_))))
                           (declare (not safe))
                           (_loop58497_ _r58518_ __tmp64200))))))
              (let ((_try-match5850358533_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5850158510_))
                           (let ((_tl5850758526_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5850158510_)))
                                 (_hd5850658524_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5850158510_))))
                             (let ((_a58529_ _hd5850658524_)
                                   (_r58531_ _tl5850758526_))
                               (let ()
                                 (declare (not safe))
                                 (_K5850558521_ _r58531_ _a58529_))))
                           (let () (declare (not safe)) (_E5850458514_))))))
                (if (let () (declare (not safe)) (##null? _rhead5850158510_))
                    (let () (declare (not safe)) (_K5850858537_))
                    (let ()
                      (declare (not safe))
                      (_try-match5850358533_)))))))))
    (define andmap1
      (lambda (_f58453_ _lst58454_)
        (let _lp58456_ ((_rest58458_ _lst58454_))
          (let* ((_rest5845958467_ _rest58458_)
                 (_else5846158475_ (lambda () '#t))
                 (_K5846358481_
                  (lambda (_rest58478_ _x58479_)
                    (if (_f58453_ _x58479_)
                        (let () (declare (not safe)) (_lp58456_ _rest58478_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5845958467_))
                (let ((_hd5846458484_
                       (let () (declare (not safe)) (##car _rest5845958467_)))
                      (_tl5846558486_
                       (let () (declare (not safe)) (##cdr _rest5845958467_))))
                  (let* ((_x58489_ _hd5846458484_)
                         (_rest58491_ _tl5846558486_))
                    (declare (not safe))
                    (_K5846358481_ _rest58491_ _x58489_)))
                (let () (declare (not safe)) (_else5846158475_)))))))
    (define andmap2
      (lambda (_f58378_ _lst158379_ _lst258380_)
        (let _lp58382_ ((_rest158384_ _lst158379_) (_rest258385_ _lst258380_))
          (let* ((_rest15838658394_ _rest158384_)
                 (_else5838858402_ (lambda () '#t))
                 (_K5839058441_
                  (lambda (_rest158405_ _x158406_)
                    (let* ((_rest25840758415_ _rest258385_)
                           (_else5840958423_ (lambda () '#t))
                           (_K5841158429_
                            (lambda (_rest258426_ _x258427_)
                              (if (_f58378_ _x158406_ _x258427_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp58382_ _rest158405_ _rest258426_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25840758415_))
                          (let ((_hd5841258432_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25840758415_)))
                                (_tl5841358434_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25840758415_))))
                            (let* ((_x258437_ _hd5841258432_)
                                   (_rest258439_ _tl5841358434_))
                              (declare (not safe))
                              (_K5841158429_ _rest258439_ _x258437_)))
                          (let () (declare (not safe)) (_else5840958423_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15838658394_))
                (let ((_hd5839158444_
                       (let () (declare (not safe)) (##car _rest15838658394_)))
                      (_tl5839258446_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15838658394_))))
                  (let* ((_x158449_ _hd5839158444_)
                         (_rest158451_ _tl5839258446_))
                    (declare (not safe))
                    (_K5839058441_ _rest158451_ _x158449_)))
                (let () (declare (not safe)) (_else5838858402_)))))))
    (define andmap
      (lambda _g64202_
        (let ((_g64201_ (let () (declare (not safe)) (##length _g64202_))))
          (cond ((let () (declare (not safe)) (##fx= _g64201_ 2))
                 (apply (lambda (_f58366_ _lst58367_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f58366_ _lst58367_)))
                        _g64202_))
                ((let () (declare (not safe)) (##fx= _g64201_ 3))
                 (apply (lambda (_f58369_ _lst158370_ _lst258371_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f58369_ _lst158370_ _lst258371_)))
                        _g64202_))
                ((let () (declare (not safe)) (##fx>= _g64201_ 3))
                 (apply andmap* _g64202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g64202_))))))
    (define andmap*
      (lambda (_f58359_ . _rest58360_)
        (let _recur58362_ ((_rest58364_ _rest58360_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58364_))
              (if (apply _f58359_ (map car _rest58364_))
                  (let ((__tmp64203 (map cdr _rest58364_)))
                    (declare (not safe))
                    (_recur58362_ __tmp64203))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f58316_ _lst58317_)
        (let _lp58319_ ((_rest58321_ _lst58317_))
          (let* ((_rest5832258330_ _rest58321_)
                 (_else5832458338_ (lambda () '#f))
                 (_K5832658347_
                  (lambda (_rest58341_ _x58342_)
                    (let ((_$e58344_ (_f58316_ _x58342_)))
                      (if _$e58344_
                          _$e58344_
                          (let ()
                            (declare (not safe))
                            (_lp58319_ _rest58341_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5832258330_))
                (let ((_hd5832758350_
                       (let () (declare (not safe)) (##car _rest5832258330_)))
                      (_tl5832858352_
                       (let () (declare (not safe)) (##cdr _rest5832258330_))))
                  (let* ((_x58355_ _hd5832758350_)
                         (_rest58357_ _tl5832858352_))
                    (declare (not safe))
                    (_K5832658347_ _rest58357_ _x58355_)))
                (let () (declare (not safe)) (_else5832458338_)))))))
    (define ormap2
      (lambda (_f58238_ _lst158239_ _lst258240_)
        (let _lp58242_ ((_rest158244_ _lst158239_) (_rest258245_ _lst258240_))
          (let* ((_rest15824658254_ _rest158244_)
                 (_else5824858262_ (lambda () '#f))
                 (_K5825058304_
                  (lambda (_rest158265_ _x158266_)
                    (let* ((_rest25826758275_ _rest258245_)
                           (_else5826958283_ (lambda () '#f))
                           (_K5827158292_
                            (lambda (_rest258286_ _x258287_)
                              (let ((_$e58289_ (_f58238_ _x158266_ _x258287_)))
                                (if _$e58289_
                                    _$e58289_
                                    (let ()
                                      (declare (not safe))
                                      (_lp58242_
                                       _rest158265_
                                       _rest258286_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25826758275_))
                          (let ((_hd5827258295_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25826758275_)))
                                (_tl5827358297_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25826758275_))))
                            (let* ((_x258300_ _hd5827258295_)
                                   (_rest258302_ _tl5827358297_))
                              (declare (not safe))
                              (_K5827158292_ _rest258302_ _x258300_)))
                          (let () (declare (not safe)) (_else5826958283_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15824658254_))
                (let ((_hd5825158307_
                       (let () (declare (not safe)) (##car _rest15824658254_)))
                      (_tl5825258309_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15824658254_))))
                  (let* ((_x158312_ _hd5825158307_)
                         (_rest158314_ _tl5825258309_))
                    (declare (not safe))
                    (_K5825058304_ _rest158314_ _x158312_)))
                (let () (declare (not safe)) (_else5824858262_)))))))
    (define ormap
      (lambda _g64205_
        (let ((_g64204_ (let () (declare (not safe)) (##length _g64205_))))
          (cond ((let () (declare (not safe)) (##fx= _g64204_ 2))
                 (apply (lambda (_f58226_ _lst58227_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f58226_ _lst58227_)))
                        _g64205_))
                ((let () (declare (not safe)) (##fx= _g64204_ 3))
                 (apply (lambda (_f58229_ _lst158230_ _lst258231_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f58229_ _lst158230_ _lst258231_)))
                        _g64205_))
                ((let () (declare (not safe)) (##fx>= _g64204_ 3))
                 (apply ormap* _g64205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g64205_))))))
    (define ormap*
      (lambda (_f58216_ . _rest58217_)
        (let _recur58219_ ((_rest58221_ _rest58217_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58221_))
              (let ((_$e58223_ (apply _f58216_ (map car _rest58221_))))
                (if _$e58223_
                    _$e58223_
                    (let ((__tmp64206 (map cdr _rest58221_)))
                      (declare (not safe))
                      (_recur58219_ __tmp64206))))
              '#f))))
    (define filter
      (lambda (_f58174_ _lst58175_)
        (let _recur58177_ ((_lst58179_ _lst58175_))
          (let* ((_lst5818058188_ _lst58179_)
                 (_else5818258196_ (lambda () '()))
                 (_K5818458204_
                  (lambda (_rest58199_ _hd58200_)
                    (if (_f58174_ _hd58200_)
                        (let ((_tail58202_
                               (let ()
                                 (declare (not safe))
                                 (_recur58177_ _rest58199_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail58202_ _rest58199_))
                              _lst58179_
                              (let ()
                                (declare (not safe))
                                (cons _hd58200_ _tail58202_))))
                        (let ()
                          (declare (not safe))
                          (_recur58177_ _rest58199_))))))
            (if (let () (declare (not safe)) (##pair? _lst5818058188_))
                (let ((_hd5818558207_
                       (let () (declare (not safe)) (##car _lst5818058188_)))
                      (_tl5818658209_
                       (let () (declare (not safe)) (##cdr _lst5818058188_))))
                  (let* ((_hd58212_ _hd5818558207_)
                         (_rest58214_ _tl5818658209_))
                    (declare (not safe))
                    (_K5818458204_ _rest58214_ _hd58212_)))
                (let () (declare (not safe)) (_else5818258196_)))))))
    (define filter-map1
      (lambda (_f58129_ _lst58130_)
        (let _recur58132_ ((_rest58134_ _lst58130_))
          (let* ((_rest5813558143_ _rest58134_)
                 (_else5813758151_ (lambda () '()))
                 (_K5813958162_
                  (lambda (_rest58154_ _x58155_)
                    (let ((_$e58157_ (_f58129_ _x58155_)))
                      (if _$e58157_
                          ((lambda (_r58160_)
                             (let ((__tmp64207
                                    (let ()
                                      (declare (not safe))
                                      (_recur58132_ _rest58154_))))
                               (declare (not safe))
                               (cons _r58160_ __tmp64207)))
                           _$e58157_)
                          (let ()
                            (declare (not safe))
                            (_recur58132_ _rest58154_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5813558143_))
                (let ((_hd5814058165_
                       (let () (declare (not safe)) (##car _rest5813558143_)))
                      (_tl5814158167_
                       (let () (declare (not safe)) (##cdr _rest5813558143_))))
                  (let* ((_x58170_ _hd5814058165_)
                         (_rest58172_ _tl5814158167_))
                    (declare (not safe))
                    (_K5813958162_ _rest58172_ _x58170_)))
                (let () (declare (not safe)) (_else5813758151_)))))))
    (define filter-map2
      (lambda (_f58049_ _lst158050_ _lst258051_)
        (let _recur58053_ ((_rest158055_ _lst158050_)
                           (_rest258056_ _lst258051_))
          (let* ((_rest15805758065_ _rest158055_)
                 (_else5805958073_ (lambda () '()))
                 (_K5806158117_
                  (lambda (_rest158076_ _x158077_)
                    (let* ((_rest25807858086_ _rest258056_)
                           (_else5808058094_ (lambda () '()))
                           (_K5808258105_
                            (lambda (_rest258097_ _x258098_)
                              (let ((_$e58100_ (_f58049_ _x158077_ _x258098_)))
                                (if _$e58100_
                                    ((lambda (_r58103_)
                                       (let ((__tmp64208
                                              (let ()
                                                (declare (not safe))
                                                (_recur58053_
                                                 _rest158076_
                                                 _rest258097_))))
                                         (declare (not safe))
                                         (cons _r58103_ __tmp64208)))
                                     _$e58100_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur58053_
                                       _rest158076_
                                       _rest258097_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25807858086_))
                          (let ((_hd5808358108_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25807858086_)))
                                (_tl5808458110_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25807858086_))))
                            (let* ((_x258113_ _hd5808358108_)
                                   (_rest258115_ _tl5808458110_))
                              (declare (not safe))
                              (_K5808258105_ _rest258115_ _x258113_)))
                          (let () (declare (not safe)) (_else5808058094_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15805758065_))
                (let ((_hd5806258120_
                       (let () (declare (not safe)) (##car _rest15805758065_)))
                      (_tl5806358122_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15805758065_))))
                  (let* ((_x158125_ _hd5806258120_)
                         (_rest158127_ _tl5806358122_))
                    (declare (not safe))
                    (_K5806158117_ _rest158127_ _x158125_)))
                (let () (declare (not safe)) (_else5805958073_)))))))
    (define filter-map
      (lambda _g64210_
        (let ((_g64209_ (let () (declare (not safe)) (##length _g64210_))))
          (cond ((let () (declare (not safe)) (##fx= _g64209_ 2))
                 (apply (lambda (_f58037_ _lst58038_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f58037_ _lst58038_)))
                        _g64210_))
                ((let () (declare (not safe)) (##fx= _g64209_ 3))
                 (apply (lambda (_f58040_ _lst158041_ _lst258042_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f58040_ _lst158041_ _lst258042_)))
                        _g64210_))
                ((let () (declare (not safe)) (##fx>= _g64209_ 3))
                 (apply filter-map* _g64210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g64210_))))))
    (define filter-map*
      (lambda (_f58025_ . _rest58026_)
        (let _recur58028_ ((_rest58030_ _rest58026_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest58030_))
              (let ((_$e58032_ (apply _f58025_ (map car _rest58030_))))
                (if _$e58032_
                    ((lambda (_r58035_)
                       (let ((__tmp64212
                              (let ((__tmp64213 (map cdr _rest58030_)))
                                (declare (not safe))
                                (_recur58028_ __tmp64213))))
                         (declare (not safe))
                         (cons _r58035_ __tmp64212)))
                     _$e58032_)
                    (let ((__tmp64211 (map cdr _rest58030_)))
                      (declare (not safe))
                      (_recur58028_ __tmp64211))))
              '()))))
    (define iota__%
      (lambda (_count57993_ _start57994_ _step57995_)
        (if (fixnum? _count57993_)
            '#!void
            (error '"expected fixnum" _count57993_))
        (if (let () (declare (not safe)) (number? _start57994_))
            '#!void
            (error '"expected number" _start57994_))
        (if (let () (declare (not safe)) (number? _step57995_))
            '#!void
            (error '"expected number" _step57995_))
        (let ((_root57997_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp57999_ ((_i58001_ '0)
                          (_x58002_ _start57994_)
                          (_tl58003_ _root57997_))
            (if (let () (declare (not safe)) (##fx< _i58001_ _count57993_))
                (let ((_tl*58005_
                       (let () (declare (not safe)) (cons _x58002_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl58003_ _tl*58005_))
                  (let ((__tmp64215
                         (let () (declare (not safe)) (##fx+ _i58001_ '1)))
                        (__tmp64214 (+ _x58002_ _step57995_)))
                    (declare (not safe))
                    (_lp57999_ __tmp64215 __tmp64214 _tl*58005_)))
                (let () (declare (not safe)) (##cdr _root57997_)))))))
    (define iota__0
      (lambda (_count58010_)
        (let* ((_start58012_ '0) (_step58014_ '1))
          (declare (not safe))
          (iota__% _count58010_ _start58012_ _step58014_))))
    (define iota__1
      (lambda (_count58016_ _start58017_)
        (let ((_step58019_ '1))
          (declare (not safe))
          (iota__% _count58016_ _start58017_ _step58019_))))
    (define iota
      (lambda _g64217_
        (let ((_g64216_ (let () (declare (not safe)) (##length _g64217_))))
          (cond ((let () (declare (not safe)) (##fx= _g64216_ 1))
                 (apply (lambda (_count58010_)
                          (let () (declare (not safe)) (iota__0 _count58010_)))
                        _g64217_))
                ((let () (declare (not safe)) (##fx= _g64216_ 2))
                 (apply (lambda (_count58016_ _start58017_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count58016_ _start58017_)))
                        _g64217_))
                ((let () (declare (not safe)) (##fx= _g64216_ 3))
                 (apply (lambda (_count58021_ _start58022_ _step58023_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count58021_ _start58022_ _step58023_)))
                        _g64217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g64217_))))))
    (define last-pair
      (lambda (_lst57967_)
        (let* ((_lst5796857975_ _lst57967_)
               (_E5797057979_
                (lambda () (error '"No clause matching" _lst5796857975_)))
               (_K5797157984_
                (lambda (_rest57982_)
                  (if (let () (declare (not safe)) (pair? _rest57982_))
                      (let () (declare (not safe)) (last-pair _rest57982_))
                      _lst57967_))))
          (if (let () (declare (not safe)) (##pair? _lst5796857975_))
              (let* ((_tl5797357987_
                      (let () (declare (not safe)) (##cdr _lst5796857975_)))
                     (_rest57990_ _tl5797357987_))
                (declare (not safe))
                (_K5797157984_ _rest57990_))
              (let () (declare (not safe)) (_E5797057979_))))))
    (define last
      (lambda (_lst57965_)
        (car (let () (declare (not safe)) (last-pair _lst57965_)))))
    (define assgetq__%
      (lambda (_key57943_ _lst57945_ _default57947_)
        (let ((_$e57950_
               (if (let () (declare (not safe)) (pair? _lst57945_))
                   (assq _key57943_ _lst57945_)
                   '#f)))
          (if _$e57950_
              (cdr _$e57950_)
              (if (let () (declare (not safe)) (procedure? _default57947_))
                  (_default57947_ _key57943_)
                  _default57947_)))))
    (define assgetq__0
      (lambda (_key57956_ _lst57957_)
        (let ((_default57959_ '#f))
          (declare (not safe))
          (assgetq__% _key57956_ _lst57957_ _default57959_))))
    (define assgetq
      (lambda _g64219_
        (let ((_g64218_ (let () (declare (not safe)) (##length _g64219_))))
          (cond ((let () (declare (not safe)) (##fx= _g64218_ 2))
                 (apply (lambda (_key57956_ _lst57957_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key57956_ _lst57957_)))
                        _g64219_))
                ((let () (declare (not safe)) (##fx= _g64218_ 3))
                 (apply (lambda (_key57961_ _lst57962_ _default57963_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key57961_ _lst57962_ _default57963_)))
                        _g64219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g64219_))))))
    (define assgetv__%
      (lambda (_key57920_ _lst57922_ _default57924_)
        (let ((_$e57927_
               (if (let () (declare (not safe)) (pair? _lst57922_))
                   (assv _key57920_ _lst57922_)
                   '#f)))
          (if _$e57927_
              (cdr _$e57927_)
              (if (let () (declare (not safe)) (procedure? _default57924_))
                  (_default57924_ _key57920_)
                  _default57924_)))))
    (define assgetv__0
      (lambda (_key57933_ _lst57934_)
        (let ((_default57936_ '#f))
          (declare (not safe))
          (assgetv__% _key57933_ _lst57934_ _default57936_))))
    (define assgetv
      (lambda _g64221_
        (let ((_g64220_ (let () (declare (not safe)) (##length _g64221_))))
          (cond ((let () (declare (not safe)) (##fx= _g64220_ 2))
                 (apply (lambda (_key57933_ _lst57934_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key57933_ _lst57934_)))
                        _g64221_))
                ((let () (declare (not safe)) (##fx= _g64220_ 3))
                 (apply (lambda (_key57938_ _lst57939_ _default57940_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key57938_ _lst57939_ _default57940_)))
                        _g64221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g64221_))))))
    (define assget__%
      (lambda (_key57897_ _lst57899_ _default57901_)
        (let ((_$e57904_
               (if (let () (declare (not safe)) (pair? _lst57899_))
                   (assoc _key57897_ _lst57899_)
                   '#f)))
          (if _$e57904_
              (cdr _$e57904_)
              (if (let () (declare (not safe)) (procedure? _default57901_))
                  (_default57901_ _key57897_)
                  _default57901_)))))
    (define assget__0
      (lambda (_key57910_ _lst57911_)
        (let ((_default57913_ '#f))
          (declare (not safe))
          (assget__% _key57910_ _lst57911_ _default57913_))))
    (define assget
      (lambda _g64223_
        (let ((_g64222_ (let () (declare (not safe)) (##length _g64223_))))
          (cond ((let () (declare (not safe)) (##fx= _g64222_ 2))
                 (apply (lambda (_key57910_ _lst57911_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key57910_ _lst57911_)))
                        _g64223_))
                ((let () (declare (not safe)) (##fx= _g64222_ 3))
                 (apply (lambda (_key57915_ _lst57916_ _default57917_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key57915_ _lst57916_ _default57917_)))
                        _g64223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g64223_))))))
    (define pgetq__%
      (lambda (_key57826_ _lst57828_ _default57830_)
        (let _lp57833_ ((_rest57836_ _lst57828_))
          (let* ((_rest5783857848_ _rest57836_)
                 (_else5784057856_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57830_))
                        (_default57830_ _key57826_)
                        _default57830_)))
                 (_K5784257865_
                  (lambda (_rest57859_ _v57860_ _k57862_)
                    (if (let () (declare (not safe)) (eq? _k57862_ _key57826_))
                        _v57860_
                        (let ()
                          (declare (not safe))
                          (_lp57833_ _rest57859_))))))
            (if (let () (declare (not safe)) (##pair? _rest5783857848_))
                (let ((_hd5784357868_
                       (let () (declare (not safe)) (##car _rest5783857848_)))
                      (_tl5784457870_
                       (let () (declare (not safe)) (##cdr _rest5783857848_))))
                  (let ((_k57873_ _hd5784357868_))
                    (if (let () (declare (not safe)) (##pair? _tl5784457870_))
                        (let ((_hd5784557875_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5784457870_)))
                              (_tl5784657877_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5784457870_))))
                          (let* ((_v57880_ _hd5784557875_)
                                 (_rest57882_ _tl5784657877_))
                            (declare (not safe))
                            (_K5784257865_ _rest57882_ _v57880_ _k57873_)))
                        (let () (declare (not safe)) (_else5784057856_)))))
                (let () (declare (not safe)) (_else5784057856_)))))))
    (define pgetq__0
      (lambda (_key57887_ _lst57888_)
        (let ((_default57890_ '#f))
          (declare (not safe))
          (pgetq__% _key57887_ _lst57888_ _default57890_))))
    (define pgetq
      (lambda _g64225_
        (let ((_g64224_ (let () (declare (not safe)) (##length _g64225_))))
          (cond ((let () (declare (not safe)) (##fx= _g64224_ 2))
                 (apply (lambda (_key57887_ _lst57888_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key57887_ _lst57888_)))
                        _g64225_))
                ((let () (declare (not safe)) (##fx= _g64224_ 3))
                 (apply (lambda (_key57892_ _lst57893_ _default57894_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key57892_ _lst57893_ _default57894_)))
                        _g64225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g64225_))))))
    (define pgetv__%
      (lambda (_key57755_ _lst57757_ _default57759_)
        (let _lp57762_ ((_rest57765_ _lst57757_))
          (let* ((_rest5776757777_ _rest57765_)
                 (_else5776957785_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57759_))
                        (_default57759_ _key57755_)
                        _default57759_)))
                 (_K5777157794_
                  (lambda (_rest57788_ _v57789_ _k57791_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k57791_ _key57755_))
                        _v57789_
                        (let ()
                          (declare (not safe))
                          (_lp57762_ _rest57788_))))))
            (if (let () (declare (not safe)) (##pair? _rest5776757777_))
                (let ((_hd5777257797_
                       (let () (declare (not safe)) (##car _rest5776757777_)))
                      (_tl5777357799_
                       (let () (declare (not safe)) (##cdr _rest5776757777_))))
                  (let ((_k57802_ _hd5777257797_))
                    (if (let () (declare (not safe)) (##pair? _tl5777357799_))
                        (let ((_hd5777457804_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5777357799_)))
                              (_tl5777557806_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5777357799_))))
                          (let* ((_v57809_ _hd5777457804_)
                                 (_rest57811_ _tl5777557806_))
                            (declare (not safe))
                            (_K5777157794_ _rest57811_ _v57809_ _k57802_)))
                        (let () (declare (not safe)) (_else5776957785_)))))
                (let () (declare (not safe)) (_else5776957785_)))))))
    (define pgetv__0
      (lambda (_key57816_ _lst57817_)
        (let ((_default57819_ '#f))
          (declare (not safe))
          (pgetv__% _key57816_ _lst57817_ _default57819_))))
    (define pgetv
      (lambda _g64227_
        (let ((_g64226_ (let () (declare (not safe)) (##length _g64227_))))
          (cond ((let () (declare (not safe)) (##fx= _g64226_ 2))
                 (apply (lambda (_key57816_ _lst57817_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key57816_ _lst57817_)))
                        _g64227_))
                ((let () (declare (not safe)) (##fx= _g64226_ 3))
                 (apply (lambda (_key57821_ _lst57822_ _default57823_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key57821_ _lst57822_ _default57823_)))
                        _g64227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g64227_))))))
    (define pget__%
      (lambda (_key57684_ _lst57686_ _default57688_)
        (let _lp57691_ ((_rest57694_ _lst57686_))
          (let* ((_rest5769657706_ _rest57694_)
                 (_else5769857714_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default57688_))
                        (_default57688_ _key57684_)
                        _default57688_)))
                 (_K5770057723_
                  (lambda (_rest57717_ _v57718_ _k57720_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k57720_ _key57684_))
                        _v57718_
                        (let ()
                          (declare (not safe))
                          (_lp57691_ _rest57717_))))))
            (if (let () (declare (not safe)) (##pair? _rest5769657706_))
                (let ((_hd5770157726_
                       (let () (declare (not safe)) (##car _rest5769657706_)))
                      (_tl5770257728_
                       (let () (declare (not safe)) (##cdr _rest5769657706_))))
                  (let ((_k57731_ _hd5770157726_))
                    (if (let () (declare (not safe)) (##pair? _tl5770257728_))
                        (let ((_hd5770357733_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5770257728_)))
                              (_tl5770457735_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5770257728_))))
                          (let* ((_v57738_ _hd5770357733_)
                                 (_rest57740_ _tl5770457735_))
                            (declare (not safe))
                            (_K5770057723_ _rest57740_ _v57738_ _k57731_)))
                        (let () (declare (not safe)) (_else5769857714_)))))
                (let () (declare (not safe)) (_else5769857714_)))))))
    (define pget__0
      (lambda (_key57745_ _lst57746_)
        (let ((_default57748_ '#f))
          (declare (not safe))
          (pget__% _key57745_ _lst57746_ _default57748_))))
    (define pget
      (lambda _g64229_
        (let ((_g64228_ (let () (declare (not safe)) (##length _g64229_))))
          (cond ((let () (declare (not safe)) (##fx= _g64228_ 2))
                 (apply (lambda (_key57745_ _lst57746_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key57745_ _lst57746_)))
                        _g64229_))
                ((let () (declare (not safe)) (##fx= _g64228_ 3))
                 (apply (lambda (_key57750_ _lst57751_ _default57752_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key57750_ _lst57751_ _default57752_)))
                        _g64229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g64229_))))))
    (define find
      (lambda (_pred57677_ _lst57678_)
        (let ((_$e57680_
               (let () (declare (not safe)) (memf _pred57677_ _lst57678_))))
          (if _$e57680_ (car _$e57680_) '#f))))
    (define memf
      (lambda (_proc57637_ _lst57638_)
        (let _lp57640_ ((_rest57642_ _lst57638_))
          (let* ((_rest5764357651_ _rest57642_)
                 (_else5764557659_ (lambda () '#f))
                 (_K5764757665_
                  (lambda (_tl57662_ _hd57663_)
                    (if (_proc57637_ _hd57663_)
                        _rest57642_
                        (let () (declare (not safe)) (_lp57640_ _tl57662_))))))
            (if (let () (declare (not safe)) (##pair? _rest5764357651_))
                (let ((_hd5764857668_
                       (let () (declare (not safe)) (##car _rest5764357651_)))
                      (_tl5764957670_
                       (let () (declare (not safe)) (##cdr _rest5764357651_))))
                  (let* ((_hd57673_ _hd5764857668_) (_tl57675_ _tl5764957670_))
                    (declare (not safe))
                    (_K5764757665_ _tl57675_ _hd57673_)))
                (let () (declare (not safe)) (_else5764557659_)))))))
    (define remove1
      (lambda (_el57590_ _lst57592_)
        (let _lp57595_ ((_rest57598_ _lst57592_) (_r57600_ '()))
          (let* ((_rest5760257610_ _rest57598_)
                 (_else5760457618_ (lambda () _lst57592_))
                 (_K5760657625_
                  (lambda (_rest57621_ _hd57622_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el57590_ _hd57622_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57621_ _r57600_))
                        (let ((__tmp64230
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57622_ _r57600_))))
                          (declare (not safe))
                          (_lp57595_ _rest57621_ __tmp64230))))))
            (if (let () (declare (not safe)) (##pair? _rest5760257610_))
                (let ((_hd5760757628_
                       (let () (declare (not safe)) (##car _rest5760257610_)))
                      (_tl5760857630_
                       (let () (declare (not safe)) (##cdr _rest5760257610_))))
                  (let* ((_hd57633_ _hd5760757628_)
                         (_rest57635_ _tl5760857630_))
                    (declare (not safe))
                    (_K5760657625_ _rest57635_ _hd57633_)))
                (let () (declare (not safe)) (_else5760457618_)))))))
    (define remv
      (lambda (_el57543_ _lst57545_)
        (let _lp57548_ ((_rest57551_ _lst57545_) (_r57553_ '()))
          (let* ((_rest5755557563_ _rest57551_)
                 (_else5755757571_ (lambda () _lst57545_))
                 (_K5755957578_
                  (lambda (_rest57574_ _hd57575_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el57543_ _hd57575_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57574_ _r57553_))
                        (let ((__tmp64231
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57575_ _r57553_))))
                          (declare (not safe))
                          (_lp57548_ _rest57574_ __tmp64231))))))
            (if (let () (declare (not safe)) (##pair? _rest5755557563_))
                (let ((_hd5756057581_
                       (let () (declare (not safe)) (##car _rest5755557563_)))
                      (_tl5756157583_
                       (let () (declare (not safe)) (##cdr _rest5755557563_))))
                  (let* ((_hd57586_ _hd5756057581_)
                         (_rest57588_ _tl5756157583_))
                    (declare (not safe))
                    (_K5755957578_ _rest57588_ _hd57586_)))
                (let () (declare (not safe)) (_else5755757571_)))))))
    (define remq
      (lambda (_el57496_ _lst57498_)
        (let _lp57501_ ((_rest57504_ _lst57498_) (_r57506_ '()))
          (let* ((_rest5750857516_ _rest57504_)
                 (_else5751057524_ (lambda () _lst57498_))
                 (_K5751257531_
                  (lambda (_rest57527_ _hd57528_)
                    (if (let () (declare (not safe)) (eq? _el57496_ _hd57528_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57527_ _r57506_))
                        (let ((__tmp64232
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57528_ _r57506_))))
                          (declare (not safe))
                          (_lp57501_ _rest57527_ __tmp64232))))))
            (if (let () (declare (not safe)) (##pair? _rest5750857516_))
                (let ((_hd5751357534_
                       (let () (declare (not safe)) (##car _rest5750857516_)))
                      (_tl5751457536_
                       (let () (declare (not safe)) (##cdr _rest5750857516_))))
                  (let* ((_hd57539_ _hd5751357534_)
                         (_rest57541_ _tl5751457536_))
                    (declare (not safe))
                    (_K5751257531_ _rest57541_ _hd57539_)))
                (let () (declare (not safe)) (_else5751057524_)))))))
    (define remf
      (lambda (_proc57455_ _lst57456_)
        (let _lp57458_ ((_rest57460_ _lst57456_) (_r57461_ '()))
          (let* ((_rest5746257470_ _rest57460_)
                 (_else5746457478_ (lambda () _lst57456_))
                 (_K5746657484_
                  (lambda (_rest57481_ _hd57482_)
                    (if (_proc57455_ _hd57482_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest57481_ _r57461_))
                        (let ((__tmp64233
                               (let ()
                                 (declare (not safe))
                                 (cons _hd57482_ _r57461_))))
                          (declare (not safe))
                          (_lp57458_ _rest57481_ __tmp64233))))))
            (if (let () (declare (not safe)) (##pair? _rest5746257470_))
                (let ((_hd5746757487_
                       (let () (declare (not safe)) (##car _rest5746257470_)))
                      (_tl5746857489_
                       (let () (declare (not safe)) (##cdr _rest5746257470_))))
                  (let* ((_hd57492_ _hd5746757487_)
                         (_rest57494_ _tl5746857489_))
                    (declare (not safe))
                    (_K5746657484_ _rest57494_ _hd57492_)))
                (let () (declare (not safe)) (_else5746457478_)))))))
    (define 1+ (lambda (_x57453_) (+ _x57453_ '1)))
    (define 1- (lambda (_x57451_) (- _x57451_ '1)))
    (define fx1+ (lambda (_x57449_) (fx+ _x57449_ '1)))
    (define fx1- (lambda (_x57447_) (fx- _x57447_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x57445_)
        (if (fixnum? _x57445_)
            (let () (declare (not safe)) (##fx>= _x57445_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x57443_)
        (if (fixnum? _x57443_)
            (let () (declare (not safe)) (##fx> _x57443_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x57441_) (let () (declare (not safe)) (eq? _x57441_ '0))))
    (define fx<0?
      (lambda (_x57439_)
        (if (fixnum? _x57439_)
            (let () (declare (not safe)) (##fx< _x57439_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x57437_)
        (if (fixnum? _x57437_)
            (let () (declare (not safe)) (##fx<= _x57437_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x57435_)
        (if (let () (declare (not safe)) (symbol? _x57435_))
            (let ((__tmp64234 (uninterned-symbol? _x57435_)))
              (declare (not safe))
              (not __tmp64234))
            '#f)))
    (define display-as-string
      (lambda (_x57407_ _port57408_)
        (if (or (let () (declare (not safe)) (string? _x57407_))
                (let () (declare (not safe)) (symbol? _x57407_))
                (keyword? _x57407_)
                (let () (declare (not safe)) (number? _x57407_))
                (let () (declare (not safe)) (char? _x57407_)))
            (display _x57407_ _port57408_)
            (if (let () (declare (not safe)) (pair? _x57407_))
                (begin
                  (let ((__tmp64235 (car _x57407_)))
                    (declare (not safe))
                    (display-as-string __tmp64235 _port57408_))
                  (let ((__tmp64236 (cdr _x57407_)))
                    (declare (not safe))
                    (display-as-string __tmp64236 _port57408_)))
                (if (let () (declare (not safe)) (vector? _x57407_))
                    (vector-for-each
                     (lambda (_g5742157423_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5742157423_ _port57408_)))
                     _x57407_)
                    (if (or (let () (declare (not safe)) (null? _x57407_))
                            (let ()
                              (declare (not safe))
                              (eq? _x57407_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x57407_))
                            (let () (declare (not safe)) (boolean? _x57407_)))
                        '#!void
                        (error '"cannot convert as string" _x57407_)))))))
    (define as-string__0
      (lambda (_x57395_)
        (if (let () (declare (not safe)) (string? _x57395_))
            _x57395_
            (if (let () (declare (not safe)) (symbol? _x57395_))
                (symbol->string _x57395_)
                (if (keyword? _x57395_)
                    (keyword->string _x57395_)
                    (call-with-output-string
                     '()
                     (lambda (_g5739657398_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x57395_ _g5739657398_)))))))))
    (define as-string__1
      (lambda _args57401_
        (call-with-output-string
         '()
         (lambda (_g5740257404_)
           (let ()
             (declare (not safe))
             (display-as-string _args57401_ _g5740257404_))))))
    (define as-string
      (lambda _g64238_
        (let ((_g64237_ (let () (declare (not safe)) (##length _g64238_))))
          (cond ((let () (declare (not safe)) (##fx= _g64237_ 1))
                 (apply (lambda (_x57395_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x57395_)))
                        _g64238_))
                (#t (apply as-string__1 _g64238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g64238_))))))
    (define make-symbol__0
      (lambda (_x57391_)
        (if (interned-symbol? _x57391_)
            _x57391_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x57391_))))))
    (define make-symbol__1
      (lambda _args57393_ (string->symbol (apply as-string _args57393_))))
    (define make-symbol
      (lambda _g64240_
        (let ((_g64239_ (let () (declare (not safe)) (##length _g64240_))))
          (cond ((let () (declare (not safe)) (##fx= _g64239_ 1))
                 (apply (lambda (_x57391_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x57391_)))
                        _g64240_))
                (#t (apply make-symbol__1 _g64240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g64240_))))))
    (define make-keyword__0
      (lambda (_x57387_)
        (if (interned-keyword? _x57387_)
            _x57387_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x57387_))))))
    (define make-keyword__1
      (lambda _args57389_ (string->keyword (apply as-string _args57389_))))
    (define make-keyword
      (lambda _g64242_
        (let ((_g64241_ (let () (declare (not safe)) (##length _g64242_))))
          (cond ((let () (declare (not safe)) (##fx= _g64241_ 1))
                 (apply (lambda (_x57387_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x57387_)))
                        _g64242_))
                (#t (apply make-keyword__1 _g64242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g64242_))))))
    (define interned-keyword?
      (lambda (_x57385_)
        (if (keyword? _x57385_)
            (let ((__tmp64243 (uninterned-keyword? _x57385_)))
              (declare (not safe))
              (not __tmp64243))
            '#f)))
    (define symbol->keyword
      (lambda (_sym57383_)
        ((if (uninterned-symbol? _sym57383_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym57383_))))
    (define keyword->symbol
      (lambda (_kw57381_)
        ((if (uninterned-keyword? _kw57381_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw57381_))))
    (define bytes->string__%
      (lambda (_bstr57359_ _enc57360_)
        (if (let () (declare (not safe)) (eq? _enc57360_ 'UTF-8))
            (utf8->string _bstr57359_)
            (let* ((_in57362_
                    (open-input-u8vector
                     (let ((__tmp64244
                            (let ((__tmp64245
                                   (let ((__tmp64246
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr57359_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp64246))))
                              (declare (not safe))
                              (cons _enc57360_ __tmp64245))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp64244))))
                   (_len57364_ (u8vector-length _bstr57359_))
                   (_out57366_ (make-string _len57364_))
                   (_n57368_
                    (read-substring _out57366_ '0 _len57364_ _in57362_)))
              (string-shrink! _out57366_ _n57368_)
              _out57366_))))
    (define bytes->string__0
      (lambda (_bstr57374_)
        (let ((_enc57376_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr57374_ _enc57376_))))
    (define bytes->string
      (lambda _g64248_
        (let ((_g64247_ (let () (declare (not safe)) (##length _g64248_))))
          (cond ((let () (declare (not safe)) (##fx= _g64247_ 1))
                 (apply (lambda (_bstr57374_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr57374_)))
                        _g64248_))
                ((let () (declare (not safe)) (##fx= _g64247_ 2))
                 (apply (lambda (_bstr57378_ _enc57379_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr57378_ _enc57379_)))
                        _g64248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g64248_))))))
    (define string->bytes__%
      (lambda (_str57345_ _enc57346_)
        (if (let () (declare (not safe)) (eq? _enc57346_ 'UTF-8))
            (string->utf8 _str57345_)
            (substring->bytes
             _str57345_
             '0
             (string-length _str57345_)
             _enc57346_))))
    (define string->bytes__0
      (lambda (_str57351_)
        (let ((_enc57353_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str57351_ _enc57353_))))
    (define string->bytes
      (lambda _g64250_
        (let ((_g64249_ (let () (declare (not safe)) (##length _g64250_))))
          (cond ((let () (declare (not safe)) (##fx= _g64249_ 1))
                 (apply (lambda (_str57351_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str57351_)))
                        _g64250_))
                ((let () (declare (not safe)) (##fx= _g64249_ 2))
                 (apply (lambda (_str57355_ _enc57356_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str57355_ _enc57356_)))
                        _g64250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g64250_))))))
    (define substring->bytes__%
      (lambda (_str57323_ _start57324_ _end57325_ _enc57326_)
        (if (let () (declare (not safe)) (eq? _enc57326_ 'UTF-8))
            (string->utf8 _str57323_ _start57324_ _end57325_)
            (let ((_out57328_
                   (open-output-u8vector
                    (let ((__tmp64251
                           (let ()
                             (declare (not safe))
                             (cons _enc57326_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp64251)))))
              (write-substring _str57323_ _start57324_ _end57325_ _out57328_)
              (get-output-u8vector _out57328_)))))
    (define substring->bytes__0
      (lambda (_str57333_ _start57334_ _end57335_)
        (let ((_enc57337_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str57333_
           _start57334_
           _end57335_
           _enc57337_))))
    (define substring->bytes
      (lambda _g64253_
        (let ((_g64252_ (let () (declare (not safe)) (##length _g64253_))))
          (cond ((let () (declare (not safe)) (##fx= _g64252_ 3))
                 (apply (lambda (_str57333_ _start57334_ _end57335_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str57333_
                             _start57334_
                             _end57335_)))
                        _g64253_))
                ((let () (declare (not safe)) (##fx= _g64252_ 4))
                 (apply (lambda (_str57339_ _start57340_ _end57341_ _enc57342_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str57339_
                             _start57340_
                             _end57341_
                             _enc57342_)))
                        _g64253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g64253_))))))
    (define string-empty?
      (lambda (_str57320_)
        (let ((__tmp64254 (string-length _str57320_)))
          (declare (not safe))
          (##fxzero? __tmp64254))))
    (define string-prefix?
      (lambda (_prefix57310_ _str57311_)
        (let ((_str-len57313_ (string-length _str57311_))
              (_prefix-len57314_ (string-length _prefix57310_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len57314_ _str-len57313_))
              (let _lp57316_ ((_i57318_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i57318_ _prefix-len57314_))
                    (if (let ((__tmp64257
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str57311_ _i57318_)))
                              (__tmp64256
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix57310_ _i57318_))))
                          (declare (not safe))
                          (eq? __tmp64257 __tmp64256))
                        (let ((__tmp64255
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i57318_ '1))))
                          (declare (not safe))
                          (_lp57316_ __tmp64255))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str57288_ _char57289_ _start57290_)
        (let ((_len57292_ (string-length _str57288_)))
          (let _lp57294_ ((_k57296_ _start57290_))
            (if (let () (declare (not safe)) (##fx< _k57296_ _len57292_))
                (if (let ((__tmp64259
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57288_ _k57296_))))
                      (declare (not safe))
                      (eq? _char57289_ __tmp64259))
                    _k57296_
                    (let ((__tmp64258
                           (let () (declare (not safe)) (##fx+ _k57296_ '1))))
                      (declare (not safe))
                      (_lp57294_ __tmp64258)))
                '#f)))))
    (define string-index__0
      (lambda (_str57301_ _char57302_)
        (let ((_start57304_ '0))
          (declare (not safe))
          (string-index__% _str57301_ _char57302_ _start57304_))))
    (define string-index
      (lambda _g64261_
        (let ((_g64260_ (let () (declare (not safe)) (##length _g64261_))))
          (cond ((let () (declare (not safe)) (##fx= _g64260_ 2))
                 (apply (lambda (_str57301_ _char57302_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str57301_ _char57302_)))
                        _g64261_))
                ((let () (declare (not safe)) (##fx= _g64260_ 3))
                 (apply (lambda (_str57306_ _char57307_ _start57308_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str57306_
                             _char57307_
                             _start57308_)))
                        _g64261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g64261_))))))
    (define string-rindex__%
      (lambda (_str57259_ _char57260_ _start57261_)
        (let* ((_len57263_ (string-length _str57259_))
               (_start57268_
                (let ((_$e57265_ _start57261_))
                  (if _$e57265_
                      _$e57265_
                      (let () (declare (not safe)) (##fx- _len57263_ '1))))))
          (let _lp57271_ ((_k57273_ _start57268_))
            (if (let () (declare (not safe)) (##fx>= _k57273_ '0))
                (if (let ((__tmp64263
                           (let ()
                             (declare (not safe))
                             (##string-ref _str57259_ _k57273_))))
                      (declare (not safe))
                      (eq? _char57260_ __tmp64263))
                    _k57273_
                    (let ((__tmp64262
                           (let () (declare (not safe)) (##fx- _k57273_ '1))))
                      (declare (not safe))
                      (_lp57271_ __tmp64262)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str57278_ _char57279_)
        (let ((_start57281_ '#f))
          (declare (not safe))
          (string-rindex__% _str57278_ _char57279_ _start57281_))))
    (define string-rindex
      (lambda _g64265_
        (let ((_g64264_ (let () (declare (not safe)) (##length _g64265_))))
          (cond ((let () (declare (not safe)) (##fx= _g64264_ 2))
                 (apply (lambda (_str57278_ _char57279_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str57278_ _char57279_)))
                        _g64265_))
                ((let () (declare (not safe)) (##fx= _g64264_ 3))
                 (apply (lambda (_str57283_ _char57284_ _start57285_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str57283_
                             _char57284_
                             _start57285_)))
                        _g64265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g64265_))))))
    (define string-split
      (lambda (_str57243_ _char57244_)
        (let ((_len57246_ (string-length _str57243_)))
          (let _lp57248_ ((_start57250_ '0) (_r57251_ '()))
            (let ((_$e57253_
                   (let ()
                     (declare (not safe))
                     (string-index _str57243_ _char57244_ _start57250_))))
              (if _$e57253_
                  ((lambda (_end57256_)
                     (let ((__tmp64269
                            (let ()
                              (declare (not safe))
                              (##fx+ _end57256_ '1)))
                           (__tmp64267
                            (let ((__tmp64268
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57243_
                                      _start57250_
                                      _end57256_))))
                              (declare (not safe))
                              (cons __tmp64268 _r57251_))))
                       (declare (not safe))
                       (_lp57248_ __tmp64269 __tmp64267)))
                   _$e57253_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start57250_ _len57246_))
                      (let ((__tmp64266
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str57243_
                                      _start57250_
                                      _len57246_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp64266 _r57251_))
                      (reverse _r57251_))))))))
    (define string-join
      (lambda (_strs57148_ _join57149_)
        (letrec ((_join-length57151_
                  (lambda (_strs57202_ _jlen57203_)
                    (let _lp57205_ ((_rest57207_ _strs57202_) (_len57208_ '0))
                      (let* ((_rest5720957217_ _rest57207_)
                             (_else5721157225_ (lambda () '0))
                             (_K5721357231_
                              (lambda (_rest57228_ _hd57229_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd57229_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest57228_))
                                        (let ((__tmp64271
                                               (let ((__tmp64272
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd57229_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp64272
                                                        _jlen57203_
                                                        _len57208_))))
                                          (declare (not safe))
                                          (_lp57205_ _rest57228_ __tmp64271))
                                        (let ((__tmp64270
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd57229_))))
                                          (declare (not safe))
                                          (##fx+ __tmp64270 _len57208_)))
                                    (error '"expected string" _hd57229_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5720957217_))
                            (let ((_hd5721457234_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5720957217_)))
                                  (_tl5721557236_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5720957217_))))
                              (let* ((_hd57239_ _hd5721457234_)
                                     (_rest57241_ _tl5721557236_))
                                (declare (not safe))
                                (_K5721357231_ _rest57241_ _hd57239_)))
                            (let ()
                              (declare (not safe))
                              (_else5721157225_))))))))
          (let* ((_join57153_
                  (if (let () (declare (not safe)) (char? _join57149_))
                      (string _join57149_)
                      (if (let () (declare (not safe)) (string? _join57149_))
                          _join57149_
                          (error '"expected string or char" _join57149_))))
                 (_jlen57155_
                  (let () (declare (not safe)) (##string-length _join57153_)))
                 (_olen57157_
                  (let ()
                    (declare (not safe))
                    (_join-length57151_ _strs57148_ _jlen57155_)))
                 (_ostr57159_ (make-string _olen57157_)))
            (let _lp57162_ ((_rest57164_ _strs57148_) (_k57165_ '0))
              (let* ((_rest5716657174_ _rest57164_)
                     (_else5716857182_ (lambda () '""))
                     (_K5717057190_
                      (lambda (_rest57185_ _hd57186_)
                        (let ((_hdlen57188_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd57186_))))
                          (if (let () (declare (not safe)) (pair? _rest57185_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57186_
                                   '0
                                   _hdlen57188_
                                   _ostr57159_
                                   _k57165_))
                                (let ((__tmp64273
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57165_ _hdlen57188_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join57153_
                                   '0
                                   _jlen57155_
                                   _ostr57159_
                                   __tmp64273))
                                (let ((__tmp64274
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k57165_
                                                _hdlen57188_
                                                _jlen57155_))))
                                  (declare (not safe))
                                  (_lp57162_ _rest57185_ __tmp64274)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd57186_
                                   '0
                                   _hdlen57188_
                                   _ostr57159_
                                   _k57165_))
                                _ostr57159_))))))
                (if (let () (declare (not safe)) (##pair? _rest5716657174_))
                    (let ((_hd5717157193_
                           (let ()
                             (declare (not safe))
                             (##car _rest5716657174_)))
                          (_tl5717257195_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5716657174_))))
                      (let* ((_hd57198_ _hd5717157193_)
                             (_rest57200_ _tl5717257195_))
                        (declare (not safe))
                        (_K5717057190_ _rest57200_ _hd57198_)))
                    (let () (declare (not safe)) (_else5716857182_)))))))))
    (define read-u8vector
      (lambda (_bytes57145_ _port57146_)
        (read-subu8vector
         _bytes57145_
         '0
         (u8vector-length _bytes57145_)
         _port57146_)))
    (define write-u8vector
      (lambda (_bytes57142_ _port57143_)
        (write-subu8vector
         _bytes57142_
         '0
         (u8vector-length _bytes57142_)
         _port57143_)))
    (define read-string
      (lambda (_str57139_ _port57140_)
        (read-substring _str57139_ '0 (string-length _str57139_) _port57140_)))
    (define write-string
      (lambda (_str57136_ _port57137_)
        (write-substring
         _str57136_
         '0
         (string-length _str57136_)
         _port57137_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag57105_
               _dbg-exprs57106_
               _dbg-thunks57107_
               _expr57108_
               _thunk57109_)
        (letrec ((_o57111_ (current-output-port))
                 (_e57112_ (current-error-port))
                 (_p57113_ (DBG-printer))
                 (_f57114_
                  (lambda () (force-output _o57111_) (force-output _e57112_)))
                 (_d57115_ (lambda (_x57122_) (display _x57122_ _e57112_)))
                 (_w57116_ (lambda (_x57124_) (_p57113_ _x57124_ _e57112_)))
                 (_n57117_ (lambda () (newline _e57112_)))
                 (_v57118_
                  (lambda (_l57127_)
                    (for-each
                     (lambda (_x57129_)
                       (let () (declare (not safe)) (_d57115_ '" "))
                       (let () (declare (not safe)) (_w57116_ _x57129_)))
                     _l57127_)
                    (let () (declare (not safe)) (_n57117_))))
                 (_x57119_
                  (lambda (_expr57131_ _thunk57132_)
                    (let () (declare (not safe)) (_f57114_))
                    (let () (declare (not safe)) (_d57115_ '"  "))
                    (let () (declare (not safe)) (_w57116_ _expr57131_))
                    (let () (declare (not safe)) (_d57115_ '" =>"))
                    (call-with-values
                     _thunk57132_
                     (lambda _x57134_
                       (let () (declare (not safe)) (_v57118_ _x57134_))
                       (let () (declare (not safe)) (_f57114_))
                       (apply values _x57134_))))))
          (if _tag57105_
              (begin
                (if (let () (declare (not safe)) (eq? _tag57105_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f57114_))
                      (let () (declare (not safe)) (_d57115_ _tag57105_))
                      (let () (declare (not safe)) (_n57117_))))
                (for-each _x57119_ _dbg-exprs57106_ _dbg-thunks57107_)
                (if _thunk57109_
                    (let ()
                      (declare (not safe))
                      (_x57119_ _expr57108_ _thunk57109_))
                    '#!void))
              (if _thunk57109_ (_thunk57109_) '#!void)))))))
