(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1695201399)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module
      (let ((_opt-lambda23272342_
             (lambda (_modpath2329_ _reload?2330_)
               (let ((_$e2332_
                      (if (not _reload?2330_)
                          (hash-get (current-module-registry) _modpath2329_)
                          '#f)))
                 (if _$e2332_
                     _$e2332_
                     (let ((_$e2335_ (find-library-module _modpath2329_)))
                       (if _$e2335_
                           ((lambda (_path2338_)
                              (let ((_lpath2340_ (load _path2338_)))
                                (hash-put!
                                 (current-module-registry)
                                 _modpath2329_
                                 _lpath2340_)
                                _lpath2340_))
                            _$e2335_)
                           (error '"module not found" _modpath2329_))))))))
        (lambda _g2352_
          (let ((_g2351_ (let () (declare (not safe)) (##length _g2352_))))
            (cond ((let () (declare (not safe)) (##fx= _g2351_ 1))
                   (apply (lambda (_modpath2345_)
                            (let ((_reload?2347_ (__reload-module)))
                              (_opt-lambda23272342_
                               _modpath2345_
                               _reload?2347_)))
                          _g2352_))
                  ((let () (declare (not safe)) (##fx= _g2351_ 2))
                   (apply _opt-lambda23272342_ _g2352_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    load-module
                    _g2352_)))))))
    (define find-library-module
      (lambda (_modpath2263_)
        (letrec ((_find-compiled-file2265_
                  (lambda (_npath2317_)
                    (let ((_basepath2319_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath2317_ '".o"))))
                      (let _lp2321_ ((_current2323_ '#f) (_n2324_ '1))
                        (let ((_next2326_
                               (let ((__tmp2353 (number->string _n2324_)))
                                 (declare (not safe))
                                 (##string-append _basepath2319_ __tmp2353))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next2326_))
                              (_lp2321_
                               _next2326_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _n2324_ '1)))
                              _current2323_))))))
                 (_find-source-file2266_
                  (lambda (_npath2313_)
                    (let ((_spath2315_ (string-append _npath2313_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath2315_))
                          _spath2315_
                          '#f)))))
          (let _lp2268_ ((_rest2270_ (current-module-library-path)))
            (let* ((_rest22712279_ _rest2270_)
                   (_E22742283_
                    (lambda () (error '"No clause matching" _rest22712279_)))
                   (_else22732287_ (lambda () '#f))
                   (_K22752301_
                    (lambda (_rest2290_ _dir2291_)
                      (let* ((_npath2293_
                              (path-expand
                               _modpath2263_
                               (path-expand _dir2291_)))
                             (_$e2295_ (_find-compiled-file2265_ _npath2293_)))
                        (if _$e2295_
                            (path-normalize _$e2295_)
                            (let ((_$e2298_
                                   (_find-source-file2266_ _npath2293_)))
                              (if _$e2298_
                                  (path-normalize _$e2298_)
                                  (_lp2268_ _rest2290_))))))))
              (if (let () (declare (not safe)) (##pair? _rest22712279_))
                  (let ((_hd22762304_
                         (let () (declare (not safe)) (##car _rest22712279_)))
                        (_tl22772306_
                         (let () (declare (not safe)) (##cdr _rest22712279_))))
                    (let* ((_dir2309_ _hd22762304_) (_rest2311_ _tl22772306_))
                      (_K22752301_ _rest2311_ _dir2309_)))
                  (_else22732287_)))))))))
