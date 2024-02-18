(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708280333)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath130094_ _reload?130095_)
        (let ((_$e130097_
               (if (let () (declare (not safe)) (not _reload?130095_))
                   (let ((__tmp134183 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp134183 _modpath130094_))
                   '#f)))
          (if _$e130097_
              _$e130097_
              (let ((_$e130100_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath130094_))))
                (if _$e130100_
                    ((lambda (_path130103_)
                       (let ((_lpath130105_ (load _path130103_)))
                         (let ((__tmp134184 (current-module-registry)))
                           (declare (not safe))
                           (hash-put!
                            __tmp134184
                            _modpath130094_
                            _lpath130105_))
                         _lpath130105_))
                     _$e130100_)
                    (error '"module not found" _modpath130094_)))))))
    (define load-module__0
      (lambda (_modpath130110_)
        (let ((_reload?130112_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath130110_ _reload?130112_))))
    (define load-module
      (lambda _g134186_
        (let ((_g134185_ (let () (declare (not safe)) (##length _g134186_))))
          (cond ((let () (declare (not safe)) (##fx= _g134185_ 1))
                 (apply (lambda (_modpath130110_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath130110_)))
                        _g134186_))
                ((let () (declare (not safe)) (##fx= _g134185_ 2))
                 (apply (lambda (_modpath130114_ _reload?130115_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath130114_ _reload?130115_)))
                        _g134186_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g134186_))))))
    (define find-library-module
      (lambda (_modpath130028_)
        (letrec ((_find-compiled-file130030_
                  (lambda (_npath130082_)
                    (let ((_basepath130084_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath130082_ '".o"))))
                      (let _lp130086_ ((_current130088_ '#f) (_n130089_ '1))
                        (let ((_next130091_
                               (let ((__tmp134187 (number->string _n130089_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath130084_
                                  __tmp134187))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next130091_))
                              (let ((__tmp134188
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n130089_ '1))))
                                (declare (not safe))
                                (_lp130086_ _next130091_ __tmp134188))
                              _current130088_))))))
                 (_find-source-file130031_
                  (lambda (_npath130078_)
                    (let ((_spath130080_
                           (string-append _npath130078_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath130080_))
                          _spath130080_
                          '#f)))))
          (let _lp130033_ ((_rest130035_ (current-module-library-path)))
            (let* ((_rest130036130044_ _rest130035_)
                   (_else130038130052_ (lambda () '#f))
                   (_K130040130066_
                    (lambda (_rest130055_ _dir130056_)
                      (let* ((_npath130058_
                              (path-expand
                               _modpath130028_
                               (path-expand _dir130056_)))
                             (_$e130060_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file130030_ _npath130058_))))
                        (if _$e130060_
                            (path-normalize _$e130060_)
                            (let ((_$e130063_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file130031_
                                      _npath130058_))))
                              (if _$e130063_
                                  (path-normalize _$e130063_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp130033_ _rest130055_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest130036130044_))
                  (let ((_hd130041130069_
                         (let ()
                           (declare (not safe))
                           (##car _rest130036130044_)))
                        (_tl130042130071_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest130036130044_))))
                    (let* ((_dir130074_ _hd130041130069_)
                           (_rest130076_ _tl130042130071_))
                      (declare (not safe))
                      (_K130040130066_ _rest130076_ _dir130074_)))
                  (let () (declare (not safe)) (_else130038130052_))))))))))
