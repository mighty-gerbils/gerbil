(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1696372335)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath8908_ _reload?8909_)
        (let ((_$e8911_
               (if (let () (declare (not safe)) (not _reload?8909_))
                   (let ((__tmp8930 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp8930 _modpath8908_ '#f))
                   '#f)))
          (if _$e8911_
              _$e8911_
              (let ((_$e8914_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath8908_))))
                (if _$e8914_
                    ((lambda (_path8917_)
                       (let ((_lpath8919_ (load _path8917_)))
                         (let ((__tmp8931 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp8931 _modpath8908_ _lpath8919_))
                         _lpath8919_))
                     _$e8914_)
                    (error '"module not found" _modpath8908_)))))))
    (define load-module__0
      (lambda (_modpath8924_)
        (let ((_reload?8926_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath8924_ _reload?8926_))))
    (define load-module
      (lambda _g8933_
        (let ((_g8932_ (let () (declare (not safe)) (##length _g8933_))))
          (cond ((let () (declare (not safe)) (##fx= _g8932_ 1))
                 (apply (lambda (_modpath8924_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath8924_)))
                        _g8933_))
                ((let () (declare (not safe)) (##fx= _g8932_ 2))
                 (apply (lambda (_modpath8928_ _reload?8929_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath8928_ _reload?8929_)))
                        _g8933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g8933_))))))
    (define find-library-module
      (lambda (_modpath8842_)
        (letrec ((_find-compiled-file8844_
                  (lambda (_npath8896_)
                    (let ((_basepath8898_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath8896_ '".o"))))
                      (let _lp8900_ ((_current8902_ '#f) (_n8903_ '1))
                        (let ((_next8905_
                               (let ((__tmp8934 (number->string _n8903_)))
                                 (declare (not safe))
                                 (##string-append _basepath8898_ __tmp8934))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next8905_))
                              (let ((__tmp8935
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n8903_ '1))))
                                (declare (not safe))
                                (_lp8900_ _next8905_ __tmp8935))
                              _current8902_))))))
                 (_find-source-file8845_
                  (lambda (_npath8892_)
                    (let ((_spath8894_ (string-append _npath8892_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath8894_))
                          _spath8894_
                          '#f)))))
          (let _lp8847_ ((_rest8849_ (current-module-library-path)))
            (let* ((_rest88508858_ _rest8849_)
                   (_else88528866_ (lambda () '#f))
                   (_K88548880_
                    (lambda (_rest8869_ _dir8870_)
                      (let* ((_npath8872_
                              (path-expand
                               _modpath8842_
                               (path-expand _dir8870_)))
                             (_$e8874_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file8844_ _npath8872_))))
                        (if _$e8874_
                            (path-normalize _$e8874_)
                            (let ((_$e8877_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file8845_ _npath8872_))))
                              (if _$e8877_
                                  (path-normalize _$e8877_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp8847_ _rest8869_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest88508858_))
                  (let ((_hd88558883_
                         (let () (declare (not safe)) (##car _rest88508858_)))
                        (_tl88568885_
                         (let () (declare (not safe)) (##cdr _rest88508858_))))
                    (let* ((_dir8888_ _hd88558883_) (_rest8890_ _tl88568885_))
                      (declare (not safe))
                      (_K88548880_ _rest8890_ _dir8888_)))
                  (let () (declare (not safe)) (_else88528866_))))))))))
