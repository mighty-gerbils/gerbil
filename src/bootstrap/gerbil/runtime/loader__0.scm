(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707555131)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath68313_ _reload?68314_)
        (let ((_$e68316_
               (if (let () (declare (not safe)) (not _reload?68314_))
                   (let ((__tmp72529 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp72529 _modpath68313_ '#f))
                   '#f)))
          (if _$e68316_
              _$e68316_
              (let ((_$e68319_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath68313_))))
                (if _$e68319_
                    ((lambda (_path68322_)
                       (let ((_lpath68324_ (load _path68322_)))
                         (let ((__tmp72530 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp72530 _modpath68313_ _lpath68324_))
                         _lpath68324_))
                     _$e68319_)
                    (error '"module not found" _modpath68313_)))))))
    (define load-module__0
      (lambda (_modpath68329_)
        (let ((_reload?68331_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath68329_ _reload?68331_))))
    (define load-module
      (lambda _g72532_
        (let ((_g72531_ (let () (declare (not safe)) (##length _g72532_))))
          (cond ((let () (declare (not safe)) (##fx= _g72531_ 1))
                 (apply (lambda (_modpath68329_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath68329_)))
                        _g72532_))
                ((let () (declare (not safe)) (##fx= _g72531_ 2))
                 (apply (lambda (_modpath68333_ _reload?68334_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath68333_ _reload?68334_)))
                        _g72532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g72532_))))))
    (define find-library-module
      (lambda (_modpath68247_)
        (letrec ((_find-compiled-file68249_
                  (lambda (_npath68301_)
                    (let ((_basepath68303_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath68301_ '".o"))))
                      (let _lp68305_ ((_current68307_ '#f) (_n68308_ '1))
                        (let ((_next68310_
                               (let ((__tmp72533 (number->string _n68308_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath68303_
                                  __tmp72533))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next68310_))
                              (let ((__tmp72534
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n68308_ '1))))
                                (declare (not safe))
                                (_lp68305_ _next68310_ __tmp72534))
                              _current68307_))))))
                 (_find-source-file68250_
                  (lambda (_npath68297_)
                    (let ((_spath68299_ (string-append _npath68297_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath68299_))
                          _spath68299_
                          '#f)))))
          (let _lp68252_ ((_rest68254_ (current-module-library-path)))
            (let* ((_rest6825568263_ _rest68254_)
                   (_else6825768271_ (lambda () '#f))
                   (_K6825968285_
                    (lambda (_rest68274_ _dir68275_)
                      (let* ((_npath68277_
                              (path-expand
                               _modpath68247_
                               (path-expand _dir68275_)))
                             (_$e68279_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file68249_ _npath68277_))))
                        (if _$e68279_
                            (path-normalize _$e68279_)
                            (let ((_$e68282_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file68250_ _npath68277_))))
                              (if _$e68282_
                                  (path-normalize _$e68282_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp68252_ _rest68274_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6825568263_))
                  (let ((_hd6826068288_
                         (let ()
                           (declare (not safe))
                           (##car _rest6825568263_)))
                        (_tl6826168290_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6825568263_))))
                    (let* ((_dir68293_ _hd6826068288_)
                           (_rest68295_ _tl6826168290_))
                      (declare (not safe))
                      (_K6825968285_ _rest68295_ _dir68293_)))
                  (let () (declare (not safe)) (_else6825768271_))))))))))
