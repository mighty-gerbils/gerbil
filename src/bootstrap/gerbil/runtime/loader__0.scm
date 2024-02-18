(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708271170)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath130643_ _reload?130644_)
        (let ((_$e130646_
               (if (let () (declare (not safe)) (not _reload?130644_))
                   (let ((__tmp134732 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp134732 _modpath130643_))
                   '#f)))
          (if _$e130646_
              _$e130646_
              (let ((_$e130649_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath130643_))))
                (if _$e130649_
                    ((lambda (_path130652_)
                       (let ((_lpath130654_ (load _path130652_)))
                         (let ((__tmp134733 (current-module-registry)))
                           (declare (not safe))
                           (hash-put!
                            __tmp134733
                            _modpath130643_
                            _lpath130654_))
                         _lpath130654_))
                     _$e130649_)
                    (error '"module not found" _modpath130643_)))))))
    (define load-module__0
      (lambda (_modpath130659_)
        (let ((_reload?130661_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath130659_ _reload?130661_))))
    (define load-module
      (lambda _g134735_
        (let ((_g134734_ (let () (declare (not safe)) (##length _g134735_))))
          (cond ((let () (declare (not safe)) (##fx= _g134734_ 1))
                 (apply (lambda (_modpath130659_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath130659_)))
                        _g134735_))
                ((let () (declare (not safe)) (##fx= _g134734_ 2))
                 (apply (lambda (_modpath130663_ _reload?130664_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath130663_ _reload?130664_)))
                        _g134735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g134735_))))))
    (define find-library-module
      (lambda (_modpath130577_)
        (letrec ((_find-compiled-file130579_
                  (lambda (_npath130631_)
                    (let ((_basepath130633_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath130631_ '".o"))))
                      (let _lp130635_ ((_current130637_ '#f) (_n130638_ '1))
                        (let ((_next130640_
                               (let ((__tmp134736 (number->string _n130638_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath130633_
                                  __tmp134736))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next130640_))
                              (let ((__tmp134737
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n130638_ '1))))
                                (declare (not safe))
                                (_lp130635_ _next130640_ __tmp134737))
                              _current130637_))))))
                 (_find-source-file130580_
                  (lambda (_npath130627_)
                    (let ((_spath130629_
                           (string-append _npath130627_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath130629_))
                          _spath130629_
                          '#f)))))
          (let _lp130582_ ((_rest130584_ (current-module-library-path)))
            (let* ((_rest130585130593_ _rest130584_)
                   (_else130587130601_ (lambda () '#f))
                   (_K130589130615_
                    (lambda (_rest130604_ _dir130605_)
                      (let* ((_npath130607_
                              (path-expand
                               _modpath130577_
                               (path-expand _dir130605_)))
                             (_$e130609_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file130579_ _npath130607_))))
                        (if _$e130609_
                            (path-normalize _$e130609_)
                            (let ((_$e130612_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file130580_
                                      _npath130607_))))
                              (if _$e130612_
                                  (path-normalize _$e130612_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp130582_ _rest130604_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest130585130593_))
                  (let ((_hd130590130618_
                         (let ()
                           (declare (not safe))
                           (##car _rest130585130593_)))
                        (_tl130591130620_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest130585130593_))))
                    (let* ((_dir130623_ _hd130590130618_)
                           (_rest130625_ _tl130591130620_))
                      (declare (not safe))
                      (_K130589130615_ _rest130625_ _dir130623_)))
                  (let () (declare (not safe)) (_else130587130601_))))))))))
