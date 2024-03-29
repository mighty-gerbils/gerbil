(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1711709197)
  (begin
    (define __modules (let () (declare (not safe)) (make-hash-table)))
    (define __load-path '())
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _paths78159_
        (if (let () (declare (not safe)) (__andmap1 string? _paths78159_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths" _paths78159_)))
        (let ((__tmp78164
               (lambda (_p78161_)
                 (set! __load-path (cons _p78161_ __load-path))))
              (__tmp78163 (reverse! _paths78159_)))
          (declare (not safe))
          (##for-each __tmp78164 __tmp78163))))
    (define set-load-path!
      (lambda (_paths78157_)
        (if (and (let () (declare (not safe)) (list? _paths78157_))
                 (let ()
                   (declare (not safe))
                   (__andmap1 string? _paths78157_)))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths" _paths78157_)))
        (set! __load-path _paths78157_)))
    (define load-module
      (lambda (_modpath78155_)
        (if (let () (declare (not safe)) (string? _modpath78155_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _modpath78155_)))
        (let () (declare (not safe)) (__load-module _modpath78155_))))
    (define __load-module
      (lambda (_modpath78142_)
        (let ()
          (let ((_$e78145_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _modpath78142_))))
            (if _$e78145_
                _$e78145_
                (let ((_$e78148_
                       (let ()
                         (declare (not safe))
                         (__find-library-module _modpath78142_))))
                  (if _$e78148_
                      ((lambda (_path78151_)
                         (let ((_loaded-path78153_ (load _path78151_)))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              __modules
                              _modpath78142_
                              _loaded-path78153_))
                           _loaded-path78153_))
                       _$e78148_)
                      (let ()
                        (declare (not safe))
                        (error '"module not found" _modpath78142_)))))))))
    (define reload-module!
      (lambda (_modpath78140_)
        (if (let () (declare (not safe)) (string? _modpath78140_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'string::t
                     _modpath78140_)))
        (let () (declare (not safe)) (__reload-module! _modpath78140_))))
    (define __reload-module!
      (lambda (_modpath78125_)
        (let ()
          (let ((_$e78128_
                 (let ()
                   (declare (not safe))
                   (hash-get __modules _modpath78125_))))
            (if _$e78128_
                ((lambda (_current-path78131_)
                   (if (eq? _current-path78131_ 'builtin)
                       (let ((_latest-path78133_
                              (let ()
                                (declare (not safe))
                                (__find-library-module _modpath78125_))))
                         (if (or (equal? (path-extension _current-path78131_)
                                         '".scm")
                                 (let ((__tmp78165
                                        (equal? _current-path78131_
                                                _latest-path78133_)))
                                   (declare (not safe))
                                   (not __tmp78165)))
                             (let ((_loaded-path78138_ (load _modpath78125_)))
                               (let ()
                                 (declare (not safe))
                                 (hash-put!
                                  __modules
                                  _modpath78125_
                                  _loaded-path78138_))
                               _loaded-path78138_)
                             '#!void))
                       (let ()
                         (declare (not safe))
                         (error '"cannot reload builtin module"
                                _modpath78125_))))
                 _$e78128_)
                (let ()
                  (declare (not safe))
                  (__load-module _modpath78125_)))))))
    (define __find-library-module
      (lambda (_modpath78060_)
        (letrec ((_find-compiled-file78062_
                  (lambda (_npath78114_)
                    (let ((_basepath78116_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78114_ '".o"))))
                      (let _lp78118_ ((_current78120_ '#f) (_n78121_ '1))
                        (let ((_next78123_
                               (let ((__tmp78166 (number->string _n78121_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath78116_
                                  __tmp78166))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next78123_))
                              (let ((__tmp78167
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n78121_ '1))))
                                (declare (not safe))
                                (_lp78118_ _next78123_ __tmp78167))
                              _current78120_))))))
                 (_find-source-file78063_
                  (lambda (_npath78110_)
                    (let ((_spath78112_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78110_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath78112_))
                          _spath78112_
                          '#f)))))
          (let _lp78065_ ((_rest78067_
                           (let () (declare (not safe)) (load-path))))
            (let* ((_rest7806878076_ _rest78067_)
                   (_else7807078084_ (lambda () '#f))
                   (_K7807278098_
                    (lambda (_rest78087_ _dir78088_)
                      (let* ((_npath78090_
                              (path-expand
                               _modpath78060_
                               (path-expand _dir78088_)))
                             (_$e78092_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file78062_ _npath78090_))))
                        (if _$e78092_
                            (path-normalize _$e78092_)
                            (let ((_$e78095_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file78063_ _npath78090_))))
                              (if _$e78095_
                                  (path-normalize _$e78095_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp78065_ _rest78087_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7806878076_))
                  (let ((_hd7807378101_
                         (let ()
                           (declare (not safe))
                           (##car _rest7806878076_)))
                        (_tl7807478103_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7806878076_))))
                    (let* ((_dir78106_ _hd7807378101_)
                           (_rest78108_ _tl7807478103_))
                      (declare (not safe))
                      (_K7807278098_ _rest78108_ _dir78106_)))
                  (let () (declare (not safe)) (_else7807078084_))))))))))
