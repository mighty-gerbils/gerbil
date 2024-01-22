(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1705947033)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath9309_ _reload?9310_)
        (let ((_$e9312_
               (if (let () (declare (not safe)) (not _reload?9310_))
                   (let ((__tmp9331 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp9331 _modpath9309_ '#f))
                   '#f)))
          (if _$e9312_
              _$e9312_
              (let ((_$e9315_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath9309_))))
                (if _$e9315_
                    ((lambda (_path9318_)
                       (let ((_lpath9320_ (load _path9318_)))
                         (let ((__tmp9332 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp9332 _modpath9309_ _lpath9320_))
                         _lpath9320_))
                     _$e9315_)
                    (error '"module not found" _modpath9309_)))))))
    (define load-module__0
      (lambda (_modpath9325_)
        (let ((_reload?9327_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath9325_ _reload?9327_))))
    (define load-module
      (lambda _g9334_
        (let ((_g9333_ (let () (declare (not safe)) (##length _g9334_))))
          (cond ((let () (declare (not safe)) (##fx= _g9333_ 1))
                 (apply (lambda (_modpath9325_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath9325_)))
                        _g9334_))
                ((let () (declare (not safe)) (##fx= _g9333_ 2))
                 (apply (lambda (_modpath9329_ _reload?9330_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath9329_ _reload?9330_)))
                        _g9334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g9334_))))))
    (define find-library-module
      (lambda (_modpath9243_)
        (letrec ((_find-compiled-file9245_
                  (lambda (_npath9297_)
                    (let ((_basepath9299_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath9297_ '".o"))))
                      (let _lp9301_ ((_current9303_ '#f) (_n9304_ '1))
                        (let ((_next9306_
                               (let ((__tmp9335 (number->string _n9304_)))
                                 (declare (not safe))
                                 (##string-append _basepath9299_ __tmp9335))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next9306_))
                              (let ((__tmp9336
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n9304_ '1))))
                                (declare (not safe))
                                (_lp9301_ _next9306_ __tmp9336))
                              _current9303_))))))
                 (_find-source-file9246_
                  (lambda (_npath9293_)
                    (let ((_spath9295_ (string-append _npath9293_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath9295_))
                          _spath9295_
                          '#f)))))
          (let _lp9248_ ((_rest9250_ (current-module-library-path)))
            (let* ((_rest92519259_ _rest9250_)
                   (_else92539267_ (lambda () '#f))
                   (_K92559281_
                    (lambda (_rest9270_ _dir9271_)
                      (let* ((_npath9273_
                              (path-expand
                               _modpath9243_
                               (path-expand _dir9271_)))
                             (_$e9275_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file9245_ _npath9273_))))
                        (if _$e9275_
                            (path-normalize _$e9275_)
                            (let ((_$e9278_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file9246_ _npath9273_))))
                              (if _$e9278_
                                  (path-normalize _$e9278_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp9248_ _rest9270_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest92519259_))
                  (let ((_hd92569284_
                         (let () (declare (not safe)) (##car _rest92519259_)))
                        (_tl92579286_
                         (let () (declare (not safe)) (##cdr _rest92519259_))))
                    (let* ((_dir9289_ _hd92569284_) (_rest9291_ _tl92579286_))
                      (declare (not safe))
                      (_K92559281_ _rest9291_ _dir9289_)))
                  (let () (declare (not safe)) (_else92539267_))))))))))
