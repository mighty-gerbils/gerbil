(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707657568)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69137_ _reload?69138_)
        (let ((_$e69140_
               (if (let () (declare (not safe)) (not _reload?69138_))
                   (let ((__tmp73627 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp73627 _modpath69137_ '#f))
                   '#f)))
          (if _$e69140_
              _$e69140_
              (let ((_$e69143_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69137_))))
                (if _$e69143_
                    ((lambda (_path69146_)
                       (let ((_lpath69148_ (load _path69146_)))
                         (let ((__tmp73628 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp73628 _modpath69137_ _lpath69148_))
                         _lpath69148_))
                     _$e69143_)
                    (error '"module not found" _modpath69137_)))))))
    (define load-module__0
      (lambda (_modpath69153_)
        (let ((_reload?69155_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69153_ _reload?69155_))))
    (define load-module
      (lambda _g73630_
        (let ((_g73629_ (let () (declare (not safe)) (##length _g73630_))))
          (cond ((let () (declare (not safe)) (##fx= _g73629_ 1))
                 (apply (lambda (_modpath69153_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69153_)))
                        _g73630_))
                ((let () (declare (not safe)) (##fx= _g73629_ 2))
                 (apply (lambda (_modpath69157_ _reload?69158_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69157_ _reload?69158_)))
                        _g73630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g73630_))))))
    (define find-library-module
      (lambda (_modpath69071_)
        (letrec ((_find-compiled-file69073_
                  (lambda (_npath69125_)
                    (let ((_basepath69127_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69125_ '".o"))))
                      (let _lp69129_ ((_current69131_ '#f) (_n69132_ '1))
                        (let ((_next69134_
                               (let ((__tmp73631 (number->string _n69132_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69127_
                                  __tmp73631))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69134_))
                              (let ((__tmp73632
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69132_ '1))))
                                (declare (not safe))
                                (_lp69129_ _next69134_ __tmp73632))
                              _current69131_))))))
                 (_find-source-file69074_
                  (lambda (_npath69121_)
                    (let ((_spath69123_ (string-append _npath69121_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69123_))
                          _spath69123_
                          '#f)))))
          (let _lp69076_ ((_rest69078_ (current-module-library-path)))
            (let* ((_rest6907969087_ _rest69078_)
                   (_else6908169095_ (lambda () '#f))
                   (_K6908369109_
                    (lambda (_rest69098_ _dir69099_)
                      (let* ((_npath69101_
                              (path-expand
                               _modpath69071_
                               (path-expand _dir69099_)))
                             (_$e69103_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69073_ _npath69101_))))
                        (if _$e69103_
                            (path-normalize _$e69103_)
                            (let ((_$e69106_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69074_ _npath69101_))))
                              (if _$e69106_
                                  (path-normalize _$e69106_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69076_ _rest69098_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6907969087_))
                  (let ((_hd6908469112_
                         (let ()
                           (declare (not safe))
                           (##car _rest6907969087_)))
                        (_tl6908569114_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6907969087_))))
                    (let* ((_dir69117_ _hd6908469112_)
                           (_rest69119_ _tl6908569114_))
                      (declare (not safe))
                      (_K6908369109_ _rest69119_ _dir69117_)))
                  (let () (declare (not safe)) (_else6908169095_))))))))))
