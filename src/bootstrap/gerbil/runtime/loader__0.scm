(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1697117311)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath8960_ _reload?8961_)
        (let ((_$e8963_
               (if (let () (declare (not safe)) (not _reload?8961_))
                   (let ((__tmp8982 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp8982 _modpath8960_ '#f))
                   '#f)))
          (if _$e8963_
              _$e8963_
              (let ((_$e8966_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath8960_))))
                (if _$e8966_
                    ((lambda (_path8969_)
                       (let ((_lpath8971_ (load _path8969_)))
                         (let ((__tmp8983 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp8983 _modpath8960_ _lpath8971_))
                         _lpath8971_))
                     _$e8966_)
                    (error '"module not found" _modpath8960_)))))))
    (define load-module__0
      (lambda (_modpath8976_)
        (let ((_reload?8978_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath8976_ _reload?8978_))))
    (define load-module
      (lambda _g8985_
        (let ((_g8984_ (let () (declare (not safe)) (##length _g8985_))))
          (cond ((let () (declare (not safe)) (##fx= _g8984_ 1))
                 (apply (lambda (_modpath8976_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath8976_)))
                        _g8985_))
                ((let () (declare (not safe)) (##fx= _g8984_ 2))
                 (apply (lambda (_modpath8980_ _reload?8981_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath8980_ _reload?8981_)))
                        _g8985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g8985_))))))
    (define find-library-module
      (lambda (_modpath8894_)
        (letrec ((_find-compiled-file8896_
                  (lambda (_npath8948_)
                    (let ((_basepath8950_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath8948_ '".o"))))
                      (let _lp8952_ ((_current8954_ '#f) (_n8955_ '1))
                        (let ((_next8957_
                               (let ((__tmp8986 (number->string _n8955_)))
                                 (declare (not safe))
                                 (##string-append _basepath8950_ __tmp8986))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next8957_))
                              (let ((__tmp8987
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n8955_ '1))))
                                (declare (not safe))
                                (_lp8952_ _next8957_ __tmp8987))
                              _current8954_))))))
                 (_find-source-file8897_
                  (lambda (_npath8944_)
                    (let ((_spath8946_ (string-append _npath8944_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath8946_))
                          _spath8946_
                          '#f)))))
          (let _lp8899_ ((_rest8901_ (current-module-library-path)))
            (let* ((_rest89028910_ _rest8901_)
                   (_else89048918_ (lambda () '#f))
                   (_K89068932_
                    (lambda (_rest8921_ _dir8922_)
                      (let* ((_npath8924_
                              (path-expand
                               _modpath8894_
                               (path-expand _dir8922_)))
                             (_$e8926_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file8896_ _npath8924_))))
                        (if _$e8926_
                            (path-normalize _$e8926_)
                            (let ((_$e8929_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file8897_ _npath8924_))))
                              (if _$e8929_
                                  (path-normalize _$e8929_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp8899_ _rest8921_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest89028910_))
                  (let ((_hd89078935_
                         (let () (declare (not safe)) (##car _rest89028910_)))
                        (_tl89088937_
                         (let () (declare (not safe)) (##cdr _rest89028910_))))
                    (let* ((_dir8940_ _hd89078935_) (_rest8942_ _tl89088937_))
                      (declare (not safe))
                      (_K89068932_ _rest8942_ _dir8940_)))
                  (let () (declare (not safe)) (_else89048918_))))))))))
