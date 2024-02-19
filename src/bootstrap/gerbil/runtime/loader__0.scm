(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708334574)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath131763_ _reload?131764_)
        (let ((_$e131766_
               (if (let () (declare (not safe)) (not _reload?131764_))
                   (let ((__tmp135852 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp135852 _modpath131763_))
                   '#f)))
          (if _$e131766_
              _$e131766_
              (let ((_$e131769_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath131763_))))
                (if _$e131769_
                    ((lambda (_path131772_)
                       (let ((_lpath131774_ (load _path131772_)))
                         (let ((__tmp135853 (current-module-registry)))
                           (declare (not safe))
                           (hash-put!
                            __tmp135853
                            _modpath131763_
                            _lpath131774_))
                         _lpath131774_))
                     _$e131769_)
                    (error '"module not found" _modpath131763_)))))))
    (define load-module__0
      (lambda (_modpath131779_)
        (let ((_reload?131781_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath131779_ _reload?131781_))))
    (define load-module
      (lambda _g135855_
        (let ((_g135854_ (let () (declare (not safe)) (##length _g135855_))))
          (cond ((let () (declare (not safe)) (##fx= _g135854_ 1))
                 (apply (lambda (_modpath131779_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath131779_)))
                        _g135855_))
                ((let () (declare (not safe)) (##fx= _g135854_ 2))
                 (apply (lambda (_modpath131783_ _reload?131784_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath131783_ _reload?131784_)))
                        _g135855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g135855_))))))
    (define find-library-module
      (lambda (_modpath131697_)
        (letrec ((_find-compiled-file131699_
                  (lambda (_npath131751_)
                    (let ((_basepath131753_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath131751_ '".o"))))
                      (let _lp131755_ ((_current131757_ '#f) (_n131758_ '1))
                        (let ((_next131760_
                               (let ((__tmp135856 (number->string _n131758_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath131753_
                                  __tmp135856))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next131760_))
                              (let ((__tmp135857
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n131758_ '1))))
                                (declare (not safe))
                                (_lp131755_ _next131760_ __tmp135857))
                              _current131757_))))))
                 (_find-source-file131700_
                  (lambda (_npath131747_)
                    (let ((_spath131749_
                           (string-append _npath131747_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath131749_))
                          _spath131749_
                          '#f)))))
          (let _lp131702_ ((_rest131704_ (current-module-library-path)))
            (let* ((_rest131705131713_ _rest131704_)
                   (_else131707131721_ (lambda () '#f))
                   (_K131709131735_
                    (lambda (_rest131724_ _dir131725_)
                      (let* ((_npath131727_
                              (path-expand
                               _modpath131697_
                               (path-expand _dir131725_)))
                             (_$e131729_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file131699_ _npath131727_))))
                        (if _$e131729_
                            (path-normalize _$e131729_)
                            (let ((_$e131732_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file131700_
                                      _npath131727_))))
                              (if _$e131732_
                                  (path-normalize _$e131732_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp131702_ _rest131724_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest131705131713_))
                  (let ((_hd131710131738_
                         (let ()
                           (declare (not safe))
                           (##car _rest131705131713_)))
                        (_tl131711131740_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest131705131713_))))
                    (let* ((_dir131743_ _hd131710131738_)
                           (_rest131745_ _tl131711131740_))
                      (declare (not safe))
                      (_K131709131735_ _rest131745_ _dir131743_)))
                  (let () (declare (not safe)) (_else131707131721_))))))))))
