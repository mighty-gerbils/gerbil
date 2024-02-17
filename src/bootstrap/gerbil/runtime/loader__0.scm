(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708194421)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath117142_ _reload?117143_)
        (let ((_$e117145_
               (if (let () (declare (not safe)) (not _reload?117143_))
                   (let ((__tmp121231 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp121231 _modpath117142_))
                   '#f)))
          (if _$e117145_
              _$e117145_
              (let ((_$e117148_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath117142_))))
                (if _$e117148_
                    ((lambda (_path117151_)
                       (let ((_lpath117153_ (load _path117151_)))
                         (let ((__tmp121232 (current-module-registry)))
                           (declare (not safe))
                           (table-set!
                            __tmp121232
                            _modpath117142_
                            _lpath117153_))
                         _lpath117153_))
                     _$e117148_)
                    (error '"module not found" _modpath117142_)))))))
    (define load-module__0
      (lambda (_modpath117158_)
        (let ((_reload?117160_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath117158_ _reload?117160_))))
    (define load-module
      (lambda _g121234_
        (let ((_g121233_ (let () (declare (not safe)) (##length _g121234_))))
          (cond ((let () (declare (not safe)) (##fx= _g121233_ 1))
                 (apply (lambda (_modpath117158_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath117158_)))
                        _g121234_))
                ((let () (declare (not safe)) (##fx= _g121233_ 2))
                 (apply (lambda (_modpath117162_ _reload?117163_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath117162_ _reload?117163_)))
                        _g121234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g121234_))))))
    (define find-library-module
      (lambda (_modpath117076_)
        (letrec ((_find-compiled-file117078_
                  (lambda (_npath117130_)
                    (let ((_basepath117132_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath117130_ '".o"))))
                      (let _lp117134_ ((_current117136_ '#f) (_n117137_ '1))
                        (let ((_next117139_
                               (let ((__tmp121235 (number->string _n117137_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath117132_
                                  __tmp121235))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next117139_))
                              (let ((__tmp121236
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n117137_ '1))))
                                (declare (not safe))
                                (_lp117134_ _next117139_ __tmp121236))
                              _current117136_))))))
                 (_find-source-file117079_
                  (lambda (_npath117126_)
                    (let ((_spath117128_
                           (string-append _npath117126_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath117128_))
                          _spath117128_
                          '#f)))))
          (let _lp117081_ ((_rest117083_ (current-module-library-path)))
            (let* ((_rest117084117092_ _rest117083_)
                   (_else117086117100_ (lambda () '#f))
                   (_K117088117114_
                    (lambda (_rest117103_ _dir117104_)
                      (let* ((_npath117106_
                              (path-expand
                               _modpath117076_
                               (path-expand _dir117104_)))
                             (_$e117108_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file117078_ _npath117106_))))
                        (if _$e117108_
                            (path-normalize _$e117108_)
                            (let ((_$e117111_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file117079_
                                      _npath117106_))))
                              (if _$e117111_
                                  (path-normalize _$e117111_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp117081_ _rest117103_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest117084117092_))
                  (let ((_hd117089117117_
                         (let ()
                           (declare (not safe))
                           (##car _rest117084117092_)))
                        (_tl117090117119_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest117084117092_))))
                    (let* ((_dir117122_ _hd117089117117_)
                           (_rest117124_ _tl117090117119_))
                      (declare (not safe))
                      (_K117088117114_ _rest117124_ _dir117122_)))
                  (let () (declare (not safe)) (_else117086117100_))))))))))
